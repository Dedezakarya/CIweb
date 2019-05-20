<?php
include 'config/koneksi.php';
$_SESSION["admin"] = "username";

if(count($_POST)>0) {
$result = mysql_query("SELECT *from admin WHERE username='" . $_SESSION["username"] . "'");
$row=mysql_fetch_array($result);
if($_POST["currentPassword"] == $row["password"]) {
mysql_query("UPDATE user set password='" . $_POST["newPassword"] . "' WHERE username='" . $_SESSION["username"] . "'");
$message = "Password Changed";
} else $message = "Current Password Tidak Valid";
}
?>