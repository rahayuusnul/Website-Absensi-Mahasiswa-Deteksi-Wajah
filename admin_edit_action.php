<?php
	include 'koneksi.php'; //include the koneksi.php

	if (isset($_POST['admin'])) {
		//geting the values from user input form index
		$id=$_POST['id'];
		$username=$_POST['username'];
		$password=$_POST['password'];
		$level=$_POST['level'];
		$nama=$_POST['nama'];
		$foto=$_POST['foto'];
		//query
		$koneksi->query("UPDATE admin SET id='$id', username='$username', password='$password', level='$level', nama='$nama', foto='$foto' WHERE id='$id'");
		header("location:admin.php");
	}
	$koneksi->close();
?>