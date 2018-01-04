/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : proje

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 04/01/2018 14:56:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for arabalar
-- ----------------------------
DROP TABLE IF EXISTS `arabalar`;
CREATE TABLE `arabalar`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `secim` set('Sunroof','Otomatik Vites','Dağ Aracı','Dizel') CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '',
  `karar` enum('Kırmızı','Siyah','Mavi') CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tarih` datetime(0) NULL DEFAULT NULL,
  `test` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `param` decimal(5, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE,
  FULLTEXT INDEX `full_text_arama_1`(`test`, `title`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for haberler
-- ----------------------------
DROP TABLE IF EXISTS `haberler`;
CREATE TABLE `haberler`  (
  `id_haber` int(11) NOT NULL AUTO_INCREMENT,
  `haber_baslik` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `haber_resim_id` int(11) NULL DEFAULT NULL,
  `haber_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `haber_bolum` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `haber_tarih` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id_haber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for urun_resimleri
-- ----------------------------
DROP TABLE IF EXISTS `urun_resimleri`;
CREATE TABLE `urun_resimleri`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urun_id` int(11) NOT NULL,
  `adi` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `klasor` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 430 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for yazarlar
-- ----------------------------
DROP TABLE IF EXISTS `yazarlar`;
CREATE TABLE `yazarlar`  (
  `id_yazar` int(11) NOT NULL AUTO_INCREMENT,
  `yazar_ad` varchar(55) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `yazar_resim_id` int(11) NULL DEFAULT NULL,
  `yazar_grup` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_yazar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for yazi
-- ----------------------------
DROP TABLE IF EXISTS `yazi`;
CREATE TABLE `yazi`  (
  `id_yazi` int(11) NOT NULL AUTO_INCREMENT,
  `yazi_detay` longtext CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL,
  `yazi_tarih` datetime(6) NULL DEFAULT NULL,
  `yazi_sahip_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_yazi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for DosyaAdGetir
-- ----------------------------
DROP PROCEDURE IF EXISTS `DosyaAdGetir`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DosyaAdGetir`(IN `p_yazar_id` int(11))
BEGIN
	SELECT urun_resimleri.adi as dosyaad from urun_resimleri WHERE urun_id=p_yazar_id HAVING MAX(id);

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for HaberGetir
-- ----------------------------
DROP PROCEDURE IF EXISTS `HaberGetir`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HaberGetir`(IN `p_haber_grup` varchar(100),IN `p_haber_sayi` int(8))
BEGIN
	Select haber_baslik,haber_detay,urun_resimleri.klasor,urun_resimleri.adi as resim_url from haberler inner join urun_resimleri on urun_resimleri.urun_id=haberler.haber_resim_id
where haber_bolum=p_haber_grup


ORDER BY haber_tarih DESC LIMIT 0,p_haber_sayi;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for HaberKayit
-- ----------------------------
DROP PROCEDURE IF EXISTS `HaberKayit`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HaberKayit`(IN `p_haber_baslik` varchar(255),IN `p_haber_detay` text(0),`p_haber_bolum` varchar(255))
BEGIN

	
	UPDATE haberler SET haber_baslik=p_haber_baslik,haber_detay=p_haber_detay,haber_bolum=p_haber_bolum,haber_tarih=NOW() WHERE
	id_haber=SonId();
	END
;;
delimiter ;

-- ----------------------------
-- Function structure for SonId
-- ----------------------------
DROP FUNCTION IF EXISTS `SonId`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SonId`() RETURNS int(11)
BEGIN
	SET @donen = (SELECT MAX(id_haber) FROM haberler);

	RETURN @donen;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for SonIdYazar
-- ----------------------------
DROP FUNCTION IF EXISTS `SonIdYazar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SonIdYazar`() RETURNS int(11)
BEGIN
	SET @donen = (SELECT MAX(id_yazar) FROM yazarlar);

	RETURN @donen;

END
;;
delimiter ;

-- ----------------------------
-- Function structure for SonIdYazi
-- ----------------------------
DROP FUNCTION IF EXISTS `SonIdYazi`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `SonIdYazi`() RETURNS int(11)
BEGIN
	SET @donen = (SELECT MAX(id_yazi) FROM yazi);

	RETURN @donen;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YazarBilgi
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarBilgi`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarBilgi`()
BEGIN
	SELECT yazarlar.id_yazar,yazarlar.yazar_ad,yazarlar.yazar_grup,urun_resimleri.adi as resimurl,urun_resimleri.klasor
FROM yazarlar
LEFT JOIN urun_resimleri ON urun_resimleri.urun_id = yazarlar.yazar_resim_id;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YazarinDigerYazilari
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarinDigerYazilari`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarinDigerYazilari`(IN `p_yazar_ad` varchar(100))
BEGIN
	Select yazi_detay from yazi  inner join yazarlar on yazi_sahip_id=id_yazar WHERE yazar_ad=p_yazar_ad ORDER BY yazi_tarih DESC limit 1,10;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YazarinYazilari
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarinYazilari`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarinYazilari`(IN `p_yazar_ad` VARCHAR(100))
BEGIN
Select yazi_detay from yazi  inner join yazarlar on yazi_sahip_id=id_yazar WHERE yazar_ad=p_yazar_ad ORDER BY yazi_tarih DESC limit 0,1;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YazarKayit
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarKayit`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarKayit`(IN `p_yazaradi` varchar(255),IN `p_yazar_grup` varchar(255))
BEGIN
	UPDATE yazarlar SET yazar_ad=p_yazaradi,yazar_grup=p_yazar_grup WHERE
	id_yazar=SonIdYazar();

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for YazarSil
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarSil`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarSil`(IN `p_yid` int)
BEGIN
	DELETE FROM yazarlar WHERE id_yazar=p_yid;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for yaziDetay
-- ----------------------------
DROP PROCEDURE IF EXISTS `yaziDetay`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `yaziDetay`(IN `p_id` int(11),IN `p_editor` longtext)
BEGIN
	UPDATE yazi SET yazi_detay=p_editor WHERE
	id_yazi=(SELECT MAX(id_yazi) from (SELECT * FROM yazi) as y WHERE p_id=y.yazi_sahip_id);

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table urun_resimleri
-- ----------------------------
DROP TRIGGER IF EXISTS `id_haber_aktar`;
delimiter ;;
CREATE TRIGGER `id_haber_aktar` AFTER INSERT ON `urun_resimleri` FOR EACH ROW BEGIN
IF new.klasor LIKE '00%' THEN
 IF new.klasor LIKE '0000%' THEN
   INSERT INTO  yazi (id_yazi,yazi_tarih,yazi_sahip_id) VALUES (null,NOW(),new.urun_id);
 ELSE
	INSERT INTO yazarlar (id_yazar,yazar_resim_id) VALUES (null,new.urun_id);
	END IF;
ELSE
	INSERT INTO haberler (id_haber,haber_resim_id) VALUES (null,new.urun_id);
END IF;



END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table urun_resimleri
-- ----------------------------
DROP TRIGGER IF EXISTS `is_sil`;
delimiter ;;
CREATE TRIGGER `is_sil` AFTER DELETE ON `urun_resimleri` FOR EACH ROW BEGIN
IF old.klasor LIKE '00%' THEN
 IF old.klasor LIKE '0000%' THEN
   DELETE FROM yazi WHERE old.urun_id=yazi.yazi_sahip_id;
 ELSE
	DELETE FROM yazarlar WHERE old.urun_id=yazarlar.yazar_resim_id;
	END IF;
ELSE
	DELETE FROM haberler WHERE old.urun_id=haberler.haber_resim_id;
END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
