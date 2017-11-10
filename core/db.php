<?php
    $server = 'localhost';
    $user = 'root';
    $password = '';
    $db = 'newsbay';

   $conn = mysqli_connect($server,$user,$password,$db);
   mysqli_query($conn, "SET NAMES utf8");

if(!$conn){
     die("Connection faild:".mysqli_connect_error());
}

?>

