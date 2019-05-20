<?php
	
	include "config/koneksi.php";
	$NIS = $_POST ['NIS'];
	$kelas = $_POST ['id_kelas'];
	$nama = $_POST ['nama_siswa'];
	$tempatLahir = $_POST ['tempat_lahir'];
	$tanggalLahir = $_POST ['tanggal_lahir'];
	$jenisKelamin = $_POST ['jenis_kelamin'];
	$agama = $_POST ['agama'];
	$anakKe = $_POST ['anak_ke'];
	$alamat = $_POST ['alamat_siswa'];
	$kota = $_POST ['kota'];
	$telepon = $_POST ['telepon'];
	$asal = $_POST ['sekolah_asal'];
	$namaAyah = $_POST ['nama_ayah'];
	$namaIbu = $_POST ['nama_ibu'];
	$alamatOrtu = $_POST ['alamat_ortu'];
	$telpOrtu = $_POST ['telepon_ortu'];
	$pekerjaanAyah = $_POST ['pekerjaan_ayah'];
	$pkribu = $_POST ['pekerjaan_ibu'];
	$namaWali = $_POST ['nama_wali'];
	$alamatWali = $_POST ['alamat_wali'];
	$telpWali = $_POST ['telepon_wali'];
	$pekerjaanWali = $_POST ['pekerjaan_wali'];
	$tanggungan = $_POST ['jumlah_tanggungan'];
	
	
	//echo $id.$user.$pass.$grup.$nama;
	/*$a="INSERT INTO tbl_user VALUES ('$id', '$user', '$pass', '$grup', '$nama')";
	echo $a;*/
	$koneksi = mysqli_connect($host,$userhost,$passhost,$db) or die ("Koneksi Gagal");
	$mysqli = "INSERT INTO tbl_datasiswa VALUES ('$NIS', '$kelas','$nama', '$tempatLahir', '$tanggalLahir', '$jenisKelamin', '$agama', '$anakKe','$alamat', '$kota', '$telepon', '$asal', '$namaAyah', '$namaIbu','$alamatOrtu', '$telpOrtu', '$pekerjaanAyah', '$pkribu, '$namaWali', '$alamatWali','$telpWali', '$pekerjaanWali', '$tanggungan')";
	$result = mysqli_query($koneksi, $mysqli);

	if($result){
		echo "<script> alert('Selamat Input Berhasil .'); location = '../datasiswa.php; </script>";
		
		
		}else{
		echo "<script> alert('Maaf Data Gagal Disimpan.'); location = '../FormInput.php; </script>";
	}
?>