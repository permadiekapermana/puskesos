<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/fungsi_combobox.php";
include "../config/fungsi_rupiah.php";
              
                   
 echo"<div class='right_col' role='main'>
          <div class=''>  ";     
if ($_GET['module']=='Dashboard'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION[leveluser]=='puskesos'){
    include "modul/mod_dashboard/dashboard.php";
  }
}
// Modul Users
elseif ($_GET[module]=='Users'){
   if ($_SESSION['leveluser']=='admin'){
    include "modul/mod_users/users.php";
  }
}
// Modul Users
elseif ($_GET[module]=='Pendidikan'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_pendidikan/pendidikan.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Agama'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_agama/agama.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Pekerjaan'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_pekerjaan/pekerjaan.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Blok'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_blok/blok.php";
 }
}
// Modul Users
elseif ($_GET[module]=='RT'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_rt/rt.php";
 }
}
// Modul Users
elseif ($_GET[module]=='RW'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_rw/rw.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Profile'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_profile/profile.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Penduduk'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_penduduk/penduduk.php";
 }
}
// Modul Users
elseif ($_GET[module]=='VerifPenduduk'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_verpenduduk/verpenduduk.php";
 }
}
// Modul Users
elseif ($_GET[module]=='ValidPenduduk'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_valpenduduk/valpenduduk.php";
 }
}
// Modul Users
elseif ($_GET[module]=='PengajuanKIS'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_pengajuankis/pengajuan.php";
 }
}
elseif ($_GET[module]=='RiwayatPengajuanKIS'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_pengajuankis/riwayat_pengajuan.php";
 }
}
// Modul Users
elseif ($_GET[module]=='KIS'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_kis/kis.php";
 }
}
// Modul Users
elseif ($_GET[module]=='PerbaikanKIS'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_perbaikankis/perbaikankis.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Kematian'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_kematian/kematian.php";
 }
}
// Modul Users
elseif ($_GET[module]=='Kelahiran'){
  if ($_SESSION['leveluser']=='admin'){
   include "modul/mod_kelahiran/kelahiran.php";
 }
}
elseif ($_GET[module]=='LaporanVerif'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_laporan/lap_verif.php";
 }
}
elseif ($_GET[module]=='LaporanPengajuanKIS'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_laporan/lap_kis.php";
 }
}
elseif ($_GET[module]=='LaporanKelahiran'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_laporan/lap_kelahiran.php";
 }
}
elseif ($_GET[module]=='LaporanKematian'){
  if ($_SESSION['leveluser']=='admin' OR $_SESSION['leveluser']=='puskesos'){
   include "modul/mod_laporan/lap_kematian.php";
 }
}

// Modul Profile
elseif ($_GET[module]=='profile'){
  if ($_SESSION['leveluser']=='Admin' OR $_SESSION['leveluser']=='Juri' OR $_SESSION[leveluser]=='Peserta' OR $_SESSION[leveluser]==''){
    include "modul/mod_profile/profile.php";
  }
}
// Modul Password
elseif ($_GET[module]=='password'){
  if ($_SESSION['leveluser']=='Admin' OR $_SESSION['leveluser']=='Juri' OR $_SESSION[leveluser]=='Peserta' OR $_SESSION[leveluser]==''){
    include "modul/mod_password/password.php";
  }
}

else{
  echo "<p><b>MODUL Tidak DITEMUKAN</b></p>";
}		
echo"</div>
</div>";
?>   
