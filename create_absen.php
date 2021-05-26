<!doctype html>
<html lang="en">
<head>
	<title>Tambah Absen</title>
</head>

<body>
	<h1>Tambah Absen</h1>
	<a href="index.php">Kembali</a>
	<br><br>
	<form action="proses.php" method="post">
		<label>Id Absen</label>
		<br>
		<input type="text" name="idabsen">
		<br>
		<label>Tanggal Absen</label>
		<br>
		<input type="date" name="tglabsen">
        <br>
		<label>Masuk</label>
		<br>
		<input type="time" name="masuk">
		<br>
		<label>Keluar</label>
		<br>
		<input type="time" name="keluar">
		<br>
		<label>Kode Dosen</label>
		<br>
		<input type="text" name="kodedosen">
		<br>
        <label>Sesi</label>
		<br>
		<input type="text" name="sesi">
		<br>
		<label>Kelas Sesi</label>
		<br>
		<input type="text" name="kelassesi">
        <br><br>
		<button type="submit" name="submit_simpan_absen">Submit</button>
		<button type="reset">Reset</button>
	</form>
</body>
</html>