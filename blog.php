<?php
  include 'koneksi.php';
?>

<!doctype html>
  <html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!-- CSS -->
    <link rel="stylesheet" href="assets/css/user/blog.css">
    <link rel="icon" type="img/png" href="assets/img/Logo_Nav.png">
    <script src="https://kit.fontawesome.com/807ea63ce3.js" crossorigin="anonymous"></script>
    <title>Sistem Pakar Diagnosis Penyakit Saat Kehamilan</title>
  </head>

<body id="home" style="color: black;">
  <nav class="nav-custom navbar navbar-expand-lg navbar-light fixed-top" >
    <div class="container pt-2">
      <a class="navbar-brand" href="#">
        <img src="assets/img/Logo_Nav.png" alt="" >
        <span style="font-family: Rockwell;">SISPAKEH</span>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-end" id="navbarNav" style="font-weight: 600;">
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

  <main id="main">
    <section id="breadcrumbs" class="breadcrumbs" style="margin-top: 100px;">
      <div class="container" style="font-weight: 600;">
        <ol>
          <li>Home</li>
          <li>Blog</li>
        </ol>
        <h2>Sistem Pakar Diagnosis Penyakit Berdasarkan 
          Keluhan Saat Kehamilan Menggunakan Metode Forward Chaining Dan Certainty Factor</h2>
      </div>
    </section>

    <section id="blog" class="blog">
      <div class="container" data-aos="fade-up">
        <div class="row">
          <div class="col-lg-8 entries">
            <article class="entry entry-single">
              <div class="entry-img">
                <img src="assets/img/bg-kandungan.png" alt="" class="img-fluid" style="width: 150rem;">
              </div>
              <div class="entry-meta" style="font-weight: 600;">
                <ul>
                  <li class="d-flex align-items-center"><i class="fa fa-user"></i> <a href="#">Ryan Ramadhan</a></li>
                  <li class="d-flex align-items-center"><i class="fa fa-clock"></i> <a href="#"><time datetime="2020-01-01">6 Juni, 2023</time></a></li>
                  <li class="d-flex align-items-center"><i class="fa fa-address-card-o" aria-hidden="true"></i><a href="#">Fasilkom Unsika</a></li>
                </ul>
              </div>

              <div class="entry-content">
                <p style="font-weight: 600;">
                Menjaga kondisi kesehatan adalah sesuatu yang sangat penting bagi ibu hamil. Beberapa penyakit bisa 
                berakibat fatal bagi ibu maupun janin. Kadang kala gejala penyakit terlihat sederhana 
                namun hal ini adalah indikasi munculnya penyakit berbahaya. 
                </p>
                <blockquote>
                  <p style="font-weight: 600;">
                  Mengetahui penyakit berbahaya pada ibu hamil adalah hal penting agar Anda bisa melakukan tindakan pencegahan sedini 
                  mungkin, atau bisa melakukan tindakan secepatnya jika gejala penyakit ibu hamil tersebut muncul.</p>
                </blockquote>

                <h3>Penjelasan 6 Jenis Penyakit Saat Kehamilan</h3>
                <h3>1. Hiperemesis Gravidarum</h3>
                <p style="font-weight: 600;">
                  Hiperemesis gravidarum adalah mual dan muntah yang terjadi secara berlebihan selama hamil. Mual dan muntah 
                  (morning sickness) pada kehamilan trimester awal sebenarnya normal. Namun, pada hiperemesis gravidarum, 
                  mual dan muntah dapat terjadi sepanjang hari dan berisiko menyebabkan dehidrasi.
                </p>

                <h3>2. Preeklampsia</h3>
                <p style="font-weight: 600;">
                  Preeklamsia adalah peningkatan tekanan darah dan kelebihan protein dalam urine yang terjadi setelah 
                  usia kehamilan lebih dari 20 minggu. Bila tidak segera ditangani, preeklamsia bisa menyebabkan 
                  komplikasi yang berbahaya bagi ibu dan janin.
                </p>

                <h3>3. Anemia</h3>
                <p style="font-weight: 600;">
                  Kurang darah atau anemia adalah kondisi ketika tubuh kekurangan sel darah merah yang sehat atau 
                  ketika sel darah merah tidak berfungsi dengan baik. Akibatnya, organ tubuh tidak mendapat cukup 
                  oksigen sehingga membuat penderita anemia pucat dan mudah lelah.
                </p>
                
                <h3>4. Abortus</h3>
                <p style="font-weight: 600;">
                  Abortus atau yang lebih sering disebut keguguran adalah kematian janin dalam kandungan sebelum usia
                  kehamilan mencapai 20 minggu. Anda mungkin belum tahu macam-macam abortus yang bisa terjadi selama 
                  kehamilan. Apa sajakah itu? Simak ulasannya berikut ini.
                </p>

                <h3>5. Ketuban Pecah Dini</h3>
                <p style="font-weight: 600;">
                  Ketuban pecah dini adalah kondisi ketika kantung ketuban pecah sebelum persalinan dimulai. Kondisi 
                  ini bisa terjadi ketika perkembangan janin belum sempurna, yaitu sebelum minggu ke-37 masa kehamilan. 
                  Namun, kondisi ini juga dapat terjadi ketika perkembangan janin telah sempurna.
                </p>

                <h3>6. Plasenta Previa</h3>
                <p style="font-weight: 600;">
                  Plasenta previa adalah kondisi ketika ari-ari atau plasenta berada di bagian bawah rahim sehingga 
                  menutupi sebagian atau seluruh jalan lahir. Selain menutupi jalan lahir, plasenta previa juga dapat 
                  menyebabkan perdarahan hebat, baik sebelum maupun saat persalinan.
                </p>
              </div>

              <div class="entry-footer">
                <i class="fa fa-folder"></i>
                <ul class="cats" style="font-weight: 600;">
                  <li><a href="#">Sistem Pakar </a></li>
                </ul>

                <i class="fa fa-tags"></i>
                <ul class="tags" style="font-weight: 600;">
                  <li><a href="#">Hiperemesis gravidarum</a></li>
                  <li><a href="#">Preeklampsia</a></li>
                  <li><a href="#">Anemia</a></li>
                  <li><a href="#">Abortus</a></li>
                  <li><a href="#">Ketuban Pecah Dini</a></li>
                  <li><a href="#">Plasenta Previa</a></li>
                </ul>
              </div>
            </article>
          </div>

          <div class="col-lg-4">
            <div class="sidebar" style="font-weight: 600;">
              <h3 class="sidebar-title">Search</h3>
              <div class="sidebar-item search-form">
                <form action="">
                  <input type="text">
                  <button type="submit"><i class="fa fa-search"></i></button>
                </form>
              </div>

              <h3 class="sidebar-title">Jenis Penyakit</h3>
              <div class="sidebar-item recent-posts">
                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft1.jpg" alt="">
                  <h4><a target="_blank" href="https://www.halodoc.com/artikel/alami-hiperemesis-gravidarum-benarkah-berpotensi-keguguran">Hiperemesis gravidarum</a></h4>
                  <time datetime="2020-01-01">Sumber : www.halodoc.com</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft2.jpg" alt="">
                  <h4><a target="_blank" href="https://www.halodoc.com/artikel/penyebab-utama-terjadinya-kejang-pada-ibu-hamil">Preeklampsia</a></h4>
                  <time datetime="2020-01-01">Sumber : www.halodoc.com</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft3.jpg" alt="">
                  <h4><a target="_blank" href="https://www.alodokter.com/anemia">
                    Anemia</a></h4>
                  <time datetime="2020-01-01">Sumber : www.alodokter.com</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft1.jpg" alt="">
                  <h4><a target="_blank" href="https://www.halodoc.com/artikel/3-jenis-keguguran-yang-perlu-diwaspadai">Abortus</a></h4>
                  <time datetime="2020-01-01">Sumber : www.halodoc.com</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft5.jpg" alt="">
                  <h4><a target="_blank" href="https://www.halodoc.com/artikel/ketuban-pecah-ini-tanda-tanda-melahirkan">Ketuban Pecah Dini</a></h4>
                  <time datetime="2020-01-01">Sumber : www.halodoc.com</time>
                </div>

                <div class="post-item clearfix">
                  <img src="assets/img/blog-ft6.png" alt="">
                  <h4><a target="_blank" href="https://www.alodokter.com/plasenta-previa#:~:text=Gejala%20Plasenta%20Previa,Berwarna%20merah%20cerah">
                    Plasenta Previa</a></h4>
                  <time datetime="2020-01-01">Sumber : www.alodokter.com</time>
                </div>

              </div><!-- End sidebar recent posts-->

              <h3 class="sidebar-title">Tags Penyakit Saat Kehamilan</h3>
              <div class="sidebar-item tags" >
                <ul >
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.halodoc.com/artikel/alami-hiperemesis-gravidarum-benarkah-berpotensi-keguguran">HEG</a></li>
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.halodoc.com/artikel/penyebab-utama-terjadinya-kejang-pada-ibu-hamil">Preeklampsia</a></li>
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.alodokter.com/anemia">Anemia</a></li>
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.halodoc.com/artikel/3-jenis-keguguran-yang-perlu-diwaspadai">Abortus</a></li>
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.halodoc.com/artikel/ketuban-pecah-ini-tanda-tanda-melahirkan">Ketuban Pecah Dini</a></li>
                  <li><a style="font-weight: 600;" target="_blank" href="https://www.alodokter.com/plasenta-previa#:~:text=Gejala%20Plasenta%20Previa,Berwarna%20merah%20cerah">
                    Plasenta Previa</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <footer class="p-3">
    <p> Copyright © 2023 || Created by <span style="color: #e25555;">&#9829;</span> 
      <a href="https://www.instagram.com/rynrss_/">Ryan Ramadhan</a> 
    </p>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" 
  integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>

</html>