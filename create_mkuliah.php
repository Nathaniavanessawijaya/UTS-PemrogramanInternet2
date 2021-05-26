<!doctype html>
<html lang="en">
<head>
	<title>Tambah </title>
</head>

<body>
	<h1>Tambah Dosen</h1>
	<a href="mkuliah.php">Kembali</a>
	<br><br>
	<form action="proses.php" method="post">
		<label>Kode Matakuliah</label>
		<br>
		<input type="text" name="kodemk">
		<br>
		<label>Nama Matakuliah</label>
		<br>
		<input type="text" name="namamk">
        <br>
		<label>SKS</label>
		<br>
		<input type="text" name="sks">
		<br>
		<label>Semester</label>
		<br>
		<input type="text" name="smt">
		<br>
		<label>Kode Prodi</label>
		<br>
		<input type="text" name="kodeprodi">
        <br><br>
		<button type="submit" name="submit_simpan_mkuliah">Submit</button>
		<button type="reset">Reset</button>
	</form>
</body>
</html>