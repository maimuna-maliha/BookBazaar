<?php
session_start(); 
include '../includes/db_connect.php';

if(isset($_POST['login'])){
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = $_POST['password'];

    $result = mysqli_query($conn, "SELECT * FROM users WHERE email='$email'");
    if(mysqli_num_rows($result) == 1){
        $user = mysqli_fetch_assoc($result);
        
        if($password === $user['password']){
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_name'] = $user['name'];
            $_SESSION['role'] = $user['role'];

            // Redirect based on role
            if($user['role'] === 'admin'){
                header("Location: ../admin/dashboard.php");
                exit;
            } else {
                header("Location: ../user/dashboard.php");
                exit;
            }
        } else {
            $error = "Invalid password!";
        }
    } else {
        $error = "Email not found!";
    }
}
?>

<?php include '../includes/header.php'; ?>
<h1>LOGIN</h1>
<form method="post">
    <?php if(isset($error)) echo "<p class='error'>$error</p>"; ?>
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="password" placeholder="Password" required>
    <button type="submit" name="login">Login</button>
    <p>Don't have an account? <a href="<?php echo $base_path; ?>auth/signup.php">Sign up</a></p>
</form>
<?php include '../includes/footer.php'; ?>
