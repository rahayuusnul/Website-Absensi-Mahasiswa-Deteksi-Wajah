<?php
	//include connect_db
	include "koneksi.php";

	// get id form register_view.php
	$id=$_GET['id'];

	// Prepare a select statement
	$sql = "SELECT * FROM admin WHERE id = $_GET[id]";
	if ($result = $koneksi->query($sql)) {
		if ($result->num_rows == 1) {
			$row = $result->fetch_array(MYSQLI_ASSOC);
			$koneksi->query("DELETE FROM admin WHERE id='$id'");
		}
		$koneksi->close(); // Close Connection
		header("location:admin.php");
	} else{
		// URL doesn't contain id parameter. Redirect to error page 
		header("location:error.php");
		exit();
	}
?>