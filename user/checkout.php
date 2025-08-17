<?php
include '../includes/db_connect.php';
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: ../auth/login.php");
    exit;
}

$user_id = $_SESSION['user_id'];

// from cart selection or Buy Now
$book_ids = [];
if(isset($_GET['ids'])){
    $book_ids = array_map('intval', explode(',', $_GET['ids']));
} elseif(isset($_GET['buy'])){
    $book_ids[] = (int)$_GET['buy'];
}

if(empty($book_ids)){
    echo "<p>No books selected. <a href='cart.php'>Go back to cart</a></p>";
    exit;
}

// Handle form
if(isset($_POST['confirm'])){
    $address = mysqli_real_escape_string($conn, $_POST['address']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $payment_method = $_POST['payment_method'];

    foreach($book_ids as $id){
        // Determine quantity: if cart, get from cart table; if Buy Now, default 1
        $cart_row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM cart WHERE user_id=$user_id AND book_id=$id"));
        $quantity = $cart_row ? $cart_row['quantity'] : 1;

        $book = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM books WHERE id=$id"));
        $total_price = $book['price'] * $quantity;

        mysqli_query($conn, "INSERT INTO orders (user_id, book_id, quantity, total_price, address, phone, payment_method, status) 
                             VALUES ($user_id, $id, $quantity, $total_price, '$address', '$phone', '$payment_method', 'Confirmed')");

        $order_id = mysqli_insert_id($conn);
        mysqli_query($conn, "INSERT INTO payments (order_id, payment_type, payment_status) VALUES ($order_id, '$payment_method', 'Completed')");

        // Remove purchased book from cart if exists
        if($cart_row){
            mysqli_query($conn, "DELETE FROM cart WHERE id={$cart_row['id']}");
        }
    }

    header("Location: orders.php");
    exit;
}

$books = [];
foreach($book_ids as $id){
    $books[] = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM books WHERE id=$id"));
}
?>

<?php include '../includes/header.php'; ?>

<h1>Checkout</h1>

<div class="checkout-container">
    <div class="checkout-left">
        <h2>Selected Books</h2>
        <table>
            <tr>
                <th>Book</th>
                <th>Quantity</th>
                <th>Total</th>
            </tr>
            <?php 
            $grand_total = 0;
            foreach($books as $book):
                // Quantity from cart or default 1
                $cart_row = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM cart WHERE user_id=$user_id AND book_id={$book['id']}"));
                $quantity = $cart_row ? $cart_row['quantity'] : 1;
                $total = $book['price'] * $quantity;
                $grand_total += $total;
            ?>
            <tr>
                <td><?php echo $book['title']; ?></td>
                <td><?php echo $quantity; ?></td>
                <td>BDT <?php echo $total; ?></td>
            </tr>
            <?php endforeach; ?>
            <tr>
                <td colspan="2"><strong>Grand Total</strong></td>
                <td><strong>BDT <?php echo $grand_total; ?></strong></td>
            </tr>
        </table>
    </div>

    <div class="checkout-right">
        <h2>Confirm Order</h2>
        <form method="post">
            <input type="text" name="address" placeholder="Your Address" required>
            <input type="text" name="phone" placeholder="Phone Number" required>
            <label>Payment Method:</label>
            <select name="payment_method">
                <option value="COD">Cash on Delivery</option>
                <option value="Online">Online Payment</option>
            </select>
            <button type="submit" name="confirm" class="btn">Confirm Order</button>
        </form>
    </div>
</div>

<?php include '../includes/footer.php'; ?>
