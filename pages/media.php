<?php
  include "../config/koneksi.php";
  error_reporting(0);
  session_start(0); 
  if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
    echo "<script>alert('Untuk mengakses sistem, Anda harus login'); window.location = '../'</script>";
  }
  ?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Desa Kemlaka Gede</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="../bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="../bower_components/jvectormap/jquery-jvectormap.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="../bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../bower_components/bootstrap-daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="shortcut icon" href="images/logo-desa.png">
  <!-- DataTables -->
  <link rel="stylesheet" href="../bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>P</b>KS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>DESA</b> KEMLAKA</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- <img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image"> -->
              <span class="hidden-xs">Panel User</span>
            </a>
            <ul class="dropdown-menu">
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                <a href="?module=Profile" class="btn btn-default btn-flat">Profile</a>
                  <a href="#" data-toggle="modal" data-target="#logoutModal" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->

          
        </ul>
      </div>
    </nav>
  </header>
        <!-- Modal Logout -->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Log Out</h5>
                <button type="button" class="close" data-dismiss="modal">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                Apakah anda yakin ingin Log Out ?
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <a href="logout.php"><button type="button" class="btn btn-primary">Log Out</button></a>
              </div>
            </div>
          </div>
        </div>
        <!-- /Modal Logout -->
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <?php  if ($_SESSION['leveluser']=='admin' ){ ?> 
      <ul class="sidebar-menu" data-widget="tree">
        <li><a href="?module=Dashboard"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-database"></i>
            <span>Data Master</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=Users"><i class="fa fa-circle-o"></i> Users</a></li>
            <li><a href="?module=Agama"><i class="fa fa-circle-o"></i> Agama</a></li>
            <li><a href="?module=Pendidikan"><i class="fa fa-circle-o"></i> Pendidikan</a></li>
            <li><a href="?module=Pekerjaan"><i class="fa fa-circle-o"></i> Pekerjaan</a></li>
            <li><a href="?module=Blok"><i class="fa fa-circle-o"></i> Blok</a></li>
            <li><a href="?module=RW"><i class="fa fa-circle-o"></i> Nomor RW</a></li>
            <li><a href="?module=RT"><i class="fa fa-circle-o"></i> Nomor RT</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Data Penduduk</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=Penduduk"><i class="fa fa-circle-o"></i> Data Penduduk</a></li>
            <li><a href="?module=ValidPenduduk"><i class="fa fa-circle-o"></i> Validasi Perbaikan Data</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-heart"></i>
            <span> Kartu Indonesia Sehat</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=PengajuanKIS"><i class="fa fa-circle-o"></i> Data Pengajuan KIS</a></li>
            <li><a href="?module=RiwayatPengajuanKIS"><i class="fa fa-circle-o"></i> Riwayat Pengajuan KIS</a></li>
            <li><a href="?module=KIS"><i class="fa fa-circle-o"></i> Pendataan KIS</a></li>
            <li><a href="?module=PerbaikanKIS"><i class="fa fa-circle-o"></i> Verifikasi Perbaikan Data</a></li>
          </ul>
        </li>
        <li><a href="?module=Kelahiran"><i class="fa fa-file"></i> <span>Data Kelahiran Penduduk</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i>
            <span> Laporan - Laporan</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=LaporanVerif"><i class="fa fa-circle-o"></i> Laporan Perbaikan Penduduk</a></li>
            <li><a href="?module=LaporanPengajuanKIS"><i class="fa fa-circle-o"></i> Laporan Pengajuan KIS</a></li>
            <li><a href="?module=LaporanKelahiran"><i class="fa fa-circle-o"></i> Laporan Kelahiran</a></li>
          </ul>
        </li>   
      </ul>
      <?php } elseif ($_SESSION['leveluser']=='puskesos' ){ ?> 
      <ul class="sidebar-menu" data-widget="tree">
        <li><a href="?module=Dashboard"><i class="fa fa-home"></i> <span>Dashboard</span></a></li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Data Penduduk</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=VerifPenduduk"><i class="fa fa-circle-o"></i> Verifikasi Perbaikan Data</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-heart"></i>
            <span> Kartu Indonesia Sehat</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=PengajuanKIS"><i class="fa fa-circle-o"></i> Data Pengajuan KIS</a></li>
            <li><a href="?module=RiwayatPengajuanKIS"><i class="fa fa-circle-o"></i> Riwayat Pengajuan KIS</a></li>
            <li><a href="?module=KIS"><i class="fa fa-circle-o"></i> Data KIS</a></li>
            <li><a href="?module=PerbaikanKIS"><i class="fa fa-circle-o"></i> Verifikasi Perbaikan Data</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i>
            <span> Laporan - Laporan</span>
          </a>
          <ul class="treeview-menu">
            <li><a href="?module=LaporanPengajuanKIS"><i class="fa fa-circle-o"></i> Laporan Pengajuan KIS</a></li>
          </ul>
        </li> 
      </ul>      
      
      <?php }?>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      <?php echo " $_GET[module]"; ?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="?module=Dashboard"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active"><?php echo " $_GET[module]"; ?></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    <?php include "content.php"; ?> 
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>PUSKESOS</b> Kemlaka Gede
    </div>
    <strong>Copyright &copy; 2020 Desa Kemlaka Gede.</strong> All rights
    reserved.
  </footer>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="../bower_components/raphael/raphael.min.js"></script>
<script src="../bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="../bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../bower_components/moment/min/moment.min.js"></script>
<script src="../bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- DataTables -->
<script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
</body>
</html>
