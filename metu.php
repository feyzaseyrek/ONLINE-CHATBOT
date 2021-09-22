<?php


$servername = "localhost";
$database = "metu";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}
 
echo "Connected successfully<br>";

$dosya = fopen ("sorular.csv" , "r+"); // Dosyayı okuma+binary kipinde açma
while ( !feof ($dosya) ) { // Dosyanın sonu değilse
$satir = fgetcsv ($dosya, 4096, ";"); // Dosyayı (;) karakterinden bölme
@$sql = "insert into bidb (sorular,etiketler) values ('$satir[0]', '$satir[1]')";   
if (mysqli_query($conn, $sql)) {
    echo "";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
}

fclose ($dosya); // Dosya kapatma
mysqli_close($conn);


 //LİSTELEME İŞLEMİ
 echo "<table border='1'>
 <tr>
 <td>NUMARA</td>
 <td>SORULAR</td>
 <td>CEVAPLAR1</td>
 <td>CEVAPLAR2</td>
 <td>ETİKETLER</td>
 <td>DEĞERLENDİRME SKORU</td>
 
 
 
 </tr>";
 
 
 $baglanti = mysqli_connect($servername, $username, $password, $database);
 $sorgu = mysqli_query($baglanti,"select * from bidb");

 //SİLME İŞLEMİ
 $kayitno = @$_GET["id"];
 if ($kayitno>0) {
     mysqli_query($baglanti,"delete from bidb where id='$kayitno'");
     $sonuc = mysqli_affected_rows($baglanti);
     if ($sonuc>0) {echo "$sonuc Kayıt Silindi.";} else {echo "Kayıt Silinemedi.";}
 }



 while ( $satir = mysqli_fetch_object($sorgu) ) {
     echo "<tr>
     <td>$satir->id</td>
     <td>$satir->sorular</td>
     <td>$satir->cevaplar1</td>
	 <td>$satir->cevaplar2</td>
     <td>$satir->etiketler</td>
	 <td>$satir->degerlendirmeler</td>
    
     
     <td><a href='metu.php?id=$satir->id' onclick='if (!confirm(\"Silmek istediğinize emin misiniz?\")) return false;'>Sil</a></td>
     </tr>";
 }
 echo "</table>";

  

 mysqli_close($baglanti);





?>