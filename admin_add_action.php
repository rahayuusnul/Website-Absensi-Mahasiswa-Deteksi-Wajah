<?php
	include 'koneksi.php'; //include the koneksi.php

	if (isset($_POST['admin'])) {
		//geting the values from user input form index
		$id=$_POST['id'];
		$username=$_POST['username'];
		$password=$_POST['password'];
		$nama=$_POST['nama'];
		$foto=$_POST['foto'];
		//query
		$koneksi->query("INSERT INTO admin (id, username, password, nama, foto) VALUES('$id', '$username', '$password', '$nama', '$foto')");
		header("location:admin.php");
	}
	$koneksi->close();
?>