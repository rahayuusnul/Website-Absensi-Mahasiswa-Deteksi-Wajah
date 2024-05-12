<?php 
include('koneksi.php');
session_start();
$admin_id = $_SESSION['admin_id'];
$berhasil = true;
if($sql_login=mysqli_query($koneksi, "UPDATE admin SET Last_Login=now()")){
    $_SESSION =[];
    session_unset();

    header("Location: login.php");
}
echo mysqli_error($koneksi);
?>