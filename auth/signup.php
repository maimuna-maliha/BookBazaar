<?php
include '../includes/db_connect.php';

if(isset($_POST['signup'])){
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    // Check if passwords match
    if($password !== $confirm_password){
        $error = "Passwords do not match!";
    } else {
        // Check if email already exists
        $check = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
        if(mysqli_num_rows($check) > 0){
            $error = "Email already registered!";
        } else {
            // Insert user 
            mysqli_query($conn, "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')");
            $_SESSION['user_id'] = mysqli_insert_id($conn);
            $_SESSION['user_name'] = $name;
            $_SESSION['role'] = 'user';
            header("Location: ../user/dashboard.php");
            exit;
        }
    }
}
?>

<?php include '../includes/header.php'; ?>
<h2>SIGN UP</h2>
<form method="post">
    <?php if(isset($error)) echo "<p class='error'>$error</p>"; ?>
    <input type="text" name="name" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
    <input type="password" name="confirm_password" placeholder="Confirm Password" required>
    <button type="submit" name="signup">Sign Up</button>
    <p>Already have an account? <a href="<?php echo $base_path; ?>auth/login.php">Log in</a></p>
</form>
<?php include '../includes/footer.php'; ?>
