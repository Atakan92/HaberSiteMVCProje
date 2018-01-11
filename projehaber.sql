/*
 Navicat Premium Data Transfer

<<<<<<< HEAD
 Source Server         : localhost
=======
 Source Server         : localhost_3306
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : projehaber

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

<<<<<<< HEAD
 Date: 08/01/2018 02:13:31
=======
 Date: 06/01/2018 17:54:42
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of haberler
-- ----------------------------
INSERT INTO `haberler` VALUES (1, 'dsadsa', 2, 'dsadsad', 'siyaset', '2018-01-05 21:14:10.000000');
INSERT INTO `haberler` VALUES (2, 'dsadsad', 3, 'dasdasd', 'siyaset', '2018-01-05 21:14:23.000000');
INSERT INTO `haberler` VALUES (3, 'dasdsa', 4, 'dasdas', 'siyaset', '2018-01-05 21:14:55.000000');
INSERT INTO `haberler` VALUES (4, 'sondakika', 5, 'sadsadsadsadsadsad', 'sondakika', '2018-01-05 23:05:03.000000');
INSERT INTO `haberler` VALUES (5, 'wqewqeqw', 6, 'ewqewqewq', 'sondakika', '2018-01-05 23:05:46.000000');
INSERT INTO `haberler` VALUES (6, 'sağlık', 7, 'dsadsadsadsad', 'saglik', '2018-01-05 23:08:09.000000');
INSERT INTO `haberler` VALUES (7, 'ekonemi', 8, 'dsadsadsad', 'ekonomi', '2018-01-05 23:08:30.000000');
INSERT INTO `haberler` VALUES (8, 'spor', 9, 'dsadsadasdasd', 'spor', '2018-01-05 23:08:51.000000');
INSERT INTO `haberler` VALUES (9, 'Dekart1', 450, 'dekart1sadsad', 'siyaset', '2018-01-06 17:23:33.000000');
INSERT INTO `haberler` VALUES (10, 'Vangogh ', 451, 'dsadsadsadasdsadsad', 'siyaset', '2018-01-06 17:24:03.000000');
INSERT INTO `haberler` VALUES (11, 'kırmızıbayrak', 452, 'bayrak haber', 'siyaset', '2018-01-06 17:24:56.000000');
INSERT INTO `haberler` VALUES (12, 'atasporu', 453, 'dsadsadas', 'spor', '2018-01-06 17:26:27.000000');
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

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
<<<<<<< HEAD
) ENGINE = MyISAM AUTO_INCREMENT = 500 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `sifre` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;
=======
) ENGINE = MyISAM AUTO_INCREMENT = 466 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of urun_resimleri
-- ----------------------------
INSERT INTO `urun_resimleri` VALUES (430, 2, '2_3356024dekart.jpg', '2');
INSERT INTO `urun_resimleri` VALUES (431, 3, '3_26739165953fe2fae78491a9cefcb59.jpg', '3');
INSERT INTO `urun_resimleri` VALUES (432, 4, '4_2520466814-subat-sevgililer-gunu-resimleri-56a7faaf28a2c.jpg', '4');
INSERT INTO `urun_resimleri` VALUES (433, 5, '5_2630553dekart.jpg', '5');
INSERT INTO `urun_resimleri` VALUES (434, 6, '6_1632380214-subat-sevgililer-gunu-resimleri-56a7faaf28a2c.jpg', '6');
INSERT INTO `urun_resimleri` VALUES (435, 7, '7_289696115953fe2fae78491a9cefcb59.jpg', '7');
INSERT INTO `urun_resimleri` VALUES (436, 8, '8_16518000haber1.jpg', '8');
INSERT INTO `urun_resimleri` VALUES (437, 9, '9_295297755953fe2fae78491a9cefcb59.jpg', '9');
INSERT INTO `urun_resimleri` VALUES (438, 438, '00438_8657162dekart.jpg', '00438');
INSERT INTO `urun_resimleri` VALUES (439, 439, '00439_22851648index.jpg', '00439');
INSERT INTO `urun_resimleri` VALUES (440, 440, '00440_20693778Self-Portrait1.jpg', '00440');
INSERT INTO `urun_resimleri` VALUES (441, 1, '00001_5456240kolpa.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (443, 2, '00002_18495830nerde.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (444, 1, '00001_2049917kolpa.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (445, 2, '00002_19510166kolpa.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (446, 3, '00003_29146393DüsünceveSaglik.txt', '00003');
INSERT INTO `urun_resimleri` VALUES (447, 1, '00001_4081924DüsünceveSaglik.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (448, 2, '00002_6331676nolcak.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (449, 449, '00449_1298817014-subat-sevgililer-gunu-resimleri-56a7faaf28a2c.jpg', '00449');
INSERT INTO `urun_resimleri` VALUES (450, 4, '00004_4094796kolpa.txt', '00004');
INSERT INTO `urun_resimleri` VALUES (451, 1, '00001_6154983Yeni Metin Belgesi.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (452, 1, '00001_10079240nolcak.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (453, 1, '00001_22376301Yeni Metin Belgesi.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (454, 1, '00001_19517988kolpa.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (455, 2, '00002_26634127Yeni Metin Belgesi.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (456, 2, '00002_1783183Yeni Metin Belgesi.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (457, 1, '00001_26649293Yeni Metin Belgesi.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (458, 1, '00001_13746077kolpa.txt', '00001');
INSERT INTO `urun_resimleri` VALUES (459, 2, '00002_22064164Yeni Metin Belgesi.txt', '00002');
INSERT INTO `urun_resimleri` VALUES (460, 3, '00003_14778512DüsünceveSaglik.txt', '00003');
INSERT INTO `urun_resimleri` VALUES (461, 3, '00003_4045776nerde.txt', '00003');
INSERT INTO `urun_resimleri` VALUES (462, 450, '450_28477041dekart.jpg', '450');
INSERT INTO `urun_resimleri` VALUES (463, 451, '451_843441Self-Portrait1.jpg', '451');
INSERT INTO `urun_resimleri` VALUES (464, 452, '452_182569565953fe2fae78491a9cefcb59.jpg', '452');
INSERT INTO `urun_resimleri` VALUES (465, 453, '453_8329342index.jpg', '453');
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yazarlar
-- ----------------------------
INSERT INTO `yazarlar` VALUES (1, 'atakan', 438, 'siyaset');
INSERT INTO `yazarlar` VALUES (2, 'metin', 439, 'spor');
INSERT INTO `yazarlar` VALUES (3, 'çetin', 440, 'ekonemi');
INSERT INTO `yazarlar` VALUES (4, 'efdsfdsf', 449, 'siyaset');
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

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
<<<<<<< HEAD
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;
=======
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yazi
-- ----------------------------
INSERT INTO `yazi` VALUES (1, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-05 23:54:11.000000', 1);
INSERT INTO `yazi` VALUES (3, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00439/thumbnail/00439_22851648index.jpg\" style=\"float:right; height:125px; width:125px\" /></p>\r\n', '2018-01-05 23:56:01.000000', 2);
INSERT INTO `yazi` VALUES (4, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-05 23:58:49.000000', 1);
INSERT INTO `yazi` VALUES (5, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00439/thumbnail/00439_22851648index.jpg\" style=\"float:right; height:125px; width:125px\" /></p>\r\n', '2018-01-05 23:59:15.000000', 2);
INSERT INTO `yazi` VALUES (6, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00440/thumbnail/00440_20693778Self-Portrait1.jpg\" style=\"float:right; height:125px; width:125px\" /></p>\r\n', '2018-01-05 23:59:43.000000', 3);
INSERT INTO `yazi` VALUES (7, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:00:17.000000', 1);
INSERT INTO `yazi` VALUES (10, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:20:45.000000', 1);
INSERT INTO `yazi` VALUES (11, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:21:08.000000', 1);
INSERT INTO `yazi` VALUES (12, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:21:29.000000', 1);
INSERT INTO `yazi` VALUES (13, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:22:01.000000', 1);
INSERT INTO `yazi` VALUES (16, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> &iuml;&raquo;&iquest;<!--?php\r\n						\r\n					\r\n				\r\n						session_start();ÄŸÄŸÄŸ\r\n						\r\n					\r\n				\r\n						if (isset($_REQUEST[\"resim_id\"])) {\r\n						\r\n					\r\n				\r\n						$zaman = Date(\"ymdhis\");\r\n						\r\n					\r\n				\r\n						$_SESSION[\'urun_sanal_id\'] = $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						$_SESSION[\'resim_id\'] =  $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						$_REQUEST[\'resim_id\'] =  $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						if ($_SESSION[\'resim_id\']){\r\n						\r\n					\r\n				\r\n						    //\r\n						\r\n					\r\n				\r\n						}else{\r\n						\r\n					\r\n				\r\n						    if ($_REQUEST[\'resim_id\']){\r\n						\r\n					\r\n				\r\n						        $_SESSION[\'resim_id\'] = $_REQUEST[\'resim_id\'];\r\n						\r\n					\r\n				\r\n						    }else{\r\n						\r\n					\r\n				\r\n						        @mkdir(\'files/\'.$zaman, 0777);\r\n						\r\n					\r\n				\r\n						        $_SESSION[\'resim_id\'] = $zaman;\r\n						\r\n					\r\n				\r\n						    }\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						}\r\n						\r\n					\r\n				\r\n						}\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						?--> <!--\r\n						\r\n					\r\n				\r\n						/*\r\n						\r\n					\r\n				\r\n						 * jQuery File Upload Plugin Demo 9.1.0\r\n						\r\n					\r\n				\r\n						 * https://github.com/blueimp/jQuery-File-Upload\r\n						\r\n					\r\n				\r\n						 *\r\n						\r\n					\r\n				\r\n						 * Copyright 2010, Sebastian Tschan\r\n						\r\n					\r\n				\r\n						 * https://blueimp.net\r\n						\r\n					\r\n				\r\n						 *\r\n						\r\n					\r\n				\r\n						 * Licensed under the MIT license:\r\n						\r\n					\r\n				\r\n						 * http://www.opensource.org/licenses/MIT\r\n						\r\n					\r\n				\r\n						 */\r\n						\r\n					\r\n				\r\n						--></p>\r\n<!-- Force latest IE rendering engine or ChromeFrame if installed --><!--[if IE]>\r\n						\r\n					\r\n				\r\n						<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n						\r\n					\r\n				\r\n						<![endif]-->\r\n\r\n<p>jQuery File Upload Demo<!-- Bootstrap styles --><!-- Generic page styles --><!-- blueimp Gallery styles --><!-- CSS to style the file input field as button and adjust the Bootstrap progress bars --><!-- CSS adjustments for browsers with JavaScript disabled --></p>\r\n\r\n<h1><!-- The file upload form used as target for the file upload widget --><!-- Redirect browsers with JavaScript disabled to the origin page --><!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload --></h1>\r\n\r\n<p><!-- The fileinput-button span is used to style the file input field as button -->Add files... Start uploadCancel uploadDelete <!-- The global file processing state --></p>\r\n<!-- The global progress state --><!-- The global progress bar --><!-- The extended global progress state -->\r\n\r\n<p>&nbsp;</p>\r\n<!-- The table listing the files available for upload/download -->\r\n\r\n<table>\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n<!-- The blueimp Gallery widget -->\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>&acirc;&euro;&sup1; &acirc;&euro;&ordm; &Atilde;&mdash;</p>\r\n\r\n<ol>\r\n</ol>\r\n<!-- The template to display files available for upload --><!-- The template to display files available for download --><!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included --><!-- The Templates plugin is included to render the upload/download listings --><!-- The Load Image plugin is included for the preview images and image resizing functionality --><!-- The Canvas to Blob plugin is included for image resizing functionality --><!-- Bootstrap JS is not required, but included for the responsive demo navigation --><!-- blueimp Gallery script --><!-- The Iframe Transport is required for browsers without support for XHR file uploads --><!-- The basic File Upload plugin --><!-- The File Upload processing plugin --><!-- The File Upload image preview & resize plugin --><!-- The File Upload audio preview plugin --><!-- The File Upload video preview plugin --><!-- The File Upload validation plugin --><!-- The File Upload user interface plugin --><!-- The main application script --><!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 --><!--[if (gte IE 8)&(lt IE 10)]>\r\n						\r\n					\r\n				\r\n						<script src=\"js/cors/jquery.xdr-transport.js\"></script>\r\n						\r\n					\r\n				\r\n						<![endif]-->', '2018-01-06 00:59:41.000000', 1);
INSERT INTO `yazi` VALUES (17, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00438/thumbnail/00438_8657162dekart.jpg\" style=\"float:right; height:125px; width:125px\" /> orem Ipsum pasajlarının bir&ccedil;ok &ccedil;eşitlemesi vardır. Ancak bunların b&uuml;y&uuml;k bir &ccedil;oğunluğu mizah katılarak veya rastgele s&ouml;zc&uuml;kler eklenerek değiştirilmişlerdir. Eğer bir Lorem Ipsum pasajı kullanacaksanız, metin aralarına utandırıcı s&ouml;zc&uuml;kler gizlenmediğinden emin olmanız gerekir. İnternet&#39;teki t&uuml;m Lorem Ipsum &uuml;rete&ccedil;leri &ouml;nceden belirlenmiş metin bloklarını yineler. Bu da, bu &uuml;reteci İnternet &uuml;zerindeki ger&ccedil;ek Lorem Ipsum &uuml;reteci yapar. Bu &uuml;rete&ccedil;, 200&#39;den fazla Latince s&ouml;zc&uuml;k ve onlara ait c&uuml;mle yapılarını i&ccedil;eren bir s&ouml;zl&uuml;k kullanır. Bu nedenle, &uuml;retilen Lorem Ipsum metinleri yinelemelerden, mizahtan</p>\r\n', '2018-01-06 00:59:59.000000', 1);
INSERT INTO `yazi` VALUES (18, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00439/thumbnail/00439_22851648index.jpg\" style=\"float:right; height:125px; width:125px\" /> &iuml;&raquo;&iquest;<!--?php\r\n						\r\n					\r\n				\r\n						session_start();ÄŸÄŸÄŸ\r\n						\r\n					\r\n				\r\n						if (isset($_REQUEST[\"resim_id\"])) {\r\n						\r\n					\r\n				\r\n						$zaman = Date(\"ymdhis\");\r\n						\r\n					\r\n				\r\n						$_SESSION[\'urun_sanal_id\'] = $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						$_SESSION[\'resim_id\'] =  $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						$_REQUEST[\'resim_id\'] =  $_REQUEST[\"resim_id\"];\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						if ($_SESSION[\'resim_id\']){\r\n						\r\n					\r\n				\r\n						    //\r\n						\r\n					\r\n				\r\n						}else{\r\n						\r\n					\r\n				\r\n						    if ($_REQUEST[\'resim_id\']){\r\n						\r\n					\r\n				\r\n						        $_SESSION[\'resim_id\'] = $_REQUEST[\'resim_id\'];\r\n						\r\n					\r\n				\r\n						    }else{\r\n						\r\n					\r\n				\r\n						        @mkdir(\'files/\'.$zaman, 0777);\r\n						\r\n					\r\n				\r\n						        $_SESSION[\'resim_id\'] = $zaman;\r\n						\r\n					\r\n				\r\n						    }\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						}\r\n						\r\n					\r\n				\r\n						}\r\n						\r\n					\r\n				\r\n						\r\n						\r\n					\r\n				\r\n						?--> <!--\r\n						\r\n					\r\n				\r\n						/*\r\n						\r\n					\r\n				\r\n						 * jQuery File Upload Plugin Demo 9.1.0\r\n						\r\n					\r\n				\r\n						 * https://github.com/blueimp/jQuery-File-Upload\r\n						\r\n					\r\n				\r\n						 *\r\n						\r\n					\r\n				\r\n						 * Copyright 2010, Sebastian Tschan\r\n						\r\n					\r\n				\r\n						 * https://blueimp.net\r\n						\r\n					\r\n				\r\n						 *\r\n						\r\n					\r\n				\r\n						 * Licensed under the MIT license:\r\n						\r\n					\r\n				\r\n						 * http://www.opensource.org/licenses/MIT\r\n						\r\n					\r\n				\r\n						 */\r\n						\r\n					\r\n				\r\n						--></p>\r\n<!-- Force latest IE rendering engine or ChromeFrame if installed --><!--[if IE]>\r\n						\r\n					\r\n				\r\n						<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n						\r\n					\r\n				\r\n						<![endif]-->\r\n\r\n<p>jQuery File Upload Demo<!-- Bootstrap styles --><!-- Generic page styles --><!-- blueimp Gallery styles --><!-- CSS to style the file input field as button and adjust the Bootstrap progress bars --><!-- CSS adjustments for browsers with JavaScript disabled --></p>\r\n\r\n<h1><!-- The file upload form used as target for the file upload widget --><!-- Redirect browsers with JavaScript disabled to the origin page --><!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload --></h1>\r\n\r\n<p><!-- The fileinput-button span is used to style the file input field as button -->Add files... Start uploadCancel uploadDelete <!-- The global file processing state --></p>\r\n<!-- The global progress state --><!-- The global progress bar --><!-- The extended global progress state -->\r\n\r\n<p>&nbsp;</p>\r\n<!-- The table listing the files available for upload/download -->\r\n\r\n<table>\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n<!-- The blueimp Gallery widget -->\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p>&acirc;&euro;&sup1; &acirc;&euro;&ordm; &Atilde;&mdash;</p>\r\n\r\n<ol>\r\n</ol>\r\n<!-- The template to display files available for upload --><!-- The template to display files available for download --><!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included --><!-- The Templates plugin is included to render the upload/download listings --><!-- The Load Image plugin is included for the preview images and image resizing functionality --><!-- The Canvas to Blob plugin is included for image resizing functionality --><!-- Bootstrap JS is not required, but included for the responsive demo navigation --><!-- blueimp Gallery script --><!-- The Iframe Transport is required for browsers without support for XHR file uploads --><!-- The basic File Upload plugin --><!-- The File Upload processing plugin --><!-- The File Upload image preview & resize plugin --><!-- The File Upload audio preview plugin --><!-- The File Upload video preview plugin --><!-- The File Upload validation plugin --><!-- The File Upload user interface plugin --><!-- The main application script --><!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 --><!--[if (gte IE 8)&(lt IE 10)]>\r\n						\r\n					\r\n				\r\n						<script src=\"js/cors/jquery.xdr-transport.js\"></script>\r\n						\r\n					\r\n				\r\n						<![endif]-->', '2018-01-06 01:00:26.000000', 2);
INSERT INTO `yazi` VALUES (19, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00440/thumbnail/00440_20693778Self-Portrait1.jpg\" style=\"float:right; height:125px; width:125px\" /></p>\r\n', '2018-01-06 01:00:46.000000', 3);
INSERT INTO `yazi` VALUES (20, '<p><img alt=\"resim patladı caktırma (.jpg olmalı uzantı):)\" src=\"http://localhost:8090/resim/server/php/files/00440/thumbnail/00440_20693778Self-Portrait1.jpg\" style=\"float:right; height:125px; width:125px\" /> aygın inancın tersine, Lorem Ipsum rastgele s&ouml;zc&uuml;klerden oluşmaz. K&ouml;kleri M.&Ouml;. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir ge&ccedil;mişi vardır. Virginia&#39;daki Hampden-Sydney College&#39;dan Latince profes&ouml;r&uuml; Richard McClintock, bir Lorem Ipsum pasajında ge&ccedil;en ve anlaşılması en g&uuml;&ccedil; s&ouml;zc&uuml;klerden biri olan &#39;consectetur&#39; s&ouml;zc&uuml;ğ&uuml;n&uuml;n klasik edebiyattaki &ouml;rneklerini incelediğinde kesin bir kaynağa ulaşmıştır. Lorm Ipsum, &Ccedil;i&ccedil;ero tarafından M.&Ouml;. 45 tarihinde kaleme alınan &quot;de Finibus Bonorum et Malorum&quot; (İyi ve K&ouml;t&uuml;n&uuml;n U&ccedil; Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı b&ouml;l&uuml;mlerinden gelmektedir. Bu kitap, ahlak kuramı &uuml;zerine bir tezdir ve R&ouml;nesans d&ouml;neminde &ccedil;ok pop&uuml;ler olmuştur. Lorem Ipsum pasajının ilk satırı olan &quot;Lorem ipsum dolor sit amet&quot; 1.10.32 sayılı b&ouml;l&uuml;mdeki bir satırdan gelmektedir.</p>\r\n', '2018-01-06 01:01:30.000000', 3);
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

-- ----------------------------
-- Procedure structure for DetayGetir
-- ----------------------------
DROP PROCEDURE IF EXISTS `DetayGetir`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DetayGetir`(IN `p_id` int(11))
BEGIN
<<<<<<< HEAD
	SELECT haberler.haber_detay,urun_resimleri.klasor,haber_baslik,urun_resimleri.adi from haberler 
	inner join urun_resimleri on haber_resim_id=urun_id WHERE haberler.id_haber=p_id and klasor NOT LIKE "0000%";
	
=======
	SELECT haberler.haber_detay from haberler WHERE haberler.id_haber=p_id;
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

END
;;
delimiter ;

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
	Select id_haber,haber_baslik,haber_detay,urun_resimleri.klasor,urun_resimleri.adi as resim_url from haberler inner join urun_resimleri on urun_resimleri.urun_id=haberler.haber_resim_id
<<<<<<< HEAD
where haber_bolum=p_haber_grup and klasor not like "0000%"
=======
where haber_bolum=p_haber_grup
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac


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
-- Procedure structure for NewProc
-- ----------------------------
DROP PROCEDURE IF EXISTS `NewProc`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `NewProc`()
BEGIN
	SELECT yazarlar.id_yazar,yazarlar.yazar_ad,yazarlar.yazar_grup,urun_resimleri.adi as resimurl,urun_resimleri.klasor,yazi_detay,MAX(id_yazi) AS id_yazi
FROM yazarlar
LEFT JOIN urun_resimleri ON urun_resimleri.urun_id = yazarlar.yazar_resim_id
INNER JOIN yazi on yazi_sahip_id=id_yazar GROUP BY yazar_ad;


END
;;
delimiter ;

-- ----------------------------
<<<<<<< HEAD
-- Procedure structure for SecilenYazi
-- ----------------------------
DROP PROCEDURE IF EXISTS `SecilenYazi`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SecilenYazi`(IN `p_idyazi` int(11))
BEGIN
Select id_yazi,yazi_detay from yazi where id_yazi=p_idyazi;

END
;;
delimiter ;

-- ----------------------------
=======
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
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
-- Procedure structure for YazarProfilYazi
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarProfilYazi`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarProfilYazi`()
BEGIN
	SELECT yazarlar.id_yazar as yazarid,yazarlar.yazar_ad as yazaradi,yazarlar.yazar_grup,urun_resimleri.adi as yazarresimurl,urun_resimleri.klasor as yazarklasor,yazi_detay as yazi,MAX(id_yazi) AS yaziid
FROM yazarlar
LEFT JOIN urun_resimleri ON urun_resimleri.urun_id = yazarlar.yazar_resim_id
INNER JOIN yazi on yazi_sahip_id=id_yazar GROUP BY yazar_ad;


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
-- Procedure structure for YazarSonJsp
-- ----------------------------
DROP PROCEDURE IF EXISTS `YazarSonJsp`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `YazarSonJsp`(IN `p_id` int(11))
BEGIN
	SELECT urun_resimleri.adi as dosyaad from urun_resimleri WHERE urun_resimleri.urun_id=p_id ORDER BY urun_resimleri.id DESC limit 0,1;

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
