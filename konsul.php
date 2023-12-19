<?php
  include('koneksi.php');
  session_start();
  if ($_SESSION['id_pasien'] == NULL) {
    echo "<script>alert('Silakan isi form data diri terlebih dahulu yaa!'); window.location=('form-datadiri.php');</script>";
  }
  $id_pasien = $_SESSION['id_pasien'];
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/user/konsultasi.css">
    <link rel="icon" type="img/png" href="assets/img/Logo_Nav.png">
    <script src="https://kit.fontawesome.com/807ea63ce3.js" crossorigin="anonymous"></script>
    <title>Sistem Pakar Diagnosis Penyakit Saat Kehamilan</title>
  </head>

  <body>
    <nav class="nav-custom navbar navbar-expand-lg navbar-light fixed-top">
      <div class="container pt-2">
        <a class="navbar-brand" href="#">
          <img src="assets/img/Logo_Nav.png" alt="" >
          <span style="font-family: Rockwell;">SISPAKEH</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="form-datadiri.php">Konsultasi</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.php">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="blog.php">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn btn-signup" href="login.php">Login Admin</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div id="box-warning">
      <div class="container mt-5" style="padding-top: 10em">
        <div class="row justify-content-center">
          <div class="col-auto mt-3">
            <h2 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; text-align: center; margin-bottom: 50px; color: mediumblue;">FORM KONSULTASI</h2>
            <div class="card" style="background-color: honeydew; border-radius: 20px;">
              <div class="card-header" style="display: flex;">
                <i class="fa fa-newspaper-o" style="padding-top: 8px; padding-right: 8px;" aria-hidden="true"></i>
                <h4 style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-weight: 500;">Informasi</h4>
              </div> 
              <div class="card-body">
                <p class="card-text p-2" style="font-weight: 500; text-align: justify;">
                  Dibawah ini terdapat gejala atau keluhan penyakit Saat Kehamilan, Silahkan pilih gejala atau keluhan
                  dibawah yang sesuai dengan kondisi anda. 
                  Gejala dipilih dengan tingkat kepastian Tidak/Sedikit Yakin/Cukup Yakin/Yakin/Sangat Yakin. Setelah selesai memilih gejala silahkan anda tekan
                  tombol <b>Cek Diagnosis</b> untuk dapat melihat hasil dari diagnosis Sistem Pakar.
                </p>
                <p class="card-text p-2" style="font-weight: 500; text-align: justify;">
                  <b>Note : </b> Pengguna atau Pasien diperbolehkan untuk tidak menjawab pertanyaan mengenai pemeriksaan <b>Hasil Lab, Hasil tes Lakmus, dan Hasil USG.</b>
                </p>
              </div>
            </div>
        </div>
      </div>
      </div>
    </div>

    <div id="table-gejala">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-9">
            <form action="hasil-konsultasi.php" method="POST">
              <table class="table table-responsive-md table-bordered mt-5 table-hover p-2" >
                <thead>
                  <tr style="background-color: darkcyan; color: white; text-align: center; font-weight: 500;">
                    <th>No</th>
                    <th>Kode Gejala</th>
                    <th>Gejala atau Keluhan Penyakit</th>
                    <th>Kondisi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                  $gejala = mysqli_query($conn, "SELECT * FROM gejala order by kd_gejala");
                  $no = 0;
                  while ($row_gejala = mysqli_fetch_array($gejala)) {
                    $no++;
                  ?>
                    <tr style="background-color: white; text-align: center; font-weight: 500;">
                      <td><?php echo $no ?></td>
                      <td><?php echo $row_gejala['kd_gejala']; ?></td>
                      <td style="text-align: justify;"><?php echo $row_gejala['nama_gejala'] ?></td>
                      <td>
                        <select class="form-select mb-1 form-select-sm" style="font-weight: 500;" name="kondisi[]" id="sl<?php echo $no; ?>">
                          <?php
                          $kondisi = mysqli_query($conn, "SELECT * FROM kondisi order by id_kondisi");
                          while ($row_kondisi = mysqli_fetch_array($kondisi)) {
                          ?>
                            <option data-id="<?php echo $row_kondisi['id_kondisi']; ?>" value="<?php echo $row_gejala['kd_gejala'] . '_' . $row_kondisi['id_kondisi']; ?>"><?php echo $row_kondisi['kondisi']; ?></option>
                          <?php
                          }
                          ?>
                        </select>
                      </td>
                    </tr>
                  <?php
                  }
                  ?>
                </tbody>
              </table>
              <div style="text-align: center;">
              <button type="submit" class="btn btn-primary btn-konsultasi">Cek Diagnosis</button>
              </div>
            </form>
          </div>
        </div>
      </div>

    </div>

    <footer class="p-3" style="margin-top:50px">
      <p> Copyright © 2023 || Created by <span style="color: #e25555;">&#9829;</span> 
        <a href="https://www.instagram.com/rynrss_/">Ryan Ramadhan</a> 
      </p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>