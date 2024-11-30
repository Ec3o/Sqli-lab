<?php
session_start();
if (stripos($_SERVER['HTTP_USER_AGENT'], "sqlmap")) {
    die();
}
include "config.php";
$err = 0;
if (isset($_POST['username']) && isset($_POST['password'])) {

    $username = $_POST['username'];
    $password = md5($_POST['password']);

    $query = "SELECT * FROM users WHERE username='" . $username . "' AND password = '" . $password . "';";

    if (!mysqli_query($conn, $query)) {
        $err = 1;
    }

    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($result);

    if ($row > 0) {
        $_SESSION['login'] = 1;
        header("Location: dashboard/dashboard.php");
        die();
    } else {
        $err = 1;
    }
}
?>
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Employee Login</title>
    <link rel="stylesheet" href="./style.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
    <!-- partial:index.partial.html -->
    <div class="body"></div>
    <div class="grad"></div>
    <div class="header">
        <div>Vidar-Auth</div>
    </div>
    <br>
    <div class="login">
        <form action="" method="post">
            <input type="text" placeholder="Username" name="username"><br>
            <input type="password" placeholder="Password" name="password"><br />
            <input type="submit" value="Login"></br /><br />
        </form>
        <?php
        if ($err === 1) {
            echo "<label>Incorrect credentials</label>";
        }
        ?>
    </div>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</body>

</html>