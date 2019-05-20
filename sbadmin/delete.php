<?php
include 'koneksi.php';

$id = $ GET['id'];
$query = mysqli_query($koneksi, "DELETE FROM 'user' WHERE 'id' $id");

header("location:tables.php");
?>