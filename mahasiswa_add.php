<?php
	//include connect_db
	include 'koneksi.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Add Mahasiswa</title>
</head>
<body>
	<!--register form section start-->
	<form action="mahasiswa_add_action.php" method="post" name="mahasiswa">
		<input type="hidden" name="NIM" value="<?php echo $row["NIM"];?>">
		<table>
			<tr>
				<td colspan="2"><h2>Tambah Data Dosen</h2></td>
			</tr>
			<tr>
				<td>NIM</td>
				<td><input type="text" name="NIM"></td>
			</tr>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="Nama"></td>
			</tr>
			<tr>
				<td>Jenis Kelamin</td>
				<td><input type="text" name="Jenis_Kelamin"></td>
			</tr>
			<tr>
				<td>Tanggal Lahir</td>
				<td><input type="text" name="Tanggal_Lahir"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="Email"></td>
			</tr>
			<tr>
				<td>No HP</td>
				<td><input type="text" name="No_HP"></td>
			</tr>
            <tr class="form-group row">
                <td for="Foto" class="col-sm-2 col-form-label">Foto</td>
                <td class="col-sm-8">
                    <input type="file" class="form-control" id="Foto" name="Foto" required>
                </td>
            </tr>
			<tr>
				<td>Status</td>
				<td><input type="text" name="Status"></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><input type="text" name="Username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" name="Password"></td>
			</tr>
            <tr>
				<td colspan="2">
					<a href="mahasiswa_add_action.php"><input type="submit" VALUE="Add" name="mahasiswa" Onclick="return done(this.form);"/>
				</td>
			</tr>
		</table>
	</form> <!--register form section end-->
</body>
</html>