<?php
include '../includes/db_connect.php';
session_start();

if(!isset($_SESSION['user_id'])){
    header("Location: ../auth/login.php");
    exit;
}

$user_id = $_SESSION['user_id'];
?>

<?php include '../includes/header.php'; ?>

<h1>My Orders</h1>

<?php
$result = mysqli_query($conn, "SELECT orders.*, books.title 
                               FROM orders 
                               JOIN books ON orders.book_id = books.id 
                               WHERE orders.user_id=$user_id
                               ORDER BY orders.created_at DESC");

if(mysqli_num_rows($result) > 0): ?>
    <div class="table-responsive">
        <table class="orders-table">
            <thead>
                <tr>
                    <th>Book</th>
                    <th>Quantity</th>
                    <th>Total Price</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Payment</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <?php while($row = mysqli_fetch_assoc($result)): ?>
                    <tr>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['quantity']; ?></td>
                        <td>BDT <?php echo $row['total_price']; ?></td>
                        <td><?php echo $row['address']; ?></td>
                        <td><?php echo $row['phone']; ?></td>
                        <td><?php echo $row['payment_method']; ?></td>
                        <td><?php echo ucfirst($row['status']); ?></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
<?php else: ?>
    <p class="no-orders">You have not placed any orders yet.</p>
<?php endif; ?>

<?php include '../includes/footer.php'; ?>
