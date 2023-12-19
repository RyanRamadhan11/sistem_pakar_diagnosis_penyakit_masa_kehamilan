<?php
  include 'koneksi.php';
?>

<!doctype html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/user/home.css">
    <link rel="icon" type="img/png" href="assets/img/Logo_Nav.png">
    <script src="https://kit.fontawesome.com/807ea63ce3.js" crossorigin="anonymous"></script>
    <title>Sistem Pakar Diagnosis Penyakit Saat Kehamilan</title>
  </head>

  <body>
    <nav class="nav-custom navbar navbar-expand-lg navbar-light fixed-top" >
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
              <a class="nav-link" href="#konsultasi">Konsultasi</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">About</a>
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

    <div id="home">
      <div class="container" style="margin-bottom: 6em;">
        <div class="row custom-section">
          <div class="col-12 col-lg-4 mt-5 mb-4">
            <h2 >Sistem Pakar</h2>
            <h3 style="margin-top: 15px; font-family: Rockwell;">Diagnosis Penyakit</h3>
            <h3 style="margin-top: 25px; font-family: Rockwell;">Saat Kehamilan</h3>
            <p style="text-align: justify; margin-top: 3em;">
            Ibu hamil umumnya mengharapkan masa kehamilan dapat berjalan baik dan lancar hingga proses persalinan. 
            Namun, dapat juga terjadi gangguan berupa masalah kesehatan yang rentan dialami ibu hamil. 
            </p>
            <p style="text-align: justify; margin-top: 0.5em;">
            Maka dari itu, penting bagi calon ibu untuk sering mengecek kondisi selama masa kehamilan agar dapat melakukan 
            langkah penanganan sedini mungkin.
            </p>
            <a style="margin-top: 2em;" class="mb-5" href="#konsultasi">Mulai Konsultasi
            <img src="assets/img/next.png" alt="" style="width: 30px; height: 30px; margin-left: 10px; ">
            </a>
          </div>
        </div>
      </div>
    </div>

    <div id="about">
      <div class="container mt-5" style="padding-top: 100px; padding-bottom: 5em;">
        <div class="row justify-content-center">
          <div class="col-sm-12">
            <div class="row">
              <div class="col-sm-2" style="padding-top: 40px; padding-left: 50px;">
                <center>
                  <img src="assets/img/Logo_Nav.png" alt="" style="width: 10rem; height: 10rem;">
                </center>
              </div>
              <div class="col-sm-10">
                <h3 style="font-weight: bold; font-family: Rockwell; padding-top: 30px;">
                  <center>
                    Sistem Pakar Diagnosis Penyakit Berdasarkan Keluhan Saat Kehamilan
                    Menggunakan Metode Forward Chaining Dan Certainty Factor 
                  </center>
                </h3>
                <br>
                <div class="row justify-content-center">
                  <div class="col-sm-10">
                    <center>
                    <p style="font-weight: 600;">Sistem Pakar ini dapat melakukan diagnosis dini penyakit Saat Kehamilan dengan cara 
                      menerapkan pengetahuan yang diperoleh dari seorang pakar dan beberapa studi literatur. 
                      Sistem ini hanya dapat melakukan sampai tahap diagnosis awal, untuk tindakan selanjutnya
                      pasien diharapkan datang langsung ke layanan kesehatan.
                    </p>
                    </center>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row justify-content-center pakar">
          <div class="col-sm-5 cardpakar1">
            <div class="card" style="font-weight: 500; height: auto; border-color: darkcyan;">
              <div class="card-header" style="font-weight: bold; background-color: darkcyan; text-align: center; color: white;">
                PAKAR
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-3">
                    <img src="assets/img/dr_farid.jpg" class="img-thumbnail" width="120px" style="height: 120px; padding: 5px;" alt="Dr. M. Farid Ghazali, Sp.OG">
                  </div>
                  <div class="col-sm-9">
                    <h5 class="card-title" style="font-weight: bold;">dr. M. Farid Ghazali, Sp.OG (K)., M.Kes.</h5>
                    <p class="card-text">seorang Dokter Spesialis Obstetri dan Ginekologi</p>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item"><b>Riwayat Pendidikan</b>
                        <li class="list-group-item">
                          <p class="mb-1" >S1 – Fakultas Kedokteran Universitas Sebelas Maret (UNS) Surakarta</p>
                          <p class="mb-1" >S2 – Magister Kesehatan Universitas Padjadjaran</p>
                          <p class="mb-1" >Spesialis 1 – Obgyn Universitas Padjadjaran</p>
                          <p class="mb-1" >Spesialis 2 – Konsultan Obgyn Universitas Padjadjaran</p>
                        </li>
                      </li>
                    </ul>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item"><b>Riwayat Praktek</b>
                        <li class="list-group-item">
                          <p class="mb-1" >RSUD Karawang (2008)</p>
                          <p class="mb-1" >RS Rosela Karawang (2010 - Sekarang)</p>
                          <p class="mb-1" >Klinik Utama Mitra Bunda Amanda Karawang (2010 - Sekarang)</p>
                        </li>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-5">
            <div class="card pengembang" style="font-weight: 500; height: auto; border-color: darkcyan;">
              <div class="card-header" style="font-weight: bold; background-color: darkcyan; text-align: center; color: white;">
                PENGEMBANG
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-3">
                    <img src="assets/img/ryan.jpg" class="img-thumbnail" style="width: 120px; height: 120px; padding: 5px;" alt="Dr. M. Farid Ghazali, Sp.OG">
                  </div>
                  <div class="col-sm-9" style="font-weight: 500;">
                    <h5 class="card-title" style="font-weight: bold;">Ryan Ramadhan</h5>
                    <p class="card-text"><b></b> Mahasiswa Informatika Fakultas Ilmu Komputer di Universitas Singaperbangsa Karawang</p>
                    <ul class="list-group list-group-flush">
                      <li class="list-group-item"><b>Program Studi</b>
                        <li class="list-group-item" style="padding-left: 15px; font-weight: 500;">Informatika - Universitas Singaperbangsa Karawang </li>
                      </li>
                      <li class="list-group-item"><b>Riwayat Pendidikan</b>
                        <li class="list-group-item">
                          <p class="mb-1" style="padding-left: 15px; font-weight: 500;">SD Negeri 2 Rawagempol Wetan</p>
                        </li>
                        <li class="list-group-item">
                          <p class="mb-1" style="padding-left: 15px; font-weight: 500;">SMP Negeri 2 Cilamaya Wetan</p>
                        </li>
                        <li class="list-group-item">
                          <p class="mb-1" style="padding-left: 15px; font-weight: 500;">SMA NEGERI 1 CILAMAYA</p>
                        </li>
                      </li>
                      <li class="list-group-item"><b>Email</b>
                        <li class="list-group-item" style="font-weight: 500;">ryan.ramadhan19229@student.unsika.ac.id</li>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div id="konsultasi" style="padding-top: 80px; padding-bottom: 50px;" >
      <div class="container" >
        <div class="row-cols-auto">
        <div class="col" style="text-align: center;">
            <h2>Tahap Awal Konsultasi</h2>
            <h3 style="margin-top: 10px; margin-bottom: 20px;">Form Data Diri Pengguna</h3>
          </div>
          <div class="row mt-2" style="justify-content: center;">
            <div class="col-md-6">
              <form action="controllers-konsul.php" method="POST">
                <div class="mb-3">
                  <input type="hidden" class="form-control" id="id_pasien" name="id_pasien" aria-describedby="id_pasien">
                </div>
                <div class="mb-3">
                  <label for="nama_pasien" class="form-label" style="font-weight: 500;">Nama Lengkap</label>
                  <input type="text" class="form-control" id="nama_pasien" name="nama_pasien" aria-describedby="nama_pasien" required>
                </div>
                <div class="mb-3">
                  <label for="usia" class="form-label" style="font-weight: 500;">Usia</label>
                  <input type="text" class="form-control" id="usia" name="usia" aria-describedby="usia" required>
                </div>
                <div class="mb-3">
                  <label for="email" class="form-label" style="font-weight: 500;">Email</label>
                  <input type="email" class="form-control" id="email" name="email" aria-describedby="email" required>
                </div>
                <div class="mb-2">
                  <label for="alamat" class="form-label" style="font-weight: 500;">Alamat</label>
                  <div class="form-floating">
                    <textarea class="form-control" placeholder="Leave a comment here" id="alamat" name="alamat" style="height: 100px" required></textarea>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary" style="font-weight: 600;" name="user">Kirim</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer class="p-3">
      <p> Copyright © 2023 || Created by <span style="color: #e25555;">&#9829;</span> 
        <a href="https://www.instagram.com/rynrss_/">Ryan Ramadhan</a> 
      </p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" 
      crossorigin="anonymous">
    </script>

  </body>
</html>