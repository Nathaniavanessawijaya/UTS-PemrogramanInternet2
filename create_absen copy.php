<!doctype html>
<html lang="en">
<head>
	<title>Tambah Jadwal</title>
</head>

<body>
	<h1>Tambah Jadwal</h1>
	<a href="jawab.php">Kembali</a>
	<br><br>
	<form action="proses.php" method="post">
		<label>Id</label>
		<br>
		<input type="text" name="id">
		<br>
		<label>Id Jadwal</label>
		<br>
		<input type="text" name="jadwalid">
        <br>
		<label>Kode Dosen</label>
		<br>
		<input type="text" name="kodedosen">
		<br>
		<label>Hari</label>
		<br>
		<input type="text" name="Hari">
		<br>
		<label>Tahun Akademik</label>
		<br>
		<input type="text" name="thnakademik">
		<br>
        <label>Semester</label>
		<br>
		<input type="text" name="semester">
		<br>
		<label>Kode Matakuliah</label>
		<br>
		<input type="text" name="kodemk">
        <br>
		<label>Sesi</label>
		<br>
		<input type="text" name="Sesi">
		<br>
		<label>Jam Masuk</label>
		<br>
		<input type="time" name="jammasuk">
		<br>
		<label>Jam Keluar</label>
		<br>
		<input type="time" name="jamkeluar">
		<br>
        <label>Kelas</label>
		<br>
		<input type="text" name="kelas">
		<br>
		<label>Ruang</label>
		<br>
		<input type="text" name="ruang">
		<br>
		<label>Status</label>
		<br>
		<input type="text" name="status">
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