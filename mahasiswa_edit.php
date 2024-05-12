<?php
	//include connect_db
	include 'koneksi.php';

	$id=$_GET["id"];

	//Prepare a select statement
	$sql = "SELECT * FROM faces WHERE id = $_GET[id]";
	if ($result = $koneksi->query($sql)) {
		if ($result->num_rows == 1) {
			$row = $result->fetch_array(MYSQLI_ASSOC);
		}

		$koneksi->close(); //Close connection
	}else{
		//URL doesn't contain id parameter, Redirect to error page
		header("location: error.php");
		exit();
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Edit Mahasiswa</title>
</head>
<body>
	<!--register form section start-->
	<form action="mahasiswa_edit_action.php" method="post" name="mahasiswa">
		<input type="hidden" name="id" value="<?php echo $row["id"];?>">
		<table>
			<tr>
				<td colspan="2"><h2>Edit Data mahasiswa</h2></td>
			</tr>
			<tr>
				<td>Newuserid</td>
				<td><input type="text" name="newuserid" value="<?php echo $row["newuserid"];?>"></td>
			</tr>
			<tr>
				<td>Newusername</td>
				<td><input type="text" name="newusername" value="<?php echo$row["newusername"];?>"></td>
			</tr>
            <tr>
				<td colspan="2">
					<a href="mahasiswa_edit_action.php"><input type="submit" VALUE="update" name="mahasiswa" Onclick="return done(this.form);"/>
				</td>
			</tr>
		</table>
	</form> <!--register form section end-->
</body>
</html>