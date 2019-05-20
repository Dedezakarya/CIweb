<?php
	
	include "config/koneksi.php";
	$id = $_POST ['id'];
	$user = $_POST ['username'];
	$pass = $_POST ['password'];
	$grup = $_POST ['grup'];
	$nama = $_POST ['nama'];
	//echo $id.$user.$pass.$grup.$nama;
	/*$a="INSERT INTO tbl_user VALUES ('$id', '$user', '$pass', '$grup', '$nama')";
	echo $a;*/
	$koneksi = mysqli_connect($host,$userhost,$passhost,$db) or die ("Koneksi Gagal");
	$mysqli = "INSERT INTO tbl_user VALUES ('$id', '$user', '$pass', '$grup', '$nama')";
	$result = mysqli_query($koneksi, $mysqli);

	if($result){
		echo "<script> alert('Selamat Input Berhasil .'); location = '../tables.php; </script>";
		
		
		}else{
		echo "<script> alert('Maaf Data Gagal Disimpan.'); location = '../tables.php; </script>";
	}
?>