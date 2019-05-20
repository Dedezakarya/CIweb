<?php
include 'koneksi.php';
	$user = $_POST['username'];
	$pass = $_POST['password'];
	
	$query = mysqli_query($koneksi,"SELECT * FROM admin WHERE username = '$user'");
	
	$data = mysqli_fetch_array($query);
	$userchek = $data['username'];
	$passchek = $data['password'];
	
	$count = mysqli_num_rows($query);
	if($count == 1){
		if($passchek == $pass){
			header("location:index.php");
			session_start();
			$_SESSION['login']= $userchek;
		}else{
			header("location:login.php");
		}
	}else{
		header("location:login.php");
	}
?>