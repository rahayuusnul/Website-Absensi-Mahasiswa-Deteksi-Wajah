<?php
	//include connect_db
	include 'koneksi.php';

	//get id form register_view.php
	$Id=$_GET["Id"];

	//Prepare a select statement
	$sql = "SELECT * FROM admin WHERE Id = $_GET[Id]";
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
	<title>Edit Admin</title>
</head>
<body>
	<!--register form section start-->
	<form action="admin_edit_action.php" method="post" name="admin">
		<input type="hidden" name="id" value="<?php echo $row["id"];?>">
		<table>
			<tr>
				<td colspan="2"><h2>Edit Data Admin</h2></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" value="<?php echo $row["username"];?>"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password" value="<?php echo$row["password"];?>"></td>
			</tr>
			<tr>
				<td>Level</td>
				<td><input type="text" name="level" value="<?php echo$row["level"];?>"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama" value="<?php echo$row["nama"];?>"></td>
			</tr>
            <tr class="form-group row">
                <td for="Foto" class="col-sm-2 col-form-label">Foto</td>
                <td class="col-sm-8">
                    <input type="file" class="form-control" id="foto" name="foto" required>
                </td>
            </tr>
            <tr>
				<td colspan="2">
					<a href="admin_edit_action.php"><input type="submit" VALUE="Update" name="admin" Onclick="return done(this.form);"/>
				</td>
			</tr>
		</table>
	</form> <!--register form section end-->
</body>
</html>