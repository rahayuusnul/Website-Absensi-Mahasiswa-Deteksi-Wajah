<?php
	include 'koneksi.php'; //include the koneksi.php

	if (isset($_POST['mahasiswa'])) {
		//geting the values from user input form index
		$NIM=$_POST['NIM'];
		$Nama=$_POST['Nama'];
		$Jenis_Kelamin=$_POST['Jenis_Kelamin'];
		$Tanggal_Lahir=$_POST['Tanggal_Lahir'];
		$Email=$_POST['Email'];
		$No_HP=$_POST['No_HP'];
		$Foto=$_POST['Foto'];
		$Status=$_POST['Status'];
		$Username=$_POST['Username'];
		$Password=$_POST['Password'];

		$koneksi->query("INSERT INTO mahasiswa (NIM, Nama, Jenis_Kelamin, Tanggal_Lahir, Email, No_HP, Foto, Status, Username, Password) VALUES('$NIM', '$Nama', '$Jenis_Kelamin', '$Tanggal_Lahir', '$Email', '$No_HP', '$Foto', '$Status', '$Username', '$Password')");
		header("location:mahasiswa.php");
	}
	$koneksi->close();
?>