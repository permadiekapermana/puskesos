
<?php
include "../config/koneksi.php";
session_start();
 if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
  echo "<link href='style.css' rel='stylesheet' type='text/css'>
 <center>Untuk mengakses modul, Anda harus login <br>";
  echo "<a href=../../index.php><b>LOGIN</b></a></center>";
}
else{

$pel="AGAM.";
$y=substr($pel,0,4);
$query=mysql_query("select * from agama where substr(id_agama,1,4)='$y' order by id_agama desc limit 0,1");
$row=mysql_num_rows($query);
$data=mysql_fetch_array($query);
if ($row>0){
$no=substr($data['id_agama'],-6)+1;}
else{
$no=1;
}
$nourut=1000000+$no;
$nopel=$pel.substr($nourut,-6);

$aksi="modul/mod_agama/aksi_agama.php";

switch($_GET[act]){
  // Tampil desa
  default:


echo "
<div class='box'>
<div class='box-header'>
  <h3 class='box-title'>Data Agama</h3> <br> <br>
  <a href='?module=Agama&act=tambahagama'><button type='button' class='btn btn-round btn-primary'><i class='fa fa-plus'></i> Tambah</button></a>
</div>
<div class='box-body'>
  <table id='example1' class='table table-bordered table-striped'>
    <thead>
    <tr>
      <th>No.</th>
      <th>ID Agama</th>
      <th>Nama Agama</th>
      <th width='12%'>Action</th>
    </tr>
    </thead>
    <tbody>";
    $tampil = mysql_query("SELECT * FROM `agama` ORDER BY id_agama DESC");

    $no = 1;
    while($r=mysql_fetch_array($tampil)){
    echo"
    <tr>
      <td width='5%'>$no.</td>
      <td>$r[id_agama]</td>
      <td>$r[agama]</td>
      <td width='12%'>        
        <a href='?module=Agama&act=editagama&id=$r[id_agama]' class='btn btn-success btn-xs'><i class='fa fa-pencil'></i> Edit</a>
        <a href='$aksi?module=Agama&act=hapus&id=$r[id_agama]' class='btn btn-danger btn-xs' onClick=\"return confirm('Yakin ingin hapus data ? Data yang dihapus tidak dapat dipulihkan !')\"><i class='fa fa-trash'></i> Delete</a>
      </td>
    </tr>";
    $no++;
    }
    echo"
    </tbody>
  </table>
</div>
</div>
";

break;

case "tambahagama":
echo "
<form  role='form' method='POST' action='$aksi?module=Agama&act=input' enctype='multipart/form-data'>

<div class='box'>
<div class='box-header'>
  <h3 class='box-title'>Tambah Data Agama</h3>
</div>
<div class='row'>
  <div class='col-md-6'>
    <div class='box-body'>
      <div class='form-group'>
      <label for='id_agama'>ID Agama</label>
        <input type='text' class='form-control' name='id_agama' id='id_agama' value='$nopel' placeholder='Masukkan ID Agama' disabled>
        <input type='hidden' class='form-control' name='id_agama' id='id_agama' value='$nopel' placeholder='Masukkan ID Agama'>
      </div>
      <div class='form-group'>
      <label for='agama'>Nama Agama</label>
        <input type='text' class='form-control' name='agama' id='agama' placeholder='Masukkan Nama Agama' required>
      </div>
      <div class='ln_solid'></div>
      <div class='form-group'>
        <button class='btn btn-danger' type='button' onclick=self.history.back()>Cancel</button>
        <button class='btn btn-warning' type='reset'>Reset</button>
        <button type='submit' class='btn btn-success'>Submit</button>        
      </div>  
    </div>
  </div>
</div>
</div>

</form>";

break;
  
case "editagama":

$edit = mysql_query("SELECT * FROM agama WHERE id_agama='$_GET[id]'");
$r    = mysql_fetch_array($edit);

echo"
<form role='form' method='POST' action='$aksi?module=Agama&act=update' enctype='multipart/form-data'>

<div class='box'>
<div class='box-header'>
  <h3 class='box-title'>Edit Data Agama</h3>
</div>
<div class='row'>
  <div class='col-md-6'>
    <div class='box-body'>
      <div class='form-group'>
      <label for='id_agama'>ID Agama</label>
        <input type='text' class='form-control' name='id_agama' id='id_agama' value='$r[id_agama]' placeholder='Masukkan ID Agama' disabled>
        <input type='hidden' class='form-control' name='id_agama' id='id_agama' value='$r[id_agama]' placeholder='Masukkan ID Agama'>
      </div>
      <div class='form-group'>
      <label for='agama'>Nama Agama</label>
        <input type='text' class='form-control' name='agama' id='agama' value='$r[agama]' placeholder='Masukkan Nama Agama' required>
      </div>
      <div class='ln_solid'></div>
      <div class='form-group'>
        <button class='btn btn-danger' type='button' onclick=self.history.back()>Cancel</button>
        <button class='btn btn-warning' type='reset'>Reset</button>
        <button type='submit' class='btn btn-success'>Submit</button>        
      </div>  
    </div>
  </div>
</div>
</div>

</form>
";

break;

}

}       
        
?>


                
               
        
        
        