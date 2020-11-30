<?php

$users            = mysql_num_rows(mysql_query("SELECT * FROM users WHERE user_aktif='Y'"));
$penduduk         = mysql_num_rows(mysql_query("SELECT * FROM penduduk WHERE status_penduduk='Hidup'"));
$penduduk_update  = mysql_num_rows(mysql_query("SELECT * FROM penduduk_update WHERE status_perbaikan='Pending'"));
$kis              = mysql_num_rows(mysql_query("SELECT * FROM `kis`
                    INNER JOIN `penduduk` ON `kis`.`id_penduduk` = `penduduk`.`id_penduduk`
                    WHERE status_kis='Berlaku' AND tgl_kadaluwarsa<NOW()"));

?>
<?php
      if ($_SESSION['leveluser']!='penduduk'){
      ?>
<!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?php echo" $users "; ?></h3>

              <p>Jumlah Users</p>
            </div>
            <div class="icon">
              <i class="ion ion-person"></i>
            </div>
            <a href="?module=Users" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo" $penduduk "; ?></h3>

              <p>Jumlah Penduduk</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
            <a href="?module=Penduduk" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo" $penduduk_update "; ?></h3>

              <p>Perbaikan Penduduk</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="?module=ValidPenduduk" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?php echo" $kis "; ?></h3>

              <p>Perbaikan Data KIS</p>
            </div>
            <div class="icon">
              <i class="ion ion-heart"></i>
            </div>
            <a href="?module=PerbaikanKIS" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
<?php
}
?>
      <!-- /.row -->
      <!-- Default box -->
      <?php
      if ($_SESSION['leveluser']=='penduduk'){
      ?>
      <div class="box">
        <div class="box-body">
        
        <h4 style="text-align:justify;">Selamat datang, anda login sebagai penduduk</h4>
        
        </div>
        <br><br><br><br><br><br><br><br><br><br><br>
      </div>
      <?php
      }
      ?>
      <!-- /.box -->