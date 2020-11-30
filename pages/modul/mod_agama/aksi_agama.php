<?php
error_reporting(0);
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{
include "../../../config/koneksi.php";
include "../../../config/library.php";
include "../../../config/fungsi_thumb.php";

$module=$_GET[module];
$act=$_GET[act];

// Input users
if ($module=='Agama' AND $act=='input'){

$id_agama     = $_POST['id_agama'];
$agama        = $_POST['agama'];

$query=mysql_query("INSERT INTO agama (id_agama, agama) VALUES ('$id_agama', '$agama')");   
header('location:../../media.php?module='.$module);
  
}

// Update perangkatdesa
elseif ($module=='Agama' AND $act=='update'){    

$id_agama     = $_POST['id_agama'];
$agama        = $_POST['agama'];
  
$query=mysql_query("UPDATE agama SET agama='$agama' WHERE id_agama='$id_agama'"); 							 
header('location:../../media.php?module='.$module);

}

elseif ($module=='Agama' AND $act=='hapus'){

mysql_query("DELETE FROM agama WHERE id_agama='$_GET[id]'");
header('location:../../media.php?module='.$module);

}

}

?>
