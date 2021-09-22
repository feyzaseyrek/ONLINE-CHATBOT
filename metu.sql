-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Eyl 2021, 09:01:30
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `metu`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bidb`
--
-- metu.bidb tablosu için yapı okuma hatası: #1932 - Table 'metu.bidb' doesn't exist in engine
-- metu.bidb tablosu için veri okuma hatası: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `metu`.`bidb`' at line 1

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `sorular` varchar(250) NOT NULL,
  `cevaplar1` varchar(250) NOT NULL,
  `cevaplar2` varchar(250) NOT NULL,
  `etiketler` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `chatbot`
--

INSERT INTO `chatbot` (`id`, `sorular`, `cevaplar1`, `cevaplar2`, `etiketler`) VALUES
(1, 'EBYS\'de E-imzayı nasıl kullanabilirim?', 'https://faq.cc.metu.edu.tr/tr/sss/ebysde-e-imzayi-nasil-kullanabilirim', 'https://faq.cc.metu.edu.tr/tr/sss/e-imza-nedir', 'e-imza, EBYS'),
(2, 'E-imza nedir?', 'https://faq.cc.metu.edu.tr/tr/sss/e-imza-nedir', 'https://faq.cc.metu.edu.tr/tr/sss/e-imza-sertifikamin-gecerlilik-suresi-doldudolmak-uzere-yenileme-basvurusunu-nasil-yapabilirim', 'e-imza'),
(3, 'VPN Hizmeti ile ilgili sorun yaşıyorum. Ne yapmalıyım?', 'https://faq.cc.metu.edu.tr/tr/sss/vpn-hizmeti-ile-ilgili-sorun-yasiyorum-ne-yapmaliyim', '', 'vpn, sorun'),
(4, 'ODTÜ kullanıcı hesabımı kullanarak nasıl web sayfası oluşturabilirim?', 'https://faq.cc.metu.edu.tr/tr/sss/odtu-kullanici-hesabimi-kullanarak-nasil-web-sayfasi-olusturabilirim', 'https://faq.cc.metu.edu.tr/tr/sss/kullanici-hesabi-alirken-yasanabilecek-sorunlar', 'kullanıcı, hesap'),
(5, 'ODTÜ Kullanıcı Kodu Şifre ve Kurtarma E-Postası İşlemleri', 'https://faq.cc.metu.edu.tr/tr/sss/odtu-kullanici-kodu-sifre-ve-kurtarma-e-postasi-islemleri', 'https://faq.cc.metu.edu.tr/tr/sss/kullanici-hesabi-alirken-yasanabilecek-sorunlar', 'kullanıcı, şifre, kod'),
(6, 'E-imza sertifikamın geçerlilik süresi doldu/dolmak üzere, yenileme başvurusunu nasıl yapabilirim?', 'https://faq.cc.metu.edu.tr/tr/sss/e-imza-sertifikamin-gecerlilik-suresi-doldudolmak-uzere-yenileme-basvurusunu-nasil-yapabilirim', '', 'e-imza, sertifika'),
(7, 'Yeni Kayıt Olan Öğrenciler', 'https://faq.cc.metu.edu.tr/tr/sss/yeni-kayit-olan-ogrenciler', '', 'yeni,öğrenciler'),
(8, 'Şifremi nasıl değiştirebilirim? Yeni şifre seçerken nelere dikkat etmeliyim?', 'https://faq.cc.metu.edu.tr/tr/sss/sifremi-nasil-degistirebilirim-yeni-sifre-secerken-nelere-dikkat-etmeliyim', '', 'yeni, şifre'),
(9, '\"abc-l\" listesi üyeliğinden çıkmak istiyorum, nasıl yapabilirim?', 'https://faq.cc.metu.edu.tr/tr/sss/abc-l-listesi-uyeliginden-cikmak-istiyorum-nasil-yapabilirim', '', 'abc-l, liste, üyelik'),
(10, '\"abc-l\" listesine üyeyim fakat listeden bana mesaj gelmiyor. Neden?', 'https://faq.cc.metu.edu.tr/tr/sss/abc-l-listesine-uyeyim-fakat-listeden-bana-mesaj-gelmiyor-neden', '', 'abc-l, liste, üyelik, mesaj'),
(11, 'Nitelikli Elektronik Sertifika (e-imza) için nasıl E-ONAY verilir?', 'https://faq.cc.metu.edu.tr/tr/sss/nitelikli-elektronik-sertifika-e-imza-icin-nasil-e-onay-verilir', '', 'nitelik, e-imza, e-onay, elektronik');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
