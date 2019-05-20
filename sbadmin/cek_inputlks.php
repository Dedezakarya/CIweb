<?php
	
	include "config/koneksi.php";
	$id = $_POST ['id_barang'];
	$nama = $_POST ['nama_barang'];
	$harga = $_POST ['harga'];
	$jumlah = $_POST ['jumlah_barang'];
	$datang = $_POST ['tanggal_datang'];
	$jual = $_POST ['tanggal_jual'];
	
	
	//echo $id.$user.$pass.$grup.$nama;
	/*$a="INSERT INTO tbl_user VALUES ('$id', '$user', '$pass', '$grup', '$nama')";
	echo $a;*/
	$koneksi = mysqli_connect($host,$userhost,$passhost,$db) or die ("Koneksi Gagal");
	$mysqli = "INSERT INTO tbl_lks VALUES ('$id', '$nama', '$harga', '$jumlah', '$datang', '$jual')";
	$result = mysqli_query($koneksi, $mysqli);

	if($result){
		echo "<script> alert('Selamat Input Berhasil .'); location = '../home.php; </script>";
		
		
		}else{
		echo "<script> alert('Maaf Data Gagal Disimpan.'); location = '../forminputlks.php; </script>";
	}
?>