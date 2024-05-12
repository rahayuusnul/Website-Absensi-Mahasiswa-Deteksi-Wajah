<?php
session_start();
if (isset($_SESSION["login"])) {
    if ($_SESSION["level"] === "admin") {
        header("Location: index_admin.php");
    } else {
        header("Location: index_mahasiswa.php");
    }
}
require 'koneksi.php';
if (isset($_POST["login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $result = mysqli_query($koneksi, "SELECT * FROM admin WHERE username = '$username'");

    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        if ($row["password"] === $password) {
            $_SESSION["login"] = true;
            $_SESSION["level"] = $row["level"];
            $_SESSION["admin_user_id"] = $row["id"];
            $_SESSION["admin_user_username"] = $username;
            $_SESSION["admin_user_name"] = $row["nama"];
            $_SESSION["admin_user_foto"] = $row["foto"];
            $_SESSION["admin_user_last_login"] = $row["Last_Login"];
            if ($row["level"] === "admin") {
                header("Location: index_admin.php");
            } else {
                header("Location: index_mahasiswa.php");
            }
            exit;
        }
    }

    $error = true;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/style.css">
    <title>Login</title>
</head>
<body class="login">
    <div class="container">
        <div class="row justify-content-center form-login mt-5">
            <div class="col-md-6">
                <form action="" class="panel" method="post">
                    <h3 class="mb-4 text-center text-uppercase">Login </h3>
                    <?php if( isset($error) ) :?>
                    <div class="alert alert-danger mr-5 ml-5 radius" role="alert">
                    Username / Password salah
                    </div>
                    <?php endif; ?>
                    <div class="form-group ml-5 mr-5">
                        <input type="text" name="username" id="username" class="form-control form-control-lg radius" placeholder="Username">
                    </div>
                    <div class="form-group ml-5 mr-5">
                        <input type="password" name="password" id="password" class="form-control form-control-lg radius" placeholder="Password">
                    </div>
                    <div class="form-group mt-4 ml-5 mr-5">
                    <button type="submit" class="btn btn-info btn-login block radius" name="login">Login</button>
                    </div>
                    <!-- <div class="form-group mt-4 ml-5 mr-5">
                    <a href="registrasiadmin.php" class="btn btn-info btn-regis block radius" role="button">Registrasi</a>
                    </div> -->

                </form>

            </div>
        </div>
    </div>




    <script src="js/bootstrap.min.js" ></script>
</body>
</html>