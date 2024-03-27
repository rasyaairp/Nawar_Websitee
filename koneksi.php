<?php 
$koneksi = mysqli_connect("localhost","root","daniel123","nawar_store");
 
// Check connection
if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 
