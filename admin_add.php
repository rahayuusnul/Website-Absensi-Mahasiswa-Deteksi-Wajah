<?php
	//include connect_db
	include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Tambah Admin</title>
</head>
<body>
	<!--register form section start-->
	<form action="admin_add_action.php" method="post" name="admin">
		<input type="hidden" name="id" value="<?php echo $row["id"];?>">
		<table>
			<tr>
				<td colspan="2"><h2>Tambah Data Admin</h2></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td>Level</td>
				<td><input type="text" name="level"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama"></td>
			</tr>
            <tr class="form-group row">
                <td for="Foto" class="col-sm-2 col-form-label">Foto</td>
                <td class="col-sm-8">
                    <input type="file" class="form-control" id="foto" name="foto" required>
                </td>
            </tr>
            <tr>
				<td colspan="2">
					<a href="admin_add_action.php"><input type="submit" VALUE="Add" name="admin" Onclick="return done(this.form);"/>
				</td>
			</tr>
		</table>
	</form> <!--register form section end-->
</body>
</html>