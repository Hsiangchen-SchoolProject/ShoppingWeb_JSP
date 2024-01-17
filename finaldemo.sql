/*
Navicat MySQL Data Transfer

Source Server         : jsp
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : finaldemo

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-01-05 12:42:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `amd_product`
-- ----------------------------
DROP TABLE IF EXISTS `amd_product`;
CREATE TABLE `amd_product` (
  `no` varchar(20) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `cost` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of amd_product
-- ----------------------------
INSERT INTO amd_product VALUES ('1', '../image/RXV64-1.png', 'Radeon RX Vega 64', '當前價格：16500(元)');
INSERT INTO amd_product VALUES ('2', '../image/RXV56-1.png', 'Radeon RX Vega 56', '當前價格：11900(元)');
INSERT INTO amd_product VALUES ('3', '../image/RX590-1.jpg', 'Radeon RX 590', '當前價格：9890(元)');
INSERT INTO amd_product VALUES ('4', '../image/RX580-1.png', 'Radeon RX 580', '當前價格：7090(元)');
INSERT INTO amd_product VALUES ('5', '../image/RX580X-1.png', 'Radeon RX 580 X', '當前價格：6390(元)');
INSERT INTO amd_product VALUES ('6', '../image/RX570-1.png', 'Radeon RX 570', '當前價格：5890(元)');
INSERT INTO amd_product VALUES ('7', '../image/RX570X-1.png', 'Radeon RX 570 X', '當前價格：5290(元)');
INSERT INTO amd_product VALUES ('8', '../image/RX560-1.png', 'Radeon RX 560', '當前價格：5090(元)');
INSERT INTO amd_product VALUES ('9', '../image/RX560X-1.png', 'Radeon RX 560 X', '當前價格：5090(元)');

-- ----------------------------
-- Table structure for `cart_test`
-- ----------------------------
DROP TABLE IF EXISTS `cart_test`;
CREATE TABLE `cart_test` (
  `seq` int(20) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) DEFAULT NULL,
  `total` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` int(255) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `sysdate` date DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_test
-- ----------------------------

-- ----------------------------
-- Table structure for `counter`
-- ----------------------------
DROP TABLE IF EXISTS `counter`;
CREATE TABLE `counter` (
  `num` int(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of counter
-- ----------------------------
INSERT INTO counter VALUES ('638');

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `putdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO detail VALUES ('597', '10644204', '225', 'Radeon RX 560 X', '1', '5090', 'Sat Jan 05 02:47:17 CST 2019');
INSERT INTO detail VALUES ('598', '10644204', '225', 'NVIDIA GeForce GTX 1060', '1', '9990', 'Sat Jan 05 02:47:17 CST 2019');
INSERT INTO detail VALUES ('599', '10644204', '226', 'NVIDIA GeForce GTX 1050', '12', '51480', 'Sat Jan 05 02:47:37 CST 2019');
INSERT INTO detail VALUES ('600', '10644204', '226', 'NVIDIA GeForce GTX 1070', '12', '155880', 'Sat Jan 05 02:47:37 CST 2019');
INSERT INTO detail VALUES ('601', '10644204', '226', 'Radeon RX 560 X', '12', '61080', 'Sat Jan 05 02:47:37 CST 2019');
INSERT INTO detail VALUES ('602', '10644204', '227', 'Radeon RX 560', '1', '5090', 'Sat Jan 05 02:49:07 CST 2019');
INSERT INTO detail VALUES ('603', '10644204', '227', 'NVIDIA GeForce GTX 1070', '1', '12990', 'Sat Jan 05 02:49:07 CST 2019');
INSERT INTO detail VALUES ('604', '10644204', '228', 'NVIDIA GeForce GTX 1050 Ti', '1', '6290', 'Sat Jan 05 02:50:47 CST 2019');
INSERT INTO detail VALUES ('605', '10644204', '228', 'Radeon RX 580 X', '1', '6390', 'Sat Jan 05 02:50:47 CST 2019');
INSERT INTO detail VALUES ('606', '10644204', '229', 'Radeon RX 560', '1', '5090', 'Sat Jan 05 02:51:09 CST 2019');
INSERT INTO detail VALUES ('607', '10644204', '229', 'NVIDIA GeForce GTX 1070', '1', '12990', 'Sat Jan 05 02:51:09 CST 2019');
INSERT INTO detail VALUES ('608', '10644204', '230', 'Radeon RX Vega 56', '10', '119900', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO detail VALUES ('609', '10644204', '230', 'Radeon RX 560 X', '2', '10180', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO detail VALUES ('610', '10644204', '230', 'NVIDIA GeForce RTX 2080 Ti', '2', '79980', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO detail VALUES ('611', '10644204', '230', 'NVIDIA GeForce GTX 1070', '21', '272790', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO detail VALUES ('612', '10644204', '230', 'Radeon RX 580 X', '21', '134190', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO detail VALUES ('613', '10644204', '231', 'NVIDIA GeForce GTX 1050', '1', '4290', 'Sat Jan 05 03:41:17 CST 2019');
INSERT INTO detail VALUES ('614', '10644204', '232', 'NVIDIA GeForce GTX 1050', '1', '4290', 'Sat Jan 05 03:46:35 CST 2019');
INSERT INTO detail VALUES ('615', '1', '233', 'NVIDIA GeForce GTX 1050 Ti', '1', '6290', 'Sat Jan 05 03:54:52 CST 2019');
INSERT INTO detail VALUES ('616', '1', '233', 'Radeon RX 560 X', '1', '5090', 'Sat Jan 05 03:54:52 CST 2019');
INSERT INTO detail VALUES ('617', '10644204', '234', 'Radeon RX 560', '1', '5090', 'Sat Jan 05 04:55:11 CST 2019');
INSERT INTO detail VALUES ('618', '10644204', '234', 'NVIDIA GeForce GTX 1060', '58', '579420', 'Sat Jan 05 04:55:11 CST 2019');
INSERT INTO detail VALUES ('619', '10644204', '235', 'Radeon RX 570 X', '1', '5290', 'Sat Jan 05 04:56:39 CST 2019');
INSERT INTO detail VALUES ('620', '10644204', '236', 'NVIDIA GeForce GTX 1050', '1', '4290', 'Sat Jan 05 05:05:00 CST 2019');
INSERT INTO detail VALUES ('621', '10644204', '238', 'Radeon RX 560 X', '2', '10180', 'Sat Jan 05 05:08:45 CST 2019');
INSERT INTO detail VALUES ('622', '10644204', '238', 'NVIDIA GeForce GTX 1070', '1', '12990', 'Sat Jan 05 05:08:45 CST 2019');
INSERT INTO detail VALUES ('623', '10644204', '239', 'Radeon RX 560', '1', '5090', 'Sat Jan 05 05:16:40 CST 2019');
INSERT INTO detail VALUES ('624', '10644222', '240', 'Radeon RX 570', '1', '5890', 'Sat Jan 05 05:23:09 CST 2019');
INSERT INTO detail VALUES ('625', '10644222', '241', 'Radeon RX 590', '1', '9890', 'Sat Jan 05 05:24:32 CST 2019');
INSERT INTO detail VALUES ('626', '10644222', '241', 'Radeon RX 590', '1', '9890', 'Sat Jan 05 05:24:32 CST 2019');
INSERT INTO detail VALUES ('627', '10644222', '241', 'NVIDIA GeForce GTX 1050 Ti', '1', '6290', 'Sat Jan 05 05:24:32 CST 2019');
INSERT INTO detail VALUES ('628', '10644204', '242', 'Radeon RX 560', '2', '10180', 'Sat Jan 05 11:59:39 CST 2019');
INSERT INTO detail VALUES ('629', '10644204', '243', 'NVIDIA GeForce GTX 1050 Ti', '1', '6290', 'Sat Jan 05 12:10:12 CST 2019');
INSERT INTO detail VALUES ('630', '10644204', '243', 'Radeon RX 570 X', '1', '5290', 'Sat Jan 05 12:10:12 CST 2019');
INSERT INTO detail VALUES ('631', '10644204', '244', 'Radeon RX 570 X', '1', '5290', 'Sat Jan 05 12:10:24 CST 2019');

-- ----------------------------
-- Table structure for `good`
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(100) NOT NULL,
  `cost` varchar(20) DEFAULT NULL,
  `inventory` varchar(20) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `photo1` varchar(500) DEFAULT NULL,
  `memory` varchar(50) DEFAULT NULL,
  `cuda` varchar(50) DEFAULT NULL,
  `m_interface` varchar(50) DEFAULT NULL,
  `c_rate` varchar(50) DEFAULT NULL,
  `m_rate` varchar(50) DEFAULT NULL,
  `pci` varchar(50) DEFAULT NULL,
  `output` varchar(100) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`,`pro_name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO good VALUES ('1', 'NVIDIA GeForce GTX 1050', '4290', '96', '../image/gtx-1050-1.jpg', '../image/gtx-1050-2.jpg', '2GB GDDR5', '640 unit', '128-bit', '1404 MHz', '7008 MHz', '3.0', 'DisplayPort / HDMI / DL-DVI-D', '6-pin x1', '17.0 x 11.1 x 3.9cm', 'NVIDIA');
INSERT INTO good VALUES ('2', 'NVIDIA GeForce GTX 1050 Ti', '6290', '80', '../image/gtx-1050ti-1.jpg', '../image/gtx-1050ti-2.jpg', '4GB GDDR5', '1354 unit', '128-bit', '1354 MHz', '7008 MHz', '3.0', 'DisplayPort(Version 1.4) / HDMI(Version 2.0) / DL-DVI-D', '6-pin x1', '22.9 x 13.1 x 3.90cm', 'NVIDIA');
INSERT INTO good VALUES ('3', 'NVIDIA GeForce GTX 1060', '9990', '0', '../image/gtx-1060-1.png', '../image/gtx-1060-2.jpg', '6GB GDDR5', '1280 unit', '192-bit', '1506 MHz', '8008 MHz', '3.0', 'DisplayPort(Version 1.4) x2 / HDMI(Version 2.0) / DL-DVI-D', '8-pin x1', '27.7 x 14.0 x 3.90cm', 'NVIDIA');
INSERT INTO good VALUES ('4', 'NVIDIA GeForce GTX 1070', '12990', '84', '../image/gtx-1070-1.jpg', '../image/gtx-1070-2.jpg', '8GB GDDR5', '4352 unit', '256-bit', '1607 MHz', '8108 MHz', '3.0', 'DisplayPort(Version 1.4) x3 / HDMI(Version 2.0) / DL-DVI-D', '8-pin x1 , 6-pin x1', null, 'NVIDIA');
INSERT INTO good VALUES ('5', 'NVIDIA GeForce GTX 1070 Ti', '13990', '100', '../image/gtx-1070ti-1.jpg', '../image/gtx-1070ti-2.jpg', '8GB GDDR5', '4352 unit', '256-bit', '1556 MHz', '8008 MHz', '3.0', 'DisplayPort x2 / HDMI 2.0 x2 / DVI', '6-pin x1', '29.6 x 14.4 x 4.3cm', 'NVIDIA');
INSERT INTO good VALUES ('6', 'NVIDIA GeForce GTX 1080', '18990', '100', '../image/gtx-1080-1.jpg', '../image/gtx-1080-2.jpg', '8GB GDDR5X', '2560 unit', '256-bit', '1632 MHz', '10010 MHz', '3.0', 'DisplayPort(Version) x3 / HDMI(Version 2.0) / DL-DVI-D', '8-pin x2 , 6-pin x1', '27.9 x 14.0 x 4.2cm', 'NVIDIA');
INSERT INTO good VALUES ('7', 'NVIDIA GeForce RTX 2070', '20000', '70', '../image/rtx-2070-1.jpg', '../image/rtx-2070-2.jpg', '8GB GDDR6', '2304 unit', '256-bit', '1410 MHz', '14.0 Gbps', '3.0', 'DisplayPort(v1.40) x3/ HDMI 2.0b x1 / USB Type-C', '8-pin x2 , 6-pin x1', '30.7 x 15.5 x 5.0cm', 'NVIDIA');
INSERT INTO good VALUES ('8', 'NVIDIA GeForce RTX 2080', '27900', '100', '../image/rtx-2080-1.jpg', '../image/rtx-2080-2.jpg', '8GB GDDR6', '2944 unit', '256-bit', '1860 MHz', '7000 MHz', '3.0', 'DisplayPort(V1.4) x3 / HDMI 2.0b x1 / USB Type-C', '8-pin x1 , 6-pin x1 , Graphics Card Support Bracket x1', '32.7 x 14.0 x 5.56cm', 'NVIDIA');
INSERT INTO good VALUES ('9', 'NVIDIA GeForce RTX 2080 Ti', '39990', '100', '../image/rtx-2080ti-1.jpg', '../image/rtx-2080ti-2.jpg', '11GB GDDR6', '4352 unit', '352-bit', 'Boost TBD MHz', '14.0 Gbps', '3.0', 'DisplayPort(4096x2160 © 60Hz) x3 / HDMI 2.0(3840x2160 © 60HZ) / USB Type-C', '8-pin x2 , 6-pin x1', '32.7 x 14.0 x 5.56cm', 'NVIDIA');
INSERT INTO good VALUES ('10', 'Radeon RX 560 X', '5090', '41', '../image/RX560X-1.png', '../image/RX560X-2.png', '4GB GDDR5', '1024 unit', '128-bit', '1196 MHz', '7000 MHz', '3.0', 'DisplayPort / HDMI x 2 / SL-DVI-D', '8-pin x1', '1.55 x 11.2 x 3.9cm', 'AMD');
INSERT INTO good VALUES ('11', 'Radeon RX 560', '5090', '94', '../image/RX560-1.png', '../image/RX560-2.png', '4GB GDDR5', '1024 unit', '128-bit', '1196 MHz', '7000 MHz', '3.0', 'DisplayPort / HDMI / SL-DVI-D', '8-pin x1', '1.68 x 6.9 x 3.9cm', 'AMD');
INSERT INTO good VALUES ('12', 'Radeon RX 570 X', '5290', '88', '../image/RX570X-1.png', '../image/RX570X-2.png', '8GB GDDR5', '2048 unit', '256-bit', '1293 MHz', '7100 MHz', '3.0', 'DisplayPort x2 / HDMI x2 / DL-DVI-D', '8-pin x1', '27.6 x 14.2 x 3.9cm', 'AMD');
INSERT INTO good VALUES ('13', 'Radeon RX 570', '5890', '98', '../image/RX570-1.png', '../image/RX570-2.png', '8GB GDDR5', '2048 unit', '256-bit', '1268 MHz', '7000 MHz', '3.0', 'DisplayPort x3 / HDMI x1 / DL-DVI-D', '8-pin x1', '24.6 x 13.0 x 3.9cm', 'AMD');
INSERT INTO good VALUES ('14', 'Radeon RX 580 X', '6390', '36', '../image/RX580X-1.png', '../image/RX580X-2.png', '8GB GDDR5', '2304 unit', '256-bit', '2000 MHz', '1380 Gbps', '3.0', 'DisplayPort x2 / HDMI x2 / DL-DVI-D', '8-pin x1', '26.9 x 12.5 x 3.8cm', 'AMD');
INSERT INTO good VALUES ('15', 'Radeon RX 580', '7090', '100', '../image/RX580-1.png', '../image/RX580-2.png', '8GB GDDR5', '2304 unit', '256-bit', '1366 MHz', '8000 MHz', '3.0', '	DisplayPort x2 / HDMI x2 / DL-DVI-D', '8-pin x1', '26.9 x 12.5 x 3.8cm', 'AMD');
INSERT INTO good VALUES ('16', 'Radeon RX 590', '9890', '100', '../image/RX590-1.jpg', '../image/RX590-2.jpg', '8GB GDDR5', '2304 unit', '256-bit', '1545 MHz', '1469 MHz', '3.0', '	DisplayPort(1.4 HDR) / HDMI', '8-pin x1 , 6-pin x1', '	25.5 x 15.7 x 5.7cm\r\n25.5 x 15.7 x 5.7cm', 'AMD');
INSERT INTO good VALUES ('17', 'Radeon RX Vega 56', '11990', '100', '../image/RXV56-1.png', '../image/RXV56-2.png', '8GB HBM2', '3584 unit', '2048-bit', '1520 MHz', '800 MHz', '3.0', '	DisplayPort x 3 / HDMI', '8-pin x1 , 6-pin x1', '27.0 x 11.0 x 4.0cm', 'AMD');
INSERT INTO good VALUES ('21', 'Radeon RX Vega 64', '16500', '100', '../image/RXV64-1.png', '../image/RXV64-2.png', '8GB 2048bit', '4096 unit', '2048-bit', '1247 MHz', '945 MHz', '3.0', 'DisplayPort x3 / HDMI', '8-pin x1 , 6-pin x1', '28.0 x 12.7 x 4.0cm', 'AMD');
INSERT INTO good VALUES ('23', '1', '1', '100', '../image/1-1.jpg', '../image/1-2.jpg', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `putdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('34', '123', '123', '123', '123123', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('35', '12qwjd', '12rd1d', '1wd1wd1', '2d1x\r\n121\r\nx21', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('36', '小胖', 'goog', '12x123', '12\r\n\r\n12x1', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('37', '123', 'wwww', 'wwww', 'w\r\nw\r\nw\r\nw\r\n', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('38', 'ss', 'ss', 'sss', 'ss\r\nss\r\ns\r\n\r\ns', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('39', 'ss1', 'ss', 'sss', 'ss\r\nss\r\ns\r\n\r\ns', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('40', 'hello', 'ian', 'we', 'jqw\r\nqw', '2018-12-28 00:00:00');
INSERT INTO guestbook VALUES ('41', 'ㄉ', 'ã', 'ㄉ', 'ㄉ', 'Sat Jan 05 04:32:28 CST 2019');
INSERT INTO guestbook VALUES ('42', '1', '1', '1', '1', 'Sat Jan 05 04:37:19 CST 2019');
INSERT INTO guestbook VALUES ('43', '4', '4', '4', '4', 'Sat Jan 05 04:37:49 CST 2019');
INSERT INTO guestbook VALUES ('44', '4', '4', '4', '4\r\n', 'Sat Jan 05 04:38:27 CST 2019');
INSERT INTO guestbook VALUES ('45', '1', '1', '1', '1', 'Sat Jan 05 04:40:34 CST 2019');
INSERT INTO guestbook VALUES ('46', '', '', '', '', 'Sat Jan 05 04:41:35 CST 2019');
INSERT INTO guestbook VALUES ('47', '2', '2', '2', '2', 'Sat Jan 05 04:42:21 CST 2019');
INSERT INTO guestbook VALUES ('48', '12', '12', '12', '12', 'Sat Jan 05 04:43:32 CST 2019');
INSERT INTO guestbook VALUES ('49', '12', '12', '12', '12', 'Sat Jan 05 04:43:46 CST 2019');
INSERT INTO guestbook VALUES ('50', '23', '12', '12', '121212', 'Sat Jan 05 04:51:20 CST 2019');
INSERT INTO guestbook VALUES ('51', '12', '12', '12', '12', 'Sat Jan 05 05:21:49 CST 2019');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `mgid` varchar(255) NOT NULL,
  `mgpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`mgid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO manager VALUES ('mgaccount', 'mgpassword');

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `userid` varchar(20) NOT NULL,
  `userpw` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `mail` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO member VALUES ('1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO member VALUES ('10644204', '123', 'k', 'oo', 'o@gmail.com', '234', 'o', 'o');
INSERT INTO member VALUES ('10644221', '123', '123', '123', '1', '123', '123', '123');
INSERT INTO member VALUES ('10644222', '12345', '靖豐', '林', 'google', '桃園市', '09324234', 'boy');
INSERT INTO member VALUES ('106442222', '123', '123', '123', '23', '123', '123', '123');
INSERT INTO member VALUES ('10644242', '123', '123', '123', 'wdw', '123', '123', '123');

-- ----------------------------
-- Table structure for `nvdia_product`
-- ----------------------------
DROP TABLE IF EXISTS `nvdia_product`;
CREATE TABLE `nvdia_product` (
  `no` varchar(20) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `cost` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nvdia_product
-- ----------------------------
INSERT INTO nvdia_product VALUES ('2', '../image/rtx-2080-1.jpg', 'NVIDIA GeForce RTX 2080', '當前價格：27900(元)');
INSERT INTO nvdia_product VALUES ('3', '../image/rtx-2070-1.jpg', 'NVIDIA GeForce RTX 2070', '當前價格：20000(元)');
INSERT INTO nvdia_product VALUES ('4', '../image/gtx-1080-1.jpg', 'NVIDIA GeForce GTX 1080', '當前價格：18990(元)');
INSERT INTO nvdia_product VALUES ('5', '../image/gtx-1070ti-1.jpg', 'NVIDIA GeForce GTX 1070 Ti', '當前價格：13990(元)');
INSERT INTO nvdia_product VALUES ('6', '../image/gtx-1070-1.jpg', 'NVIDIA GeForce GTX 1070', '當前價格：12990(元)');
INSERT INTO nvdia_product VALUES ('7', '../image/gtx-1060-1.png', 'NVIDIA GeForce GTX 1060', '當前價格：9990(元)');
INSERT INTO nvdia_product VALUES ('8', '../image/gtx-1050ti-1.jpg', 'NVIDIA GeForce GTX 1050 Ti', '當前價格：6290(元)');
INSERT INTO nvdia_product VALUES ('9', '../image/gtx-1050-1.jpg', 'NVIDIA GeForce GTX 1050', '當前價格：4290(元)');

-- ----------------------------
-- Table structure for `prj_order`
-- ----------------------------
DROP TABLE IF EXISTS `prj_order`;
CREATE TABLE `prj_order` (
  `no` int(20) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `delivery` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `putdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of prj_order
-- ----------------------------
INSERT INTO prj_order VALUES ('225', '15080', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 02:47:17 CST 2019');
INSERT INTO prj_order VALUES ('226', '268440', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 02:47:37 CST 2019');
INSERT INTO prj_order VALUES ('227', '18080', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 02:49:07 CST 2019');
INSERT INTO prj_order VALUES ('228', '12680', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 02:50:47 CST 2019');
INSERT INTO prj_order VALUES ('229', '18080', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 02:51:09 CST 2019');
INSERT INTO prj_order VALUES ('230', '617040', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 03:38:55 CST 2019');
INSERT INTO prj_order VALUES ('231', '4290', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 03:41:17 CST 2019');
INSERT INTO prj_order VALUES ('232', '4290', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 03:46:35 CST 2019');
INSERT INTO prj_order VALUES ('233', '11380', '1', '1', 'null', '1', '1', 'Sat Jan 05 03:54:52 CST 2019');
INSERT INTO prj_order VALUES ('234', '584510', 'yahoo', '097791289123', '便利商店', '新竹', '10644204', 'Sat Jan 05 04:55:11 CST 2019');
INSERT INTO prj_order VALUES ('235', '5290', 'yahoo', '097791289123', 'null', '新竹', '10644204', 'Sat Jan 05 04:56:39 CST 2019');
INSERT INTO prj_order VALUES ('236', '4290', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 05:05:00 CST 2019');
INSERT INTO prj_order VALUES ('237', '0', 'o@gmail.com', 'o', 'null', '234', '', 'Sat Jan 05 05:06:05 CST 2019');
INSERT INTO prj_order VALUES ('238', '23170', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 05:08:45 CST 2019');
INSERT INTO prj_order VALUES ('239', '9380', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 05:16:40 CST 2019');
INSERT INTO prj_order VALUES ('240', '12180', 'google', '09324234', 'null', '桃園市', '10644222', 'Sat Jan 05 05:23:09 CST 2019');
INSERT INTO prj_order VALUES ('241', '26070', 'google', '09324234', 'null', '桃園市', '10644222', 'Sat Jan 05 05:24:32 CST 2019');
INSERT INTO prj_order VALUES ('242', '10180', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 11:59:39 CST 2019');
INSERT INTO prj_order VALUES ('243', '11580', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 12:10:12 CST 2019');
INSERT INTO prj_order VALUES ('244', '5290', 'o@gmail.com', 'o', 'null', '234', '10644204', 'Sat Jan 05 12:10:24 CST 2019');
