<?php
// $host = 'localhost';
// $dbusername = 'root';
// $dbpassword = '';
// $dbname = 'sistempakar_kandungan';

$host = 'sql111.infinityfree.com';
$dbusername = 'if0_34490402';
$dbpassword = 'RUzKO0OE9M5NA';
$dbname = 'if0_34490402_db_sistempakarkandungan';

$conn = mysqli_connect($host, $dbusername, $dbpassword, $dbname);
if (!$conn) {
    die("Maaf Database Tidak Terkoneksi :" . mysqli_connect_error());
}

function penyakit($penyakit)
{
    global $conn;
    $result = mysqli_query($conn, $penyakit);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function tambah_penyakit($data)
{
    global $conn;
    //mengambil data dari tiap elemen form
    $kd_penyakit = htmlspecialchars($data["kd_penyakit"]);
    $nama_penyakit = htmlspecialchars($data["nama_penyakit"]);
    $penjelasan = htmlspecialchars($data["penjelasan"]);
    $solusi = htmlspecialchars($data["solusi"]);

    //query insert data
    $query = "INSERT INTO penyakit
			 VALUES
			 ('$kd_penyakit','$nama_penyakit','$penjelasan','$solusi')
			 ";

    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function update_penyakit($data)
{
    global $conn;

    //mengambil data dari tiap elemen form
    $kd_penyakit = $data["kd_penyakit"];
    $nama_penyakit = htmlspecialchars($data["nama_penyakit"]);
    $penjelasan = htmlspecialchars($data["penjelasan"]);
    $solusi = htmlspecialchars($data["solusi"]);

    //query insert data
    $query = "UPDATE penyakit SET 
				nama_penyakit = '$nama_penyakit',
                penjelasan = '$penjelasan',
                solusi = '$solusi'
			    WHERE kd_penyakit = '$kd_penyakit'
			";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function hapus_penyakit($kd_penyakit)
{
    global $conn;
    //query delete data
    mysqli_query($conn, "DELETE FROM penyakit WHERE kd_penyakit = '" . $kd_penyakit . "'");
    return mysqli_affected_rows($conn);
}
