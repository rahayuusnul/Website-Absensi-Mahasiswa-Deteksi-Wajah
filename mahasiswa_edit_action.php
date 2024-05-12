<?php
	include 'koneksi.php'; //include the koneksi.php

	if (isset($_POST['mahasiswa'])) {
		//geting the values from user input form index
		$id=$_POST['id'];
		$newuserid=$_POST['newuserid'];
		$newusername=$_POST['newusername'];
		//query
		$koneksi->query("UPDATE faces SET id='$id', newuserid='$newuserid', newusername='$newusername' WHERE id='$id'");
		header("location:mahasiswa.php");
	}
	$koneksi->close();
?>