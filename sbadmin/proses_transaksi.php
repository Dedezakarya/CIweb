<?php 
session_start();
if(isset($_SESSION['login'])){
	include "koneksi.php";
	if($_GET['act']=='bayar'){

		$idspp 	= $_GET['id'];
		$nis	= $_GET['NIS'];

		//membuat nomor pembayaran
		$today = date("ymd");
		$query = mysqli_query($koneksi, "SELECT max(id_transaksi) AS last FROM tbl_transaksi WHERE id_transaksi LIKE '$today%'");
		$data = mysqli_fetch_array($query);
		$lastNoBayar	= $data['last'];
		$lastNoUrut		= substr($lastNoBayar, 6, 4);
		$nextNoUrut		= $lastNoUrut + 1;
		$nextNoBayar	= $today.sprintf('%04s', $nextNoUrut);

		//tanggal Bayar
		$tglBayar 	= date('Y-m-d');

		//id admin
		$admin = $_SESSION['id'];

		mysqli_query($koneksi, "UPDATE tbl_transaksi SET id_transaksi='$nextNoBayar',
											tanggal_transaksi='$tglBayar',
											ket='LUNAS',
											NIP='$admin'
									WHERE idspp='$idspp'");

		header('location:transaksi.php?NIS='.$nis);
	}
}
?>