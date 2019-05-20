<?php
	$host = "localhost";
	$userhost = "root";
	$passhost = "";
	$db = "webtu";
	//$koneksi = mysqli_connect("localhost","root","","db_d");
	$koneksi = mysqli_connect($host,$userhost,$passhost,$db);

	 if (!$koneksi){
		echo "gagal";
	}else{
	}
?>