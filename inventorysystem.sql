/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : inventorysystem

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-10-26 00:16:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `address_lookup_id` int(10) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`address_2`),
  KEY `id` (`id`),
  KEY `a` (`address_lookup_id`),
  CONSTRAINT `a` FOREIGN KEY (`address_lookup_id`) REFERENCES `address_lookup` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '451', 'MAKATI', 'MAKATI CITY');
INSERT INTO `address` VALUES ('2', null, null, '');
INSERT INTO `address` VALUES ('251', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('301', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('351', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('401', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('451', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('501', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('551', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('601', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('651', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('701', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('751', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('801', '451', 'MAKATI', 'MAKATI CITY');
INSERT INTO `address` VALUES ('851', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('901', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('951', '1', 'Albay', 'Legazpi City');
INSERT INTO `address` VALUES ('1001', '1', 'Albay', 'Legazpi City');

-- ----------------------------
-- Table structure for address_lookup
-- ----------------------------
DROP TABLE IF EXISTS `address_lookup`;
CREATE TABLE `address_lookup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` char(2) NOT NULL,
  `major_area` varchar(300) NOT NULL,
  `zip_code` varchar(25) NOT NULL,
  `city` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `major_area` (`major_area`),
  KEY `zip_code` (`zip_code`),
  KEY `city` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=2271 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of address_lookup
-- ----------------------------
INSERT INTO `address_lookup` VALUES ('1', 'PH', 'Abra', '2800', 'Bangued');
INSERT INTO `address_lookup` VALUES ('2', 'PH', 'Abra', '2801', 'Dolores');
INSERT INTO `address_lookup` VALUES ('3', 'PH', 'Abra', '2802', 'Lagangilang');
INSERT INTO `address_lookup` VALUES ('4', 'PH', 'Abra', '2803', 'Tayum');
INSERT INTO `address_lookup` VALUES ('5', 'PH', 'Abra', '2804', 'Peñarrubia');
INSERT INTO `address_lookup` VALUES ('6', 'PH', 'Abra', '2805', 'Bucay');
INSERT INTO `address_lookup` VALUES ('7', 'PH', 'Abra', '2806', 'Pidigan');
INSERT INTO `address_lookup` VALUES ('8', 'PH', 'Abra', '2807', 'Langiden');
INSERT INTO `address_lookup` VALUES ('9', 'PH', 'Abra', '2808', 'San Quintin');
INSERT INTO `address_lookup` VALUES ('10', 'PH', 'Abra', '2809', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('11', 'PH', 'Abra', '2810', 'Manabo');
INSERT INTO `address_lookup` VALUES ('12', 'PH', 'Abra', '2811', 'Villaviciosa');
INSERT INTO `address_lookup` VALUES ('13', 'PH', 'Abra', '2812', 'Pilar');
INSERT INTO `address_lookup` VALUES ('14', 'PH', 'Abra', '2813', 'Luba');
INSERT INTO `address_lookup` VALUES ('15', 'PH', 'Abra', '2814', 'Tubo');
INSERT INTO `address_lookup` VALUES ('16', 'PH', 'Abra', '2815', 'Boliney');
INSERT INTO `address_lookup` VALUES ('17', 'PH', 'Abra', '2816', 'Daguioman');
INSERT INTO `address_lookup` VALUES ('18', 'PH', 'Abra', '2817', 'Bucloc');
INSERT INTO `address_lookup` VALUES ('19', 'PH', 'Abra', '2818', 'Sallapadan');
INSERT INTO `address_lookup` VALUES ('20', 'PH', 'Abra', '2819', 'Licuan (Baay)');
INSERT INTO `address_lookup` VALUES ('21', 'PH', 'Abra', '2820', 'Malibcong');
INSERT INTO `address_lookup` VALUES ('22', 'PH', 'Abra', '2821', 'Lacub');
INSERT INTO `address_lookup` VALUES ('23', 'PH', 'Abra', '2822', 'Tineg');
INSERT INTO `address_lookup` VALUES ('24', 'PH', 'Abra', '2823', 'San Juan');
INSERT INTO `address_lookup` VALUES ('25', 'PH', 'Abra', '2824', 'Lagayan');
INSERT INTO `address_lookup` VALUES ('26', 'PH', 'Abra', '2825', 'Danglas');
INSERT INTO `address_lookup` VALUES ('27', 'PH', 'Abra', '2826', 'La Paz');
INSERT INTO `address_lookup` VALUES ('28', 'PH', 'Agusan del Norte', '8600', 'Butuan City');
INSERT INTO `address_lookup` VALUES ('29', 'PH', 'Agusan del Norte', '8601', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('30', 'PH', 'Agusan del Norte', '8602', 'Nasipit');
INSERT INTO `address_lookup` VALUES ('31', 'PH', 'Agusan del Norte', '8603', 'Carmen');
INSERT INTO `address_lookup` VALUES ('32', 'PH', 'Agusan del Norte', '8605', 'Cabadbaran City');
INSERT INTO `address_lookup` VALUES ('33', 'PH', 'Agusan del Norte', '8604', 'Magallanes');
INSERT INTO `address_lookup` VALUES ('34', 'PH', 'Agusan del Norte', '8606', 'Tubay');
INSERT INTO `address_lookup` VALUES ('35', 'PH', 'Agusan del Norte', '8607', 'Jabonga');
INSERT INTO `address_lookup` VALUES ('36', 'PH', 'Agusan del Norte', '8608', 'Santiago');
INSERT INTO `address_lookup` VALUES ('37', 'PH', 'Agusan del Norte', '8609', 'Kitcharao');
INSERT INTO `address_lookup` VALUES ('38', 'PH', 'Agusan del Norte', '8610', 'Las Nieves');
INSERT INTO `address_lookup` VALUES ('39', 'PH', 'Agusan del Norte', '8611', 'Remedios T. Romualdez');
INSERT INTO `address_lookup` VALUES ('40', 'PH', 'Agusan del Sur', '8500', 'Prosperidad');
INSERT INTO `address_lookup` VALUES ('41', 'PH', 'Agusan del Sur', '8501', 'San Francisco');
INSERT INTO `address_lookup` VALUES ('42', 'PH', 'Agusan del Sur', '8502', 'Bayugan');
INSERT INTO `address_lookup` VALUES ('43', 'PH', 'Agusan del Sur', '8503', 'Sibagat');
INSERT INTO `address_lookup` VALUES ('44', 'PH', 'Agusan del Sur', '8504', 'Rosario');
INSERT INTO `address_lookup` VALUES ('45', 'PH', 'Agusan del Sur', '8505', 'Trento');
INSERT INTO `address_lookup` VALUES ('46', 'PH', 'Agusan del Sur', '8506', 'Bunawan');
INSERT INTO `address_lookup` VALUES ('47', 'PH', 'Agusan del Sur', '8507', 'Loreto');
INSERT INTO `address_lookup` VALUES ('48', 'PH', 'Agusan del Sur', '8508', 'La Paz');
INSERT INTO `address_lookup` VALUES ('49', 'PH', 'Agusan del Sur', '8509', 'Veruela');
INSERT INTO `address_lookup` VALUES ('50', 'PH', 'Agusan del Sur', '8510', 'Talacogon');
INSERT INTO `address_lookup` VALUES ('51', 'PH', 'Agusan del Sur', '8511', 'San Luis');
INSERT INTO `address_lookup` VALUES ('52', 'PH', 'Agusan del Sur', '8512', 'Santa Josefa');
INSERT INTO `address_lookup` VALUES ('53', 'PH', 'Agusan del Sur', '8513', 'Esperanza');
INSERT INTO `address_lookup` VALUES ('54', 'PH', 'Aklan', '5616', 'Altavas');
INSERT INTO `address_lookup` VALUES ('55', 'PH', 'Aklan', '5614', 'Balete');
INSERT INTO `address_lookup` VALUES ('56', 'PH', 'Aklan', '5601', 'Banga');
INSERT INTO `address_lookup` VALUES ('57', 'PH', 'Aklan', '5615', 'Batan');
INSERT INTO `address_lookup` VALUES ('58', 'PH', 'Aklan', '5609', 'Buruanga');
INSERT INTO `address_lookup` VALUES ('59', 'PH', 'Aklan', '5613', 'Ibajay');
INSERT INTO `address_lookup` VALUES ('60', 'PH', 'Aklan', '5600', 'Kalibo');
INSERT INTO `address_lookup` VALUES ('61', 'PH', 'Aklan', '5605', 'Lezo');
INSERT INTO `address_lookup` VALUES ('62', 'PH', 'Aklan', '5602', 'Libacao');
INSERT INTO `address_lookup` VALUES ('63', 'PH', 'Aklan', '5603', 'Madalag');
INSERT INTO `address_lookup` VALUES ('64', 'PH', 'Aklan', '5611', 'Makato');
INSERT INTO `address_lookup` VALUES ('65', 'PH', 'Aklan', '5608', 'Malay');
INSERT INTO `address_lookup` VALUES ('66', 'PH', 'Aklan', '5606', 'Malinao');
INSERT INTO `address_lookup` VALUES ('67', 'PH', 'Aklan', '5607', 'Nabas');
INSERT INTO `address_lookup` VALUES ('68', 'PH', 'Aklan', '5610', 'New Washington');
INSERT INTO `address_lookup` VALUES ('69', 'PH', 'Aklan', '5604', 'Numancia');
INSERT INTO `address_lookup` VALUES ('70', 'PH', 'Aklan', '5612', 'Tangalan');
INSERT INTO `address_lookup` VALUES ('71', 'PH', 'Albay', '4509', 'Bacacay');
INSERT INTO `address_lookup` VALUES ('72', 'PH', 'Albay', '4502', 'Camalig');
INSERT INTO `address_lookup` VALUES ('73', 'PH', 'Albay', '4501', 'Daraga (Locsin)');
INSERT INTO `address_lookup` VALUES ('74', 'PH', 'Albay', '4503', 'Guinobatan');
INSERT INTO `address_lookup` VALUES ('75', 'PH', 'Albay', '4515', 'Jovellar');
INSERT INTO `address_lookup` VALUES ('76', 'PH', 'Albay', '4500', 'Legazpi City');
INSERT INTO `address_lookup` VALUES ('77', 'PH', 'Albay', '4507', 'Libon');
INSERT INTO `address_lookup` VALUES ('78', 'PH', 'Albay', '4504', 'Ligao City');
INSERT INTO `address_lookup` VALUES ('79', 'PH', 'Albay', '4510', 'Malilipot');
INSERT INTO `address_lookup` VALUES ('80', 'PH', 'Albay', '4512', 'Malinao');
INSERT INTO `address_lookup` VALUES ('81', 'PH', 'Albay', '4514', 'Manito');
INSERT INTO `address_lookup` VALUES ('82', 'PH', 'Albay', '4505', 'Oas');
INSERT INTO `address_lookup` VALUES ('83', 'PH', 'Albay', '4516', 'Pio Duran (Malacbalac)');
INSERT INTO `address_lookup` VALUES ('84', 'PH', 'Albay', '4506', 'Polangui');
INSERT INTO `address_lookup` VALUES ('85', 'PH', 'Albay', '4517', 'Rapu-Rapu');
INSERT INTO `address_lookup` VALUES ('86', 'PH', 'Albay', '4508', 'Santo Domingo');
INSERT INTO `address_lookup` VALUES ('87', 'PH', 'Albay', '4511', 'Tabaco City');
INSERT INTO `address_lookup` VALUES ('88', 'PH', 'Albay', '4513', 'Tiwi');
INSERT INTO `address_lookup` VALUES ('89', 'PH', 'Antique', '5717', 'Anini-y');
INSERT INTO `address_lookup` VALUES ('90', 'PH', 'Antique', '5706', 'Barbaza');
INSERT INTO `address_lookup` VALUES ('91', 'PH', 'Antique', '5701', 'Belison');
INSERT INTO `address_lookup` VALUES ('92', 'PH', 'Antique', '5704', 'Bugasong');
INSERT INTO `address_lookup` VALUES ('93', 'PH', 'Antique', '5711', 'Caluya');
INSERT INTO `address_lookup` VALUES ('94', 'PH', 'Antique', '5708', 'Culasi');
INSERT INTO `address_lookup` VALUES ('95', 'PH', 'Antique', '5715', 'Hamtic');
INSERT INTO `address_lookup` VALUES ('96', 'PH', 'Antique', '5705', 'Laua-an');
INSERT INTO `address_lookup` VALUES ('97', 'PH', 'Antique', '5710', 'Libertad');
INSERT INTO `address_lookup` VALUES ('98', 'PH', 'Antique', '5712', 'Pandan');
INSERT INTO `address_lookup` VALUES ('99', 'PH', 'Antique', '5702', 'Patnongon');
INSERT INTO `address_lookup` VALUES ('100', 'PH', 'Antique', '5700', 'San Jose');
INSERT INTO `address_lookup` VALUES ('101', 'PH', 'Antique', '5714', 'San Remigio');
INSERT INTO `address_lookup` VALUES ('102', 'PH', 'Antique', '5709', 'Sebaste');
INSERT INTO `address_lookup` VALUES ('103', 'PH', 'Antique', '5713', 'Sibalom');
INSERT INTO `address_lookup` VALUES ('104', 'PH', 'Antique', '5707', 'Tibiao');
INSERT INTO `address_lookup` VALUES ('105', 'PH', 'Antique', '5716', 'Tobias Fornier (Dao)');
INSERT INTO `address_lookup` VALUES ('106', 'PH', 'Antique', '5703', 'Valderrama');
INSERT INTO `address_lookup` VALUES ('107', 'PH', 'Apayao', '3814', 'Calanasan (Bayag)');
INSERT INTO `address_lookup` VALUES ('108', 'PH', 'Apayao', '3807', 'Conner');
INSERT INTO `address_lookup` VALUES ('109', 'PH', 'Apayao', '3810', 'Flora');
INSERT INTO `address_lookup` VALUES ('110', 'PH', 'Apayao', '3809', 'Kabugao');
INSERT INTO `address_lookup` VALUES ('111', 'PH', 'Apayao', '3813', 'Luna');
INSERT INTO `address_lookup` VALUES ('112', 'PH', 'Apayao', '3812', 'Pudtol');
INSERT INTO `address_lookup` VALUES ('113', 'PH', 'Apayao', '3811', 'Santa Marcela');
INSERT INTO `address_lookup` VALUES ('114', 'PH', 'Aurora', '3200', 'Baler');
INSERT INTO `address_lookup` VALUES ('115', 'PH', 'Aurora', '3204', 'Casiguran');
INSERT INTO `address_lookup` VALUES ('116', 'PH', 'Aurora', '3205', 'Dilasag');
INSERT INTO `address_lookup` VALUES ('117', 'PH', 'Aurora', '3206', 'Dinalungan');
INSERT INTO `address_lookup` VALUES ('118', 'PH', 'Aurora', '3207', 'Dingalan');
INSERT INTO `address_lookup` VALUES ('119', 'PH', 'Aurora', '3203', 'Dipaculao');
INSERT INTO `address_lookup` VALUES ('120', 'PH', 'Aurora', '3202', 'Maria Aurora');
INSERT INTO `address_lookup` VALUES ('121', 'PH', 'Aurora', '3201', 'San Luis');
INSERT INTO `address_lookup` VALUES ('122', 'PH', 'Basilan', '7300', 'Isabela City');
INSERT INTO `address_lookup` VALUES ('123', 'PH', 'Basilan', '7301', 'Lantawan');
INSERT INTO `address_lookup` VALUES ('124', 'PH', 'Basilan', '7302', 'Lamitan City');
INSERT INTO `address_lookup` VALUES ('125', 'PH', 'Basilan', '7303', 'Maluso');
INSERT INTO `address_lookup` VALUES ('126', 'PH', 'Basilan', '7304', 'Tipo-Tipo');
INSERT INTO `address_lookup` VALUES ('127', 'PH', 'Basilan', '7305', 'Sumisip');
INSERT INTO `address_lookup` VALUES ('128', 'PH', 'Basilan', '7306', 'Tuburan');
INSERT INTO `address_lookup` VALUES ('129', 'PH', 'Basilan', '7308', 'Froilie');
INSERT INTO `address_lookup` VALUES ('130', 'PH', 'Bataan', '2114', 'Abucay');
INSERT INTO `address_lookup` VALUES ('131', 'PH', 'Bataan', '2107', 'Bagac');
INSERT INTO `address_lookup` VALUES ('132', 'PH', 'Bataan', '2100', 'Balanga City');
INSERT INTO `address_lookup` VALUES ('133', 'PH', 'Bataan', '2106', 'Mariveles (Bataan Export Processing Zone)');
INSERT INTO `address_lookup` VALUES ('134', 'PH', 'Bataan', '2110', 'Dinalupihan');
INSERT INTO `address_lookup` VALUES ('135', 'PH', 'Bataan', '2111', 'Hermosa');
INSERT INTO `address_lookup` VALUES ('136', 'PH', 'Bataan', '2104', 'Lamao');
INSERT INTO `address_lookup` VALUES ('137', 'PH', 'Bataan', '2103', 'Limay');
INSERT INTO `address_lookup` VALUES ('138', 'PH', 'Bataan', '2105', 'Mariveles');
INSERT INTO `address_lookup` VALUES ('139', 'PH', 'Bataan', '2108', 'Morong');
INSERT INTO `address_lookup` VALUES ('140', 'PH', 'Bataan', '2112', 'Orani');
INSERT INTO `address_lookup` VALUES ('141', 'PH', 'Bataan', '2102', 'Orion');
INSERT INTO `address_lookup` VALUES ('142', 'PH', 'Bataan', '2101', 'Pilar');
INSERT INTO `address_lookup` VALUES ('143', 'PH', 'Bataan', '2109', 'Morong (Refugee Processing Center)');
INSERT INTO `address_lookup` VALUES ('144', 'PH', 'Bataan', '2113', 'Samal');
INSERT INTO `address_lookup` VALUES ('145', 'PH', 'Batanes', '3900', 'Basco');
INSERT INTO `address_lookup` VALUES ('146', 'PH', 'Batanes', '3905', 'Itbayat');
INSERT INTO `address_lookup` VALUES ('147', 'PH', 'Batanes', '3902', 'Ivana');
INSERT INTO `address_lookup` VALUES ('148', 'PH', 'Batanes', '3901', 'Mahatao');
INSERT INTO `address_lookup` VALUES ('149', 'PH', 'Batanes', '3904', 'Sabtang');
INSERT INTO `address_lookup` VALUES ('150', 'PH', 'Batanes', '3903', 'Uyugan');
INSERT INTO `address_lookup` VALUES ('151', 'PH', 'Batangas', '4211', 'Agoncillo');
INSERT INTO `address_lookup` VALUES ('152', 'PH', 'Batangas', '4205', 'Alitagtag');
INSERT INTO `address_lookup` VALUES ('153', 'PH', 'Batangas', '4213', 'Balayan');
INSERT INTO `address_lookup` VALUES ('154', 'PH', 'Batangas', '4219', 'Balete');
INSERT INTO `address_lookup` VALUES ('155', 'PH', 'Batangas', '4200', 'Batangas City');
INSERT INTO `address_lookup` VALUES ('156', 'PH', 'Batangas', '4201', 'Bauan');
INSERT INTO `address_lookup` VALUES ('157', 'PH', 'Batangas', '4212', 'Calaca');
INSERT INTO `address_lookup` VALUES ('158', 'PH', 'Batangas', '4215', 'Calatagan, incl. Punta Baluarte');
INSERT INTO `address_lookup` VALUES ('159', 'PH', 'Batangas', '4222', 'Cuenca');
INSERT INTO `address_lookup` VALUES ('160', 'PH', 'Batangas', '4218', 'Fernando Airbase');
INSERT INTO `address_lookup` VALUES ('161', 'PH', 'Batangas', '4230', 'Ibaan');
INSERT INTO `address_lookup` VALUES ('162', 'PH', 'Batangas', '4221', 'Laurel, incl. Diokno Highway');
INSERT INTO `address_lookup` VALUES ('163', 'PH', 'Batangas', '4209', 'Lemery');
INSERT INTO `address_lookup` VALUES ('164', 'PH', 'Batangas', '4216', 'Lian, incl. Matabungkay');
INSERT INTO `address_lookup` VALUES ('165', 'PH', 'Batangas', '4217', 'Lipa City');
INSERT INTO `address_lookup` VALUES ('166', 'PH', 'Batangas', '4229', 'Lobo, incl. Laiya');
INSERT INTO `address_lookup` VALUES ('167', 'PH', 'Batangas', '4202', 'Mabini');
INSERT INTO `address_lookup` VALUES ('168', 'PH', 'Batangas', '4233', 'Malvar');
INSERT INTO `address_lookup` VALUES ('169', 'PH', 'Batangas', '4223', 'Mataas na Kahoy');
INSERT INTO `address_lookup` VALUES ('170', 'PH', 'Batangas', '4231', 'Nasugbu, incl. Punta Fuego and Calaruega');
INSERT INTO `address_lookup` VALUES ('171', 'PH', 'Batangas', '4224', 'Padre Garcia');
INSERT INTO `address_lookup` VALUES ('172', 'PH', 'Batangas', '4225', 'Rosario');
INSERT INTO `address_lookup` VALUES ('173', 'PH', 'Batangas', '4227', 'San Jose');
INSERT INTO `address_lookup` VALUES ('174', 'PH', 'Batangas', '4226', 'San Juan');
INSERT INTO `address_lookup` VALUES ('175', 'PH', 'Batangas', '4210', 'San Luis');
INSERT INTO `address_lookup` VALUES ('176', 'PH', 'Batangas', '4207', 'San Nicolas');
INSERT INTO `address_lookup` VALUES ('177', 'PH', 'Batangas', '4204', 'San Pascual');
INSERT INTO `address_lookup` VALUES ('178', 'PH', 'Batangas', '4206', 'Santa Teresita');
INSERT INTO `address_lookup` VALUES ('179', 'PH', 'Batangas', '4234', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('180', 'PH', 'Batangas', '4208', 'Taal');
INSERT INTO `address_lookup` VALUES ('181', 'PH', 'Batangas', '4220', 'Talisay');
INSERT INTO `address_lookup` VALUES ('182', 'PH', 'Batangas', '4232', 'Tanauan City');
INSERT INTO `address_lookup` VALUES ('183', 'PH', 'Batangas', '4228', 'Taysan');
INSERT INTO `address_lookup` VALUES ('184', 'PH', 'Batangas', '4203', 'Tingloy');
INSERT INTO `address_lookup` VALUES ('185', 'PH', 'Batangas', '4214', 'Tuy');
INSERT INTO `address_lookup` VALUES ('186', 'PH', 'Benguet', '2612', 'Atok');
INSERT INTO `address_lookup` VALUES ('187', 'PH', 'Benguet', '2600', 'Baguio City');
INSERT INTO `address_lookup` VALUES ('188', 'PH', 'Benguet', '2610', 'Bakun');
INSERT INTO `address_lookup` VALUES ('189', 'PH', 'Benguet', '2605', 'Bokod');
INSERT INTO `address_lookup` VALUES ('190', 'PH', 'Benguet', '2607', 'Buguias');
INSERT INTO `address_lookup` VALUES ('191', 'PH', 'Benguet', '2604', 'Itogon');
INSERT INTO `address_lookup` VALUES ('192', 'PH', 'Benguet', '2606', 'Kabayan');
INSERT INTO `address_lookup` VALUES ('193', 'PH', 'Benguet', '2613', 'Kapangan');
INSERT INTO `address_lookup` VALUES ('194', 'PH', 'Benguet', '2611', 'Kibungan');
INSERT INTO `address_lookup` VALUES ('195', 'PH', 'Benguet', '2601', 'La Trinidad, including Pico');
INSERT INTO `address_lookup` VALUES ('196', 'PH', 'Benguet', '2609', 'Lepanto, Mankayan');
INSERT INTO `address_lookup` VALUES ('197', 'PH', 'Benguet', '2608', 'Mankayan');
INSERT INTO `address_lookup` VALUES ('198', 'PH', 'Benguet', '2602', 'Philippine Military Academy');
INSERT INTO `address_lookup` VALUES ('199', 'PH', 'Benguet', '2614', 'Sablan');
INSERT INTO `address_lookup` VALUES ('200', 'PH', 'Benguet', '2603', 'Tuba, including Marcos Highway and Kennon Road');
INSERT INTO `address_lookup` VALUES ('201', 'PH', 'Benguet', '2615', 'Tublay');
INSERT INTO `address_lookup` VALUES ('202', 'PH', 'Biliran', '6544', 'Almeria');
INSERT INTO `address_lookup` VALUES ('203', 'PH', 'Biliran', '6549', 'Biliran');
INSERT INTO `address_lookup` VALUES ('204', 'PH', 'Biliran', '6550', 'Cabucgayan');
INSERT INTO `address_lookup` VALUES ('205', 'PH', 'Biliran', '6548', 'Caibiran');
INSERT INTO `address_lookup` VALUES ('206', 'PH', 'Biliran', '6547', 'Culaba');
INSERT INTO `address_lookup` VALUES ('207', 'PH', 'Biliran', '6545', 'Kawayan');
INSERT INTO `address_lookup` VALUES ('208', 'PH', 'Biliran', '6546', 'Maripipi');
INSERT INTO `address_lookup` VALUES ('209', 'PH', 'Biliran', '6543', 'Naval');
INSERT INTO `address_lookup` VALUES ('210', 'PH', 'Bohol', '6302', 'Alburquerque');
INSERT INTO `address_lookup` VALUES ('211', 'PH', 'Bohol', '6314', 'Alicia');
INSERT INTO `address_lookup` VALUES ('212', 'PH', 'Bohol', '6311', 'Anda');
INSERT INTO `address_lookup` VALUES ('213', 'PH', 'Bohol', '6335', 'Antequera');
INSERT INTO `address_lookup` VALUES ('214', 'PH', 'Bohol', '6301', 'Baclayon');
INSERT INTO `address_lookup` VALUES ('215', 'PH', 'Bohol', '6342', 'Balilihan');
INSERT INTO `address_lookup` VALUES ('216', 'PH', 'Bohol', '6318', 'Batuan');
INSERT INTO `address_lookup` VALUES ('217', 'PH', 'Bohol', '6326', 'Bien Unido');
INSERT INTO `address_lookup` VALUES ('218', 'PH', 'Bohol', '6317', 'Bilar');
INSERT INTO `address_lookup` VALUES ('219', 'PH', 'Bohol', '6333', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('220', 'PH', 'Bohol', '6328', 'Calape');
INSERT INTO `address_lookup` VALUES ('221', 'PH', 'Bohol', '6312', 'Candijay');
INSERT INTO `address_lookup` VALUES ('222', 'PH', 'Bohol', '6346', 'Pres. Carlos P. Garcia (Pitogo)');
INSERT INTO `address_lookup` VALUES ('223', 'PH', 'Bohol', '6319', 'Carmen');
INSERT INTO `address_lookup` VALUES ('224', 'PH', 'Bohol', '6343', 'Catigbian');
INSERT INTO `address_lookup` VALUES ('225', 'PH', 'Bohol', '6330', 'Clarin');
INSERT INTO `address_lookup` VALUES ('226', 'PH', 'Bohol', '6337', 'Corella');
INSERT INTO `address_lookup` VALUES ('227', 'PH', 'Bohol', '6341', 'Cortes');
INSERT INTO `address_lookup` VALUES ('228', 'PH', 'Bohol', '6322', 'Dagohoy');
INSERT INTO `address_lookup` VALUES ('229', 'PH', 'Bohol', '6344', 'Danao');
INSERT INTO `address_lookup` VALUES ('230', 'PH', 'Bohol', '6339', 'Dauis');
INSERT INTO `address_lookup` VALUES ('231', 'PH', 'Bohol', '6305', 'Dimiao');
INSERT INTO `address_lookup` VALUES ('232', 'PH', 'Bohol', '6309', 'Duero');
INSERT INTO `address_lookup` VALUES ('233', 'PH', 'Bohol', '6307', 'Garcia Hernandez');
INSERT INTO `address_lookup` VALUES ('234', 'PH', 'Bohol', '6310', 'Guindulman');
INSERT INTO `address_lookup` VALUES ('235', 'PH', 'Bohol', '6332', 'Inabanga');
INSERT INTO `address_lookup` VALUES ('236', 'PH', 'Bohol', '6308', 'Jagna');
INSERT INTO `address_lookup` VALUES ('237', 'PH', 'Bohol', '6334', 'Jetafe');
INSERT INTO `address_lookup` VALUES ('238', 'PH', 'Bohol', '6304', 'Lila');
INSERT INTO `address_lookup` VALUES ('239', 'PH', 'Bohol', '6202', 'Loay');
INSERT INTO `address_lookup` VALUES ('240', 'PH', 'Bohol', '6316', 'Loboc');
INSERT INTO `address_lookup` VALUES ('241', 'PH', 'Bohol', '6327', 'Loon');
INSERT INTO `address_lookup` VALUES ('242', 'PH', 'Bohol', '6313', 'Mabini');
INSERT INTO `address_lookup` VALUES ('243', 'PH', 'Bohol', '6336', 'Maribojoc');
INSERT INTO `address_lookup` VALUES ('244', 'PH', 'Bohol', '6340', 'Panglao');
INSERT INTO `address_lookup` VALUES ('245', 'PH', 'Bohol', '6321', 'Pilar');
INSERT INTO `address_lookup` VALUES ('246', 'PH', 'Bohol', '6331', 'Sagbayan');
INSERT INTO `address_lookup` VALUES ('247', 'PH', 'Bohol', '6345', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('248', 'PH', 'Bohol', '6323', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('249', 'PH', 'Bohol', '6347', 'Sevilla');
INSERT INTO `address_lookup` VALUES ('250', 'PH', 'Bohol', '6320', 'Sierra Bullones');
INSERT INTO `address_lookup` VALUES ('251', 'PH', 'Bohol', '6338', 'Sikatuna');
INSERT INTO `address_lookup` VALUES ('252', 'PH', 'Bohol', '6300', 'Tagbilaran City');
INSERT INTO `address_lookup` VALUES ('253', 'PH', 'Bohol', '6325', 'Talibon');
INSERT INTO `address_lookup` VALUES ('254', 'PH', 'Bohol', '6324', 'Trinidad');
INSERT INTO `address_lookup` VALUES ('255', 'PH', 'Bohol', '6329', 'Tubigon');
INSERT INTO `address_lookup` VALUES ('256', 'PH', 'Bohol', '6315', 'Ubay');
INSERT INTO `address_lookup` VALUES ('257', 'PH', 'Bohol', '6306', 'Valencia');
INSERT INTO `address_lookup` VALUES ('258', 'PH', 'Bukidnon', '8707', 'Baungon');
INSERT INTO `address_lookup` VALUES ('259', 'PH', 'Bukidnon', '8723', 'Cabanglasan');
INSERT INTO `address_lookup` VALUES ('260', 'PH', 'Bukidnon', '8721', 'Damulog');
INSERT INTO `address_lookup` VALUES ('261', 'PH', 'Bukidnon', '8719', 'Dangcagan');
INSERT INTO `address_lookup` VALUES ('262', 'PH', 'Bukidnon', '8712', 'Don Carlos');
INSERT INTO `address_lookup` VALUES ('263', 'PH', 'Bukidnon', '8702', 'Impasugong');
INSERT INTO `address_lookup` VALUES ('264', 'PH', 'Bukidnon', '8713', 'Kadingilan');
INSERT INTO `address_lookup` VALUES ('265', 'PH', 'Bukidnon', '8718', 'Kalilangan');
INSERT INTO `address_lookup` VALUES ('266', 'PH', 'Bukidnon', '8720', 'Kibawe');
INSERT INTO `address_lookup` VALUES ('267', 'PH', 'Bukidnon', '8716', 'Kitaotao');
INSERT INTO `address_lookup` VALUES ('268', 'PH', 'Bukidnon', '8722', 'Lantapan');
INSERT INTO `address_lookup` VALUES ('269', 'PH', 'Bukidnon', '8706', 'Libona');
INSERT INTO `address_lookup` VALUES ('270', 'PH', 'Bukidnon', '8700', 'Malaybalay City');
INSERT INTO `address_lookup` VALUES ('271', 'PH', 'Bukidnon', '8704', 'Malitbog');
INSERT INTO `address_lookup` VALUES ('272', 'PH', 'Bukidnon', '8703', 'Manolo Fortich');
INSERT INTO `address_lookup` VALUES ('273', 'PH', 'Bukidnon', '8714', 'Maramag');
INSERT INTO `address_lookup` VALUES ('274', 'PH', 'Bukidnon', '8710', 'Musuan');
INSERT INTO `address_lookup` VALUES ('275', 'PH', 'Bukidnon', '8717', 'Pangantucan');
INSERT INTO `address_lookup` VALUES ('276', 'PH', 'Bukidnon', '8705', 'Phillips');
INSERT INTO `address_lookup` VALUES ('277', 'PH', 'Bukidnon', '8715', 'Quezon');
INSERT INTO `address_lookup` VALUES ('278', 'PH', 'Bukidnon', '8711', 'San Fernando');
INSERT INTO `address_lookup` VALUES ('279', 'PH', 'Bukidnon', '8701', 'Sumilao');
INSERT INTO `address_lookup` VALUES ('280', 'PH', 'Bukidnon', '8708', 'Talakag');
INSERT INTO `address_lookup` VALUES ('281', 'PH', 'Bukidnon', '8709', 'Valencia City');
INSERT INTO `address_lookup` VALUES ('282', 'PH', 'Bulacan', '3012', 'Angat');
INSERT INTO `address_lookup` VALUES ('283', 'PH', 'Bulacan', '3016', 'Balagtas (Bigaa)');
INSERT INTO `address_lookup` VALUES ('284', 'PH', 'Bulacan', '3006', 'Baliuag');
INSERT INTO `address_lookup` VALUES ('285', 'PH', 'Bulacan', '3018', 'Bocaue');
INSERT INTO `address_lookup` VALUES ('286', 'PH', 'Bulacan', '3017', 'Bulacan');
INSERT INTO `address_lookup` VALUES ('287', 'PH', 'Bulacan', '3007', 'Bustos');
INSERT INTO `address_lookup` VALUES ('288', 'PH', 'Bulacan', '3003', 'Calumpit');
INSERT INTO `address_lookup` VALUES ('289', 'PH', 'Bulacan', '3009', 'Dona Remedios Trinidad');
INSERT INTO `address_lookup` VALUES ('290', 'PH', 'Bulacan', '3015', 'Guiguinto');
INSERT INTO `address_lookup` VALUES ('291', 'PH', 'Bulacan', '3002', 'Hagonoy');
INSERT INTO `address_lookup` VALUES ('292', 'PH', 'Bulacan', '3000', 'Malolos City');
INSERT INTO `address_lookup` VALUES ('293', 'PH', 'Bulacan', '3019', 'Marilao');
INSERT INTO `address_lookup` VALUES ('294', 'PH', 'Bulacan', '3020', 'Meycauayan City');
INSERT INTO `address_lookup` VALUES ('295', 'PH', 'Bulacan', '3013', 'Norzagaray');
INSERT INTO `address_lookup` VALUES ('296', 'PH', 'Bulacan', '3021', 'Obando');
INSERT INTO `address_lookup` VALUES ('297', 'PH', 'Bulacan', '3014', 'Pandi');
INSERT INTO `address_lookup` VALUES ('298', 'PH', 'Bulacan', '3001', 'Paombong');
INSERT INTO `address_lookup` VALUES ('299', 'PH', 'Bulacan', '3004', 'Plaridel');
INSERT INTO `address_lookup` VALUES ('300', 'PH', 'Bulacan', '3005', 'Pulilan');
INSERT INTO `address_lookup` VALUES ('301', 'PH', 'Bulacan', '3010', 'San Ildefonso');
INSERT INTO `address_lookup` VALUES ('302', 'PH', 'Bulacan', '3023', 'San Jose del Monte City');
INSERT INTO `address_lookup` VALUES ('303', 'PH', 'Bulacan', '3011', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('304', 'PH', 'Bulacan', '3008', 'San Rafael');
INSERT INTO `address_lookup` VALUES ('305', 'PH', 'Bulacan', '3022', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('306', 'PH', 'Bulacan', '3024', 'Sapang Palay, San Jose del Monte City');
INSERT INTO `address_lookup` VALUES ('307', 'PH', 'Cagayan', '3517', 'Abulug');
INSERT INTO `address_lookup` VALUES ('308', 'PH', 'Cagayan', '3507', 'Alcala');
INSERT INTO `address_lookup` VALUES ('309', 'PH', 'Cagayan', '3523', 'Allacapan');
INSERT INTO `address_lookup` VALUES ('310', 'PH', 'Cagayan', '3505', 'Amulung');
INSERT INTO `address_lookup` VALUES ('311', 'PH', 'Cagayan', '3515', 'Aparri');
INSERT INTO `address_lookup` VALUES ('312', 'PH', 'Cagayan', '3506', 'Baggao');
INSERT INTO `address_lookup` VALUES ('313', 'PH', 'Cagayan', '3516', 'Ballesteros');
INSERT INTO `address_lookup` VALUES ('314', 'PH', 'Cagayan', '3511', 'Buguey');
INSERT INTO `address_lookup` VALUES ('315', 'PH', 'Cagayan', '3520', 'Calayan');
INSERT INTO `address_lookup` VALUES ('316', 'PH', 'Cagayan', '3510', 'Camalaniugan');
INSERT INTO `address_lookup` VALUES ('317', 'PH', 'Cagayan', '3519', 'Claveria');
INSERT INTO `address_lookup` VALUES ('318', 'PH', 'Cagayan', '3501', 'Enrile');
INSERT INTO `address_lookup` VALUES ('319', 'PH', 'Cagayan', '3508', 'Gattaran');
INSERT INTO `address_lookup` VALUES ('320', 'PH', 'Cagayan', '3513', 'Gonzaga');
INSERT INTO `address_lookup` VALUES ('321', 'PH', 'Cagayan', '3504', 'Iguig');
INSERT INTO `address_lookup` VALUES ('322', 'PH', 'Cagayan', '3509', 'Lal-Lo');
INSERT INTO `address_lookup` VALUES ('323', 'PH', 'Cagayan', '3524', 'Lasam');
INSERT INTO `address_lookup` VALUES ('324', 'PH', 'Cagayan', '3522', 'Pamplona');
INSERT INTO `address_lookup` VALUES ('325', 'PH', 'Cagayan', '3502', 'Peñablanca');
INSERT INTO `address_lookup` VALUES ('326', 'PH', 'Cagayan', '3527', 'Piat');
INSERT INTO `address_lookup` VALUES ('327', 'PH', 'Cagayan', '3526', 'Rizal');
INSERT INTO `address_lookup` VALUES ('328', 'PH', 'Cagayan', '3518', 'Sanchez-Mira');
INSERT INTO `address_lookup` VALUES ('329', 'PH', 'Cagayan', '3514', 'Santa Ana');
INSERT INTO `address_lookup` VALUES ('330', 'PH', 'Cagayan', '3521', 'Santa Praxedes');
INSERT INTO `address_lookup` VALUES ('331', 'PH', 'Cagayan', '3512', 'Santa Teresita');
INSERT INTO `address_lookup` VALUES ('332', 'PH', 'Cagayan', '3525', 'Santo Niño');
INSERT INTO `address_lookup` VALUES ('333', 'PH', 'Cagayan', '3503', 'Solana');
INSERT INTO `address_lookup` VALUES ('334', 'PH', 'Cagayan', '3528', 'Tuao');
INSERT INTO `address_lookup` VALUES ('335', 'PH', 'Cagayan', '3500', 'Tuguegarao City');
INSERT INTO `address_lookup` VALUES ('336', 'PH', 'Camarines Norte', '4608', 'Basud');
INSERT INTO `address_lookup` VALUES ('337', 'PH', 'Camarines Norte', '4607', 'Capalonga');
INSERT INTO `address_lookup` VALUES ('338', 'PH', 'Camarines Norte', '4600', 'Daet');
INSERT INTO `address_lookup` VALUES ('339', 'PH', 'Camarines Norte', '4610', 'Imelda / San Lorenzo Ruiz');
INSERT INTO `address_lookup` VALUES ('340', 'PH', 'Camarines Norte', '4606', 'Jose Panganiban');
INSERT INTO `address_lookup` VALUES ('341', 'PH', 'Camarines Norte', '4604', 'Labo');
INSERT INTO `address_lookup` VALUES ('342', 'PH', 'Camarines Norte', '4601', 'Mercedes');
INSERT INTO `address_lookup` VALUES ('343', 'PH', 'Camarines Norte', '4605', 'Paracale');
INSERT INTO `address_lookup` VALUES ('344', 'PH', 'Camarines Norte', '4609', 'San Vicente');
INSERT INTO `address_lookup` VALUES ('345', 'PH', 'Camarines Norte', '4611', 'Santa Elena');
INSERT INTO `address_lookup` VALUES ('346', 'PH', 'Camarines Norte', '4602', 'Talisay');
INSERT INTO `address_lookup` VALUES ('347', 'PH', 'Camarines Norte', '4612', 'Tulay-na-Lupa');
INSERT INTO `address_lookup` VALUES ('348', 'PH', 'Camarines Norte', '4603', 'Vinzons');
INSERT INTO `address_lookup` VALUES ('349', 'PH', 'Camarines Sur', '4432', 'Baao');
INSERT INTO `address_lookup` VALUES ('350', 'PH', 'Camarines Sur', '4436', 'Balatan');
INSERT INTO `address_lookup` VALUES ('351', 'PH', 'Camarines Sur', '4435', 'Bato');
INSERT INTO `address_lookup` VALUES ('352', 'PH', 'Camarines Sur', '4404', 'Bombon');
INSERT INTO `address_lookup` VALUES ('353', 'PH', 'Camarines Sur', '4433', 'Buhi');
INSERT INTO `address_lookup` VALUES ('354', 'PH', 'Camarines Sur', '4430', 'Bula');
INSERT INTO `address_lookup` VALUES ('355', 'PH', 'Camarines Sur', '4406', 'Cabusao');
INSERT INTO `address_lookup` VALUES ('356', 'PH', 'Camarines Sur', '4405', 'Calabanga');
INSERT INTO `address_lookup` VALUES ('357', 'PH', 'Camarines Sur', '4401', 'Camaligan');
INSERT INTO `address_lookup` VALUES ('358', 'PH', 'Camarines Sur', '4402', 'Canaman');
INSERT INTO `address_lookup` VALUES ('359', 'PH', 'Camarines Sur', '4429', 'Caramoan');
INSERT INTO `address_lookup` VALUES ('360', 'PH', 'Camarines Sur', '4411', 'Del Gallego');
INSERT INTO `address_lookup` VALUES ('361', 'PH', 'Camarines Sur', '4412', 'Gainza');
INSERT INTO `address_lookup` VALUES ('362', 'PH', 'Camarines Sur', '4428', 'Garchitorena');
INSERT INTO `address_lookup` VALUES ('363', 'PH', 'Camarines Sur', '4422', 'Goa');
INSERT INTO `address_lookup` VALUES ('364', 'PH', 'Camarines Sur', '4431', 'Iriga City');
INSERT INTO `address_lookup` VALUES ('365', 'PH', 'Camarines Sur', '4425', 'Lagonoy');
INSERT INTO `address_lookup` VALUES ('366', 'PH', 'Camarines Sur', '4407', 'Libmanan');
INSERT INTO `address_lookup` VALUES ('367', 'PH', 'Camarines Sur', '4409', 'Lupi');
INSERT INTO `address_lookup` VALUES ('368', 'PH', 'Camarines Sur', '4403', 'Magarao');
INSERT INTO `address_lookup` VALUES ('369', 'PH', 'Camarines Sur', '4413', 'Milaor');
INSERT INTO `address_lookup` VALUES ('370', 'PH', 'Camarines Sur', '4414', 'Minalabac');
INSERT INTO `address_lookup` VALUES ('371', 'PH', 'Camarines Sur', '4434', 'Nabua');
INSERT INTO `address_lookup` VALUES ('372', 'PH', 'Camarines Sur', '4400', 'Naga City');
INSERT INTO `address_lookup` VALUES ('373', 'PH', 'Camarines Sur', '4419', 'Ocampo');
INSERT INTO `address_lookup` VALUES ('374', 'PH', 'Camarines Sur', '4416', 'Pamplona');
INSERT INTO `address_lookup` VALUES ('375', 'PH', 'Camarines Sur', '4417', 'Pasacao');
INSERT INTO `address_lookup` VALUES ('376', 'PH', 'Camarines Sur', '4418', 'Pili');
INSERT INTO `address_lookup` VALUES ('377', 'PH', 'Camarines Sur', '4424', 'Presentacion');
INSERT INTO `address_lookup` VALUES ('378', 'PH', 'Camarines Sur', '4410', 'Ragay');
INSERT INTO `address_lookup` VALUES ('379', 'PH', 'Camarines Sur', '4421', 'Sagnay');
INSERT INTO `address_lookup` VALUES ('380', 'PH', 'Camarines Sur', '4415', 'San Fernando');
INSERT INTO `address_lookup` VALUES ('381', 'PH', 'Camarines Sur', '4423', 'San Jose');
INSERT INTO `address_lookup` VALUES ('382', 'PH', 'Camarines Sur', '4408', 'Sipocot');
INSERT INTO `address_lookup` VALUES ('383', 'PH', 'Camarines Sur', '4427', 'Siruma');
INSERT INTO `address_lookup` VALUES ('384', 'PH', 'Camarines Sur', '4420', 'Tigaon');
INSERT INTO `address_lookup` VALUES ('385', 'PH', 'Camarines Sur', '4426', 'Tinambac');
INSERT INTO `address_lookup` VALUES ('386', 'PH', 'Camiguin', '9100', 'Mambajao');
INSERT INTO `address_lookup` VALUES ('387', 'PH', 'Camiguin', '9101', 'Mahinog');
INSERT INTO `address_lookup` VALUES ('388', 'PH', 'Camiguin', '9102', 'Guinsiliban');
INSERT INTO `address_lookup` VALUES ('389', 'PH', 'Camiguin', '9103', 'Sagay');
INSERT INTO `address_lookup` VALUES ('390', 'PH', 'Camiguin', '9104', 'Catarman');
INSERT INTO `address_lookup` VALUES ('391', 'PH', 'Capiz', '5811', 'Cuartero');
INSERT INTO `address_lookup` VALUES ('392', 'PH', 'Capiz', '5810', 'Dao');
INSERT INTO `address_lookup` VALUES ('393', 'PH', 'Capiz', '5813', 'Dumalag');
INSERT INTO `address_lookup` VALUES ('394', 'PH', 'Capiz', '5812', 'Dumarao');
INSERT INTO `address_lookup` VALUES ('395', 'PH', 'Capiz', '5805', 'Ivisan');
INSERT INTO `address_lookup` VALUES ('396', 'PH', 'Capiz', '5808', 'Jamindan');
INSERT INTO `address_lookup` VALUES ('397', 'PH', 'Capiz', '5809', 'Ma-ayon');
INSERT INTO `address_lookup` VALUES ('398', 'PH', 'Capiz', '5807', 'Mambusao');
INSERT INTO `address_lookup` VALUES ('399', 'PH', 'Capiz', '5801', 'Panay');
INSERT INTO `address_lookup` VALUES ('400', 'PH', 'Capiz', '5815', 'Panitan');
INSERT INTO `address_lookup` VALUES ('401', 'PH', 'Capiz', '5804', 'Pilar');
INSERT INTO `address_lookup` VALUES ('402', 'PH', 'Capiz', '5802', 'Pontevedra');
INSERT INTO `address_lookup` VALUES ('403', 'PH', 'Capiz', '5803', 'President Roxas');
INSERT INTO `address_lookup` VALUES ('404', 'PH', 'Capiz', '5800', 'Roxas City');
INSERT INTO `address_lookup` VALUES ('405', 'PH', 'Capiz', '5806', 'Sapian');
INSERT INTO `address_lookup` VALUES ('406', 'PH', 'Capiz', '5816', 'Sigma');
INSERT INTO `address_lookup` VALUES ('407', 'PH', 'Capiz', '5814', 'Tapaz');
INSERT INTO `address_lookup` VALUES ('408', 'PH', 'Catanduanes', '4807', 'Bagamanoc');
INSERT INTO `address_lookup` VALUES ('409', 'PH', 'Catanduanes', '4803', 'Baras');
INSERT INTO `address_lookup` VALUES ('410', 'PH', 'Catanduanes', '4801', 'Bato');
INSERT INTO `address_lookup` VALUES ('411', 'PH', 'Catanduanes', '4808', 'Caramoran');
INSERT INTO `address_lookup` VALUES ('412', 'PH', 'Catanduanes', '4804', 'Gigmoto');
INSERT INTO `address_lookup` VALUES ('413', 'PH', 'Catanduanes', '4809', 'Pandan');
INSERT INTO `address_lookup` VALUES ('414', 'PH', 'Catanduanes', '4806', 'Panganiban');
INSERT INTO `address_lookup` VALUES ('415', 'PH', 'Catanduanes', '4810', 'San Andres');
INSERT INTO `address_lookup` VALUES ('416', 'PH', 'Catanduanes', '4802', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('417', 'PH', 'Catanduanes', '4805', 'Viga');
INSERT INTO `address_lookup` VALUES ('418', 'PH', 'Catanduanes', '4800', 'Virac');
INSERT INTO `address_lookup` VALUES ('419', 'PH', 'Cavite', '4133', 'Bailen');
INSERT INTO `address_lookup` VALUES ('420', 'PH', 'Cavite', '4123', 'Alfonso');
INSERT INTO `address_lookup` VALUES ('421', 'PH', 'Cavite', '4119', 'Amadeo');
INSERT INTO `address_lookup` VALUES ('422', 'PH', 'Cavite', '4102', 'Bacoor');
INSERT INTO `address_lookup` VALUES ('423', 'PH', 'Cavite', '4116', 'Carmona');
INSERT INTO `address_lookup` VALUES ('424', 'PH', 'Cavite', '4100', 'Cavite City');
INSERT INTO `address_lookup` VALUES ('425', 'PH', 'Cavite', '4101', 'Sangley Point Naval Base');
INSERT INTO `address_lookup` VALUES ('426', 'PH', 'Cavite', '4125', 'Corregidor Island');
INSERT INTO `address_lookup` VALUES ('427', 'PH', 'Cavite', '4114', 'Dasmariñas');
INSERT INTO `address_lookup` VALUES ('428', 'PH', 'Cavite', '4115', 'Dasmarinas Resettlement Area');
INSERT INTO `address_lookup` VALUES ('429', 'PH', 'Cavite', '4124', 'General Emilio Aguinaldo (Bailen)');
INSERT INTO `address_lookup` VALUES ('430', 'PH', 'Cavite', '4117', 'General Mariano Alvarez');
INSERT INTO `address_lookup` VALUES ('431', 'PH', 'Cavite', '4107', 'General Trias');
INSERT INTO `address_lookup` VALUES ('432', 'PH', 'Cavite', '4103', 'Imus');
INSERT INTO `address_lookup` VALUES ('433', 'PH', 'Cavite', '4122', 'Indang');
INSERT INTO `address_lookup` VALUES ('434', 'PH', 'Cavite', '4104', 'Kawit');
INSERT INTO `address_lookup` VALUES ('435', 'PH', 'Cavite', '4113', 'Magallanes');
INSERT INTO `address_lookup` VALUES ('436', 'PH', 'Cavite', '4112', 'Maragondon');
INSERT INTO `address_lookup` VALUES ('437', 'PH', 'Cavite', '4121', 'Mendez (Mendez-Nuñez)');
INSERT INTO `address_lookup` VALUES ('438', 'PH', 'Cavite', '4110', 'Naic');
INSERT INTO `address_lookup` VALUES ('439', 'PH', 'Cavite', '4105', 'Noveleta');
INSERT INTO `address_lookup` VALUES ('440', 'PH', 'Cavite', '4106', 'Rosario');
INSERT INTO `address_lookup` VALUES ('441', 'PH', 'Cavite', '4118', 'Silang');
INSERT INTO `address_lookup` VALUES ('442', 'PH', 'Cavite', '4120', 'Tagaytay City');
INSERT INTO `address_lookup` VALUES ('443', 'PH', 'Cavite', '4108', 'Tanza');
INSERT INTO `address_lookup` VALUES ('444', 'PH', 'Cavite', '4111', 'Ternate incl. Caylabne Bay & Puerto Azul');
INSERT INTO `address_lookup` VALUES ('445', 'PH', 'Cavite', '4109', 'Trece Martires City');
INSERT INTO `address_lookup` VALUES ('446', 'PH', 'Cebu', '6055', 'Alcantara');
INSERT INTO `address_lookup` VALUES ('447', 'PH', 'Cebu', '6066', 'Alcoy');
INSERT INTO `address_lookup` VALUES ('448', 'PH', 'Cebu', '6077', 'Alegria');
INSERT INTO `address_lookup` VALUES ('449', 'PH', 'Cebu', '6088', 'Aloguinsan');
INSERT INTO `address_lookup` VALUES ('450', 'PH', 'Cebu', '6099', 'Argao');
INSERT INTO `address_lookup` VALUES ('451', 'PH', 'Cebu', '6010', 'Asturias');
INSERT INTO `address_lookup` VALUES ('452', 'PH', 'Cebu', '6011', 'Badian');
INSERT INTO `address_lookup` VALUES ('453', 'PH', 'Cebu', '6041', 'Balamban');
INSERT INTO `address_lookup` VALUES ('454', 'PH', 'Cebu', '6052', 'Bantayan');
INSERT INTO `address_lookup` VALUES ('455', 'PH', 'Cebu', '6036', 'Barili');
INSERT INTO `address_lookup` VALUES ('456', 'PH', 'Cebu', '6010', 'Bogo City');
INSERT INTO `address_lookup` VALUES ('457', 'PH', 'Cebu', '6024', 'Boljoon');
INSERT INTO `address_lookup` VALUES ('458', 'PH', 'Cebu', '6008', 'Borbon');
INSERT INTO `address_lookup` VALUES ('459', 'PH', 'Cebu', '6019', 'Carcar City');
INSERT INTO `address_lookup` VALUES ('460', 'PH', 'Cebu', '6005', 'Carmen');
INSERT INTO `address_lookup` VALUES ('461', 'PH', 'Cebu', '6006', 'Catmon');
INSERT INTO `address_lookup` VALUES ('462', 'PH', 'Cebu', '6000', 'Cebu City');
INSERT INTO `address_lookup` VALUES ('463', 'PH', 'Cebu', '6003', 'Compostela');
INSERT INTO `address_lookup` VALUES ('464', 'PH', 'Cebu', '6001', 'Consolacion');
INSERT INTO `address_lookup` VALUES ('465', 'PH', 'Cebu', '6017', 'Cordova');
INSERT INTO `address_lookup` VALUES ('466', 'PH', 'Cebu', '6013', 'Daanbantayan');
INSERT INTO `address_lookup` VALUES ('467', 'PH', 'Cebu', '6022', 'Dalaguete');
INSERT INTO `address_lookup` VALUES ('468', 'PH', 'Cebu', '6004', 'Danao City');
INSERT INTO `address_lookup` VALUES ('469', 'PH', 'Cebu', '6035', 'Dumanjug');
INSERT INTO `address_lookup` VALUES ('470', 'PH', 'Cebu', '6028', 'Ginatilan');
INSERT INTO `address_lookup` VALUES ('471', 'PH', 'Cebu', '6015', 'Lapu-Lapu City (Opon)');
INSERT INTO `address_lookup` VALUES ('472', 'PH', 'Cebu', '6002', 'Liloan');
INSERT INTO `address_lookup` VALUES ('473', 'PH', 'Cebu', '6016', 'Mactan Airport');
INSERT INTO `address_lookup` VALUES ('474', 'PH', 'Cebu', '6053', 'Madridejos');
INSERT INTO `address_lookup` VALUES ('475', 'PH', 'Cebu', '6029', 'Malabuyoc');
INSERT INTO `address_lookup` VALUES ('476', 'PH', 'Cebu', '6014', 'Mandaue City');
INSERT INTO `address_lookup` VALUES ('477', 'PH', 'Cebu', '6012', 'Medellin');
INSERT INTO `address_lookup` VALUES ('478', 'PH', 'Cebu', '6046', 'Minglanilla');
INSERT INTO `address_lookup` VALUES ('479', 'PH', 'Cebu', '6032', 'Moalboal');
INSERT INTO `address_lookup` VALUES ('480', 'PH', 'Cebu', '6037', 'Naga');
INSERT INTO `address_lookup` VALUES ('481', 'PH', 'Cebu', '6025', 'Oslob');
INSERT INTO `address_lookup` VALUES ('482', 'PH', 'Cebu', '6048', 'Pilar');
INSERT INTO `address_lookup` VALUES ('483', 'PH', 'Cebu', '6039', 'Pinamungahan');
INSERT INTO `address_lookup` VALUES ('484', 'PH', 'Cebu', '6049', 'Poro');
INSERT INTO `address_lookup` VALUES ('485', 'PH', 'Cebu', '6034', 'Ronda');
INSERT INTO `address_lookup` VALUES ('486', 'PH', 'Cebu', '6027', 'Samboan');
INSERT INTO `address_lookup` VALUES ('487', 'PH', 'Cebu', '6018', 'San Fernando');
INSERT INTO `address_lookup` VALUES ('488', 'PH', 'Cebu', '6050', 'San Francisco');
INSERT INTO `address_lookup` VALUES ('489', 'PH', 'Cebu', '6011', 'San Remigio');
INSERT INTO `address_lookup` VALUES ('490', 'PH', 'Cebu', '6047', 'Santa Fe');
INSERT INTO `address_lookup` VALUES ('491', 'PH', 'Cebu', '6026', 'Santander');
INSERT INTO `address_lookup` VALUES ('492', 'PH', 'Cebu', '6020', 'Sibonga');
INSERT INTO `address_lookup` VALUES ('493', 'PH', 'Cebu', '6007', 'Sogod');
INSERT INTO `address_lookup` VALUES ('494', 'PH', 'Cebu', '6009', 'Tabogon');
INSERT INTO `address_lookup` VALUES ('495', 'PH', 'Cebu', '6044', 'Tabuelan');
INSERT INTO `address_lookup` VALUES ('496', 'PH', 'Cebu', '6045', 'Talisay City');
INSERT INTO `address_lookup` VALUES ('497', 'PH', 'Cebu', '6038', 'Toledo City');
INSERT INTO `address_lookup` VALUES ('498', 'PH', 'Cebu', '6043', 'Tuburan');
INSERT INTO `address_lookup` VALUES ('499', 'PH', 'Cebu', '6051', 'Tudela');
INSERT INTO `address_lookup` VALUES ('500', 'PH', 'Compostela Valley', '8109', 'Compostela');
INSERT INTO `address_lookup` VALUES ('501', 'PH', 'Compostela Valley', '8103', 'Laak (San Vicente)');
INSERT INTO `address_lookup` VALUES ('502', 'PH', 'Compostela Valley', '8115', 'Mabini (Doña Alicia)');
INSERT INTO `address_lookup` VALUES ('503', 'PH', 'Compostela Valley', '8114', 'Maco');
INSERT INTO `address_lookup` VALUES ('504', 'PH', 'Compostela Valley', '8116', 'Maragusan (San Mariano)');
INSERT INTO `address_lookup` VALUES ('505', 'PH', 'Compostela Valley', '8108', 'Mawab');
INSERT INTO `address_lookup` VALUES ('506', 'PH', 'Compostela Valley', '8111', 'Monkayo');
INSERT INTO `address_lookup` VALUES ('507', 'PH', 'Compostela Valley', '8107', 'Montevista');
INSERT INTO `address_lookup` VALUES ('508', 'PH', 'Compostela Valley', '8106', 'Nabunturan');
INSERT INTO `address_lookup` VALUES ('509', 'PH', 'Compostela Valley', '8110', 'New Bataan');
INSERT INTO `address_lookup` VALUES ('510', 'PH', 'Compostela Valley', '8117', 'Pantukan');
INSERT INTO `address_lookup` VALUES ('511', 'PH', 'Cotabato', '9413', 'Alamada');
INSERT INTO `address_lookup` VALUES ('512', 'PH', 'Cotabato', '9415', 'Aleosan');
INSERT INTO `address_lookup` VALUES ('513', 'PH', 'Cotabato', '9414', 'Antipas');
INSERT INTO `address_lookup` VALUES ('514', 'PH', 'Cotabato', '9417', 'Arakan');
INSERT INTO `address_lookup` VALUES ('515', 'PH', 'Cotabato', '9416', 'Banisilan');
INSERT INTO `address_lookup` VALUES ('516', 'PH', 'Cotabato', '9408', 'Carmen');
INSERT INTO `address_lookup` VALUES ('517', 'PH', 'Cotabato', '9407', 'Kabacan');
INSERT INTO `address_lookup` VALUES ('518', 'PH', 'Cotabato', '9400', 'Kidapawan City');
INSERT INTO `address_lookup` VALUES ('519', 'PH', 'Cotabato', '9411', 'Libungan');
INSERT INTO `address_lookup` VALUES ('520', 'PH', 'Cotabato', '9404', 'Magpet');
INSERT INTO `address_lookup` VALUES ('521', 'PH', 'Cotabato', '9401', 'Makilala');
INSERT INTO `address_lookup` VALUES ('522', 'PH', 'Cotabato', '9406', 'Matalam');
INSERT INTO `address_lookup` VALUES ('523', 'PH', 'Cotabato', '9410', 'Midsayap');
INSERT INTO `address_lookup` VALUES ('524', 'PH', 'Cotabato', '9402', 'M\'Lang');
INSERT INTO `address_lookup` VALUES ('525', 'PH', 'Cotabato', '9412', 'Pigkawayan');
INSERT INTO `address_lookup` VALUES ('526', 'PH', 'Cotabato', '9409', 'Pikit');
INSERT INTO `address_lookup` VALUES ('527', 'PH', 'Cotabato', '9405', 'President Roxas');
INSERT INTO `address_lookup` VALUES ('528', 'PH', 'Cotabato', '9403', 'Tulunan');
INSERT INTO `address_lookup` VALUES ('529', 'PH', 'Davao del Norte', '8102', 'Asuncion');
INSERT INTO `address_lookup` VALUES ('530', 'PH', 'Davao del Norte', '8118', 'Babak');
INSERT INTO `address_lookup` VALUES ('531', 'PH', 'Davao del Norte', '8101', 'Carmen');
INSERT INTO `address_lookup` VALUES ('532', 'PH', 'Davao del Norte', '8113', 'Kapalong');
INSERT INTO `address_lookup` VALUES ('533', 'PH', 'Davao del Norte', '8120', 'Kaputian');
INSERT INTO `address_lookup` VALUES ('534', 'PH', 'Davao del Norte', '8104', 'New Corella');
INSERT INTO `address_lookup` VALUES ('535', 'PH', 'Davao del Norte', '8105', 'Panabo City');
INSERT INTO `address_lookup` VALUES ('536', 'PH', 'Davao del Norte', '8119', 'Island Garden City of Samal');
INSERT INTO `address_lookup` VALUES ('537', 'PH', 'Davao del Norte', '8112', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('538', 'PH', 'Davao del Norte', '8100', 'Tagum City');
INSERT INTO `address_lookup` VALUES ('539', 'PH', 'Davao del Sur', '8005', 'Bansalan');
INSERT INTO `address_lookup` VALUES ('540', 'PH', 'Davao del Sur', '8000', 'Davao City');
INSERT INTO `address_lookup` VALUES ('541', 'PH', 'Davao del Sur', '8016', 'Ateneo de Davao University');
INSERT INTO `address_lookup` VALUES ('542', 'PH', 'Davao del Sur', '8002', 'Digos City');
INSERT INTO `address_lookup` VALUES ('543', 'PH', 'Davao del Sur', '8013', 'Don Marcelino');
INSERT INTO `address_lookup` VALUES ('544', 'PH', 'Davao del Sur', '8006', 'Hagonoy');
INSERT INTO `address_lookup` VALUES ('545', 'PH', 'Davao del Sur', '8014', 'Jose Abad Santos');
INSERT INTO `address_lookup` VALUES ('546', 'PH', 'Davao del Sur', '8008', 'Kiblawan');
INSERT INTO `address_lookup` VALUES ('547', 'PH', 'Davao del Sur', '8004', 'Magsaysay');
INSERT INTO `address_lookup` VALUES ('548', 'PH', 'Davao del Sur', '8010', 'Malalag');
INSERT INTO `address_lookup` VALUES ('549', 'PH', 'Davao del Sur', '8012', 'Malita');
INSERT INTO `address_lookup` VALUES ('550', 'PH', 'Davao del Sur', '8003', 'Matanao');
INSERT INTO `address_lookup` VALUES ('551', 'PH', 'Davao del Sur', '8007', 'Padada');
INSERT INTO `address_lookup` VALUES ('552', 'PH', 'Davao del Sur', '8001', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('553', 'PH', 'Davao del Sur', '8011', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('554', 'PH', 'Davao del Sur', '8015', 'Sarangani');
INSERT INTO `address_lookup` VALUES ('555', 'PH', 'Davao del Sur', '8009', 'Sulop');
INSERT INTO `address_lookup` VALUES ('556', 'PH', 'Davao del Sur', '8200', 'Mati');
INSERT INTO `address_lookup` VALUES ('557', 'PH', 'Davao del Sur', '8209', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('558', 'PH', 'Davao del Sur', '8201', 'Tarragona');
INSERT INTO `address_lookup` VALUES ('559', 'PH', 'Dinagat Islands', '8413', 'Basilisa (Rizal)');
INSERT INTO `address_lookup` VALUES ('560', 'PH', 'Dinagat Islands', '8411', 'Cagdianao');
INSERT INTO `address_lookup` VALUES ('561', 'PH', 'Dinagat Islands', '8412', 'Dinagat');
INSERT INTO `address_lookup` VALUES ('562', 'PH', 'Dinagat Islands', '8414', 'Libjo (Albor)');
INSERT INTO `address_lookup` VALUES ('563', 'PH', 'Dinagat Islands', '8415', 'Loreto');
INSERT INTO `address_lookup` VALUES ('564', 'PH', 'Dinagat Islands', '8427', 'San Jose');
INSERT INTO `address_lookup` VALUES ('565', 'PH', 'Dinagat Islands', '8426', 'Tubajon');
INSERT INTO `address_lookup` VALUES ('566', 'PH', 'Eastern Samar', '6822', 'Arteche');
INSERT INTO `address_lookup` VALUES ('567', 'PH', 'Eastern Samar', '6812', 'Balangiga');
INSERT INTO `address_lookup` VALUES ('568', 'PH', 'Eastern Samar', '6801', 'Balangkayan');
INSERT INTO `address_lookup` VALUES ('569', 'PH', 'Eastern Samar', '6800', 'Borongan');
INSERT INTO `address_lookup` VALUES ('570', 'PH', 'Eastern Samar', '6806', 'Can-avid');
INSERT INTO `address_lookup` VALUES ('571', 'PH', 'Eastern Samar', '6817', 'Dolores');
INSERT INTO `address_lookup` VALUES ('572', 'PH', 'Eastern Samar', '6805', 'General MacArthur');
INSERT INTO `address_lookup` VALUES ('573', 'PH', 'Eastern Samar', '6811', 'Giporlos');
INSERT INTO `address_lookup` VALUES ('574', 'PH', 'Eastern Samar', '6809', 'Guiuan');
INSERT INTO `address_lookup` VALUES ('575', 'PH', 'Eastern Samar', '6804', 'Hernani');
INSERT INTO `address_lookup` VALUES ('576', 'PH', 'Eastern Samar', '6819', 'Jipapad');
INSERT INTO `address_lookup` VALUES ('577', 'PH', 'Eastern Samar', '6813', 'Lawaan');
INSERT INTO `address_lookup` VALUES ('578', 'PH', 'Eastern Samar', '6803', 'Llorente');
INSERT INTO `address_lookup` VALUES ('579', 'PH', 'Eastern Samar', '6820', 'Maslog');
INSERT INTO `address_lookup` VALUES ('580', 'PH', 'Eastern Samar', '6802', 'Maydolong');
INSERT INTO `address_lookup` VALUES ('581', 'PH', 'Eastern Samar', '6808', 'Mercedes');
INSERT INTO `address_lookup` VALUES ('582', 'PH', 'Eastern Samar', '6818', 'Oras');
INSERT INTO `address_lookup` VALUES ('583', 'PH', 'Eastern Samar', '6810', 'Quinapondan');
INSERT INTO `address_lookup` VALUES ('584', 'PH', 'Eastern Samar', '6807', 'Salcedo');
INSERT INTO `address_lookup` VALUES ('585', 'PH', 'Eastern Samar', '6814', 'San Julian');
INSERT INTO `address_lookup` VALUES ('586', 'PH', 'Eastern Samar', '6821', 'San Policarpo');
INSERT INTO `address_lookup` VALUES ('587', 'PH', 'Eastern Samar', '6815', 'Sulat');
INSERT INTO `address_lookup` VALUES ('588', 'PH', 'Eastern Samar', '6816', 'Taft');
INSERT INTO `address_lookup` VALUES ('589', 'PH', 'Guimaras', '5044', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('590', 'PH', 'Guimaras', '5045', 'Jordan');
INSERT INTO `address_lookup` VALUES ('591', 'PH', 'Guimaras', '5046', 'Nueva Valencia');
INSERT INTO `address_lookup` VALUES ('592', 'PH', 'Guimaras', '5047', 'San Lorenzo');
INSERT INTO `address_lookup` VALUES ('593', 'PH', 'Guimaras', '5048', 'Sibunag');
INSERT INTO `address_lookup` VALUES ('594', 'PH', 'Ifugao', '3606', 'Aguinaldo');
INSERT INTO `address_lookup` VALUES ('595', 'PH', 'Ifugao', '3608', 'Alfonso Lista (Potia)');
INSERT INTO `address_lookup` VALUES ('596', 'PH', 'Ifugao', '3610', 'Asipulo');
INSERT INTO `address_lookup` VALUES ('597', 'PH', 'Ifugao', '3601', 'Banaue');
INSERT INTO `address_lookup` VALUES ('598', 'PH', 'Ifugao', '3607', 'Hingyon');
INSERT INTO `address_lookup` VALUES ('599', 'PH', 'Ifugao', '3603', 'Hungduan');
INSERT INTO `address_lookup` VALUES ('600', 'PH', 'Ifugao', '3604', 'Kiangan');
INSERT INTO `address_lookup` VALUES ('601', 'PH', 'Ifugao', '3600', 'Lagawe');
INSERT INTO `address_lookup` VALUES ('602', 'PH', 'Ifugao', '3605', 'Lamut');
INSERT INTO `address_lookup` VALUES ('603', 'PH', 'Ifugao', '3602', 'Mayoyao (Mayaoyao)');
INSERT INTO `address_lookup` VALUES ('604', 'PH', 'Ifugao', '3609', 'Tinoc');
INSERT INTO `address_lookup` VALUES ('605', 'PH', 'Ilocos Norte', '2922', 'Adams');
INSERT INTO `address_lookup` VALUES ('606', 'PH', 'Ilocos Norte', '2916', 'Bacarra');
INSERT INTO `address_lookup` VALUES ('607', 'PH', 'Ilocos Norte', '2904', 'Badoc');
INSERT INTO `address_lookup` VALUES ('608', 'PH', 'Ilocos Norte', '2920', 'Bangui');
INSERT INTO `address_lookup` VALUES ('609', 'PH', 'Ilocos Norte', '2908', 'Banna (Espiritu)');
INSERT INTO `address_lookup` VALUES ('610', 'PH', 'Ilocos Norte', '2906', 'Batac');
INSERT INTO `address_lookup` VALUES ('611', 'PH', 'Ilocos Norte', '2918', 'Burgos');
INSERT INTO `address_lookup` VALUES ('612', 'PH', 'Ilocos Norte', '2911', 'Carasi');
INSERT INTO `address_lookup` VALUES ('613', 'PH', 'Ilocos Norte', '2903', 'Currimao');
INSERT INTO `address_lookup` VALUES ('614', 'PH', 'Ilocos Norte', '2913', 'Dingras');
INSERT INTO `address_lookup` VALUES ('615', 'PH', 'Ilocos Norte', '2921', 'Dumalneg');
INSERT INTO `address_lookup` VALUES ('616', 'PH', 'Ilocos Norte', '2900', 'Laoag City');
INSERT INTO `address_lookup` VALUES ('617', 'PH', 'Ilocos Norte', '2907', 'Marcos');
INSERT INTO `address_lookup` VALUES ('618', 'PH', 'Ilocos Norte', '2909', 'Nueva Era');
INSERT INTO `address_lookup` VALUES ('619', 'PH', 'Ilocos Norte', '2919', 'Pagudpud');
INSERT INTO `address_lookup` VALUES ('620', 'PH', 'Ilocos Norte', '2902', 'Paoay');
INSERT INTO `address_lookup` VALUES ('621', 'PH', 'Ilocos Norte', '2917', 'Pasuquin');
INSERT INTO `address_lookup` VALUES ('622', 'PH', 'Ilocos Norte', '2912', 'Piddig');
INSERT INTO `address_lookup` VALUES ('623', 'PH', 'Ilocos Norte', '2905', 'Pinili');
INSERT INTO `address_lookup` VALUES ('624', 'PH', 'Ilocos Norte', '2901', 'San Nicolas');
INSERT INTO `address_lookup` VALUES ('625', 'PH', 'Ilocos Norte', '2914', 'Sarrat');
INSERT INTO `address_lookup` VALUES ('626', 'PH', 'Ilocos Norte', '2910', 'Solsona');
INSERT INTO `address_lookup` VALUES ('627', 'PH', 'Ilocos Norte', '2915', 'Vintar');
INSERT INTO `address_lookup` VALUES ('628', 'PH', 'Ilocos Sur', '2716', 'Alilem');
INSERT INTO `address_lookup` VALUES ('629', 'PH', 'Ilocos Sur', '2708', 'Banayoyo');
INSERT INTO `address_lookup` VALUES ('630', 'PH', 'Ilocos Sur', '2727', 'Bantay');
INSERT INTO `address_lookup` VALUES ('631', 'PH', 'Ilocos Sur', '2724', 'Burgos');
INSERT INTO `address_lookup` VALUES ('632', 'PH', 'Ilocos Sur', '2732', 'Cabugao');
INSERT INTO `address_lookup` VALUES ('633', 'PH', 'Ilocos Sur', '2710', 'Candon City');
INSERT INTO `address_lookup` VALUES ('634', 'PH', 'Ilocos Sur', '2702', 'Caoayan');
INSERT INTO `address_lookup` VALUES ('635', 'PH', 'Ilocos Sur', '2718', 'Cervantes');
INSERT INTO `address_lookup` VALUES ('636', 'PH', 'Ilocos Sur', '2709', 'Galimuyod');
INSERT INTO `address_lookup` VALUES ('637', 'PH', 'Ilocos Sur', '2720', 'Gregorio del Pilar');
INSERT INTO `address_lookup` VALUES ('638', 'PH', 'Ilocos Sur', '2723', 'Lidlidda');
INSERT INTO `address_lookup` VALUES ('639', 'PH', 'Ilocos Sur', '2730', 'Magsingal');
INSERT INTO `address_lookup` VALUES ('640', 'PH', 'Ilocos Sur', '2725', 'Nagbukel');
INSERT INTO `address_lookup` VALUES ('641', 'PH', 'Ilocos Sur', '2704', 'Narvacan');
INSERT INTO `address_lookup` VALUES ('642', 'PH', 'Ilocos Sur', '2721', 'Quirino (Angkaki)');
INSERT INTO `address_lookup` VALUES ('643', 'PH', 'Ilocos Sur', '2711', 'Salcedo (Baugen)');
INSERT INTO `address_lookup` VALUES ('644', 'PH', 'Ilocos Sur', '2722', 'San Emilio');
INSERT INTO `address_lookup` VALUES ('645', 'PH', 'Ilocos Sur', '2706', 'San Esteban');
INSERT INTO `address_lookup` VALUES ('646', 'PH', 'Ilocos Sur', '2728', 'San Ildefonso');
INSERT INTO `address_lookup` VALUES ('647', 'PH', 'Ilocos Sur', '2731', 'San Juan (Lapog)');
INSERT INTO `address_lookup` VALUES ('648', 'PH', 'Ilocos Sur', '2726', 'San Vicente');
INSERT INTO `address_lookup` VALUES ('649', 'PH', 'Ilocos Sur', '2703', 'Santa');
INSERT INTO `address_lookup` VALUES ('650', 'PH', 'Ilocos Sur', '2701', 'Santa Catalina');
INSERT INTO `address_lookup` VALUES ('651', 'PH', 'Ilocos Sur', '2713', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('652', 'PH', 'Ilocos Sur', '2712', 'Santa Lucia');
INSERT INTO `address_lookup` VALUES ('653', 'PH', 'Ilocos Sur', '2705', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('654', 'PH', 'Ilocos Sur', '2707', 'Santiago');
INSERT INTO `address_lookup` VALUES ('655', 'PH', 'Ilocos Sur', '2729', 'Santo Domingo');
INSERT INTO `address_lookup` VALUES ('656', 'PH', 'Ilocos Sur', '2719', 'Sigay');
INSERT INTO `address_lookup` VALUES ('657', 'PH', 'Ilocos Sur', '2733', 'Sinait');
INSERT INTO `address_lookup` VALUES ('658', 'PH', 'Ilocos Sur', '2717', 'Sugpon');
INSERT INTO `address_lookup` VALUES ('659', 'PH', 'Ilocos Sur', '2715', 'Suyo');
INSERT INTO `address_lookup` VALUES ('660', 'PH', 'Ilocos Sur', '2714', 'Tagudin');
INSERT INTO `address_lookup` VALUES ('661', 'PH', 'Ilocos Sur', '2700', 'Vigan City');
INSERT INTO `address_lookup` VALUES ('662', 'PH', 'Iloilo', '5012', 'Ajuy');
INSERT INTO `address_lookup` VALUES ('663', 'PH', 'Iloilo', '5028', 'Alimodian');
INSERT INTO `address_lookup` VALUES ('664', 'PH', 'Iloilo', '5009', 'Anilao');
INSERT INTO `address_lookup` VALUES ('665', 'PH', 'Iloilo', '5033', 'Badiangan');
INSERT INTO `address_lookup` VALUES ('666', 'PH', 'Iloilo', '5018', 'Balasan');
INSERT INTO `address_lookup` VALUES ('667', 'PH', 'Iloilo', '5010', 'Banate');
INSERT INTO `address_lookup` VALUES ('668', 'PH', 'Iloilo', '5007', 'Barotoc Nuevo');
INSERT INTO `address_lookup` VALUES ('669', 'PH', 'Iloilo', '5011', 'Barotoc Viejo');
INSERT INTO `address_lookup` VALUES ('670', 'PH', 'Iloilo', '5016', 'Batad');
INSERT INTO `address_lookup` VALUES ('671', 'PH', 'Iloilo', '5041', 'Bingawan');
INSERT INTO `address_lookup` VALUES ('672', 'PH', 'Iloilo', '5031', 'Cabatuan');
INSERT INTO `address_lookup` VALUES ('673', 'PH', 'Iloilo', '5040', 'Calinog');
INSERT INTO `address_lookup` VALUES ('674', 'PH', 'Iloilo', '5019', 'Carles');
INSERT INTO `address_lookup` VALUES ('675', 'PH', 'Iloilo', '5013', 'Concepcion');
INSERT INTO `address_lookup` VALUES ('676', 'PH', 'Iloilo', '5035', 'Dingle');
INSERT INTO `address_lookup` VALUES ('677', 'PH', 'Iloilo', '5038', 'Duenas');
INSERT INTO `address_lookup` VALUES ('678', 'PH', 'Iloilo', '5006', 'Dumangas');
INSERT INTO `address_lookup` VALUES ('679', 'PH', 'Iloilo', '5017', 'Estancia');
INSERT INTO `address_lookup` VALUES ('680', 'PH', 'Iloilo', '5022', 'Guimbal');
INSERT INTO `address_lookup` VALUES ('681', 'PH', 'Iloilo', '5029', 'Igbaras');
INSERT INTO `address_lookup` VALUES ('682', 'PH', 'Iloilo', '5000', 'Iloilo City');
INSERT INTO `address_lookup` VALUES ('683', 'PH', 'Iloilo', '5034', 'Janiuay');
INSERT INTO `address_lookup` VALUES ('684', 'PH', 'Iloilo', '5042', 'Lambunao');
INSERT INTO `address_lookup` VALUES ('685', 'PH', 'Iloilo', '5003', 'Leganes');
INSERT INTO `address_lookup` VALUES ('686', 'PH', 'Iloilo', '5043', 'Lemery');
INSERT INTO `address_lookup` VALUES ('687', 'PH', 'Iloilo', '5026', 'Leon');
INSERT INTO `address_lookup` VALUES ('688', 'PH', 'Iloilo', '5030', 'Maasin');
INSERT INTO `address_lookup` VALUES ('689', 'PH', 'Iloilo', '5023', 'Miagao');
INSERT INTO `address_lookup` VALUES ('690', 'PH', 'Iloilo', '5032', 'Mina');
INSERT INTO `address_lookup` VALUES ('691', 'PH', 'Iloilo', '5005', 'New Lucena');
INSERT INTO `address_lookup` VALUES ('692', 'PH', 'Iloilo', '5020', 'Oton');
INSERT INTO `address_lookup` VALUES ('693', 'PH', 'Iloilo', '5037', 'Passi City');
INSERT INTO `address_lookup` VALUES ('694', 'PH', 'Iloilo', '5001', 'Pavia');
INSERT INTO `address_lookup` VALUES ('695', 'PH', 'Iloilo', '5008', 'Pototan');
INSERT INTO `address_lookup` VALUES ('696', 'PH', 'Iloilo', '5015', 'San Dionisio');
INSERT INTO `address_lookup` VALUES ('697', 'PH', 'Iloilo', '5036', 'San Enrique');
INSERT INTO `address_lookup` VALUES ('698', 'PH', 'Iloilo', '5024', 'San Joaquin');
INSERT INTO `address_lookup` VALUES ('699', 'PH', 'Iloilo', '5025', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('700', 'PH', 'Iloilo', '5039', 'San Rafael');
INSERT INTO `address_lookup` VALUES ('701', 'PH', 'Iloilo', '5002', 'Santa Barbara');
INSERT INTO `address_lookup` VALUES ('702', 'PH', 'Iloilo', '5014', 'Sara');
INSERT INTO `address_lookup` VALUES ('703', 'PH', 'Iloilo', '5021', 'Tigbauan');
INSERT INTO `address_lookup` VALUES ('704', 'PH', 'Iloilo', '5027', 'Tubungan');
INSERT INTO `address_lookup` VALUES ('705', 'PH', 'Iloilo', '5004', 'Zarraga');
INSERT INTO `address_lookup` VALUES ('706', 'PH', 'Isabela', '3306', 'Alicia');
INSERT INTO `address_lookup` VALUES ('707', 'PH', 'Isabela', '3307', 'Angadanan');
INSERT INTO `address_lookup` VALUES ('708', 'PH', 'Isabela', '3316', 'Aurora');
INSERT INTO `address_lookup` VALUES ('709', 'PH', 'Isabela', '3331', 'Benito Soliven');
INSERT INTO `address_lookup` VALUES ('710', 'PH', 'Isabela', '3322', 'Burgos');
INSERT INTO `address_lookup` VALUES ('711', 'PH', 'Isabela', '3328', 'Cabagan');
INSERT INTO `address_lookup` VALUES ('712', 'PH', 'Isabela', '3315', 'Cabatuan');
INSERT INTO `address_lookup` VALUES ('713', 'PH', 'Isabela', '3305', 'Cauayan City');
INSERT INTO `address_lookup` VALUES ('714', 'PH', 'Isabela', '3312', 'Cordon');
INSERT INTO `address_lookup` VALUES ('715', 'PH', 'Isabela', '3326', 'Delfin Albano');
INSERT INTO `address_lookup` VALUES ('716', 'PH', 'Isabela', '3336', 'Dinapigui');
INSERT INTO `address_lookup` VALUES ('717', 'PH', 'Isabela', '3335', 'Divilacan');
INSERT INTO `address_lookup` VALUES ('718', 'PH', 'Isabela', '3309', 'Echague');
INSERT INTO `address_lookup` VALUES ('719', 'PH', 'Isabela', '3301', 'Gamu');
INSERT INTO `address_lookup` VALUES ('720', 'PH', 'Isabela', '3300', 'Ilagan');
INSERT INTO `address_lookup` VALUES ('721', 'PH', 'Isabela', '3313', 'Jones');
INSERT INTO `address_lookup` VALUES ('722', 'PH', 'Isabela', '3304', 'Luna');
INSERT INTO `address_lookup` VALUES ('723', 'PH', 'Isabela', '3333', 'Maconacon');
INSERT INTO `address_lookup` VALUES ('724', 'PH', 'Isabela', '3323', 'Mallig');
INSERT INTO `address_lookup` VALUES ('725', 'PH', 'Isabela', '3302', 'Naguillan');
INSERT INTO `address_lookup` VALUES ('726', 'PH', 'Isabela', '3334', 'Palanan');
INSERT INTO `address_lookup` VALUES ('727', 'PH', 'Isabela', '3324', 'Quezon');
INSERT INTO `address_lookup` VALUES ('728', 'PH', 'Isabela', '3321', 'Quirino');
INSERT INTO `address_lookup` VALUES ('729', 'PH', 'Isabela', '3319', 'Ramon');
INSERT INTO `address_lookup` VALUES ('730', 'PH', 'Isabela', '3303', 'Reina Mercedes');
INSERT INTO `address_lookup` VALUES ('731', 'PH', 'Isabela', '3320', 'Roxas');
INSERT INTO `address_lookup` VALUES ('732', 'PH', 'Isabela', '3314', 'San Agustin');
INSERT INTO `address_lookup` VALUES ('733', 'PH', 'Isabela', '3308', 'San Guillermo');
INSERT INTO `address_lookup` VALUES ('734', 'PH', 'Isabela', '3310', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('735', 'PH', 'Isabela', '3317', 'San Manuel (Callang)');
INSERT INTO `address_lookup` VALUES ('736', 'PH', 'Isabela', '3332', 'San Mariano');
INSERT INTO `address_lookup` VALUES ('737', 'PH', 'Isabela', '3318', 'San Mateo');
INSERT INTO `address_lookup` VALUES ('738', 'PH', 'Isabela', '3329', 'San Pablo');
INSERT INTO `address_lookup` VALUES ('739', 'PH', 'Isabela', '3330', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('740', 'PH', 'Isabela', '3311', 'Santiago City');
INSERT INTO `address_lookup` VALUES ('741', 'PH', 'Isabela', '3327', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('742', 'PH', 'Isabela', '3325', 'Tumauini');
INSERT INTO `address_lookup` VALUES ('743', 'PH', 'Kalinga', '3801', 'Balbalan');
INSERT INTO `address_lookup` VALUES ('744', 'PH', 'Kalinga', '3808', 'Liwan (Rizal)');
INSERT INTO `address_lookup` VALUES ('745', 'PH', 'Kalinga', '3802', 'Lubuagan');
INSERT INTO `address_lookup` VALUES ('746', 'PH', 'Kalinga', '3803', 'Pasil');
INSERT INTO `address_lookup` VALUES ('747', 'PH', 'Kalinga', '3806', 'Pinukpuk');
INSERT INTO `address_lookup` VALUES ('748', 'PH', 'Kalinga', '3800', 'Tabuk City');
INSERT INTO `address_lookup` VALUES ('749', 'PH', 'Kalinga', '3805', 'Tanudan');
INSERT INTO `address_lookup` VALUES ('750', 'PH', 'Kalinga', '3804', 'Tinglayan');
INSERT INTO `address_lookup` VALUES ('751', 'PH', 'La Union', '2504', 'Agoo');
INSERT INTO `address_lookup` VALUES ('752', 'PH', 'La Union', '2503', 'Aringay');
INSERT INTO `address_lookup` VALUES ('753', 'PH', 'La Union', '2515', 'Bacnotan');
INSERT INTO `address_lookup` VALUES ('754', 'PH', 'La Union', '2512', 'Bagulin');
INSERT INTO `address_lookup` VALUES ('755', 'PH', 'La Union', '2517', 'Balaoan');
INSERT INTO `address_lookup` VALUES ('756', 'PH', 'La Union', '2519', 'Bangar');
INSERT INTO `address_lookup` VALUES ('757', 'PH', 'La Union', '2501', 'Bauang');
INSERT INTO `address_lookup` VALUES ('758', 'PH', 'La Union', '2510', 'Burgos');
INSERT INTO `address_lookup` VALUES ('759', 'PH', 'La Union', '2502', 'Caba');
INSERT INTO `address_lookup` VALUES ('760', 'PH', 'La Union', '2507', 'Damortis');
INSERT INTO `address_lookup` VALUES ('761', 'PH', 'La Union', '2518', 'Luna');
INSERT INTO `address_lookup` VALUES ('762', 'PH', 'La Union', '2511', 'Naguillan');
INSERT INTO `address_lookup` VALUES ('763', 'PH', 'La Union', '2508', 'Pugo');
INSERT INTO `address_lookup` VALUES ('764', 'PH', 'La Union', '2506', 'Rosario');
INSERT INTO `address_lookup` VALUES ('765', 'PH', 'La Union', '2500', 'San Fernando City');
INSERT INTO `address_lookup` VALUES ('766', 'PH', 'La Union', '2513', 'San Gabriel');
INSERT INTO `address_lookup` VALUES ('767', 'PH', 'La Union', '2514', 'San Juan');
INSERT INTO `address_lookup` VALUES ('768', 'PH', 'La Union', '2505', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('769', 'PH', 'La Union', '2516', 'Santol');
INSERT INTO `address_lookup` VALUES ('770', 'PH', 'La Union', '2520', 'Sudepen');
INSERT INTO `address_lookup` VALUES ('771', 'PH', 'La Union', '2509', 'Tubao');
INSERT INTO `address_lookup` VALUES ('772', 'PH', 'Laguna', '4001', 'Alaminos');
INSERT INTO `address_lookup` VALUES ('773', 'PH', 'Laguna', '4033', 'Bay');
INSERT INTO `address_lookup` VALUES ('774', 'PH', 'Laguna', '4024', 'Biñan');
INSERT INTO `address_lookup` VALUES ('775', 'PH', 'Laguna', '4006', 'Botocan, Magdalena');
INSERT INTO `address_lookup` VALUES ('776', 'PH', 'Laguna', '4025', 'Cabuyao');
INSERT INTO `address_lookup` VALUES ('777', 'PH', 'Laguna', '4027', 'Calamba City');
INSERT INTO `address_lookup` VALUES ('778', 'PH', 'Laguna', '4012', 'Calauan');
INSERT INTO `address_lookup` VALUES ('779', 'PH', 'Laguna', '4029', 'Camp Vicente Lim');
INSERT INTO `address_lookup` VALUES ('780', 'PH', 'Laguna', '4028', 'Canlubang, Calamba City');
INSERT INTO `address_lookup` VALUES ('781', 'PH', 'Laguna', '4013', 'Cavinti');
INSERT INTO `address_lookup` VALUES ('782', 'PH', 'Laguna', '4021', 'Famy');
INSERT INTO `address_lookup` VALUES ('783', 'PH', 'Laguna', '4015', 'Kalayaan');
INSERT INTO `address_lookup` VALUES ('784', 'PH', 'Laguna', '4004', 'Liliw');
INSERT INTO `address_lookup` VALUES ('785', 'PH', 'Laguna', '4030', 'Los Baños');
INSERT INTO `address_lookup` VALUES ('786', 'PH', 'Laguna', '4032', 'Luisiana');
INSERT INTO `address_lookup` VALUES ('787', 'PH', 'Laguna', '4014', 'Lumban');
INSERT INTO `address_lookup` VALUES ('788', 'PH', 'Laguna', '4020', 'Mabitac');
INSERT INTO `address_lookup` VALUES ('789', 'PH', 'Laguna', '4007', 'Magdalena');
INSERT INTO `address_lookup` VALUES ('790', 'PH', 'Laguna', '4005', 'Majayjay');
INSERT INTO `address_lookup` VALUES ('791', 'PH', 'Laguna', '4002', 'Nagcarlan');
INSERT INTO `address_lookup` VALUES ('792', 'PH', 'Laguna', '4016', 'Paete');
INSERT INTO `address_lookup` VALUES ('793', 'PH', 'Laguna', '4008', 'Pagsanjan');
INSERT INTO `address_lookup` VALUES ('794', 'PH', 'Laguna', '4017', 'Pakil');
INSERT INTO `address_lookup` VALUES ('795', 'PH', 'Laguna', '4018', 'Pangil');
INSERT INTO `address_lookup` VALUES ('796', 'PH', 'Laguna', '4010', 'Pila');
INSERT INTO `address_lookup` VALUES ('797', 'PH', 'Laguna', '4003', 'Rizal');
INSERT INTO `address_lookup` VALUES ('798', 'PH', 'Laguna', '4000', 'San Pablo City');
INSERT INTO `address_lookup` VALUES ('799', 'PH', 'Laguna', '4023', 'San Pedro');
INSERT INTO `address_lookup` VALUES ('800', 'PH', 'Laguna', '4009', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('801', 'PH', 'Laguna', '4022', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('802', 'PH', 'Laguna', '4026', 'Santa Rosa City');
INSERT INTO `address_lookup` VALUES ('803', 'PH', 'Laguna', '4019', 'Siniloan');
INSERT INTO `address_lookup` VALUES ('804', 'PH', 'Laguna', '4031', 'University of the Philippines, Los Baños');
INSERT INTO `address_lookup` VALUES ('805', 'PH', 'Laguna', '4011', 'Victoria');
INSERT INTO `address_lookup` VALUES ('806', 'PH', 'Lanao del Norte', '9205', 'Bacolod');
INSERT INTO `address_lookup` VALUES ('807', 'PH', 'Lanao del Norte', '9217', 'Baloi');
INSERT INTO `address_lookup` VALUES ('808', 'PH', 'Lanao del Norte', '9210', 'Baroy');
INSERT INTO `address_lookup` VALUES ('809', 'PH', 'Lanao del Norte', '9200', 'Iligan City');
INSERT INTO `address_lookup` VALUES ('810', 'PH', 'Lanao del Norte', '9214', 'Kapatagan');
INSERT INTO `address_lookup` VALUES ('811', 'PH', 'Lanao del Norte', '9215', 'Karomatan');
INSERT INTO `address_lookup` VALUES ('812', 'PH', 'Lanao del Norte', '9202', 'Kauswagan');
INSERT INTO `address_lookup` VALUES ('813', 'PH', 'Lanao del Norte', '9207', 'Kolambogan');
INSERT INTO `address_lookup` VALUES ('814', 'PH', 'Lanao del Norte', '9211', 'Lala');
INSERT INTO `address_lookup` VALUES ('815', 'PH', 'Lanao del Norte', '9201', 'Linamon');
INSERT INTO `address_lookup` VALUES ('816', 'PH', 'Lanao del Norte', '9221', 'Magsaysay');
INSERT INTO `address_lookup` VALUES ('817', 'PH', 'Lanao del Norte', '9206', 'Maigo');
INSERT INTO `address_lookup` VALUES ('818', 'PH', 'Lanao del Norte', '9203', 'Matungao');
INSERT INTO `address_lookup` VALUES ('819', 'PH', 'Lanao del Norte', '9219', 'Munai');
INSERT INTO `address_lookup` VALUES ('820', 'PH', 'Lanao del Norte', '9216', 'Nunungan');
INSERT INTO `address_lookup` VALUES ('821', 'PH', 'Lanao del Norte', '9208', 'Pantao Ragat');
INSERT INTO `address_lookup` VALUES ('822', 'PH', 'Lanao del Norte', '9218', 'Pantar');
INSERT INTO `address_lookup` VALUES ('823', 'PH', 'Lanao del Norte', '9204', 'Poona Piagapo');
INSERT INTO `address_lookup` VALUES ('824', 'PH', 'Lanao del Norte', '9212', 'Salvador');
INSERT INTO `address_lookup` VALUES ('825', 'PH', 'Lanao del Norte', '9213', 'Sapad');
INSERT INTO `address_lookup` VALUES ('826', 'PH', 'Lanao del Norte', '9222', 'Tagoloan');
INSERT INTO `address_lookup` VALUES ('827', 'PH', 'Lanao del Norte', '9220', 'Tangkal');
INSERT INTO `address_lookup` VALUES ('828', 'PH', 'Lanao del Norte', '9209', 'Tubod');
INSERT INTO `address_lookup` VALUES ('829', 'PH', 'Lanao del Sur', '9316', 'Bacolod Kalawi');
INSERT INTO `address_lookup` VALUES ('830', 'PH', 'Lanao del Sur', '9302', 'Balabagan');
INSERT INTO `address_lookup` VALUES ('831', 'PH', 'Lanao del Sur', '9318', 'Balindong');
INSERT INTO `address_lookup` VALUES ('832', 'PH', 'Lanao del Sur', '9309', 'Bayang');
INSERT INTO `address_lookup` VALUES ('833', 'PH', 'Lanao del Sur', '9310', 'Binidayan');
INSERT INTO `address_lookup` VALUES ('834', 'PH', 'Lanao del Sur', '9714', 'Buadiposo Buntong');
INSERT INTO `address_lookup` VALUES ('835', 'PH', 'Lanao del Sur', '9708', 'Bubong');
INSERT INTO `address_lookup` VALUES ('836', 'PH', 'Lanao del Sur', '9320', 'Bumbaran');
INSERT INTO `address_lookup` VALUES ('837', 'PH', 'Lanao del Sur', '9305', 'Butig');
INSERT INTO `address_lookup` VALUES ('838', 'PH', 'Lanao del Sur', '9319', 'Calanogas');
INSERT INTO `address_lookup` VALUES ('839', 'PH', 'Lanao del Sur', '9311', 'Ganassi');
INSERT INTO `address_lookup` VALUES ('840', 'PH', 'Lanao del Sur', '9709', 'Kapai');
INSERT INTO `address_lookup` VALUES ('841', 'PH', 'Lanao del Sur', '9703', 'Lumba Bayabao');
INSERT INTO `address_lookup` VALUES ('842', 'PH', 'Lanao del Sur', '9307', 'Lumbatan');
INSERT INTO `address_lookup` VALUES ('843', 'PH', 'Lanao del Sur', '9306', 'Lumbayanague');
INSERT INTO `address_lookup` VALUES ('844', 'PH', 'Lanao del Sur', '9308', 'Macadar Andong');
INSERT INTO `address_lookup` VALUES ('845', 'PH', 'Lanao del Sur', '9315', 'Madalum');
INSERT INTO `address_lookup` VALUES ('846', 'PH', 'Lanao del Sur', '9314', 'Madamba');
INSERT INTO `address_lookup` VALUES ('847', 'PH', 'Lanao del Sur', '9715', 'Maguing');
INSERT INTO `address_lookup` VALUES ('848', 'PH', 'Lanao del Sur', '9300', 'Malabang');
INSERT INTO `address_lookup` VALUES ('849', 'PH', 'Lanao del Sur', '9303', 'Marogong');
INSERT INTO `address_lookup` VALUES ('850', 'PH', 'Lanao del Sur', '9711', 'Marantao');
INSERT INTO `address_lookup` VALUES ('851', 'PH', 'Lanao del Sur', '9700', 'Marawi City');
INSERT INTO `address_lookup` VALUES ('852', 'PH', 'Lanao del Sur', '9706', 'Masui');
INSERT INTO `address_lookup` VALUES ('853', 'PH', 'Lanao del Sur', '9702', 'Mulondo');
INSERT INTO `address_lookup` VALUES ('854', 'PH', 'Lanao del Sur', '9312', 'Pagayawan');
INSERT INTO `address_lookup` VALUES ('855', 'PH', 'Lanao del Sur', '9710', 'Piagapo');
INSERT INTO `address_lookup` VALUES ('856', 'PH', 'Lanao del Sur', '9705', 'Poona Bayabao');
INSERT INTO `address_lookup` VALUES ('857', 'PH', 'Lanao del Sur', '9313', 'Pualas');
INSERT INTO `address_lookup` VALUES ('858', 'PH', 'Lanao del Sur', '9713', 'Ramain-Ditsaan');
INSERT INTO `address_lookup` VALUES ('859', 'PH', 'Lanao del Sur', '9701', 'Saguiaran');
INSERT INTO `address_lookup` VALUES ('860', 'PH', 'Lanao del Sur', '9301', 'Picong(Sultan Gumander)');
INSERT INTO `address_lookup` VALUES ('861', 'PH', 'Lanao del Sur', '9321', 'Tagoloan-II');
INSERT INTO `address_lookup` VALUES ('862', 'PH', 'Lanao del Sur', '9704', 'Tamparan');
INSERT INTO `address_lookup` VALUES ('863', 'PH', 'Lanao del Sur', '9712', 'Taraka');
INSERT INTO `address_lookup` VALUES ('864', 'PH', 'Lanao del Sur', '9304', 'Tubaran');
INSERT INTO `address_lookup` VALUES ('865', 'PH', 'Lanao del Sur', '9317', 'Tugaya');
INSERT INTO `address_lookup` VALUES ('866', 'PH', 'Lanao del Sur', '9716', 'Wao');
INSERT INTO `address_lookup` VALUES ('867', 'PH', 'Leyte', '6510', 'Abuyog');
INSERT INTO `address_lookup` VALUES ('868', 'PH', 'Leyte', '6517', 'Alangalang');
INSERT INTO `address_lookup` VALUES ('869', 'PH', 'Leyte', '6542', 'Albuera');
INSERT INTO `address_lookup` VALUES ('870', 'PH', 'Leyte', '6520', 'Babatngon');
INSERT INTO `address_lookup` VALUES ('871', 'PH', 'Leyte', '6519', 'Barugo');
INSERT INTO `address_lookup` VALUES ('872', 'PH', 'Leyte', '6525', 'Bato');
INSERT INTO `address_lookup` VALUES ('873', 'PH', 'Leyte', '6521', 'Baybay');
INSERT INTO `address_lookup` VALUES ('874', 'PH', 'Leyte', '6516', 'Burauen');
INSERT INTO `address_lookup` VALUES ('875', 'PH', 'Leyte', '6534', 'Calubian');
INSERT INTO `address_lookup` VALUES ('876', 'PH', 'Leyte', '6530', 'Capoocan');
INSERT INTO `address_lookup` VALUES ('877', 'PH', 'Leyte', '6529', 'Carigara');
INSERT INTO `address_lookup` VALUES ('878', 'PH', 'Leyte', '6515', 'Dagami');
INSERT INTO `address_lookup` VALUES ('879', 'PH', 'Leyte', '6505', 'Dulag');
INSERT INTO `address_lookup` VALUES ('880', 'PH', 'Leyte', '6524', 'Hilongos');
INSERT INTO `address_lookup` VALUES ('881', 'PH', 'Leyte', '6523', 'Hindang');
INSERT INTO `address_lookup` VALUES ('882', 'PH', 'Leyte', '6522', 'Inopacan');
INSERT INTO `address_lookup` VALUES ('883', 'PH', 'Leyte', '6539', 'Isabel');
INSERT INTO `address_lookup` VALUES ('884', 'PH', 'Leyte', '6527', 'Jaro');
INSERT INTO `address_lookup` VALUES ('885', 'PH', 'Leyte', '6511', 'Javier');
INSERT INTO `address_lookup` VALUES ('886', 'PH', 'Leyte', '6506', 'Julita');
INSERT INTO `address_lookup` VALUES ('887', 'PH', 'Leyte', '6531', 'Kananga');
INSERT INTO `address_lookup` VALUES ('888', 'PH', 'Leyte', '6508', 'La Paz');
INSERT INTO `address_lookup` VALUES ('889', 'PH', 'Leyte', '6533', 'Leyte');
INSERT INTO `address_lookup` VALUES ('890', 'PH', 'Leyte', '6509', 'Macarthur');
INSERT INTO `address_lookup` VALUES ('891', 'PH', 'Leyte', '6512', 'Mahaplag');
INSERT INTO `address_lookup` VALUES ('892', 'PH', 'Leyte', '6532', 'Matag-ob');
INSERT INTO `address_lookup` VALUES ('893', 'PH', 'Leyte', '6526', 'Matalom');
INSERT INTO `address_lookup` VALUES ('894', 'PH', 'Leyte', '6507', 'Mayorga');
INSERT INTO `address_lookup` VALUES ('895', 'PH', 'Leyte', '6540', 'Merida');
INSERT INTO `address_lookup` VALUES ('896', 'PH', 'Leyte', '6541', 'Ormoc City');
INSERT INTO `address_lookup` VALUES ('897', 'PH', 'Leyte', '6501', 'Palo');
INSERT INTO `address_lookup` VALUES ('898', 'PH', 'Leyte', '6538', 'Palompon');
INSERT INTO `address_lookup` VALUES ('899', 'PH', 'Leyte', '6514', 'Pastrana');
INSERT INTO `address_lookup` VALUES ('900', 'PH', 'Leyte', '6535', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('901', 'PH', 'Leyte', '6518', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('902', 'PH', 'Leyte', '6513', 'Santa Fe');
INSERT INTO `address_lookup` VALUES ('903', 'PH', 'Leyte', '6536', 'Tabango');
INSERT INTO `address_lookup` VALUES ('904', 'PH', 'Leyte', '6504', 'Tabontabon');
INSERT INTO `address_lookup` VALUES ('905', 'PH', 'Leyte', '6500', 'Tacloban City');
INSERT INTO `address_lookup` VALUES ('906', 'PH', 'Leyte', '6502', 'Tanuan');
INSERT INTO `address_lookup` VALUES ('907', 'PH', 'Leyte', '6503', 'Tolosa');
INSERT INTO `address_lookup` VALUES ('908', 'PH', 'Leyte', '6528', 'Tunga');
INSERT INTO `address_lookup` VALUES ('909', 'PH', 'Leyte', '6537', 'Villaba');
INSERT INTO `address_lookup` VALUES ('910', 'PH', 'Maguindanao', '9600', 'Cotabato City');
INSERT INTO `address_lookup` VALUES ('911', 'PH', 'Maguindanao', '9609', 'Ampatuan');
INSERT INTO `address_lookup` VALUES ('912', 'PH', 'Maguindanao', '9616', 'Buluan');
INSERT INTO `address_lookup` VALUES ('913', 'PH', 'Maguindanao', '9617', 'Datu Paglas');
INSERT INTO `address_lookup` VALUES ('914', 'PH', 'Maguindanao', '9607', 'Datu Piang');
INSERT INTO `address_lookup` VALUES ('915', 'PH', 'Maguindanao', '9618', 'Gen. S.K. Pendatun');
INSERT INTO `address_lookup` VALUES ('916', 'PH', 'Maguindanao', '9608', 'Sarip Aguak (Maganoy)');
INSERT INTO `address_lookup` VALUES ('917', 'PH', 'Maguindanao', '9610', 'Pagalungan');
INSERT INTO `address_lookup` VALUES ('918', 'PH', 'Maguindanao', '9603', 'South Upi');
INSERT INTO `address_lookup` VALUES ('919', 'PH', 'Maguindanao', '9611', 'Sultan sa Barongis');
INSERT INTO `address_lookup` VALUES ('920', 'PH', 'Maguindanao', '9612', 'Talayan');
INSERT INTO `address_lookup` VALUES ('921', 'PH', 'Marinduque', '4900', 'Boac');
INSERT INTO `address_lookup` VALUES ('922', 'PH', 'Marinduque', '4901', 'Mogpog');
INSERT INTO `address_lookup` VALUES ('923', 'PH', 'Marinduque', '4902', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('924', 'PH', 'Marinduque', '4903', 'Torrijos');
INSERT INTO `address_lookup` VALUES ('925', 'PH', 'Marinduque', '4904', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('926', 'PH', 'Marinduque', '4905', 'Gasan');
INSERT INTO `address_lookup` VALUES ('927', 'PH', 'Masbate', '5414', 'Aroroy');
INSERT INTO `address_lookup` VALUES ('928', 'PH', 'Masbate', '5413', 'Baleno');
INSERT INTO `address_lookup` VALUES ('929', 'PH', 'Masbate', '5412', 'Balud');
INSERT INTO `address_lookup` VALUES ('930', 'PH', 'Masbate', '5415', 'Batuan');
INSERT INTO `address_lookup` VALUES ('931', 'PH', 'Masbate', '5421', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('932', 'PH', 'Masbate', '5405', 'Cataingan');
INSERT INTO `address_lookup` VALUES ('933', 'PH', 'Masbate', '5409', 'Cawayan');
INSERT INTO `address_lookup` VALUES ('934', 'PH', 'Masbate', '5419', 'Claveria');
INSERT INTO `address_lookup` VALUES ('935', 'PH', 'Masbate', '5403', 'Dimasalang');
INSERT INTO `address_lookup` VALUES ('936', 'PH', 'Masbate', '5407', 'Esperanza');
INSERT INTO `address_lookup` VALUES ('937', 'PH', 'Masbate', '5411', 'Mandaon');
INSERT INTO `address_lookup` VALUES ('938', 'PH', 'Masbate', '5400', 'Masbate City');
INSERT INTO `address_lookup` VALUES ('939', 'PH', 'Masbate', '5410', 'Milagros');
INSERT INTO `address_lookup` VALUES ('940', 'PH', 'Masbate', '5401', 'Mobo');
INSERT INTO `address_lookup` VALUES ('941', 'PH', 'Masbate', '5418', 'Monreal');
INSERT INTO `address_lookup` VALUES ('942', 'PH', 'Masbate', '5404', 'Palanas');
INSERT INTO `address_lookup` VALUES ('943', 'PH', 'Masbate', '5406', 'Pio V. Corpuz');
INSERT INTO `address_lookup` VALUES ('944', 'PH', 'Masbate', '5408', 'Placer');
INSERT INTO `address_lookup` VALUES ('945', 'PH', 'Masbate', '5416', 'San Fernando');
INSERT INTO `address_lookup` VALUES ('946', 'PH', 'Masbate', '5417', 'San Jacinto');
INSERT INTO `address_lookup` VALUES ('947', 'PH', 'Masbate', '5420', 'San Pascual');
INSERT INTO `address_lookup` VALUES ('948', 'PH', 'Masbate', '5402', 'Uson');
INSERT INTO `address_lookup` VALUES ('949', 'PH', 'Caloocan City', '1420', 'Kaybiga/Deparo');
INSERT INTO `address_lookup` VALUES ('950', 'PH', 'Caloocan City', '1421', 'Bagumbong/Pag-asa');
INSERT INTO `address_lookup` VALUES ('951', 'PH', 'Caloocan City', '1422', 'Novaliches North');
INSERT INTO `address_lookup` VALUES ('952', 'PH', 'Caloocan City', '1423', 'Lilles Ville Subdivision');
INSERT INTO `address_lookup` VALUES ('953', 'PH', 'Caloocan City', '1424', 'Captol Parkland Subdivision');
INSERT INTO `address_lookup` VALUES ('954', 'PH', 'Caloocan City', '1425', 'Amparo Subdivision');
INSERT INTO `address_lookup` VALUES ('955', 'PH', 'Caloocan City', '1426', 'Bankers Village');
INSERT INTO `address_lookup` VALUES ('956', 'PH', 'Caloocan City', '1427', 'Tala Leprosarium and Victory Heights');
INSERT INTO `address_lookup` VALUES ('957', 'PH', 'Caloocan City', '1428', 'Bagong Silang');
INSERT INTO `address_lookup` VALUES ('958', 'PH', 'Caloocan City', '1400', 'Caloocan City Central Post Office');
INSERT INTO `address_lookup` VALUES ('959', 'PH', 'Caloocan City', '1401', 'Baesa');
INSERT INTO `address_lookup` VALUES ('960', 'PH', 'Caloocan City', '1402', 'Santa Quiteria');
INSERT INTO `address_lookup` VALUES ('961', 'PH', 'Caloocan City', '1403', 'Grace Park East');
INSERT INTO `address_lookup` VALUES ('962', 'PH', 'Caloocan City', '1404', 'San Jose');
INSERT INTO `address_lookup` VALUES ('963', 'PH', 'Caloocan City', '1405', 'First Avenue to Seventh Avenue West');
INSERT INTO `address_lookup` VALUES ('964', 'PH', 'Caloocan City', '1406', 'Grace Park West');
INSERT INTO `address_lookup` VALUES ('965', 'PH', 'Caloocan City', '1407', 'University Hills');
INSERT INTO `address_lookup` VALUES ('966', 'PH', 'Caloocan City', '1408', 'Sangandaan');
INSERT INTO `address_lookup` VALUES ('967', 'PH', 'Caloocan City', '1409', 'Kaunlaran Village (shared with Malabon City and Navotas)');
INSERT INTO `address_lookup` VALUES ('968', 'PH', 'Caloocan City', '1410', 'Maypajo');
INSERT INTO `address_lookup` VALUES ('969', 'PH', 'Caloocan City', '1411', 'Fish Market (shared with Navotas)');
INSERT INTO `address_lookup` VALUES ('970', 'PH', 'Caloocan City', '1412', 'Isla de Cocomo');
INSERT INTO `address_lookup` VALUES ('971', 'PH', 'Caloocan City', '1413', 'Kapitbayahan');
INSERT INTO `address_lookup` VALUES ('972', 'PH', 'Las Piñas City', '1740', 'Las Piñas Central Post Office');
INSERT INTO `address_lookup` VALUES ('973', 'PH', 'Las Piñas City', '1741', 'Greymarville Subdivision');
INSERT INTO `address_lookup` VALUES ('974', 'PH', 'Las Piñas City', '1742', 'Pulang Lupa and Zapote');
INSERT INTO `address_lookup` VALUES ('975', 'PH', 'Las Piñas City', '1743', 'Cut-cut');
INSERT INTO `address_lookup` VALUES ('976', 'PH', 'Las Piñas City', '1744', 'Manuyo');
INSERT INTO `address_lookup` VALUES ('977', 'PH', 'Las Piñas City', '1745', 'Gatchalian Subdivision');
INSERT INTO `address_lookup` VALUES ('978', 'PH', 'Las Piñas City', '1746', 'Verdant Acres Subdivision');
INSERT INTO `address_lookup` VALUES ('979', 'PH', 'Las Piñas City', '1747', 'Moonwalk Subdivision and Talon');
INSERT INTO `address_lookup` VALUES ('980', 'PH', 'Las Piñas City', '1748', 'Manila Doctors Village');
INSERT INTO `address_lookup` VALUES ('981', 'PH', 'Las Piñas City', '1749', 'Angela Village');
INSERT INTO `address_lookup` VALUES ('982', 'PH', 'Las Piñas City', '1750', 'Almanza');
INSERT INTO `address_lookup` VALUES ('983', 'PH', 'Las Piñas City', '1751', 'T.S. Cruz Subdivision');
INSERT INTO `address_lookup` VALUES ('984', 'PH', 'Las Piñas City', '1752', 'Soldiers Hills Subdivision');
INSERT INTO `address_lookup` VALUES ('985', 'PH', 'Makati City', '1200', 'Makati Central Post Office');
INSERT INTO `address_lookup` VALUES ('986', 'PH', 'Makati City', '1201', 'Fort Bonifacio (now part of Taguig City)');
INSERT INTO `address_lookup` VALUES ('987', 'PH', 'Makati City', '1202', 'Fort Bonifacio Naval Station');
INSERT INTO `address_lookup` VALUES ('988', 'PH', 'Makati City', '1203', 'San Antonio Village');
INSERT INTO `address_lookup` VALUES ('989', 'PH', 'Makati City', '1204', 'La Paz, Singkamas, and Tejeros');
INSERT INTO `address_lookup` VALUES ('990', 'PH', 'Makati City', '1205', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('991', 'PH', 'Makati City', '1206', 'Kasilawan');
INSERT INTO `address_lookup` VALUES ('992', 'PH', 'Makati City', '1207', 'Carmona and Olympia');
INSERT INTO `address_lookup` VALUES ('993', 'PH', 'Makati City', '1208', 'Valenzuela (includes Rizal, San Miguel, and Santiago Villages)');
INSERT INTO `address_lookup` VALUES ('994', 'PH', 'Makati City', '1209', 'Bel-Air');
INSERT INTO `address_lookup` VALUES ('995', 'PH', 'Makati City', '1210', 'Poblacion');
INSERT INTO `address_lookup` VALUES ('996', 'PH', 'Makati City', '1211', 'Guadalupe Viejo (includes Palm Village)');
INSERT INTO `address_lookup` VALUES ('997', 'PH', 'Makati City', '1212', 'Guadalupe Nuevo (includes Visayan Village)');
INSERT INTO `address_lookup` VALUES ('998', 'PH', 'Makati City', '1213', 'Pinagkaisahan - Pitogo');
INSERT INTO `address_lookup` VALUES ('999', 'PH', 'Makati City', '1214', 'Cembo');
INSERT INTO `address_lookup` VALUES ('1000', 'PH', 'Makati City', '1215', 'West Rembo');
INSERT INTO `address_lookup` VALUES ('1001', 'PH', 'Makati City', '1216', 'East Rembo and Malapad na Bato');
INSERT INTO `address_lookup` VALUES ('1002', 'PH', 'Makati City', '1217', 'Comembo');
INSERT INTO `address_lookup` VALUES ('1003', 'PH', 'Makati City', '1218', 'Pembo');
INSERT INTO `address_lookup` VALUES ('1004', 'PH', 'Makati City', '1219', 'Forbes Park North');
INSERT INTO `address_lookup` VALUES ('1005', 'PH', 'Makati City', '1220', 'Forbes Park South');
INSERT INTO `address_lookup` VALUES ('1006', 'PH', 'Makati City', '1221', 'Dasmariñas Village North');
INSERT INTO `address_lookup` VALUES ('1007', 'PH', 'Makati City', '1222', 'Dasmariñas Village South');
INSERT INTO `address_lookup` VALUES ('1008', 'PH', 'Makati City', '1223', 'San Lorenzo Village');
INSERT INTO `address_lookup` VALUES ('1009', 'PH', 'Makati City', '1224', 'Makati Commercial Center');
INSERT INTO `address_lookup` VALUES ('1010', 'PH', 'Makati City', '1225', 'Urdaneta Village');
INSERT INTO `address_lookup` VALUES ('1011', 'PH', 'Makati City', '1226', 'Ayala Avenue-Paseo de Roxas');
INSERT INTO `address_lookup` VALUES ('1012', 'PH', 'Makati City', '1227', 'Salcedo Village');
INSERT INTO `address_lookup` VALUES ('1013', 'PH', 'Makati City', '1228', 'Greenbelt');
INSERT INTO `address_lookup` VALUES ('1014', 'PH', 'Makati City', '1229', 'Legaspi Village');
INSERT INTO `address_lookup` VALUES ('1015', 'PH', 'Makati City', '1230', 'Pio del Pilar');
INSERT INTO `address_lookup` VALUES ('1016', 'PH', 'Makati City', '1231', 'Pasong Tamo and Ecology Village');
INSERT INTO `address_lookup` VALUES ('1017', 'PH', 'Makati City', '1232', 'Magallanes Village');
INSERT INTO `address_lookup` VALUES ('1018', 'PH', 'Makati City', '1233', 'Bangkal');
INSERT INTO `address_lookup` VALUES ('1019', 'PH', 'Makati City', '1234', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('1020', 'PH', 'Makati City', '1235', 'Palanan');
INSERT INTO `address_lookup` VALUES ('1021', 'PH', 'Makati City', '700', 'Plain-Truth');
INSERT INTO `address_lookup` VALUES ('1022', 'PH', 'Makati City', '701', 'Colgate Palmolive Philippines');
INSERT INTO `address_lookup` VALUES ('1023', 'PH', 'Makati City', '702', 'Citibank');
INSERT INTO `address_lookup` VALUES ('1024', 'PH', 'Makati City', '703', 'Sarmiento Enterprises');
INSERT INTO `address_lookup` VALUES ('1025', 'PH', 'Makati City', '704', 'Producers Bank');
INSERT INTO `address_lookup` VALUES ('1026', 'PH', 'Makati City', '705', 'Union Ajinomoto');
INSERT INTO `address_lookup` VALUES ('1027', 'PH', 'Makati City', '706', 'Faith Embassy');
INSERT INTO `address_lookup` VALUES ('1028', 'PH', 'Makati City', '707', 'Canadian Embassy');
INSERT INTO `address_lookup` VALUES ('1029', 'PH', 'Makati City', '708', 'Philippine National Oil Company');
INSERT INTO `address_lookup` VALUES ('1030', 'PH', 'Makati City', '709', 'A-Z Direct Marketing');
INSERT INTO `address_lookup` VALUES ('1031', 'PH', 'Makati City', '710', 'American Express');
INSERT INTO `address_lookup` VALUES ('1032', 'PH', 'Makati City', '711', 'Land Bank of the Philippines');
INSERT INTO `address_lookup` VALUES ('1033', 'PH', 'Makati City', '712', 'Prudential Bank');
INSERT INTO `address_lookup` VALUES ('1034', 'PH', 'Makati City', '713', 'BPI Family Savings Bank');
INSERT INTO `address_lookup` VALUES ('1035', 'PH', 'Makati City', '714', 'Philippine Manila Mission');
INSERT INTO `address_lookup` VALUES ('1036', 'PH', 'Makati City', '715', 'Marcopper Mining Corporation');
INSERT INTO `address_lookup` VALUES ('1037', 'PH', 'Makati City', '716', 'Allied Bank');
INSERT INTO `address_lookup` VALUES ('1038', 'PH', 'Makati City', '717', 'Diners Club');
INSERT INTO `address_lookup` VALUES ('1039', 'PH', 'Makati City', '718', 'International Center for Aquatic Resources');
INSERT INTO `address_lookup` VALUES ('1040', 'PH', 'Makati City', '719', 'Security Bank');
INSERT INTO `address_lookup` VALUES ('1041', 'PH', 'Makati City', '720', 'Bank of the Philippine Islands');
INSERT INTO `address_lookup` VALUES ('1042', 'PH', 'Makati City', '721', 'Philippine Long Distance Telephone Company');
INSERT INTO `address_lookup` VALUES ('1043', 'PH', 'Makati City', '722', 'World Executive Digest');
INSERT INTO `address_lookup` VALUES ('1044', 'PH', 'Makati City', '723', 'Japanese Embassy');
INSERT INTO `address_lookup` VALUES ('1045', 'PH', 'Makati City', '724', 'Sun Life Financial');
INSERT INTO `address_lookup` VALUES ('1046', 'PH', 'Makati City', '725', 'Insular Life Assurance Company');
INSERT INTO `address_lookup` VALUES ('1047', 'PH', 'Makati City', '726', 'Equitable PCI Bank');
INSERT INTO `address_lookup` VALUES ('1048', 'PH', 'Makati City', '727', 'Rizal Commercial Banking Corporation');
INSERT INTO `address_lookup` VALUES ('1049', 'PH', 'Makati City', '728', 'United Coconut Planters Bank');
INSERT INTO `address_lookup` VALUES ('1050', 'PH', 'Makati City', '729', 'Not used');
INSERT INTO `address_lookup` VALUES ('1051', 'PH', 'Makati City', '730', 'Zuellig Pharma');
INSERT INTO `address_lookup` VALUES ('1052', 'PH', 'Makati City', '731', 'BCD Direct Marketing');
INSERT INTO `address_lookup` VALUES ('1053', 'PH', 'Makati City', '732', 'Export and Industry Bank');
INSERT INTO `address_lookup` VALUES ('1054', 'PH', 'Makati City', '0733-0739', 'Not used');
INSERT INTO `address_lookup` VALUES ('1055', 'PH', 'Makati City', '740', 'Sycip, Gorres and Velayo');
INSERT INTO `address_lookup` VALUES ('1056', 'PH', 'Makati City', '750', 'Philippine Airlines');
INSERT INTO `address_lookup` VALUES ('1057', 'PH', 'Makati City', '760', 'Pilipinas Shell (subsidiary of Royal Dutch Shell)');
INSERT INTO `address_lookup` VALUES ('1058', 'PH', 'Makati City', '770', 'ACCRA Law Offices');
INSERT INTO `address_lookup` VALUES ('1059', 'PH', 'Makati City', '780', 'Mead Johnson Philippines');
INSERT INTO `address_lookup` VALUES ('1060', 'PH', 'Makati City', '788', 'Directories Pilipinas Corporation');
INSERT INTO `address_lookup` VALUES ('1061', 'PH', 'Makati City', '790', 'Atlantic, Gulf and Pacific');
INSERT INTO `address_lookup` VALUES ('1062', 'PH', 'Makati City', '1250', 'Makati CPO-PO Box# 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1063', 'PH', 'Makati City', '1251', 'Makati CPO-PO Box# 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1064', 'PH', 'Makati City', '1252', 'Makati CPO-PO Box# 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1065', 'PH', 'Makati City', '1253', 'Makati CPO-PO Box# 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1066', 'PH', 'Makati City', '1254', 'Makati CPO-PO Box# 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1067', 'PH', 'Makati City', '1255', 'Makati CPO-PO Box# 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1068', 'PH', 'Makati City', '1256', 'Makati CPO-PO Box# 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1069', 'PH', 'Makati City', '1257', 'Makati CPO-PO Box# 1700 to 1799');
INSERT INTO `address_lookup` VALUES ('1070', 'PH', 'Makati City', '1258', 'Makati CPO-PO Box# 1800 to 1899');
INSERT INTO `address_lookup` VALUES ('1071', 'PH', 'Makati City', '1259', 'Makati CPO-PO Box# 1900 to 1999');
INSERT INTO `address_lookup` VALUES ('1072', 'PH', 'Makati City', '1260', 'Makati CPO-PO Box# 2000 to 2099');
INSERT INTO `address_lookup` VALUES ('1073', 'PH', 'Makati City', '1261', 'Makati CPO-PO Box# 2100 to 2199');
INSERT INTO `address_lookup` VALUES ('1074', 'PH', 'Makati City', '1262', 'Makati CPO-PO Box# 2200 to 2299');
INSERT INTO `address_lookup` VALUES ('1075', 'PH', 'Makati City', '1263', 'Makati CPO-PO Box# 2300 to 2399');
INSERT INTO `address_lookup` VALUES ('1076', 'PH', 'Makati City', '1264', 'Makati CPO-PO Box# 2400 to 2499');
INSERT INTO `address_lookup` VALUES ('1077', 'PH', 'Makati City', '1265', 'Makati CPO-PO Box# 2500 to 2599');
INSERT INTO `address_lookup` VALUES ('1078', 'PH', 'Makati City', '1266', 'Makati CPO-PO Box# 2600 to 2699');
INSERT INTO `address_lookup` VALUES ('1079', 'PH', 'Makati City', '1267', 'Makati CPO-PO Box# 2700 to 2799');
INSERT INTO `address_lookup` VALUES ('1080', 'PH', 'Makati City', '1268', 'Makati CPO-PO Box# 2800 to 2899');
INSERT INTO `address_lookup` VALUES ('1081', 'PH', 'Makati City', '1269', 'Makati CPO-PO Box# 2900 to 2999');
INSERT INTO `address_lookup` VALUES ('1082', 'PH', 'Makati City', '1270', 'Makati CPO-PO Box# 3000 to 3099');
INSERT INTO `address_lookup` VALUES ('1083', 'PH', 'Makati City', '1271', 'Makati CPO-PO Box# 3100 to 3199');
INSERT INTO `address_lookup` VALUES ('1084', 'PH', 'Makati City', '1272', 'Makati CPO-PO Box# 3200 to 3299');
INSERT INTO `address_lookup` VALUES ('1085', 'PH', 'Makati City', '1273', 'Makati CPO-PO Box# 3300 to 3399');
INSERT INTO `address_lookup` VALUES ('1086', 'PH', 'Makati City', '1274', 'Makati CPO-PO Box# 3400 to 3499');
INSERT INTO `address_lookup` VALUES ('1087', 'PH', 'Makati City', '1275', 'Makati CPO-PO Box# 3500 to 3599');
INSERT INTO `address_lookup` VALUES ('1088', 'PH', 'Makati City', '1276', 'Makati CPO-PO Box# 3600 to 3699');
INSERT INTO `address_lookup` VALUES ('1089', 'PH', 'Makati City', '1277', 'Makati CPO-PO Box# 3700 to 3799');
INSERT INTO `address_lookup` VALUES ('1090', 'PH', 'Makati City', '1278', 'Makati CPO-PO Box# 3800 to 3899');
INSERT INTO `address_lookup` VALUES ('1091', 'PH', 'Makati City', '1279', 'Makati CPO-PO Box# 3900 to 3999');
INSERT INTO `address_lookup` VALUES ('1092', 'PH', 'Makati City', '1280', 'Makati CPO-PO Box# 4000 to 4099');
INSERT INTO `address_lookup` VALUES ('1093', 'PH', 'Makati City', '1281', 'Makati CPO-PO Box# 4100 to 4199');
INSERT INTO `address_lookup` VALUES ('1094', 'PH', 'Makati City', '1282', 'Makati CPO-PO Box# 4200 to 4299');
INSERT INTO `address_lookup` VALUES ('1095', 'PH', 'Makati City', '1283', 'Makati CPO-PO Box# 4300 to 4399');
INSERT INTO `address_lookup` VALUES ('1096', 'PH', 'Makati City', '1284', 'Makati CPO-PO Box# 4400 to 4499');
INSERT INTO `address_lookup` VALUES ('1097', 'PH', 'Makati City', '1285', 'Makati CPO-PO Box# 4500 to 4599');
INSERT INTO `address_lookup` VALUES ('1098', 'PH', 'Makati City', '1286', 'Makati CPO-PO Box# 4600 to 4699');
INSERT INTO `address_lookup` VALUES ('1099', 'PH', 'Makati City', '1287', 'Makati CPO-PO Box# 4700 to 4799');
INSERT INTO `address_lookup` VALUES ('1100', 'PH', 'Makati City', '1288', 'Makati CPO-PO Box# 4800 to 4899');
INSERT INTO `address_lookup` VALUES ('1101', 'PH', 'Makati City', '1289', 'Makati CPO-PO Box# 4900 to 4999');
INSERT INTO `address_lookup` VALUES ('1102', 'PH', 'Makati City', '1290', 'Makati CPO-PO Box# 5000 to 5099');
INSERT INTO `address_lookup` VALUES ('1103', 'PH', 'Makati City', '1291', 'Makati CPO-PO Box# 5100 to 5199');
INSERT INTO `address_lookup` VALUES ('1104', 'PH', 'Makati City', '1292', 'Makati CPO-PO Box# 5200 to 5299');
INSERT INTO `address_lookup` VALUES ('1105', 'PH', 'Makati City', '1293', 'Makati CPO-PO Box# 5300 to 5399');
INSERT INTO `address_lookup` VALUES ('1106', 'PH', 'Makati City', '1294', 'Makati CPO-PO Box# 5400 to 5499');
INSERT INTO `address_lookup` VALUES ('1107', 'PH', 'Makati City', '1295', 'Makati CPO-PO Box# 5500 to 5599');
INSERT INTO `address_lookup` VALUES ('1108', 'PH', 'Makati City', '1296', 'Makati CPO-PO Box# 5600 to 5699');
INSERT INTO `address_lookup` VALUES ('1109', 'PH', 'Makati City', '1297', 'Makati CPO-PO Box# 5700 to 5799');
INSERT INTO `address_lookup` VALUES ('1110', 'PH', 'Makati City', '1298', 'Makati CPO-PO Box# 5800 to 5899');
INSERT INTO `address_lookup` VALUES ('1111', 'PH', 'Makati City', '1299', 'Makati CPO-PO Box# 5900 to 5999');
INSERT INTO `address_lookup` VALUES ('1112', 'PH', 'Malabon City', '1409', 'Kaunlaran Village (shared with Caloocan City and Navotas)');
INSERT INTO `address_lookup` VALUES ('1113', 'PH', 'Malabon City', '1470', 'Malabon');
INSERT INTO `address_lookup` VALUES ('1114', 'PH', 'Malabon City', '1471', 'Flores');
INSERT INTO `address_lookup` VALUES ('1115', 'PH', 'Malabon City', '1472', 'Longos');
INSERT INTO `address_lookup` VALUES ('1116', 'PH', 'Malabon City', '1473', 'Tonsuya');
INSERT INTO `address_lookup` VALUES ('1117', 'PH', 'Malabon City', '1474', 'Acacia');
INSERT INTO `address_lookup` VALUES ('1118', 'PH', 'Malabon City', '1475', 'Potrero');
INSERT INTO `address_lookup` VALUES ('1119', 'PH', 'Malabon City', '1476', 'Araneta Subdivision');
INSERT INTO `address_lookup` VALUES ('1120', 'PH', 'Malabon City', '1477', 'Maysilo');
INSERT INTO `address_lookup` VALUES ('1121', 'PH', 'Malabon City', '1478', 'Santolan');
INSERT INTO `address_lookup` VALUES ('1122', 'PH', 'Malabon City', '1479', 'Muzon');
INSERT INTO `address_lookup` VALUES ('1123', 'PH', 'Malabon City', '1480', 'Dampalit');
INSERT INTO `address_lookup` VALUES ('1124', 'PH', 'Malabon City', '1470', 'Tinajeros');
INSERT INTO `address_lookup` VALUES ('1125', 'PH', 'Mandaluyong City', '1550', 'Mandaluyong Central Post Office');
INSERT INTO `address_lookup` VALUES ('1126', 'PH', 'Mandaluyong City', '1551', 'Vergara');
INSERT INTO `address_lookup` VALUES ('1127', 'PH', 'Mandaluyong City', '1552', 'Shaw Boulevard');
INSERT INTO `address_lookup` VALUES ('1128', 'PH', 'Mandaluyong City', '1553', 'National Center for Mental Health');
INSERT INTO `address_lookup` VALUES ('1129', 'PH', 'Mandaluyong City', '1554', 'East EDSA');
INSERT INTO `address_lookup` VALUES ('1130', 'PH', 'Mandaluyong City', '1555', 'Wack Wack');
INSERT INTO `address_lookup` VALUES ('1131', 'PH', 'Mandaluyong City', '1556', 'Greenhills South');
INSERT INTO `address_lookup` VALUES ('1132', 'PH', 'Manila', '1000', 'Manila Central Post Office');
INSERT INTO `address_lookup` VALUES ('1133', 'PH', 'Manila', '1001', 'Quiapo');
INSERT INTO `address_lookup` VALUES ('1134', 'PH', 'Manila', '1002', 'Intramuros');
INSERT INTO `address_lookup` VALUES ('1135', 'PH', 'Manila', '1003', 'Santa Cruz South');
INSERT INTO `address_lookup` VALUES ('1136', 'PH', 'Manila', '1004', 'Malate');
INSERT INTO `address_lookup` VALUES ('1137', 'PH', 'Manila', '1005', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('1138', 'PH', 'Manila', '1006', 'Binondo');
INSERT INTO `address_lookup` VALUES ('1139', 'PH', 'Manila', '1007', 'Paco');
INSERT INTO `address_lookup` VALUES ('1140', 'PH', 'Manila', '1008', 'Sampaloc East');
INSERT INTO `address_lookup` VALUES ('1141', 'PH', 'Manila', '1009', 'Santa Ana');
INSERT INTO `address_lookup` VALUES ('1142', 'PH', 'Manila', '1010', 'San Nicolas');
INSERT INTO `address_lookup` VALUES ('1143', 'PH', 'Manila', '1011', 'Pandacan');
INSERT INTO `address_lookup` VALUES ('1144', 'PH', 'Manila', '1012', 'Tondo South');
INSERT INTO `address_lookup` VALUES ('1145', 'PH', 'Manila', '1013', 'Tondo North');
INSERT INTO `address_lookup` VALUES ('1146', 'PH', 'Manila', '1014', 'Santa Cruz North');
INSERT INTO `address_lookup` VALUES ('1147', 'PH', 'Manila', '1015', 'Sampaloc West');
INSERT INTO `address_lookup` VALUES ('1148', 'PH', 'Manila', '1016', 'Santa Mesa');
INSERT INTO `address_lookup` VALUES ('1149', 'PH', 'Manila', '1017', 'San Andres');
INSERT INTO `address_lookup` VALUES ('1150', 'PH', 'Manila', '1018', 'Port Area South');
INSERT INTO `address_lookup` VALUES ('1151', 'PH', 'Manila', '900', 'Manila Bulletin');
INSERT INTO `address_lookup` VALUES ('1152', 'PH', 'Manila', '901', 'Adventist University of the Philippines');
INSERT INTO `address_lookup` VALUES ('1153', 'PH', 'Manila', '902', 'Far East Broadcasting Corporation');
INSERT INTO `address_lookup` VALUES ('1154', 'PH', 'Manila', '903', 'Manila Hilton');
INSERT INTO `address_lookup` VALUES ('1155', 'PH', 'Manila', '904', 'Midland Hotel');
INSERT INTO `address_lookup` VALUES ('1156', 'PH', 'Manila', '905', 'The Philippine Star');
INSERT INTO `address_lookup` VALUES ('1157', 'PH', 'Manila', '906', 'Manila Medical Center');
INSERT INTO `address_lookup` VALUES ('1158', 'PH', 'Manila', '907', 'San Miguel Corporation');
INSERT INTO `address_lookup` VALUES ('1159', 'PH', 'Manila', '908', 'Pan-Filipino Shipping');
INSERT INTO `address_lookup` VALUES ('1160', 'PH', 'Manila', '909', 'Summer Institute of Linguistics');
INSERT INTO `address_lookup` VALUES ('1161', 'PH', 'Manila', '910', 'Department of Labor and Employment');
INSERT INTO `address_lookup` VALUES ('1162', 'PH', 'Manila', '911', 'National Statistics Office');
INSERT INTO `address_lookup` VALUES ('1163', 'PH', 'Manila', '912', 'Bureau of Plant Industry');
INSERT INTO `address_lookup` VALUES ('1164', 'PH', 'Manila', '913', 'Manila Hotel');
INSERT INTO `address_lookup` VALUES ('1165', 'PH', 'Manila', '914', 'Philippine Refining Company and Unilever Philippines');
INSERT INTO `address_lookup` VALUES ('1166', 'PH', 'Manila', '915', 'International Correspondence Institute');
INSERT INTO `address_lookup` VALUES ('1167', 'PH', 'Manila', '916', 'Radio Veritas');
INSERT INTO `address_lookup` VALUES ('1168', 'PH', 'Manila', '917', 'Ateneo de Manila University');
INSERT INTO `address_lookup` VALUES ('1169', 'PH', 'Manila', '918', 'Fil-Japan Shipping Company');
INSERT INTO `address_lookup` VALUES ('1170', 'PH', 'Manila', '919', 'Manila Police District');
INSERT INTO `address_lookup` VALUES ('1171', 'PH', 'Manila', '920', 'Sunbursts Publications');
INSERT INTO `address_lookup` VALUES ('1172', 'PH', 'Manila', '921', 'Philippine Plaza Hotel');
INSERT INTO `address_lookup` VALUES ('1173', 'PH', 'Manila', '922', 'De La Salle University');
INSERT INTO `address_lookup` VALUES ('1174', 'PH', 'Manila', '923', 'Don Stewart Evangelistic Association');
INSERT INTO `address_lookup` VALUES ('1175', 'PH', 'Manila', '924', 'World Map');
INSERT INTO `address_lookup` VALUES ('1176', 'PH', 'Manila', '925', 'Chinabank');
INSERT INTO `address_lookup` VALUES ('1177', 'PH', 'Manila', '926', 'Caltex Philippines');
INSERT INTO `address_lookup` VALUES ('1178', 'PH', 'Manila', '927', 'Philippine Veterans Affairs Office');
INSERT INTO `address_lookup` VALUES ('1179', 'PH', 'Manila', '928', 'Philippine Campus Crusade');
INSERT INTO `address_lookup` VALUES ('1180', 'PH', 'Manila', '929', 'Not used');
INSERT INTO `address_lookup` VALUES ('1181', 'PH', 'Manila', '930', 'United States Embassy');
INSERT INTO `address_lookup` VALUES ('1182', 'PH', 'Manila', '940', 'Philippine National Bank');
INSERT INTO `address_lookup` VALUES ('1183', 'PH', 'Manila', '950', 'Manila Midtown Hotel');
INSERT INTO `address_lookup` VALUES ('1184', 'PH', 'Manila', '960', 'International Rice Research Institute');
INSERT INTO `address_lookup` VALUES ('1185', 'PH', 'Manila', '970', 'Department of Justice');
INSERT INTO `address_lookup` VALUES ('1186', 'PH', 'Manila', '980', 'Asian Development Bank');
INSERT INTO `address_lookup` VALUES ('1187', 'PH', 'Manila', '990', 'Philamlife');
INSERT INTO `address_lookup` VALUES ('1188', 'PH', 'Manila', '1035', 'Santa Mesa P.O. Box');
INSERT INTO `address_lookup` VALUES ('1189', 'PH', 'Manila', '1040', 'Santa Cruz P.O. Box');
INSERT INTO `address_lookup` VALUES ('1190', 'PH', 'Manila', '1045', 'Ermita P.O. Box');
INSERT INTO `address_lookup` VALUES ('1191', 'PH', 'Manila', '1050', 'Manila CPO-PO Box# 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1192', 'PH', 'Manila', '1051', 'Manila CPO-PO Box# 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1193', 'PH', 'Manila', '1052', 'Manila CPO-PO Box# 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1194', 'PH', 'Manila', '1053', 'Manila CPO-PO Box# 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1195', 'PH', 'Manila', '1054', 'Manila CPO-PO Box# 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1196', 'PH', 'Manila', '1055', 'Manila CPO-PO Box# 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1197', 'PH', 'Manila', '1056', 'Manila CPO-PO Box# 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1198', 'PH', 'Manila', '1057', 'Manila CPO-PO Box# 1700 to 1799');
INSERT INTO `address_lookup` VALUES ('1199', 'PH', 'Manila', '1058', 'Manila CPO-PO Box# 1800 to 1899');
INSERT INTO `address_lookup` VALUES ('1200', 'PH', 'Manila', '1059', 'Manila CPO-PO Box# 1900 to 1999');
INSERT INTO `address_lookup` VALUES ('1201', 'PH', 'Manila', '1060', 'Manila CPO-PO Box# 2000 to 2099');
INSERT INTO `address_lookup` VALUES ('1202', 'PH', 'Manila', '1061', 'Manila CPO-PO Box# 2100 to 2199');
INSERT INTO `address_lookup` VALUES ('1203', 'PH', 'Manila', '1062', 'Manila CPO-PO Box# 2200 to 2299');
INSERT INTO `address_lookup` VALUES ('1204', 'PH', 'Manila', '1063', 'Manila CPO-PO Box# 2300 to 2399');
INSERT INTO `address_lookup` VALUES ('1205', 'PH', 'Manila', '1064', 'Manila CPO-PO Box# 2400 to 2499');
INSERT INTO `address_lookup` VALUES ('1206', 'PH', 'Manila', '1065', 'Manila CPO-PO Box# 2500 to 2599');
INSERT INTO `address_lookup` VALUES ('1207', 'PH', 'Manila', '1066', 'Manila CPO-PO Box# 2600 to 2699');
INSERT INTO `address_lookup` VALUES ('1208', 'PH', 'Manila', '1067', 'Manila CPO-PO Box# 2700 to 2799');
INSERT INTO `address_lookup` VALUES ('1209', 'PH', 'Manila', '1068', 'Manila CPO-PO Box# 2800 to 2899');
INSERT INTO `address_lookup` VALUES ('1210', 'PH', 'Manila', '1069', 'Manila CPO-PO Box# 2900 to 2999');
INSERT INTO `address_lookup` VALUES ('1211', 'PH', 'Manila', '1070', 'Manila CPO-PO Box# 3000 to 3099');
INSERT INTO `address_lookup` VALUES ('1212', 'PH', 'Manila', '1071', 'Manila CPO-PO Box# 3100 to 3199');
INSERT INTO `address_lookup` VALUES ('1213', 'PH', 'Manila', '1072', 'Manila CPO-PO Box# 3200 to 3299');
INSERT INTO `address_lookup` VALUES ('1214', 'PH', 'Manila', '1073', 'Manila CPO-PO Box# 3300 to 3399');
INSERT INTO `address_lookup` VALUES ('1215', 'PH', 'Manila', '1074', 'Manila CPO-PO Box# 3400 to 3499');
INSERT INTO `address_lookup` VALUES ('1216', 'PH', 'Manila', '1075', 'Manila CPO-PO Box# 3500 to 3599');
INSERT INTO `address_lookup` VALUES ('1217', 'PH', 'Manila', '1076', 'Manila CPO-PO Box# 3600 to 3699');
INSERT INTO `address_lookup` VALUES ('1218', 'PH', 'Manila', '1077', 'Manila CPO-PO Box# 3700 to 3799');
INSERT INTO `address_lookup` VALUES ('1219', 'PH', 'Manila', '1078', 'Manila CPO-PO Box# 3800 to 3899');
INSERT INTO `address_lookup` VALUES ('1220', 'PH', 'Manila', '1079', 'Manila CPO-PO Box# 3900 to 3999');
INSERT INTO `address_lookup` VALUES ('1221', 'PH', 'Manila', '1080', 'Manila CPO-PO Box# 4000 to 4099');
INSERT INTO `address_lookup` VALUES ('1222', 'PH', 'Manila', '1081', 'Manila CPO-PO Box# 4100 to 4199');
INSERT INTO `address_lookup` VALUES ('1223', 'PH', 'Manila', '1082', 'Manila CPO-PO Box# 4200 to 4299');
INSERT INTO `address_lookup` VALUES ('1224', 'PH', 'Manila', '1083', 'Manila CPO-PO Box# 4300 to 4399');
INSERT INTO `address_lookup` VALUES ('1225', 'PH', 'Manila', '1084', 'Manila CPO-PO Box# 4400 to 4499');
INSERT INTO `address_lookup` VALUES ('1226', 'PH', 'Manila', '1085', 'Manila CPO-PO Box# 4500 to 4599');
INSERT INTO `address_lookup` VALUES ('1227', 'PH', 'Manila', '1086', 'Manila CPO-PO Box# 4600 to 4699');
INSERT INTO `address_lookup` VALUES ('1228', 'PH', 'Manila', '1087', 'Manila CPO-PO Box# 4700 to 4799');
INSERT INTO `address_lookup` VALUES ('1229', 'PH', 'Manila', '1088', 'Manila CPO-PO Box# 4800 to 4899');
INSERT INTO `address_lookup` VALUES ('1230', 'PH', 'Manila', '1089', 'Manila CPO-PO Box# 4900 to 4999');
INSERT INTO `address_lookup` VALUES ('1231', 'PH', 'Manila', '1090', 'Manila CPO-PO Box# 5000 to 5099');
INSERT INTO `address_lookup` VALUES ('1232', 'PH', 'Manila', '1091', 'Manila CPO-PO Box# 5100 to 5199');
INSERT INTO `address_lookup` VALUES ('1233', 'PH', 'Manila', '1092', 'Manila CPO-PO Box# 5200 to 5299');
INSERT INTO `address_lookup` VALUES ('1234', 'PH', 'Manila', '1093', 'Manila CPO-PO Box# 5300 to 5399');
INSERT INTO `address_lookup` VALUES ('1235', 'PH', 'Manila', '1094', 'Manila CPO-PO Box# 5400 to 5499');
INSERT INTO `address_lookup` VALUES ('1236', 'PH', 'Manila', '1095', 'Manila CPO-PO Box# 5500 to 5599');
INSERT INTO `address_lookup` VALUES ('1237', 'PH', 'Manila', '1096', 'Manila CPO-PO Box# 5600 to 5699');
INSERT INTO `address_lookup` VALUES ('1238', 'PH', 'Marikina City', '1800', 'Marikina Central Post Office');
INSERT INTO `address_lookup` VALUES ('1239', 'PH', 'Marikina City', '1801', 'San Roque-Calumpang');
INSERT INTO `address_lookup` VALUES ('1240', 'PH', 'Marikina City', '1802', 'Industrial Valley');
INSERT INTO `address_lookup` VALUES ('1241', 'PH', 'Marikina City', '1803', 'Barangka and Tañong');
INSERT INTO `address_lookup` VALUES ('1242', 'PH', 'Marikina City', '1804', 'J. De La Peña');
INSERT INTO `address_lookup` VALUES ('1243', 'PH', 'Marikina City', '1805', 'Malanday');
INSERT INTO `address_lookup` VALUES ('1244', 'PH', 'Marikina City', '1806', 'Northern and Western Marikina River');
INSERT INTO `address_lookup` VALUES ('1245', 'PH', 'Marikina City', '1807', 'Concepcion tarlac');
INSERT INTO `address_lookup` VALUES ('1246', 'PH', 'Marikina City', '1808', 'Nangka');
INSERT INTO `address_lookup` VALUES ('1247', 'PH', 'Marikina City', '1809', 'Parang');
INSERT INTO `address_lookup` VALUES ('1248', 'PH', 'Marikina City', '1810', 'Marikina Heights');
INSERT INTO `address_lookup` VALUES ('1249', 'PH', 'Marikina City', '1811', 'Concepcion 2');
INSERT INTO `address_lookup` VALUES ('1250', 'PH', 'Marikina City', '1812-1819', 'Not used');
INSERT INTO `address_lookup` VALUES ('1251', 'PH', 'Marikina City', '1820', 'Bagong Nayon, Cupang, Mambagat, and Mayamot');
INSERT INTO `address_lookup` VALUES ('1252', 'PH', 'Muntinlupa City', '1770', 'Muntinlupa Central Post Office');
INSERT INTO `address_lookup` VALUES ('1253', 'PH', 'Muntinlupa City', '1771', 'Buli/Cupang');
INSERT INTO `address_lookup` VALUES ('1254', 'PH', 'Muntinlupa City', '1772', 'Bayanan/Putatan');
INSERT INTO `address_lookup` VALUES ('1255', 'PH', 'Muntinlupa City', '1772', 'Soldiers\' Hills');
INSERT INTO `address_lookup` VALUES ('1256', 'PH', 'Muntinlupa City', '1773', 'Tunasan');
INSERT INTO `address_lookup` VALUES ('1257', 'PH', 'Muntinlupa City', '1774', 'Susana Heights');
INSERT INTO `address_lookup` VALUES ('1258', 'PH', 'Muntinlupa City', '1775', 'Pearl Heights');
INSERT INTO `address_lookup` VALUES ('1259', 'PH', 'Muntinlupa City', '1776', 'Poblacion');
INSERT INTO `address_lookup` VALUES ('1260', 'PH', 'Muntinlupa City', '1777', 'Pleasant Village');
INSERT INTO `address_lookup` VALUES ('1261', 'PH', 'Muntinlupa City', '1780', 'Ayala Alabang Subdivision');
INSERT INTO `address_lookup` VALUES ('1262', 'PH', 'Muntinlupa City', '1799', 'Ayala Alabang P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1263', 'PH', 'Navotas City', '1411', 'Fish Market');
INSERT INTO `address_lookup` VALUES ('1264', 'PH', 'Navotas City', '1412', 'Isla de Cocomo');
INSERT INTO `address_lookup` VALUES ('1265', 'PH', 'Navotas City', '1413', 'Kapitbahayan [East]');
INSERT INTO `address_lookup` VALUES ('1266', 'PH', 'Navotas City', '1409', 'Kaunlaran Village');
INSERT INTO `address_lookup` VALUES ('1267', 'PH', 'Navotas City', '1485', 'Navotas');
INSERT INTO `address_lookup` VALUES ('1268', 'PH', 'Navotas City', '1489', 'Tangos');
INSERT INTO `address_lookup` VALUES ('1269', 'PH', 'Navotas City', '1490', 'Tanza');
INSERT INTO `address_lookup` VALUES ('1270', 'PH', 'Parañaque City', '1714', 'Aeropark Subdivision');
INSERT INTO `address_lookup` VALUES ('1271', 'PH', 'Parañaque City', '1702', 'Baclaran');
INSERT INTO `address_lookup` VALUES ('1272', 'PH', 'Parañaque City', '1711', 'Better Living Subdivision');
INSERT INTO `address_lookup` VALUES ('1273', 'PH', 'Parañaque City', '1720', 'BF Homes 1');
INSERT INTO `address_lookup` VALUES ('1274', 'PH', 'Parañaque City', '1718', 'BF Homes 2');
INSERT INTO `address_lookup` VALUES ('1275', 'PH', 'Parañaque City', '1375', 'Domestic Airport P.O. - P.O. Box Nos. 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1276', 'PH', 'Parañaque City', '1376', 'Domestic Airport P.O. - P.O. Box Nos. 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1277', 'PH', 'Parañaque City', '1377', 'Domestic Airport P.O. - P.O. Box Nos. 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1278', 'PH', 'Parañaque City', '1378', 'Domestic Airport P.O. - P.O. Box Nos. 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1279', 'PH', 'Parañaque City', '1379', 'Domestic Airport P.O. - P.O. Box Nos. 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1280', 'PH', 'Parañaque City', '1380', 'Domestic Airport P.O. - P.O. Box Nos. 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1281', 'PH', 'Parañaque City', '1381', 'Domestic Airport P.O. - P.O. Box Nos. 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1282', 'PH', 'Parañaque City', '1710', 'Executive Heights Subdivision');
INSERT INTO `address_lookup` VALUES ('1283', 'PH', 'Parañaque City', '1719', 'Ireneville Subdivision I & III');
INSERT INTO `address_lookup` VALUES ('1284', 'PH', 'Parañaque City', '1714', 'Ireneville Subdivision II');
INSERT INTO `address_lookup` VALUES ('1285', 'PH', 'Parañaque City', '1717', 'Manila Memorial Park');
INSERT INTO `address_lookup` VALUES ('1286', 'PH', 'Parañaque City', '1703', 'Marina Subdivision (Reclamation)');
INSERT INTO `address_lookup` VALUES ('1287', 'PH', 'Parañaque City', '1719', 'Maywood Village I');
INSERT INTO `address_lookup` VALUES ('1288', 'PH', 'Parañaque City', '1716', 'Maywood Village II');
INSERT INTO `address_lookup` VALUES ('1289', 'PH', 'Parañaque City', '1712', 'Miramar Subdivision');
INSERT INTO `address_lookup` VALUES ('1290', 'PH', 'Parañaque City', '1708', 'Multinational Village');
INSERT INTO `address_lookup` VALUES ('1291', 'PH', 'Parañaque City', '1705', 'Ninoy Aquino International Airport');
INSERT INTO `address_lookup` VALUES ('1292', 'PH', 'Parañaque City', '1700', 'Parañaque CPO');
INSERT INTO `address_lookup` VALUES ('1293', 'PH', 'Parañaque City', '1706', 'Pulo');
INSERT INTO `address_lookup` VALUES ('1294', 'PH', 'Parañaque City', '1715', 'San Antonio Valley 1');
INSERT INTO `address_lookup` VALUES ('1295', 'PH', 'Parañaque City', '1707', 'San Antonio Valley 11 & 12');
INSERT INTO `address_lookup` VALUES ('1296', 'PH', 'Parañaque City', '1704', 'Santo Niño');
INSERT INTO `address_lookup` VALUES ('1297', 'PH', 'Parañaque City', '1709', 'South Admiral Village, Merville Park & Moonwalk Subdivision');
INSERT INTO `address_lookup` VALUES ('1298', 'PH', 'Parañaque City', '1701', 'Tambo');
INSERT INTO `address_lookup` VALUES ('1299', 'PH', 'Parañaque City', '1713', 'United Parañaque Subdivision');
INSERT INTO `address_lookup` VALUES ('1300', 'PH', 'Pasay City', '1300', 'Pasay City Central Post Office');
INSERT INTO `address_lookup` VALUES ('1301', 'PH', 'Pasay City', '1301', 'Domestic Airport P.O.');
INSERT INTO `address_lookup` VALUES ('1302', 'PH', 'Pasay City', '1302', 'San Rafael');
INSERT INTO `address_lookup` VALUES ('1303', 'PH', 'Pasay City', '1303', 'San Roque');
INSERT INTO `address_lookup` VALUES ('1304', 'PH', 'Pasay City', '1304', 'Santa Clara');
INSERT INTO `address_lookup` VALUES ('1305', 'PH', 'Pasay City', '1305', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1306', 'PH', 'Pasay City', '1306', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('1307', 'PH', 'Pasay City', '1307', 'Philippine International Convention Center');
INSERT INTO `address_lookup` VALUES ('1308', 'PH', 'Pasay City', '1308', 'Bay City');
INSERT INTO `address_lookup` VALUES ('1309', 'PH', 'Pasay City', '1309', 'Villamor Airbase');
INSERT INTO `address_lookup` VALUES ('1310', 'PH', 'Pasay City', '1350', 'Pasay City CPO - P.O. Box Nos. 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1311', 'PH', 'Pasay City', '1351', 'Pasay City CPO - P.O. Box Nos. 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1312', 'PH', 'Pasay City', '1352', 'Pasay City CPO - P.O. Box Nos. 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1313', 'PH', 'Pasay City', '1353', 'Pasay City CPO - P.O. Box Nos. 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1314', 'PH', 'Pasay City', '1354', 'Pasay City CPO - P.O. Box Nos. 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1315', 'PH', 'Pasig City', '1600', 'Pasig Central Post Office');
INSERT INTO `address_lookup` VALUES ('1316', 'PH', 'Pasig City', '1601', 'San Joaquin');
INSERT INTO `address_lookup` VALUES ('1317', 'PH', 'Pasig City', '1602', 'Pinagbuhatan');
INSERT INTO `address_lookup` VALUES ('1318', 'PH', 'Pasig City', '1603', 'Kapitolyo');
INSERT INTO `address_lookup` VALUES ('1319', 'PH', 'Pasig City', '1604', 'Ugong');
INSERT INTO `address_lookup` VALUES ('1320', 'PH', 'Pasig City', '1605', 'Ortigas Post Office');
INSERT INTO `address_lookup` VALUES ('1321', 'PH', 'Pasig City', '1606', 'Caniogan');
INSERT INTO `address_lookup` VALUES ('1322', 'PH', 'Pasig City', '1607', 'Maybunga');
INSERT INTO `address_lookup` VALUES ('1323', 'PH', 'Pasig City', '1608', 'Santa Lucia');
INSERT INTO `address_lookup` VALUES ('1324', 'PH', 'Pasig City', '1609', 'Rosario');
INSERT INTO `address_lookup` VALUES ('1325', 'PH', 'Pasig City', '1610', 'Santolan');
INSERT INTO `address_lookup` VALUES ('1326', 'PH', 'Pasig City', '1611', 'Manggahan');
INSERT INTO `address_lookup` VALUES ('1327', 'PH', 'Pasig City', '1612', 'Green Park');
INSERT INTO `address_lookup` VALUES ('1328', 'PH', 'Pasig City', '1650', 'Pasig Ortigas CTR-PO Box# 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1329', 'PH', 'Pasig City', '1651', 'Pasig Ortigas CTR-PO Box# 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1330', 'PH', 'Pasig City', '1652', 'Pasig Ortigas CTR-PO Box# 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1331', 'PH', 'Pasig City', '1653', 'Pasig Ortigas CTR-PO Box# 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1332', 'PH', 'Pasig City', '1654', 'Pasig Ortigas CTR-PO Box# 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1333', 'PH', 'Pasig City', '1655', 'Pasig Ortigas CTR-PO Box# 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1334', 'PH', 'Pasig City', '1656', 'Pasig Ortigas CTR-PO Box# 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1335', 'PH', 'Pasig City', '1657', 'Pasig Ortigas CTR-PO Box# 1700 to 1799');
INSERT INTO `address_lookup` VALUES ('1336', 'PH', 'Pasig City', '1658', 'Pasig Ortigas CTR-PO Box# 1800 to 1899');
INSERT INTO `address_lookup` VALUES ('1337', 'PH', 'Pasig City', '1659', 'Pasig Ortigas CTR-PO Box# 1900 to 1999');
INSERT INTO `address_lookup` VALUES ('1338', 'PH', 'Pasig City', '1660', 'Pasig Ortigas CTR-PO Box# 2000 to 2099');
INSERT INTO `address_lookup` VALUES ('1339', 'PH', 'Pasig City', '1661', 'Pasig Ortigas CTR-PO Box# 2100 to 2199');
INSERT INTO `address_lookup` VALUES ('1340', 'PH', 'Pasig City', '1662', 'Pasig Ortigas CTR-PO Box# 2200 to 2299');
INSERT INTO `address_lookup` VALUES ('1341', 'PH', 'Pasig City', '1663', 'Pasig Ortigas CTR-PO Box# 2300 to 2399');
INSERT INTO `address_lookup` VALUES ('1342', 'PH', 'Pasig City', '1664', 'Pasig Ortigas CTR-PO Box# 2400 to 2499');
INSERT INTO `address_lookup` VALUES ('1343', 'PH', 'Pasig City', '1665', 'Pasig Ortigas CTR-PO Box# 2500 to 2599');
INSERT INTO `address_lookup` VALUES ('1344', 'PH', 'Pasig City', '1666', 'Pasig Ortigas CTR-PO Box# 2600 to 2699');
INSERT INTO `address_lookup` VALUES ('1345', 'PH', 'Pasig City', '1667', 'Pasig Ortigas CTR-PO Box# 2700 to 2799');
INSERT INTO `address_lookup` VALUES ('1346', 'PH', 'Pasig City', '1668', 'Pasig Ortigas CTR-PO Box# 2800 to 2899');
INSERT INTO `address_lookup` VALUES ('1347', 'PH', 'Pasig City', '1669', 'Pasig Ortigas CTR-PO Box# 2900 to 2999');
INSERT INTO `address_lookup` VALUES ('1348', 'PH', 'Pasig City', '1670', 'Pasig Ortigas CTR-PO Box# 3000 to 3099');
INSERT INTO `address_lookup` VALUES ('1349', 'PH', 'Pasig City', '1671', 'Pasig Ortigas CTR-PO Box# 3100 to 3199');
INSERT INTO `address_lookup` VALUES ('1350', 'PH', 'Pasig City', '1672', 'Pasig Ortigas CTR-PO Box# 3200 to 3299');
INSERT INTO `address_lookup` VALUES ('1351', 'PH', 'Pasig City', '1673', 'Pasig Ortigas CTR-PO Box# 3300 to 3399');
INSERT INTO `address_lookup` VALUES ('1352', 'PH', 'Pasig City', '1674', 'Pasig Ortigas CTR-PO Box# 3400 to 3499');
INSERT INTO `address_lookup` VALUES ('1353', 'PH', 'Pasig City', '1675', 'Pasig Ortigas CTR-PO Box# 3500 to 3599');
INSERT INTO `address_lookup` VALUES ('1354', 'PH', 'Pasig City', '1676', 'Pasig Ortigas CTR-PO Box# 3600 to 3699');
INSERT INTO `address_lookup` VALUES ('1355', 'PH', 'Pasig City', '1677', 'Pasig Ortigas CTR-PO Box# 3700 to 3799');
INSERT INTO `address_lookup` VALUES ('1356', 'PH', 'Pasig City', '1678', 'Pasig Ortigas CTR-PO Box# 3800 to 3899');
INSERT INTO `address_lookup` VALUES ('1357', 'PH', 'Pasig City', '1679', 'Pasig Ortigas CTR-PO Box# 3900 to 3999');
INSERT INTO `address_lookup` VALUES ('1358', 'PH', 'Pasig City', '1680', 'Pasig Ortigas CTR-PO Box# 4000 to 4099');
INSERT INTO `address_lookup` VALUES ('1359', 'PH', 'Pasig City', '1681', 'Pasig Ortigas CTR-PO Box# 4100 to 4199');
INSERT INTO `address_lookup` VALUES ('1360', 'PH', 'Pasig City', '1682', 'Pasig Ortigas CTR-PO Box# 4200 to 4299');
INSERT INTO `address_lookup` VALUES ('1361', 'PH', 'Pasig City', '1683', 'Pasig Ortigas CTR-PO Box# 4300 to 4399');
INSERT INTO `address_lookup` VALUES ('1362', 'PH', 'Pasig City', '1684', 'Pasig Ortigas CTR-PO Box# 4400 to 4499');
INSERT INTO `address_lookup` VALUES ('1363', 'PH', 'Pasig City', '1685', 'Pasig Ortigas CTR-PO Box# 4500 to 4599');
INSERT INTO `address_lookup` VALUES ('1364', 'PH', 'Pasig City', '1686', 'Pasig Ortigas CTR-PO Box# 4600 to 4699');
INSERT INTO `address_lookup` VALUES ('1365', 'PH', 'Pasig City', '1687', 'Pasig Ortigas CTR-PO Box# 4700 to 4799');
INSERT INTO `address_lookup` VALUES ('1366', 'PH', 'Pasig City', '1688', 'Pasig Ortigas CTR-PO Box# 4800 to 4899');
INSERT INTO `address_lookup` VALUES ('1367', 'PH', 'Pasig City', '1689', 'Pasig Ortigas CTR-PO Box# 4900 to 4999');
INSERT INTO `address_lookup` VALUES ('1368', 'PH', 'Pasig City', '1690', 'Pasig Ortigas CTR-PO Box# 5000 to 5099');
INSERT INTO `address_lookup` VALUES ('1369', 'PH', 'Pasig City', '1691', 'Pasig Ortigas CTR-PO Box# 5100 to 5199');
INSERT INTO `address_lookup` VALUES ('1370', 'PH', 'Pasig City', '1692', 'Pasig Ortigas CTR-PO Box# 5200 to 5299');
INSERT INTO `address_lookup` VALUES ('1371', 'PH', 'Pasig City', '1693', 'Pasig Ortigas CTR-PO Box# 5300 to 5399');
INSERT INTO `address_lookup` VALUES ('1372', 'PH', 'Pasig City', '1694', 'Pasig Ortigas CTR-PO Box# 5400 to 5499');
INSERT INTO `address_lookup` VALUES ('1373', 'PH', 'Pasig City', '1695', 'Pasig Ortigas CTR-PO Box# 5500 to 5599');
INSERT INTO `address_lookup` VALUES ('1374', 'PH', 'Pasig City', '1696', 'Pasig Ortigas CTR-PO Box# 5600 to 5699');
INSERT INTO `address_lookup` VALUES ('1375', 'PH', 'Pasig City', '1697', 'Pasig Ortigas CTR-PO Box# 5700 to 5799');
INSERT INTO `address_lookup` VALUES ('1376', 'PH', 'Pasig City', '1698', 'Pasig Ortigas CTR-PO Box# 5800 to 5899');
INSERT INTO `address_lookup` VALUES ('1377', 'PH', 'Pasig City', '1699', 'Pasig Ortigas CTR-PO Box# 5900 to 5999');
INSERT INTO `address_lookup` VALUES ('1378', 'PH', 'Pateros', '1620', 'Aguho');
INSERT INTO `address_lookup` VALUES ('1379', 'PH', 'Pateros', '1621', 'Santa Ana');
INSERT INTO `address_lookup` VALUES ('1380', 'PH', 'Quezon City', '1105', 'Alicia');
INSERT INTO `address_lookup` VALUES ('1381', 'PH', 'Quezon City', '1102', 'Amihan');
INSERT INTO `address_lookup` VALUES ('1382', 'PH', 'Quezon City', '1106', 'Apolonio Samson');
INSERT INTO `address_lookup` VALUES ('1383', 'PH', 'Quezon City', '810', 'Araneta Center');
INSERT INTO `address_lookup` VALUES ('1384', 'PH', 'Quezon City', '1135', 'Araneta Center P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1385', 'PH', 'Quezon City', '1106', 'Baesa');
INSERT INTO `address_lookup` VALUES ('1386', 'PH', 'Quezon City', '1116', 'Bagbag');
INSERT INTO `address_lookup` VALUES ('1387', 'PH', 'Quezon City', '1110', 'Bagong Bayan');
INSERT INTO `address_lookup` VALUES ('1388', 'PH', 'Quezon City', '1109', 'Bagong Buhay');
INSERT INTO `address_lookup` VALUES ('1389', 'PH', 'Quezon City', '1111', 'Bagong Lipunan');
INSERT INTO `address_lookup` VALUES ('1390', 'PH', 'Quezon City', '1105', 'Bagong Pag-Asa');
INSERT INTO `address_lookup` VALUES ('1391', 'PH', 'Quezon City', '1119', 'Bagong Silangan');
INSERT INTO `address_lookup` VALUES ('1392', 'PH', 'Quezon City', '1106', 'Bahay Toro');
INSERT INTO `address_lookup` VALUES ('1393', 'PH', 'Quezon City', '1115', 'Balingasa');
INSERT INTO `address_lookup` VALUES ('1394', 'PH', 'Quezon City', '1106', 'Balintawak');
INSERT INTO `address_lookup` VALUES ('1395', 'PH', 'Quezon City', '1106', 'Balumbato');
INSERT INTO `address_lookup` VALUES ('1396', 'PH', 'Quezon City', '1126', 'Batasan Hills');
INSERT INTO `address_lookup` VALUES ('1397', 'PH', 'Quezon City', '1109', 'Bayanihan');
INSERT INTO `address_lookup` VALUES ('1398', 'PH', 'Quezon City', '1120', 'BF Homes');
INSERT INTO `address_lookup` VALUES ('1399', 'PH', 'Quezon City', '1109', 'Blue Ridge');
INSERT INTO `address_lookup` VALUES ('1400', 'PH', 'Quezon City', '1101', 'Botocan');
INSERT INTO `address_lookup` VALUES ('1401', 'PH', 'Quezon City', '1141', 'Broadway Center P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1402', 'PH', 'Quezon City', '1105', 'Bungad');
INSERT INTO `address_lookup` VALUES ('1403', 'PH', 'Quezon City', '820', 'Bureau of Internal Revenue');
INSERT INTO `address_lookup` VALUES ('1404', 'PH', 'Quezon City', '1110', 'Camp Aguinaldo');
INSERT INTO `address_lookup` VALUES ('1405', 'PH', 'Quezon City', '802', 'Camp Aguinaldo');
INSERT INTO `address_lookup` VALUES ('1406', 'PH', 'Quezon City', '801', 'Camp Crame');
INSERT INTO `address_lookup` VALUES ('1407', 'PH', 'Quezon City', '1126', 'Capitol Hills/Park');
INSERT INTO `address_lookup` VALUES ('1408', 'PH', 'Quezon City', '1117', 'Capri');
INSERT INTO `address_lookup` VALUES ('1409', 'PH', 'Quezon City', '1100', 'Central');
INSERT INTO `address_lookup` VALUES ('1410', 'PH', 'Quezon City', '1102', 'Claro');
INSERT INTO `address_lookup` VALUES ('1411', 'PH', 'Quezon City', '880', 'Commission on Audit');
INSERT INTO `address_lookup` VALUES ('1412', 'PH', 'Quezon City', '1121', 'Commonwealth');
INSERT INTO `address_lookup` VALUES ('1413', 'PH', 'Quezon City', '1111', 'Crame');
INSERT INTO `address_lookup` VALUES ('1414', 'PH', 'Quezon City', '1109', 'Cubao');
INSERT INTO `address_lookup` VALUES ('1415', 'PH', 'Quezon City', '1128', 'Culiat');
INSERT INTO `address_lookup` VALUES ('1416', 'PH', 'Quezon City', '1115', 'Damar');
INSERT INTO `address_lookup` VALUES ('1417', 'PH', 'Quezon City', '1104', 'Damayan');
INSERT INTO `address_lookup` VALUES ('1418', 'PH', 'Quezon City', '1112', 'Damayan Lagi');
INSERT INTO `address_lookup` VALUES ('1419', 'PH', 'Quezon City', '1123', 'Damong Maliit');
INSERT INTO `address_lookup` VALUES ('1420', 'PH', 'Quezon City', '1105', 'Del Monte');
INSERT INTO `address_lookup` VALUES ('1421', 'PH', 'Quezon City', '1104', 'Diliman');
INSERT INTO `address_lookup` VALUES ('1422', 'PH', 'Quezon City', '1109', 'Dioquino Zobel');
INSERT INTO `address_lookup` VALUES ('1423', 'PH', 'Quezon City', '1113', 'Don Manuel');
INSERT INTO `address_lookup` VALUES ('1424', 'PH', 'Quezon City', '1113', 'Doña Aurora');
INSERT INTO `address_lookup` VALUES ('1425', 'PH', 'Quezon City', '1125', 'Doña Faustina Subdivision');
INSERT INTO `address_lookup` VALUES ('1426', 'PH', 'Quezon City', '1113', 'Doña Imelda');
INSERT INTO `address_lookup` VALUES ('1427', 'PH', 'Quezon City', '1113', 'Doña Josefa');
INSERT INTO `address_lookup` VALUES ('1428', 'PH', 'Quezon City', '1102', 'Duyan-Duyan');
INSERT INTO `address_lookup` VALUES ('1429', 'PH', 'Quezon City', '1102', 'E. Rodriguez');
INSERT INTO `address_lookup` VALUES ('1430', 'PH', 'Quezon City', '1109', 'Escopa');
INSERT INTO `address_lookup` VALUES ('1431', 'PH', 'Quezon City', '1118', 'Fairview');
INSERT INTO `address_lookup` VALUES ('1432', 'PH', 'Quezon City', '1121', 'Fairview [North]');
INSERT INTO `address_lookup` VALUES ('1433', 'PH', 'Quezon City', '1122', 'Fairview [South]');
INSERT INTO `address_lookup` VALUES ('1434', 'PH', 'Quezon City', '1114', 'Gintong Silahis');
INSERT INTO `address_lookup` VALUES ('1435', 'PH', 'Quezon City', '1117', 'Gulod');
INSERT INTO `address_lookup` VALUES ('1436', 'PH', 'Quezon City', '1127', 'Holy Spirit');
INSERT INTO `address_lookup` VALUES ('1437', 'PH', 'Quezon City', '1112', 'Horseshoe');
INSERT INTO `address_lookup` VALUES ('1438', 'PH', 'Quezon City', '1111', 'Immaculate Concepcion');
INSERT INTO `address_lookup` VALUES ('1439', 'PH', 'Quezon City', '1124', 'Kaligayahan');
INSERT INTO `address_lookup` VALUES ('1440', 'PH', 'Quezon City', '1112', 'Kalusugan');
INSERT INTO `address_lookup` VALUES ('1441', 'PH', 'Quezon City', '1102', 'Kamias');
INSERT INTO `address_lookup` VALUES ('1442', 'PH', 'Quezon City', '1103', 'Kamuning');
INSERT INTO `address_lookup` VALUES ('1443', 'PH', 'Quezon City', '1105', 'Katipunan');
INSERT INTO `address_lookup` VALUES ('1444', 'PH', 'Quezon City', '1111', 'Kaunlaran');
INSERT INTO `address_lookup` VALUES ('1445', 'PH', 'Quezon City', '1112', 'Kristong Hari');
INSERT INTO `address_lookup` VALUES ('1446', 'PH', 'Quezon City', '1101', 'Krus na Ligas');
INSERT INTO `address_lookup` VALUES ('1447', 'PH', 'Quezon City', '1114', 'La Loma');
INSERT INTO `address_lookup` VALUES ('1448', 'PH', 'Quezon City', '1103', 'Laging Handa');
INSERT INTO `address_lookup` VALUES ('1449', 'PH', 'Quezon City', '1110', 'Libis');
INSERT INTO `address_lookup` VALUES ('1450', 'PH', 'Quezon City', '1114', 'Lourdes');
INSERT INTO `address_lookup` VALUES ('1451', 'PH', 'Quezon City', '1108', 'Loyola Heights');
INSERT INTO `address_lookup` VALUES ('1452', 'PH', 'Quezon City', '1114', 'Maharlika');
INSERT INTO `address_lookup` VALUES ('1453', 'PH', 'Quezon City', '1101', 'Malaya');
INSERT INTO `address_lookup` VALUES ('1454', 'PH', 'Quezon City', '1109', 'Mangga');
INSERT INTO `address_lookup` VALUES ('1455', 'PH', 'Quezon City', '1115', 'Manresa');
INSERT INTO `address_lookup` VALUES ('1456', 'PH', 'Quezon City', '1112', 'Mariana');
INSERT INTO `address_lookup` VALUES ('1457', 'PH', 'Quezon City', '1104', 'Mariblo');
INSERT INTO `address_lookup` VALUES ('1458', 'PH', 'Quezon City', '1109', 'Marilag');
INSERT INTO `address_lookup` VALUES ('1459', 'PH', 'Quezon City', '1109', 'Masagana');
INSERT INTO `address_lookup` VALUES ('1460', 'PH', 'Quezon City', '1115', 'Masambong');
INSERT INTO `address_lookup` VALUES ('1461', 'PH', 'Quezon City', '1114', 'Matalahib');
INSERT INTO `address_lookup` VALUES ('1462', 'PH', 'Quezon City', '1119', 'Matandang Balara');
INSERT INTO `address_lookup` VALUES ('1463', 'PH', 'Quezon City', '1109', 'Milagrosa');
INSERT INTO `address_lookup` VALUES ('1464', 'PH', 'Quezon City', '1138', 'Murphy District P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1465', 'PH', 'Quezon City', '1125', 'Nagkaisang Nayon');
INSERT INTO `address_lookup` VALUES ('1466', 'PH', 'Quezon City', '830', 'National Irrigation Administration');
INSERT INTO `address_lookup` VALUES ('1467', 'PH', 'Quezon City', '1104', 'Nayon Kaunlaran');
INSERT INTO `address_lookup` VALUES ('1468', 'PH', 'Quezon City', '1107', 'New Era');
INSERT INTO `address_lookup` VALUES ('1469', 'PH', 'Quezon City', '1147', 'Novaliches P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1470', 'PH', 'Quezon City', '1123', 'Novaliches Proper');
INSERT INTO `address_lookup` VALUES ('1471', 'PH', 'Quezon City', '1103', 'Obrero');
INSERT INTO `address_lookup` VALUES ('1472', 'PH', 'Quezon City', '1101', 'Old Capitol Site');
INSERT INTO `address_lookup` VALUES ('1473', 'PH', 'Quezon City', '1114', 'Paang Bundok');
INSERT INTO `address_lookup` VALUES ('1474', 'PH', 'Quezon City', '1115', 'Pag-Ibig sa Nayon');
INSERT INTO `address_lookup` VALUES ('1475', 'PH', 'Quezon City', '1103', 'Paligsahan');
INSERT INTO `address_lookup` VALUES ('1476', 'PH', 'Quezon City', '1105', 'Paltok');
INSERT INTO `address_lookup` VALUES ('1477', 'PH', 'Quezon City', '1108', 'Pansol');
INSERT INTO `address_lookup` VALUES ('1478', 'PH', 'Quezon City', '1104', 'Paraiso');
INSERT INTO `address_lookup` VALUES ('1479', 'PH', 'Quezon City', '1118', 'Pasong Putik');
INSERT INTO `address_lookup` VALUES ('1480', 'PH', 'Quezon City', '1107', 'Pasong Tamo');
INSERT INTO `address_lookup` VALUES ('1481', 'PH', 'Quezon City', '1119', 'Payatas');
INSERT INTO `address_lookup` VALUES ('1482', 'PH', 'Quezon City', '1104', 'Phil-Am');
INSERT INTO `address_lookup` VALUES ('1483', 'PH', 'Quezon City', '850', 'Philippine Heart Center');
INSERT INTO `address_lookup` VALUES ('1484', 'PH', 'Quezon City', '1111', 'Pinagkaisahan');
INSERT INTO `address_lookup` VALUES ('1485', 'PH', 'Quezon City', '1100', 'Piñahan');
INSERT INTO `address_lookup` VALUES ('1486', 'PH', 'Quezon City', '1109', 'Project 4');
INSERT INTO `address_lookup` VALUES ('1487', 'PH', 'Quezon City', '1100', 'Project 6');
INSERT INTO `address_lookup` VALUES ('1488', 'PH', 'Quezon City', '1105', 'Project 7');
INSERT INTO `address_lookup` VALUES ('1489', 'PH', 'Quezon City', '1106', 'Project 8');
INSERT INTO `address_lookup` VALUES ('1490', 'PH', 'Quezon City', '1100', 'Quezon City CPO');
INSERT INTO `address_lookup` VALUES ('1491', 'PH', 'Quezon City', '1150', 'Quezon City CPO - P.O. Box Nos. 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1492', 'PH', 'Quezon City', '1151', 'Quezon City CPO - P.O. Box Nos. 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1493', 'PH', 'Quezon City', '1152', 'Quezon City CPO - P.O. Box Nos. 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1494', 'PH', 'Quezon City', '1153', 'Quezon City CPO - P.O. Box Nos. 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1495', 'PH', 'Quezon City', '1154', 'Quezon City CPO - P.O. Box Nos. 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1496', 'PH', 'Quezon City', '1155', 'Quezon City CPO - P.O. Box Nos. 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1497', 'PH', 'Quezon City', '1156', 'Quezon City CPO - P.O. Box Nos. 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1498', 'PH', 'Quezon City', '1157', 'Quezon City CPO - P.O. Box Nos. 1700 to 1799');
INSERT INTO `address_lookup` VALUES ('1499', 'PH', 'Quezon City', '1158', 'Quezon City CPO - P.O. Box Nos. 1800 to 1899');
INSERT INTO `address_lookup` VALUES ('1500', 'PH', 'Quezon City', '1159', 'Quezon City CPO - P.O. Box Nos. 1900 to 1999');
INSERT INTO `address_lookup` VALUES ('1501', 'PH', 'Quezon City', '1160', 'Quezon City CPO - P.O. Box Nos. 2000 to 2099');
INSERT INTO `address_lookup` VALUES ('1502', 'PH', 'Quezon City', '1161', 'Quezon City CPO - P.O. Box Nos. 2100 to 2199');
INSERT INTO `address_lookup` VALUES ('1503', 'PH', 'Quezon City', '1162', 'Quezon City CPO - P.O. Box Nos. 2200 to 2299');
INSERT INTO `address_lookup` VALUES ('1504', 'PH', 'Quezon City', '1163', 'Quezon City CPO - P.O. Box Nos. 2300 to 2399');
INSERT INTO `address_lookup` VALUES ('1505', 'PH', 'Quezon City', '1164', 'Quezon City CPO - P.O. Box Nos. 2400 to 2499');
INSERT INTO `address_lookup` VALUES ('1506', 'PH', 'Quezon City', '1165', 'Quezon City CPO - P.O. Box Nos. 2500 to 2599');
INSERT INTO `address_lookup` VALUES ('1507', 'PH', 'Quezon City', '1166', 'Quezon City CPO - P.O. Box Nos. 2600 to 2699');
INSERT INTO `address_lookup` VALUES ('1508', 'PH', 'Quezon City', '1167', 'Quezon City CPO - P.O. Box Nos. 2700 to 2799');
INSERT INTO `address_lookup` VALUES ('1509', 'PH', 'Quezon City', '1168', 'Quezon City CPO - P.O. Box Nos. 2800 to 2899');
INSERT INTO `address_lookup` VALUES ('1510', 'PH', 'Quezon City', '1169', 'Quezon City CPO - P.O. Box Nos. 2900 to 2999');
INSERT INTO `address_lookup` VALUES ('1511', 'PH', 'Quezon City', '1170', 'Quezon City CPO - P.O. Box Nos. 3000 to 3099');
INSERT INTO `address_lookup` VALUES ('1512', 'PH', 'Quezon City', '1171', 'Quezon City CPO - P.O. Box Nos. 3100 to 3199');
INSERT INTO `address_lookup` VALUES ('1513', 'PH', 'Quezon City', '1172', 'Quezon City CPO - P.O. Box Nos. 3200 to 3299');
INSERT INTO `address_lookup` VALUES ('1514', 'PH', 'Quezon City', '1173', 'Quezon City CPO - P.O. Box Nos. 3300 to 3399');
INSERT INTO `address_lookup` VALUES ('1515', 'PH', 'Quezon City', '1174', 'Quezon City CPO - P.O. Box Nos. 3400 to 3499');
INSERT INTO `address_lookup` VALUES ('1516', 'PH', 'Quezon City', '1175', 'Quezon City CPO - P.O. Box Nos. 3500 to 3599');
INSERT INTO `address_lookup` VALUES ('1517', 'PH', 'Quezon City', '1176', 'Quezon City CPO - P.O. Box Nos. 3600 to 3699');
INSERT INTO `address_lookup` VALUES ('1518', 'PH', 'Quezon City', '1177', 'Quezon City CPO - P.O. Box Nos. 3700 to 3799');
INSERT INTO `address_lookup` VALUES ('1519', 'PH', 'Quezon City', '860', 'Quezon City Hall');
INSERT INTO `address_lookup` VALUES ('1520', 'PH', 'Quezon City', '1102', 'Quirino District (Project 2 & 3)');
INSERT INTO `address_lookup` VALUES ('1521', 'PH', 'Quezon City', '1105', 'R. Magsaysay');
INSERT INTO `address_lookup` VALUES ('1522', 'PH', 'Quezon City', '1103', 'Roxas District');
INSERT INTO `address_lookup` VALUES ('1523', 'PH', 'Quezon City', '1103', 'Sacred Heart');
INSERT INTO `address_lookup` VALUES ('1524', 'PH', 'Quezon City', '1114', 'Salvacion');
INSERT INTO `address_lookup` VALUES ('1525', 'PH', 'Quezon City', '1117', 'San Agustin');
INSERT INTO `address_lookup` VALUES ('1526', 'PH', 'Quezon City', '1105', 'San Antonio, Quezon City');
INSERT INTO `address_lookup` VALUES ('1527', 'PH', 'Quezon City', '1116', 'San Bartolome');
INSERT INTO `address_lookup` VALUES ('1528', 'PH', 'Quezon City', '1113', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('1529', 'PH', 'Quezon City', '1114', 'San Isidro Labrador');
INSERT INTO `address_lookup` VALUES ('1530', 'PH', 'Quezon City', '1115', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1531', 'PH', 'Quezon City', '1109', 'San Roque');
INSERT INTO `address_lookup` VALUES ('1532', 'PH', 'Quezon City', '1101', 'San Vicente');
INSERT INTO `address_lookup` VALUES ('1533', 'PH', 'Quezon City', '1116', 'Sangandaan');
INSERT INTO `address_lookup` VALUES ('1534', 'PH', 'Quezon City', '1104', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('1535', 'PH', 'Quezon City', '1117', 'Santa Lucia');
INSERT INTO `address_lookup` VALUES ('1536', 'PH', 'Quezon City', '1117', 'Santa Monica');
INSERT INTO `address_lookup` VALUES ('1537', 'PH', 'Quezon City', '1114', 'Santa Teresita');
INSERT INTO `address_lookup` VALUES ('1538', 'PH', 'Quezon City', '1105', 'Santo Cristo');
INSERT INTO `address_lookup` VALUES ('1539', 'PH', 'Quezon City', '1113', 'Santo Niño');
INSERT INTO `address_lookup` VALUES ('1540', 'PH', 'Quezon City', '1113', 'Santol');
INSERT INTO `address_lookup` VALUES ('1541', 'PH', 'Quezon City', '1116', 'Sauyo');
INSERT INTO `address_lookup` VALUES ('1542', 'PH', 'Quezon City', '1114', 'Sienna');
INSERT INTO `address_lookup` VALUES ('1543', 'PH', 'Quezon City', '1101', 'Sikatuna Village');
INSERT INTO `address_lookup` VALUES ('1544', 'PH', 'Quezon City', '1102', 'Silangan');
INSERT INTO `address_lookup` VALUES ('1545', 'PH', 'Quezon City', '800', 'Social Security System');
INSERT INTO `address_lookup` VALUES ('1546', 'PH', 'Quezon City', '1109', 'Socorro');
INSERT INTO `address_lookup` VALUES ('1547', 'PH', 'Quezon City', '1103', 'South Triangle');
INSERT INTO `address_lookup` VALUES ('1548', 'PH', 'Quezon City', '1110', 'St. Ignatius');
INSERT INTO `address_lookup` VALUES ('1549', 'PH', 'Quezon City', '1111', 'St. Martin de Porres');
INSERT INTO `address_lookup` VALUES ('1550', 'PH', 'Quezon City', '1114', 'St. Peter');
INSERT INTO `address_lookup` VALUES ('1551', 'PH', 'Quezon City', '1109', 'Tagumpay');
INSERT INTO `address_lookup` VALUES ('1552', 'PH', 'Quezon City', '1110', 'Talampas');
INSERT INTO `address_lookup` VALUES ('1553', 'PH', 'Quezon City', '1104', 'Talayan');
INSERT INTO `address_lookup` VALUES ('1554', 'PH', 'Quezon City', '1116', 'Talipapa');
INSERT INTO `address_lookup` VALUES ('1555', 'PH', 'Quezon City', '1116', 'Tandang Sora');
INSERT INTO `address_lookup` VALUES ('1556', 'PH', 'Quezon City', '1113', 'Tatalon');
INSERT INTO `address_lookup` VALUES ('1557', 'PH', 'Quezon City', '1101', 'Teachers Village');
INSERT INTO `address_lookup` VALUES ('1558', 'PH', 'Quezon City', '1110', 'Ugong Norte');
INSERT INTO `address_lookup` VALUES ('1559', 'PH', 'Quezon City', '1106', 'Unang Sigaw');
INSERT INTO `address_lookup` VALUES ('1560', 'PH', 'Quezon City', '1101', 'University of the Philippines Post Office');
INSERT INTO `address_lookup` VALUES ('1561', 'PH', 'Quezon City', '1144', 'University of the Philippines P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1562', 'PH', 'Quezon City', '1101', 'University of the Philippines Village');
INSERT INTO `address_lookup` VALUES ('1563', 'PH', 'Quezon City', '840', 'V. Luna Hospital');
INSERT INTO `address_lookup` VALUES ('1564', 'PH', 'Quezon City', '1112', 'Valencia');
INSERT INTO `address_lookup` VALUES ('1565', 'PH', 'Quezon City', '1128', 'Vasra');
INSERT INTO `address_lookup` VALUES ('1566', 'PH', 'Quezon City', '870', 'Veterans Hospital');
INSERT INTO `address_lookup` VALUES ('1567', 'PH', 'Quezon City', '1105', 'Veterans Village');
INSERT INTO `address_lookup` VALUES ('1568', 'PH', 'Quezon City', '1109', 'Villa Maria Clara');
INSERT INTO `address_lookup` VALUES ('1569', 'PH', 'Quezon City', '1120', 'Violago Homes');
INSERT INTO `address_lookup` VALUES ('1570', 'PH', 'Quezon City', '1104', 'West Triangle');
INSERT INTO `address_lookup` VALUES ('1571', 'PH', 'Quezon City', '1110', 'White Plains');
INSERT INTO `address_lookup` VALUES ('1572', 'PH', 'San Juan City', '1504', 'Eisenhower - Crame');
INSERT INTO `address_lookup` VALUES ('1573', 'PH', 'San Juan City', '1502', 'Greenhills Post Office');
INSERT INTO `address_lookup` VALUES ('1574', 'PH', 'San Juan City', '1503', 'Greenhills [North]');
INSERT INTO `address_lookup` VALUES ('1575', 'PH', 'San Juan City', '1500', 'San Juan Central Post Office');
INSERT INTO `address_lookup` VALUES ('1576', 'PH', 'San Juan City', '400', 'International Correspondence School');
INSERT INTO `address_lookup` VALUES ('1577', 'PH', 'San Juan City', '401', 'Asian Development Bank');
INSERT INTO `address_lookup` VALUES ('1578', 'PH', 'San Juan City', '410', 'Radio Bible Class');
INSERT INTO `address_lookup` VALUES ('1579', 'PH', 'San Juan City', '420', 'Bible School on the Air');
INSERT INTO `address_lookup` VALUES ('1580', 'PH', 'San Juan City', '1530', 'Greenhills P.O. Box Nos. 1000 to 1099');
INSERT INTO `address_lookup` VALUES ('1581', 'PH', 'San Juan City', '1531', 'Greenhills P.O. Box Nos. 1100 to 1199');
INSERT INTO `address_lookup` VALUES ('1582', 'PH', 'San Juan City', '1532', 'Greenhills P.O. Box Nos. 1200 to 1299');
INSERT INTO `address_lookup` VALUES ('1583', 'PH', 'San Juan City', '1533', 'Greenhills P.O. Box Nos. 1300 to 1399');
INSERT INTO `address_lookup` VALUES ('1584', 'PH', 'San Juan City', '1534', 'Greenhills P.O. Box Nos. 1400 to 1499');
INSERT INTO `address_lookup` VALUES ('1585', 'PH', 'San Juan City', '1535', 'Greenhills P.O. Box Nos. 1500 to 1599');
INSERT INTO `address_lookup` VALUES ('1586', 'PH', 'San Juan City', '1536', 'Greenhills P.O. Box Nos. 1600 to 1699');
INSERT INTO `address_lookup` VALUES ('1587', 'PH', 'Taguig City', '1636', 'Bay Breeze Executive Village');
INSERT INTO `address_lookup` VALUES ('1588', 'PH', 'Taguig City', '1631', 'Bicutan');
INSERT INTO `address_lookup` VALUES ('1589', 'PH', 'Taguig City', '1632', 'ususan');
INSERT INTO `address_lookup` VALUES ('1590', 'PH', 'Taguig City', '1633', 'Upper Bicutan');
INSERT INTO `address_lookup` VALUES ('1591', 'PH', 'Taguig City', '1630', 'Western Bicutan (including Food Terminal, Inc. complex)');
INSERT INTO `address_lookup` VALUES ('1592', 'PH', 'Taguig City', '1638', 'Ligid');
INSERT INTO `address_lookup` VALUES ('1593', 'PH', 'Taguig City', '1634', 'Nichols - McKinley');
INSERT INTO `address_lookup` VALUES ('1594', 'PH', 'Taguig City', '1637', 'Tuktukan');
INSERT INTO `address_lookup` VALUES ('1595', 'PH', 'Valenzuela City', '1444', 'Arkong Bato');
INSERT INTO `address_lookup` VALUES ('1596', 'PH', 'Valenzuela City', '1445', 'Balangkas - Caloong');
INSERT INTO `address_lookup` VALUES ('1597', 'PH', 'Valenzuela City', '1443', 'Dalandanan - West Canumay');
INSERT INTO `address_lookup` VALUES ('1598', 'PH', 'Valenzuela City', '1447', 'East Canumay - Lawang Bato Punturin');
INSERT INTO `address_lookup` VALUES ('1599', 'PH', 'Valenzuela City', '1442', 'Fortune Village');
INSERT INTO `address_lookup` VALUES ('1600', 'PH', 'Valenzuela City', '1442', 'General T. de Leon');
INSERT INTO `address_lookup` VALUES ('1601', 'PH', 'Valenzuela City', '1441', 'Karuhatan');
INSERT INTO `address_lookup` VALUES ('1602', 'PH', 'Valenzuela City', '1446', 'Lingunan');
INSERT INTO `address_lookup` VALUES ('1603', 'PH', 'Valenzuela City', '1444', 'Mabolo');
INSERT INTO `address_lookup` VALUES ('1604', 'PH', 'Valenzuela City', '1444', 'Malanday');
INSERT INTO `address_lookup` VALUES ('1605', 'PH', 'Valenzuela City', '1448', 'Mapulang Lupa');
INSERT INTO `address_lookup` VALUES ('1606', 'PH', 'Valenzuela City', '1442', 'Paso de Blas');
INSERT INTO `address_lookup` VALUES ('1607', 'PH', 'Valenzuela City', '1444', 'Pasolo');
INSERT INTO `address_lookup` VALUES ('1608', 'PH', 'Valenzuela City', '1444', 'Polo');
INSERT INTO `address_lookup` VALUES ('1609', 'PH', 'Valenzuela City', '1444', 'Rincon');
INSERT INTO `address_lookup` VALUES ('1610', 'PH', 'Valenzuela City', '1440', 'Valenzuela Central Post Office - Malinta');
INSERT INTO `address_lookup` VALUES ('1611', 'PH', 'Valenzuela City', '1469', 'Valenzuela P.O. Boxes');
INSERT INTO `address_lookup` VALUES ('1612', 'PH', 'Valenzuela City', '560', 'Far East Broadcasting Corporation');
INSERT INTO `address_lookup` VALUES ('1613', 'PH', 'Valenzuela City', '550', 'Febias College of Bible');
INSERT INTO `address_lookup` VALUES ('1614', 'PH', 'Misamis Occidental', '7206', 'Aloran');
INSERT INTO `address_lookup` VALUES ('1615', 'PH', 'Misamis Occidental', '7211', 'Baliangao');
INSERT INTO `address_lookup` VALUES ('1616', 'PH', 'Misamis Occidental', '7215', 'Bonifacio');
INSERT INTO `address_lookup` VALUES ('1617', 'PH', 'Misamis Occidental', '7210', 'Calamba');
INSERT INTO `address_lookup` VALUES ('1618', 'PH', 'Misamis Occidental', '7201', 'Clarin');
INSERT INTO `address_lookup` VALUES ('1619', 'PH', 'Misamis Occidental', '7213', 'Concepcion');
INSERT INTO `address_lookup` VALUES ('1620', 'PH', 'Misamis Occidental', '7204', 'Jimenez');
INSERT INTO `address_lookup` VALUES ('1621', 'PH', 'Misamis Occidental', '7208', 'Lopez Jaena');
INSERT INTO `address_lookup` VALUES ('1622', 'PH', 'Misamis Occidental', '7207', 'Oroquieta City');
INSERT INTO `address_lookup` VALUES ('1623', 'PH', 'Misamis Occidental', '7200', 'Ozamis City');
INSERT INTO `address_lookup` VALUES ('1624', 'PH', 'Misamis Occidental', '7205', 'Panaon');
INSERT INTO `address_lookup` VALUES ('1625', 'PH', 'Misamis Occidental', '7209', 'Plaridel');
INSERT INTO `address_lookup` VALUES ('1626', 'PH', 'Misamis Occidental', '7212', 'Sapang Dalaga');
INSERT INTO `address_lookup` VALUES ('1627', 'PH', 'Misamis Occidental', '7203', 'Sinacaban');
INSERT INTO `address_lookup` VALUES ('1628', 'PH', 'Misamis Occidental', '7214', 'Tangub City');
INSERT INTO `address_lookup` VALUES ('1629', 'PH', 'Misamis Occidental', '7202', 'Tudela');
INSERT INTO `address_lookup` VALUES ('1630', 'PH', 'Misamis Oriental', '9018', 'Alubijid');
INSERT INTO `address_lookup` VALUES ('1631', 'PH', 'Misamis Oriental', '9005', 'Balingasag');
INSERT INTO `address_lookup` VALUES ('1632', 'PH', 'Misamis Oriental', '9011', 'Balinguan');
INSERT INTO `address_lookup` VALUES ('1633', 'PH', 'Misamis Oriental', '9008', 'Binuangan');
INSERT INTO `address_lookup` VALUES ('1634', 'PH', 'Misamis Oriental', '9000', 'Cagayan de Oro City');
INSERT INTO `address_lookup` VALUES ('1635', 'PH', 'Misamis Oriental', '9004', 'Claveria');
INSERT INTO `address_lookup` VALUES ('1636', 'PH', 'Misamis Oriental', '9017', 'El Salvador');
INSERT INTO `address_lookup` VALUES ('1637', 'PH', 'Misamis Oriental', '9014', 'Gingoog City');
INSERT INTO `address_lookup` VALUES ('1638', 'PH', 'Misamis Oriental', '9020', 'Gitagum');
INSERT INTO `address_lookup` VALUES ('1639', 'PH', 'Misamis Oriental', '9022', 'Initao');
INSERT INTO `address_lookup` VALUES ('1640', 'PH', 'Misamis Oriental', '9003', 'Jasaan');
INSERT INTO `address_lookup` VALUES ('1641', 'PH', 'Misamis Oriental', '9010', 'Kinogitan');
INSERT INTO `address_lookup` VALUES ('1642', 'PH', 'Misamis Oriental', '9006', 'Lagonglong');
INSERT INTO `address_lookup` VALUES ('1643', 'PH', 'Misamis Oriental', '9019', 'Laguindingan');
INSERT INTO `address_lookup` VALUES ('1644', 'PH', 'Misamis Oriental', '9021', 'Libertad');
INSERT INTO `address_lookup` VALUES ('1645', 'PH', 'Misamis Oriental', '9025', 'Lugait');
INSERT INTO `address_lookup` VALUES ('1646', 'PH', 'Misamis Oriental', '9015', 'Magsaysay');
INSERT INTO `address_lookup` VALUES ('1647', 'PH', 'Misamis Oriental', '9024', 'Manticao');
INSERT INTO `address_lookup` VALUES ('1648', 'PH', 'Misamis Oriental', '9013', 'Medina');
INSERT INTO `address_lookup` VALUES ('1649', 'PH', 'Misamis Oriental', '9023', 'Naawan');
INSERT INTO `address_lookup` VALUES ('1650', 'PH', 'Misamis Oriental', '9016', 'Opol');
INSERT INTO `address_lookup` VALUES ('1651', 'PH', 'Misamis Oriental', '9007', 'Salay');
INSERT INTO `address_lookup` VALUES ('1652', 'PH', 'Misamis Oriental', '9009', 'Sugbungcogon');
INSERT INTO `address_lookup` VALUES ('1653', 'PH', 'Misamis Oriental', '9001', 'Tagoloan');
INSERT INTO `address_lookup` VALUES ('1654', 'PH', 'Misamis Oriental', '9012', 'Talisayan');
INSERT INTO `address_lookup` VALUES ('1655', 'PH', 'Misamis Oriental', '9002', 'Villanueva');
INSERT INTO `address_lookup` VALUES ('1656', 'PH', 'Mountain Province', '2623', 'Barlig');
INSERT INTO `address_lookup` VALUES ('1657', 'PH', 'Mountain Province', '2621', 'Bauko');
INSERT INTO `address_lookup` VALUES ('1658', 'PH', 'Mountain Province', '2618', 'Besao');
INSERT INTO `address_lookup` VALUES ('1659', 'PH', 'Mountain Province', '2616', 'Bontoc');
INSERT INTO `address_lookup` VALUES ('1660', 'PH', 'Mountain Province', '2624', 'Natonin');
INSERT INTO `address_lookup` VALUES ('1661', 'PH', 'Mountain Province', '2625', 'Paracelis');
INSERT INTO `address_lookup` VALUES ('1662', 'PH', 'Mountain Province', '2622', 'Sabangan');
INSERT INTO `address_lookup` VALUES ('1663', 'PH', 'Mountain Province', '2617', 'Sadanga');
INSERT INTO `address_lookup` VALUES ('1664', 'PH', 'Mountain Province', '2619', 'Sagada');
INSERT INTO `address_lookup` VALUES ('1665', 'PH', 'Mountain Province', '2620', 'Tadian');
INSERT INTO `address_lookup` VALUES ('1666', 'PH', 'Negros Occidental', '6100', 'Bacolod City');
INSERT INTO `address_lookup` VALUES ('1667', 'PH', 'Negros Occidental', '6101', 'Bago City');
INSERT INTO `address_lookup` VALUES ('1668', 'PH', 'Negros Occidental', '6107', 'Binalbagan City');
INSERT INTO `address_lookup` VALUES ('1669', 'PH', 'Negros Occidental', '6121', 'Cadiz City');
INSERT INTO `address_lookup` VALUES ('1670', 'PH', 'Negros Occidental', '6126', 'Calatrava');
INSERT INTO `address_lookup` VALUES ('1671', 'PH', 'Negros Occidental', '6110', 'Candoni');
INSERT INTO `address_lookup` VALUES ('1672', 'PH', 'Negros Occidental', '6118', 'Enrique Magalona');
INSERT INTO `address_lookup` VALUES ('1673', 'PH', 'Negros Occidental', '6124', 'Escalante City');
INSERT INTO `address_lookup` VALUES ('1674', 'PH', 'Negros Occidental', '6108', 'Himamaylan City');
INSERT INTO `address_lookup` VALUES ('1675', 'PH', 'Negros Occidental', '6106', 'Hinigaran City');
INSERT INTO `address_lookup` VALUES ('1676', 'PH', 'Negros Occidental', '6114', 'Hinoba-an');
INSERT INTO `address_lookup` VALUES ('1677', 'PH', 'Negros Occidental', '6109', 'Ilog');
INSERT INTO `address_lookup` VALUES ('1678', 'PH', 'Negros Occidental', '6128', 'Isabela');
INSERT INTO `address_lookup` VALUES ('1679', 'PH', 'Negros Occidental', '6111', 'Kabankalan City');
INSERT INTO `address_lookup` VALUES ('1680', 'PH', 'Negros Occidental', '6112', 'Cauayan');
INSERT INTO `address_lookup` VALUES ('1681', 'PH', 'Negros Occidental', '6130', 'La Carlota City');
INSERT INTO `address_lookup` VALUES ('1682', 'PH', 'Negros Occidental', '6131', 'La Castillana');
INSERT INTO `address_lookup` VALUES ('1683', 'PH', 'Negros Occidental', '6120', 'Manapla');
INSERT INTO `address_lookup` VALUES ('1684', 'PH', 'Negros Occidental', '6132', 'Moises Padilla');
INSERT INTO `address_lookup` VALUES ('1685', 'PH', 'Negros Occidental', '6129', 'Murcia');
INSERT INTO `address_lookup` VALUES ('1686', 'PH', 'Negros Occidental', '6123', 'Paraiso (Fabrica)');
INSERT INTO `address_lookup` VALUES ('1687', 'PH', 'Negros Occidental', '6105', 'Pontevedra');
INSERT INTO `address_lookup` VALUES ('1688', 'PH', 'Negros Occidental', '6102', 'Pulupandan');
INSERT INTO `address_lookup` VALUES ('1689', 'PH', 'Negros Occidental', '6122', 'Sagay City');
INSERT INTO `address_lookup` VALUES ('1690', 'PH', 'Negros Occidental', '6127', 'San Carlos City');
INSERT INTO `address_lookup` VALUES ('1691', 'PH', 'Negros Occidental', '6104', 'San Enrique');
INSERT INTO `address_lookup` VALUES ('1692', 'PH', 'Negros Occidental', '6116', 'Silay City');
INSERT INTO `address_lookup` VALUES ('1693', 'PH', 'Negros Occidental', '6117', 'Silay Hawaiian Central');
INSERT INTO `address_lookup` VALUES ('1694', 'PH', 'Negros Occidental', '6113', 'Sipalay City');
INSERT INTO `address_lookup` VALUES ('1695', 'PH', 'Negros Occidental', '6115', 'Talisay City');
INSERT INTO `address_lookup` VALUES ('1696', 'PH', 'Negros Occidental', '6125', 'Toboso');
INSERT INTO `address_lookup` VALUES ('1697', 'PH', 'Negros Occidental', '6103', 'Valladolid');
INSERT INTO `address_lookup` VALUES ('1698', 'PH', 'Negros Occidental', '6119', 'Victorias City');
INSERT INTO `address_lookup` VALUES ('1699', 'PH', 'Negros Oriental', '6203', 'Amlan');
INSERT INTO `address_lookup` VALUES ('1700', 'PH', 'Negros Oriental', '6210', 'Ayungon');
INSERT INTO `address_lookup` VALUES ('1701', 'PH', 'Negros Oriental', '6216', 'Bacong');
INSERT INTO `address_lookup` VALUES ('1702', 'PH', 'Negros Oriental', '6206', 'Bais City');
INSERT INTO `address_lookup` VALUES ('1703', 'PH', 'Negros Oriental', '6222', 'Basay');
INSERT INTO `address_lookup` VALUES ('1704', 'PH', 'Negros Oriental', '6221', 'Bayawan City');
INSERT INTO `address_lookup` VALUES ('1705', 'PH', 'Negros Oriental', '6209', 'Bindoy');
INSERT INTO `address_lookup` VALUES ('1706', 'PH', 'Negros Oriental', '6223', 'Canlaon City');
INSERT INTO `address_lookup` VALUES ('1707', 'PH', 'Negros Oriental', '6217', 'Dauin');
INSERT INTO `address_lookup` VALUES ('1708', 'PH', 'Negros Oriental', '6200', 'Dumaguete City');
INSERT INTO `address_lookup` VALUES ('1709', 'PH', 'Negros Oriental', '6214', 'Guihulngan');
INSERT INTO `address_lookup` VALUES ('1710', 'PH', 'Negros Oriental', '6212', 'Jimalalud');
INSERT INTO `address_lookup` VALUES ('1711', 'PH', 'Negros Oriental', '6213', 'La Libertad');
INSERT INTO `address_lookup` VALUES ('1712', 'PH', 'Negros Oriental', '6207', 'Mabinay');
INSERT INTO `address_lookup` VALUES ('1713', 'PH', 'Negros Oriental', '6208', 'Manjuyod');
INSERT INTO `address_lookup` VALUES ('1714', 'PH', 'Negros Oriental', '6205', 'Pamplona');
INSERT INTO `address_lookup` VALUES ('1715', 'PH', 'Negros Oriental', '6202', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1716', 'PH', 'Negros Oriental', '6219', 'Siaton');
INSERT INTO `address_lookup` VALUES ('1717', 'PH', 'Negros Oriental', '6201', 'Sibulan');
INSERT INTO `address_lookup` VALUES ('1718', 'PH', 'Negros Oriental', '6220', 'Sta. Catalina');
INSERT INTO `address_lookup` VALUES ('1719', 'PH', 'Negros Oriental', '6204', 'Tanjay City');
INSERT INTO `address_lookup` VALUES ('1720', 'PH', 'Negros Oriental', '6211', 'Tayasan');
INSERT INTO `address_lookup` VALUES ('1721', 'PH', 'Negros Oriental', '6215', 'Valencia');
INSERT INTO `address_lookup` VALUES ('1722', 'PH', 'Negros Oriental', '6224', 'Valle Hermoso');
INSERT INTO `address_lookup` VALUES ('1723', 'PH', 'Negros Oriental', '6218', 'Zamboanguita');
INSERT INTO `address_lookup` VALUES ('1724', 'PH', 'Northern Samar', '6405', 'Allen');
INSERT INTO `address_lookup` VALUES ('1725', 'PH', 'Northern Samar', '6410', 'Biri');
INSERT INTO `address_lookup` VALUES ('1726', 'PH', 'Northern Samar', '6401', 'Bobon');
INSERT INTO `address_lookup` VALUES ('1727', 'PH', 'Northern Samar', '6408', 'Capul');
INSERT INTO `address_lookup` VALUES ('1728', 'PH', 'Northern Samar', '6400', 'Catarman');
INSERT INTO `address_lookup` VALUES ('1729', 'PH', 'Northern Samar', '6418', 'Catubig');
INSERT INTO `address_lookup` VALUES ('1730', 'PH', 'Northern Samar', '6422', 'Gamay');
INSERT INTO `address_lookup` VALUES ('1731', 'PH', 'Northern Samar', '6411', 'Laoang');
INSERT INTO `address_lookup` VALUES ('1732', 'PH', 'Northern Samar', '6423', 'Lapinig');
INSERT INTO `address_lookup` VALUES ('1733', 'PH', 'Northern Samar', '6420', 'Las Navas');
INSERT INTO `address_lookup` VALUES ('1734', 'PH', 'Northern Samar', '6404', 'Lavezares');
INSERT INTO `address_lookup` VALUES ('1735', 'PH', 'Northern Samar', '6403', 'Lope de Vega');
INSERT INTO `address_lookup` VALUES ('1736', 'PH', 'Northern Samar', '6412', 'Mapanas');
INSERT INTO `address_lookup` VALUES ('1737', 'PH', 'Northern Samar', '6417', 'Mondragon');
INSERT INTO `address_lookup` VALUES ('1738', 'PH', 'Northern Samar', '6421', 'Palapag');
INSERT INTO `address_lookup` VALUES ('1739', 'PH', 'Northern Samar', '6413', 'Pambujan');
INSERT INTO `address_lookup` VALUES ('1740', 'PH', 'Northern Samar', '6416', 'Rosario');
INSERT INTO `address_lookup` VALUES ('1741', 'PH', 'Northern Samar', '6407', 'San Antonio');
INSERT INTO `address_lookup` VALUES ('1742', 'PH', 'Northern Samar', '6409', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('1743', 'PH', 'Northern Samar', '6402', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1744', 'PH', 'Northern Samar', '6415', 'San Roque');
INSERT INTO `address_lookup` VALUES ('1745', 'PH', 'Northern Samar', '6419', 'San Vicente');
INSERT INTO `address_lookup` VALUES ('1746', 'PH', 'Northern Samar', '6414', 'Silvino Lobos');
INSERT INTO `address_lookup` VALUES ('1747', 'PH', 'Northern Samar', '6406', 'Victoria');
INSERT INTO `address_lookup` VALUES ('1748', 'PH', 'Nueva Ecija', '3111', 'Aliaga');
INSERT INTO `address_lookup` VALUES ('1749', 'PH', 'Nueva Ecija', '3128', 'Bongabon');
INSERT INTO `address_lookup` VALUES ('1750', 'PH', 'Nueva Ecija', '3100', 'Cabanatuan City');
INSERT INTO `address_lookup` VALUES ('1751', 'PH', 'Nueva Ecija', '3107', 'Cabiao');
INSERT INTO `address_lookup` VALUES ('1752', 'PH', 'Nueva Ecija', '3123', 'Carranglan');
INSERT INTO `address_lookup` VALUES ('1753', 'PH', 'Nueva Ecija', '3120', 'Central Luzon State University');
INSERT INTO `address_lookup` VALUES ('1754', 'PH', 'Nueva Ecija', '3117', 'Cuyapo');
INSERT INTO `address_lookup` VALUES ('1755', 'PH', 'Nueva Ecija', '3130', 'Fort Magsaysay');
INSERT INTO `address_lookup` VALUES ('1756', 'PH', 'Nueva Ecija', '3131', 'Gabaldon');
INSERT INTO `address_lookup` VALUES ('1757', 'PH', 'Nueva Ecija', '3105', 'Gapan City');
INSERT INTO `address_lookup` VALUES ('1758', 'PH', 'Nueva Ecija', '3125', 'General M. Natividad');
INSERT INTO `address_lookup` VALUES ('1759', 'PH', 'Nueva Ecija', '3104', 'General Tinio');
INSERT INTO `address_lookup` VALUES ('1760', 'PH', 'Nueva Ecija', '3115', 'Guimba');
INSERT INTO `address_lookup` VALUES ('1761', 'PH', 'Nueva Ecija', '3109', 'Jaen');
INSERT INTO `address_lookup` VALUES ('1762', 'PH', 'Nueva Ecija', '3129', 'Laur');
INSERT INTO `address_lookup` VALUES ('1763', 'PH', 'Nueva Ecija', '3112', 'Licab');
INSERT INTO `address_lookup` VALUES ('1764', 'PH', 'Nueva Ecija', '3126', 'Llanera');
INSERT INTO `address_lookup` VALUES ('1765', 'PH', 'Nueva Ecija', '3122', 'Lupao');
INSERT INTO `address_lookup` VALUES ('1766', 'PH', 'Nueva Ecija', '3119', 'Science City of Muñoz');
INSERT INTO `address_lookup` VALUES ('1767', 'PH', 'Nueva Ecija', '3116', 'Nampicuan');
INSERT INTO `address_lookup` VALUES ('1768', 'PH', 'Nueva Ecija', '3132', 'Palayan City');
INSERT INTO `address_lookup` VALUES ('1769', 'PH', 'Nueva Ecija', '3124', 'Pantabangan');
INSERT INTO `address_lookup` VALUES ('1770', 'PH', 'Nueva Ecija', '3103', 'Peñaranda');
INSERT INTO `address_lookup` VALUES ('1771', 'PH', 'Nueva Ecija', '3113', 'Quezon');
INSERT INTO `address_lookup` VALUES ('1772', 'PH', 'Nueva Ecija', '3127', 'Rizal');
INSERT INTO `address_lookup` VALUES ('1773', 'PH', 'Nueva Ecija', '3108', 'San Antonio');
INSERT INTO `address_lookup` VALUES ('1774', 'PH', 'Nueva Ecija', '3106', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('1775', 'PH', 'Nueva Ecija', '3121', 'San Jose City');
INSERT INTO `address_lookup` VALUES ('1776', 'PH', 'Nueva Ecija', '3102', 'San Leonardo');
INSERT INTO `address_lookup` VALUES ('1777', 'PH', 'Nueva Ecija', '3101', 'Santa Rosa');
INSERT INTO `address_lookup` VALUES ('1778', 'PH', 'Nueva Ecija', '3133', 'Santo Domingo');
INSERT INTO `address_lookup` VALUES ('1779', 'PH', 'Nueva Ecija', '3114', 'Talavera');
INSERT INTO `address_lookup` VALUES ('1780', 'PH', 'Nueva Ecija', '3118', 'Talugtog');
INSERT INTO `address_lookup` VALUES ('1781', 'PH', 'Nueva Ecija', '3110', 'Zaragoza');
INSERT INTO `address_lookup` VALUES ('1782', 'PH', 'Nueva Vizcaya', '3714', 'Alfonso Castañeda');
INSERT INTO `address_lookup` VALUES ('1783', 'PH', 'Nueva Vizcaya', '3701', 'Ambaguio');
INSERT INTO `address_lookup` VALUES ('1784', 'PH', 'Nueva Vizcaya', '3704', 'Aritao');
INSERT INTO `address_lookup` VALUES ('1785', 'PH', 'Nueva Vizcaya', '3711', 'Bagabag');
INSERT INTO `address_lookup` VALUES ('1786', 'PH', 'Nueva Vizcaya', '3702', 'Bambang');
INSERT INTO `address_lookup` VALUES ('1787', 'PH', 'Nueva Vizcaya', '3700', 'Bayombong');
INSERT INTO `address_lookup` VALUES ('1788', 'PH', 'Nueva Vizcaya', '3712', 'Diadi');
INSERT INTO `address_lookup` VALUES ('1789', 'PH', 'Nueva Vizcaya', '3706', 'Dupax del Norte');
INSERT INTO `address_lookup` VALUES ('1790', 'PH', 'Nueva Vizcaya', '3707', 'Dupax del Sur');
INSERT INTO `address_lookup` VALUES ('1791', 'PH', 'Nueva Vizcaya', '3703', 'Kasibu');
INSERT INTO `address_lookup` VALUES ('1792', 'PH', 'Nueva Vizcaya', '3708', 'Kayapa');
INSERT INTO `address_lookup` VALUES ('1793', 'PH', 'Nueva Vizcaya', '3714', 'Quezon');
INSERT INTO `address_lookup` VALUES ('1794', 'PH', 'Nueva Vizcaya', '3709', 'Solano');
INSERT INTO `address_lookup` VALUES ('1795', 'PH', 'Nueva Vizcaya', '3705', 'Santa Fe (Imugan)');
INSERT INTO `address_lookup` VALUES ('1796', 'PH', 'Nueva Vizcaya', '3710', 'Villa Verde (Ibung)');
INSERT INTO `address_lookup` VALUES ('1797', 'PH', 'Occidental Mindoro', '5108', 'Abra de Ilog');
INSERT INTO `address_lookup` VALUES ('1798', 'PH', 'Occidental Mindoro', '5102', 'Calintaan');
INSERT INTO `address_lookup` VALUES ('1799', 'PH', 'Occidental Mindoro', '5111', 'Looc');
INSERT INTO `address_lookup` VALUES ('1800', 'PH', 'Occidental Mindoro', '5109', 'Lubang');
INSERT INTO `address_lookup` VALUES ('1801', 'PH', 'Occidental Mindoro', '5101', 'Magsaysay');
INSERT INTO `address_lookup` VALUES ('1802', 'PH', 'Occidental Mindoro', '5106', 'Mamburao');
INSERT INTO `address_lookup` VALUES ('1803', 'PH', 'Occidental Mindoro', '5107', 'Paluan');
INSERT INTO `address_lookup` VALUES ('1804', 'PH', 'Occidental Mindoro', '5103', 'Rizal');
INSERT INTO `address_lookup` VALUES ('1805', 'PH', 'Occidental Mindoro', '5104', 'Sablayan');
INSERT INTO `address_lookup` VALUES ('1806', 'PH', 'Occidental Mindoro', '5100', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1807', 'PH', 'Occidental Mindoro', '5105', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('1808', 'PH', 'Occidental Mindoro', '5110', 'Tilik');
INSERT INTO `address_lookup` VALUES ('1809', 'PH', 'Oriental Mindoro', '5201', 'Baco');
INSERT INTO `address_lookup` VALUES ('1810', 'PH', 'Oriental Mindoro', '5210', 'Bansud');
INSERT INTO `address_lookup` VALUES ('1811', 'PH', 'Oriental Mindoro', '5211', 'Bongabon');
INSERT INTO `address_lookup` VALUES ('1812', 'PH', 'Oriental Mindoro', '5214', 'Bulalacao');
INSERT INTO `address_lookup` VALUES ('1813', 'PH', 'Oriental Mindoro', '5200', 'Calapan');
INSERT INTO `address_lookup` VALUES ('1814', 'PH', 'Oriental Mindoro', '5209', 'Gloria');
INSERT INTO `address_lookup` VALUES ('1815', 'PH', 'Oriental Mindoro', '5213', 'Mansalay');
INSERT INTO `address_lookup` VALUES ('1816', 'PH', 'Oriental Mindoro', '5204', 'Naujan');
INSERT INTO `address_lookup` VALUES ('1817', 'PH', 'Oriental Mindoro', '5208', 'Pinamalayan');
INSERT INTO `address_lookup` VALUES ('1818', 'PH', 'Oriental Mindoro', '5206', 'Pola');
INSERT INTO `address_lookup` VALUES ('1819', 'PH', 'Oriental Mindoro', '5203', 'Puerto Galera');
INSERT INTO `address_lookup` VALUES ('1820', 'PH', 'Oriental Mindoro', '5212', 'Roxas');
INSERT INTO `address_lookup` VALUES ('1821', 'PH', 'Oriental Mindoro', '5202', 'San Teodoro');
INSERT INTO `address_lookup` VALUES ('1822', 'PH', 'Oriental Mindoro', '5207', 'Socorro');
INSERT INTO `address_lookup` VALUES ('1823', 'PH', 'Oriental Mindoro', '5205', 'Victoria');
INSERT INTO `address_lookup` VALUES ('1824', 'PH', 'Palawan', '5300', 'Puerto Princesa');
INSERT INTO `address_lookup` VALUES ('1825', 'PH', 'Palawan', '5301', 'Iwahig Penal Colony');
INSERT INTO `address_lookup` VALUES ('1826', 'PH', 'Palawan', '5302', 'Aborlan');
INSERT INTO `address_lookup` VALUES ('1827', 'PH', 'Palawan', '5303', 'Narra (Panacan)');
INSERT INTO `address_lookup` VALUES ('1828', 'PH', 'Palawan', '5304', 'Quezon');
INSERT INTO `address_lookup` VALUES ('1829', 'PH', 'Palawan', '5305', 'Brooke\'s Point');
INSERT INTO `address_lookup` VALUES ('1830', 'PH', 'Palawan', '5306', 'Bataraza');
INSERT INTO `address_lookup` VALUES ('1831', 'PH', 'Palawan', '5307', 'Balabac');
INSERT INTO `address_lookup` VALUES ('1832', 'PH', 'Palawan', '5308', 'Roxas');
INSERT INTO `address_lookup` VALUES ('1833', 'PH', 'Palawan', '5309', 'San Vicente');
INSERT INTO `address_lookup` VALUES ('1834', 'PH', 'Palawan', '5310', 'Dumaran');
INSERT INTO `address_lookup` VALUES ('1835', 'PH', 'Palawan', '5311', 'Araceli');
INSERT INTO `address_lookup` VALUES ('1836', 'PH', 'Palawan', '5312', 'Taytay');
INSERT INTO `address_lookup` VALUES ('1837', 'PH', 'Palawan', '5313', 'El Nido (Bacuit)');
INSERT INTO `address_lookup` VALUES ('1838', 'PH', 'Palawan', '5314', 'Linapacan');
INSERT INTO `address_lookup` VALUES ('1839', 'PH', 'Palawan', '5315', 'Culion');
INSERT INTO `address_lookup` VALUES ('1840', 'PH', 'Palawan', '5316', 'Coron');
INSERT INTO `address_lookup` VALUES ('1841', 'PH', 'Palawan', '5317', 'Busuanga');
INSERT INTO `address_lookup` VALUES ('1842', 'PH', 'Palawan', '5318', 'Cuyo');
INSERT INTO `address_lookup` VALUES ('1843', 'PH', 'Palawan', '5319', 'Magsaysay');
INSERT INTO `address_lookup` VALUES ('1844', 'PH', 'Palawan', '5320', 'Agutaya');
INSERT INTO `address_lookup` VALUES ('1845', 'PH', 'Palawan', '5321', 'Cagayancillo');
INSERT INTO `address_lookup` VALUES ('1846', 'PH', 'Palawan', '5322', 'Kalayaan');
INSERT INTO `address_lookup` VALUES ('1847', 'PH', 'Pampanga', '2009', 'Angeles City/Clark Special Economic ZoneBalibago a Barangay in Angeles city has its own zip code 2024');
INSERT INTO `address_lookup` VALUES ('1848', 'PH', 'Pampanga', '2016', 'Apalit');
INSERT INTO `address_lookup` VALUES ('1849', 'PH', 'Pampanga', '2012', 'Arayat');
INSERT INTO `address_lookup` VALUES ('1850', 'PH', 'Pampanga', '2001', 'Bacolor');
INSERT INTO `address_lookup` VALUES ('1851', 'PH', 'Pampanga', '2007', 'Basa Airbase');
INSERT INTO `address_lookup` VALUES ('1852', 'PH', 'Pampanga', '2013', 'Candaba');
INSERT INTO `address_lookup` VALUES ('1853', 'PH', 'Pampanga', '2006', 'Floridablanca');
INSERT INTO `address_lookup` VALUES ('1854', 'PH', 'Pampanga', '2003', 'Guagua');
INSERT INTO `address_lookup` VALUES ('1855', 'PH', 'Pampanga', '2005', 'Lubao');
INSERT INTO `address_lookup` VALUES ('1856', 'PH', 'Pampanga', '2010', 'Mabalacat');
INSERT INTO `address_lookup` VALUES ('1857', 'PH', 'Pampanga', '2018', 'Macabebe');
INSERT INTO `address_lookup` VALUES ('1858', 'PH', 'Pampanga', '2011', 'Magalang');
INSERT INTO `address_lookup` VALUES ('1859', 'PH', 'Pampanga', '2017', 'Masantol');
INSERT INTO `address_lookup` VALUES ('1860', 'PH', 'Pampanga', '2021', 'Mexico');
INSERT INTO `address_lookup` VALUES ('1861', 'PH', 'Pampanga', '2019', 'Minalin');
INSERT INTO `address_lookup` VALUES ('1862', 'PH', 'Pampanga', '2008', 'Porac');
INSERT INTO `address_lookup` VALUES ('1863', 'PH', 'Pampanga', '2000', 'City of San Fernando');
INSERT INTO `address_lookup` VALUES ('1864', 'PH', 'Pampanga', '2014', 'San Luis');
INSERT INTO `address_lookup` VALUES ('1865', 'PH', 'Pampanga', '2015', 'San Simon');
INSERT INTO `address_lookup` VALUES ('1866', 'PH', 'Pampanga', '2022', 'Santa Ana');
INSERT INTO `address_lookup` VALUES ('1867', 'PH', 'Pampanga', '2002', 'Santa Rita');
INSERT INTO `address_lookup` VALUES ('1868', 'PH', 'Pampanga', '2020', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('1869', 'PH', 'Pampanga', '2004', 'Sasmuan (Sexmoan)');
INSERT INTO `address_lookup` VALUES ('1870', 'PH', 'Pangasinan', '2408', 'Agno');
INSERT INTO `address_lookup` VALUES ('1871', 'PH', 'Pangasinan', '2415', 'Aguilar');
INSERT INTO `address_lookup` VALUES ('1872', 'PH', 'Pangasinan', '2404', 'Alaminos');
INSERT INTO `address_lookup` VALUES ('1873', 'PH', 'Pangasinan', '2425', 'Alcala');
INSERT INTO `address_lookup` VALUES ('1874', 'PH', 'Pangasinan', '2405', 'Anda');
INSERT INTO `address_lookup` VALUES ('1875', 'PH', 'Pangasinan', '2439', 'Asingan');
INSERT INTO `address_lookup` VALUES ('1876', 'PH', 'Pangasinan', '2442', 'Balungao');
INSERT INTO `address_lookup` VALUES ('1877', 'PH', 'Pangasinan', '2407', 'Bani');
INSERT INTO `address_lookup` VALUES ('1878', 'PH', 'Pangasinan', '2422', 'Basista');
INSERT INTO `address_lookup` VALUES ('1879', 'PH', 'Pangasinan', '2424', 'Bautista');
INSERT INTO `address_lookup` VALUES ('1880', 'PH', 'Pangasinan', '2423', 'Bayambang');
INSERT INTO `address_lookup` VALUES ('1881', 'PH', 'Pangasinan', '2436', 'Binalonan');
INSERT INTO `address_lookup` VALUES ('1882', 'PH', 'Pangasinan', '2417', 'Binmaley');
INSERT INTO `address_lookup` VALUES ('1883', 'PH', 'Pangasinan', '2406', 'Bolinao');
INSERT INTO `address_lookup` VALUES ('1884', 'PH', 'Pangasinan', '2416', 'Bugallon');
INSERT INTO `address_lookup` VALUES ('1885', 'PH', 'Pangasinan', '2410', 'Burgos');
INSERT INTO `address_lookup` VALUES ('1886', 'PH', 'Pangasinan', '2418', 'Calasiao');
INSERT INTO `address_lookup` VALUES ('1887', 'PH', 'Pangasinan', '2400', 'Dagupan City');
INSERT INTO `address_lookup` VALUES ('1888', 'PH', 'Pangasinan', '2411', 'Dasol');
INSERT INTO `address_lookup` VALUES ('1889', 'PH', 'Pangasinan', '2412', 'Infanta');
INSERT INTO `address_lookup` VALUES ('1890', 'PH', 'Pangasinan', '2402', 'Labrador');
INSERT INTO `address_lookup` VALUES ('1891', 'PH', 'Pangasinan', '2437', 'Laoac');
INSERT INTO `address_lookup` VALUES ('1892', 'PH', 'Pangasinan', '2401', 'Lingayen');
INSERT INTO `address_lookup` VALUES ('1893', 'PH', 'Pangasinan', '2409', 'Mabini');
INSERT INTO `address_lookup` VALUES ('1894', 'PH', 'Pangasinan', '2421', 'Malasiqui');
INSERT INTO `address_lookup` VALUES ('1895', 'PH', 'Pangasinan', '2430', 'Manaoag');
INSERT INTO `address_lookup` VALUES ('1896', 'PH', 'Pangasinan', '2432', 'Mangaldan');
INSERT INTO `address_lookup` VALUES ('1897', 'PH', 'Pangasinan', '2413', 'Mangatarem');
INSERT INTO `address_lookup` VALUES ('1898', 'PH', 'Pangasinan', '2429', 'Mapandan');
INSERT INTO `address_lookup` VALUES ('1899', 'PH', 'Pangasinan', '2446', 'Natividad');
INSERT INTO `address_lookup` VALUES ('1900', 'PH', 'Pangasinan', '2435', 'Pozorrubio');
INSERT INTO `address_lookup` VALUES ('1901', 'PH', 'Pangasinan', '2441', 'Rosales');
INSERT INTO `address_lookup` VALUES ('1902', 'PH', 'Pangasinan', '2420', 'San Carlos City');
INSERT INTO `address_lookup` VALUES ('1903', 'PH', 'Pangasinan', '2433', 'San Fabian');
INSERT INTO `address_lookup` VALUES ('1904', 'PH', 'Pangasinan', '2431', 'San Jacinto');
INSERT INTO `address_lookup` VALUES ('1905', 'PH', 'Pangasinan', '2438', 'San Manuel');
INSERT INTO `address_lookup` VALUES ('1906', 'PH', 'Pangasinan', '2447', 'San Nicolas');
INSERT INTO `address_lookup` VALUES ('1907', 'PH', 'Pangasinan', '2444', 'San Quintin');
INSERT INTO `address_lookup` VALUES ('1908', 'PH', 'Pangasinan', '2419', 'Santa Barbara');
INSERT INTO `address_lookup` VALUES ('1909', 'PH', 'Pangasinan', '2440', 'Santa Maria');
INSERT INTO `address_lookup` VALUES ('1910', 'PH', 'Pangasinan', '2426', 'Santo Tomas');
INSERT INTO `address_lookup` VALUES ('1911', 'PH', 'Pangasinan', '2434', 'Sison');
INSERT INTO `address_lookup` VALUES ('1912', 'PH', 'Pangasinan', '2403', 'Sual');
INSERT INTO `address_lookup` VALUES ('1913', 'PH', 'Pangasinan', '2445', 'Tayug');
INSERT INTO `address_lookup` VALUES ('1914', 'PH', 'Pangasinan', '2443', 'Umingan');
INSERT INTO `address_lookup` VALUES ('1915', 'PH', 'Pangasinan', '2414', 'Urbiztondo');
INSERT INTO `address_lookup` VALUES ('1916', 'PH', 'Pangasinan', '2428', 'Urdaneta');
INSERT INTO `address_lookup` VALUES ('1917', 'PH', 'Pangasinan', '2427', 'Villasis');
INSERT INTO `address_lookup` VALUES ('1918', 'PH', 'Quezon', '4304', 'Agdangan');
INSERT INTO `address_lookup` VALUES ('1919', 'PH', 'Quezon', '4333', 'Alabat');
INSERT INTO `address_lookup` VALUES ('1920', 'PH', 'Quezon', '4331', 'Atimonan');
INSERT INTO `address_lookup` VALUES ('1921', 'PH', 'Quezon', '4320', 'Buenavista');
INSERT INTO `address_lookup` VALUES ('1922', 'PH', 'Quezon', '4340', 'Burdeos');
INSERT INTO `address_lookup` VALUES ('1923', 'PH', 'Quezon', '4318', 'Calauag');
INSERT INTO `address_lookup` VALUES ('1924', 'PH', 'Quezon', '4323', 'Candelaria');
INSERT INTO `address_lookup` VALUES ('1925', 'PH', 'Quezon', '4311', 'Catanauan');
INSERT INTO `address_lookup` VALUES ('1926', 'PH', 'Quezon', '4326', 'Dolores');
INSERT INTO `address_lookup` VALUES ('1927', 'PH', 'Quezon', '4310', 'General Antonio Luna');
INSERT INTO `address_lookup` VALUES ('1928', 'PH', 'Quezon', '4338', 'General Nakar');
INSERT INTO `address_lookup` VALUES ('1929', 'PH', 'Quezon', '4319', 'Guinayangan');
INSERT INTO `address_lookup` VALUES ('1930', 'PH', 'Quezon', '4307', 'Gumaca');
INSERT INTO `address_lookup` VALUES ('1931', 'PH', 'Quezon', '4317', 'Hondagua');
INSERT INTO `address_lookup` VALUES ('1932', 'PH', 'Quezon', '4336', 'Infanta');
INSERT INTO `address_lookup` VALUES ('1933', 'PH', 'Quezon', '4342', 'Jomalig');
INSERT INTO `address_lookup` VALUES ('1934', 'PH', 'Quezon', '4316', 'Lopez');
INSERT INTO `address_lookup` VALUES ('1935', 'PH', 'Quezon', '4328', 'Lucban');
INSERT INTO `address_lookup` VALUES ('1936', 'PH', 'Quezon', '4301', 'Lucena City');
INSERT INTO `address_lookup` VALUES ('1937', 'PH', 'Quezon', '4309', 'Macalelon');
INSERT INTO `address_lookup` VALUES ('1938', 'PH', 'Quezon', '4330', 'Mauban');
INSERT INTO `address_lookup` VALUES ('1939', 'PH', 'Quezon', '4312', 'Mulanay');
INSERT INTO `address_lookup` VALUES ('1940', 'PH', 'Quezon', '4303', 'Padre Burgos');
INSERT INTO `address_lookup` VALUES ('1941', 'PH', 'Quezon', '4302', 'Pagbilao');
INSERT INTO `address_lookup` VALUES ('1942', 'PH', 'Quezon', '4337', 'Panukulan');
INSERT INTO `address_lookup` VALUES ('1943', 'PH', 'Quezon', '4341', 'Patnanungan');
INSERT INTO `address_lookup` VALUES ('1944', 'PH', 'Quezon', '4334', 'Perez');
INSERT INTO `address_lookup` VALUES ('1945', 'PH', 'Quezon', '4308', 'Pitogo');
INSERT INTO `address_lookup` VALUES ('1946', 'PH', 'Quezon', '4306', 'Plaridel');
INSERT INTO `address_lookup` VALUES ('1947', 'PH', 'Quezon', '4339', 'Polilio');
INSERT INTO `address_lookup` VALUES ('1948', 'PH', 'Quezon', '4332', 'Quezon');
INSERT INTO `address_lookup` VALUES ('1949', 'PH', 'Quezon', '4300', 'Provincial Capitol, Lucena City');
INSERT INTO `address_lookup` VALUES ('1950', 'PH', 'Quezon', '4335', 'Real');
INSERT INTO `address_lookup` VALUES ('1951', 'PH', 'Quezon', '4329', 'Sampaloc');
INSERT INTO `address_lookup` VALUES ('1952', 'PH', 'Quezon', '4314', 'San Andres');
INSERT INTO `address_lookup` VALUES ('1953', 'PH', 'Quezon', '4324', 'San Antonio');
INSERT INTO `address_lookup` VALUES ('1954', 'PH', 'Quezon', '4315', 'San Francisco (Aurora)');
INSERT INTO `address_lookup` VALUES ('1955', 'PH', 'Quezon', '4313', 'San Narciso');
INSERT INTO `address_lookup` VALUES ('1956', 'PH', 'Quezon', '4322', 'Sariaya');
INSERT INTO `address_lookup` VALUES ('1957', 'PH', 'Quezon', '4321', 'Tagkawayan');
INSERT INTO `address_lookup` VALUES ('1958', 'PH', 'Quezon', '4327', 'Tayabas');
INSERT INTO `address_lookup` VALUES ('1959', 'PH', 'Quezon', '4325', 'Tiaong');
INSERT INTO `address_lookup` VALUES ('1960', 'PH', 'Quezon', '4305', 'Unisan');
INSERT INTO `address_lookup` VALUES ('1961', 'PH', 'Quirino', '3400', 'Cabarroguis');
INSERT INTO `address_lookup` VALUES ('1962', 'PH', 'Quirino', '3401', 'Diffun');
INSERT INTO `address_lookup` VALUES ('1963', 'PH', 'Quirino', '3402', 'Saguday');
INSERT INTO `address_lookup` VALUES ('1964', 'PH', 'Quirino', '3403', 'Aglipay');
INSERT INTO `address_lookup` VALUES ('1965', 'PH', 'Quirino', '3404', 'Maddela');
INSERT INTO `address_lookup` VALUES ('1966', 'PH', 'Quirino', '3405', 'Nagtipunan (Abbag)');
INSERT INTO `address_lookup` VALUES ('1967', 'PH', 'Rizal', '1850', 'San Mateo');
INSERT INTO `address_lookup` VALUES ('1968', 'PH', 'Rizal', '1860', 'Rodriguez');
INSERT INTO `address_lookup` VALUES ('1969', 'PH', 'Rizal', '1870', 'Antipolo City');
INSERT INTO `address_lookup` VALUES ('1970', 'PH', 'Rizal', '1880', 'Teresa');
INSERT INTO `address_lookup` VALUES ('1971', 'PH', 'Rizal', '1900', 'Cainta');
INSERT INTO `address_lookup` VALUES ('1972', 'PH', 'Rizal', '1910', 'Pililla');
INSERT INTO `address_lookup` VALUES ('1973', 'PH', 'Rizal', '1920', 'Taytay');
INSERT INTO `address_lookup` VALUES ('1974', 'PH', 'Rizal', '1930', 'Angono');
INSERT INTO `address_lookup` VALUES ('1975', 'PH', 'Rizal', '1940', 'Binangonan');
INSERT INTO `address_lookup` VALUES ('1976', 'PH', 'Rizal', '1950', 'Cardona');
INSERT INTO `address_lookup` VALUES ('1977', 'PH', 'Rizal', '1960', 'Morong');
INSERT INTO `address_lookup` VALUES ('1978', 'PH', 'Rizal', '1970', 'Baras');
INSERT INTO `address_lookup` VALUES ('1979', 'PH', 'Rizal', '1980', 'Tanay');
INSERT INTO `address_lookup` VALUES ('1980', 'PH', 'Rizal', '1900', 'Jalajala');
INSERT INTO `address_lookup` VALUES ('1981', 'PH', 'Romblon', '5509', 'Alcantara');
INSERT INTO `address_lookup` VALUES ('1982', 'PH', 'Romblon', '5515', 'Banton (Jones)');
INSERT INTO `address_lookup` VALUES ('1983', 'PH', 'Romblon', '5512', 'Cajidiocan');
INSERT INTO `address_lookup` VALUES ('1984', 'PH', 'Romblon', '5503', 'Calatrava');
INSERT INTO `address_lookup` VALUES ('1985', 'PH', 'Romblon', '5516', 'Concepcion');
INSERT INTO `address_lookup` VALUES ('1986', 'PH', 'Romblon', '5514', 'Corcuera');
INSERT INTO `address_lookup` VALUES ('1987', 'PH', 'Romblon', '5506', 'Ferrol');
INSERT INTO `address_lookup` VALUES ('1988', 'PH', 'Romblon', '5502', 'Imelda');
INSERT INTO `address_lookup` VALUES ('1989', 'PH', 'Romblon', '5507', 'Looc');
INSERT INTO `address_lookup` VALUES ('1990', 'PH', 'Romblon', '5511', 'Magdiwang');
INSERT INTO `address_lookup` VALUES ('1991', 'PH', 'Romblon', '5505', 'Odiongan');
INSERT INTO `address_lookup` VALUES ('1992', 'PH', 'Romblon', '5500', 'Romblon');
INSERT INTO `address_lookup` VALUES ('1993', 'PH', 'Romblon', '5501', 'San Agustin');
INSERT INTO `address_lookup` VALUES ('1994', 'PH', 'Romblon', '5504', 'San Andres');
INSERT INTO `address_lookup` VALUES ('1995', 'PH', 'Romblon', '5513', 'San Fernando');
INSERT INTO `address_lookup` VALUES ('1996', 'PH', 'Romblon', '5510', 'San Jose');
INSERT INTO `address_lookup` VALUES ('1997', 'PH', 'Romblon', '5508', 'Santa Fe');
INSERT INTO `address_lookup` VALUES ('1998', 'PH', 'Sarangani', '9501', 'Alabel');
INSERT INTO `address_lookup` VALUES ('1999', 'PH', 'Sarangani', '9517', 'Glan');
INSERT INTO `address_lookup` VALUES ('2000', 'PH', 'Sarangani', '9514', 'Kiamba');
INSERT INTO `address_lookup` VALUES ('2001', 'PH', 'Sarangani', '9502', 'Maasim');
INSERT INTO `address_lookup` VALUES ('2002', 'PH', 'Sarangani', '9515', 'Maitum');
INSERT INTO `address_lookup` VALUES ('2003', 'PH', 'Sarangani', '9516', 'Malapatan');
INSERT INTO `address_lookup` VALUES ('2004', 'PH', 'Sarangani', '9503', 'Malungon');
INSERT INTO `address_lookup` VALUES ('2005', 'PH', 'Shariff Kabunsuan', '9614', 'Barira');
INSERT INTO `address_lookup` VALUES ('2006', 'PH', 'Shariff Kabunsuan', '9615', 'Buldon');
INSERT INTO `address_lookup` VALUES ('2007', 'PH', 'Shariff Kabunsuan', '9601', 'Datu Odin Sinsuat (Dinaig)');
INSERT INTO `address_lookup` VALUES ('2008', 'PH', 'Shariff Kabunsuan', '9606', 'Kabuntalan/Northern Kabuntalan');
INSERT INTO `address_lookup` VALUES ('2009', 'PH', 'Shariff Kabunsuan', '9613', 'Matanog');
INSERT INTO `address_lookup` VALUES ('2010', 'PH', 'Shariff Kabunsuan', '9604', 'Parang');
INSERT INTO `address_lookup` VALUES ('2011', 'PH', 'Shariff Kabunsuan', '9605', 'Sultan Kudarat/Sultan Mastura');
INSERT INTO `address_lookup` VALUES ('2012', 'PH', 'Shariff Kabunsuan', '9602', 'Upi/Datu Blah T. Sinsuat');
INSERT INTO `address_lookup` VALUES ('2013', 'PH', 'Shariff Kabunsuan', '9603', 'Ampatuan City');
INSERT INTO `address_lookup` VALUES ('2014', 'PH', 'Siquijor', '6230', 'Enrique Villanueva');
INSERT INTO `address_lookup` VALUES ('2015', 'PH', 'Siquijor', '6226', 'Larena');
INSERT INTO `address_lookup` VALUES ('2016', 'PH', 'Siquijor', '6228', 'Lazi');
INSERT INTO `address_lookup` VALUES ('2017', 'PH', 'Siquijor', '6229', 'Maria');
INSERT INTO `address_lookup` VALUES ('2018', 'PH', 'Siquijor', '6227', 'San Juan');
INSERT INTO `address_lookup` VALUES ('2019', 'PH', 'Siquijor', '6225', 'Siquij');
INSERT INTO `address_lookup` VALUES ('2020', 'PH', 'Sorsogon', '4701', 'Bacon');
INSERT INTO `address_lookup` VALUES ('2021', 'PH', 'Sorsogon', '4712', 'Barcelona');
INSERT INTO `address_lookup` VALUES ('2022', 'PH', 'Sorsogon', '4706', 'Bulan');
INSERT INTO `address_lookup` VALUES ('2023', 'PH', 'Sorsogon', '4704', 'Bulusan');
INSERT INTO `address_lookup` VALUES ('2024', 'PH', 'Sorsogon', '4702', 'Casiguran');
INSERT INTO `address_lookup` VALUES ('2025', 'PH', 'Sorsogon', '4713', 'Castilla');
INSERT INTO `address_lookup` VALUES ('2026', 'PH', 'Sorsogon', '4715', 'Donsol');
INSERT INTO `address_lookup` VALUES ('2027', 'PH', 'Sorsogon', '4710', 'Gubat');
INSERT INTO `address_lookup` VALUES ('2028', 'PH', 'Sorsogon', '4707', 'Irosin');
INSERT INTO `address_lookup` VALUES ('2029', 'PH', 'Sorsogon', '4703', 'Juban');
INSERT INTO `address_lookup` VALUES ('2030', 'PH', 'Sorsogon', '4705', 'Magallanes');
INSERT INTO `address_lookup` VALUES ('2031', 'PH', 'Sorsogon', '4708', 'Matnog');
INSERT INTO `address_lookup` VALUES ('2032', 'PH', 'Sorsogon', '4714', 'Pilar');
INSERT INTO `address_lookup` VALUES ('2033', 'PH', 'Sorsogon', '4711', 'Prieto Diaz');
INSERT INTO `address_lookup` VALUES ('2034', 'PH', 'Sorsogon', '4709', 'Santa Magdalena');
INSERT INTO `address_lookup` VALUES ('2035', 'PH', 'Sorsogon', '4700', 'Sorsogon');
INSERT INTO `address_lookup` VALUES ('2036', 'PH', 'South Cotabato', '9511', 'Banga');
INSERT INTO `address_lookup` VALUES ('2037', 'PH', 'South Cotabato', '9500', 'General Santos City (Dadiangas)');
INSERT INTO `address_lookup` VALUES ('2038', 'PH', 'South Cotabato', '9506', 'Koronadal City');
INSERT INTO `address_lookup` VALUES ('2039', 'PH', 'South Cotabato', '9508', 'Norala');
INSERT INTO `address_lookup` VALUES ('2040', 'PH', 'South Cotabato', '9504', 'Polomolok');
INSERT INTO `address_lookup` VALUES ('2041', 'PH', 'South Cotabato', '9509', 'Sto. Niño');
INSERT INTO `address_lookup` VALUES ('2042', 'PH', 'South Cotabato', '9512', 'Surallah');
INSERT INTO `address_lookup` VALUES ('2043', 'PH', 'South Cotabato', '9507', 'Tampakan');
INSERT INTO `address_lookup` VALUES ('2044', 'PH', 'South Cotabato', '9510', 'Tantangan');
INSERT INTO `address_lookup` VALUES ('2045', 'PH', 'South Cotabato', '9513', 'T\'Boli');
INSERT INTO `address_lookup` VALUES ('2046', 'PH', 'South Cotabato', '9505', 'Tupi');
INSERT INTO `address_lookup` VALUES ('2047', 'PH', 'Southern Leyte', '6610', 'Anahawan');
INSERT INTO `address_lookup` VALUES ('2048', 'PH', 'Southern Leyte', '6604', 'Bontoc');
INSERT INTO `address_lookup` VALUES ('2049', 'PH', 'Southern Leyte', '6608', 'Hinunangan');
INSERT INTO `address_lookup` VALUES ('2050', 'PH', 'Southern Leyte', '6609', 'Hinundayan');
INSERT INTO `address_lookup` VALUES ('2051', 'PH', 'Southern Leyte', '6615', 'Libagon');
INSERT INTO `address_lookup` VALUES ('2052', 'PH', 'Southern Leyte', '6612', 'Liloan');
INSERT INTO `address_lookup` VALUES ('2053', 'PH', 'Southern Leyte', '6600', 'Maasin');
INSERT INTO `address_lookup` VALUES ('2054', 'PH', 'Southern Leyte', '6601', 'Macrohon');
INSERT INTO `address_lookup` VALUES ('2055', 'PH', 'Southern Leyte', '6603', 'Malitbog');
INSERT INTO `address_lookup` VALUES ('2056', 'PH', 'Southern Leyte', '6602', 'Padre Burgos');
INSERT INTO `address_lookup` VALUES ('2057', 'PH', 'Southern Leyte', '6614', 'Pintuyan');
INSERT INTO `address_lookup` VALUES ('2058', 'PH', 'Southern Leyte', '6613', 'San Francisco');
INSERT INTO `address_lookup` VALUES ('2059', 'PH', 'Southern Leyte', '6611', 'San Juan (Cabalian)');
INSERT INTO `address_lookup` VALUES ('2060', 'PH', 'Southern Leyte', '6617', 'San Ricardo');
INSERT INTO `address_lookup` VALUES ('2061', 'PH', 'Southern Leyte', '6607', 'Silago');
INSERT INTO `address_lookup` VALUES ('2062', 'PH', 'Southern Leyte', '6606', 'Sogod');
INSERT INTO `address_lookup` VALUES ('2063', 'PH', 'Southern Leyte', '6616', 'St. Bernard');
INSERT INTO `address_lookup` VALUES ('2064', 'PH', 'Southern Leyte', '6605', 'Tomas Oppus');
INSERT INTO `address_lookup` VALUES ('2065', 'PH', 'Sultan Kudarat', '9810', 'Bagumbayan');
INSERT INTO `address_lookup` VALUES ('2066', 'PH', 'Sultan Kudarat', '9801', 'Columbio');
INSERT INTO `address_lookup` VALUES ('2067', 'PH', 'Sultan Kudarat', '9806', 'Esperanza (Ampatuan)');
INSERT INTO `address_lookup` VALUES ('2068', 'PH', 'Sultan Kudarat', '9805', 'Isulan');
INSERT INTO `address_lookup` VALUES ('2069', 'PH', 'Sultan Kudarat', '9808', 'Kalamansig');
INSERT INTO `address_lookup` VALUES ('2070', 'PH', 'Sultan Kudarat', '9807', 'Lebak (Salaman)');
INSERT INTO `address_lookup` VALUES ('2071', 'PH', 'Sultan Kudarat', '9803', 'Lutayan');
INSERT INTO `address_lookup` VALUES ('2072', 'PH', 'Sultan Kudarat', '9802', 'Mariano Marcos');
INSERT INTO `address_lookup` VALUES ('2073', 'PH', 'Sultan Kudarat', '9809', 'Palimbang');
INSERT INTO `address_lookup` VALUES ('2074', 'PH', 'Sultan Kudarat', '9804', 'Pres. Quirino');
INSERT INTO `address_lookup` VALUES ('2075', 'PH', 'Sultan Kudarat', '9811', 'Sen. Ninoy Aquino');
INSERT INTO `address_lookup` VALUES ('2076', 'PH', 'Sultan Kudarat', '9800', 'Tacurong');
INSERT INTO `address_lookup` VALUES ('2077', 'PH', 'Sulu', '7407', 'Indanan');
INSERT INTO `address_lookup` VALUES ('2078', 'PH', 'Sulu', '7400', 'Jolo');
INSERT INTO `address_lookup` VALUES ('2079', 'PH', 'Sulu', '7416', 'Kalingalan Kalauang');
INSERT INTO `address_lookup` VALUES ('2080', 'PH', 'Sulu', '7411', 'Lugus');
INSERT INTO `address_lookup` VALUES ('2081', 'PH', 'Sulu', '7404', 'Luuk');
INSERT INTO `address_lookup` VALUES ('2082', 'PH', 'Sulu', '7409', 'Maimbung');
INSERT INTO `address_lookup` VALUES ('2083', 'PH', 'Sulu', '7413', 'Marungas');
INSERT INTO `address_lookup` VALUES ('2084', 'PH', 'Sulu', '7402', 'Panamao');
INSERT INTO `address_lookup` VALUES ('2085', 'PH', 'Sulu', '7415', 'Panglima Estino');
INSERT INTO `address_lookup` VALUES ('2086', 'PH', 'Sulu', '7414', 'Panguntaran');
INSERT INTO `address_lookup` VALUES ('2087', 'PH', 'Sulu', '7408', 'Parang');
INSERT INTO `address_lookup` VALUES ('2088', 'PH', 'Sulu', '7405', 'Pata');
INSERT INTO `address_lookup` VALUES ('2089', 'PH', 'Sulu', '7401', 'Patikul');
INSERT INTO `address_lookup` VALUES ('2090', 'PH', 'Sulu', '7412', 'Siasi');
INSERT INTO `address_lookup` VALUES ('2091', 'PH', 'Sulu', '7403', 'Talipao');
INSERT INTO `address_lookup` VALUES ('2092', 'PH', 'Sulu', '7410', 'Tapul');
INSERT INTO `address_lookup` VALUES ('2093', 'PH', 'Sulu', '7406', 'Tongkil');
INSERT INTO `address_lookup` VALUES ('2094', 'PH', 'Surigao del Norte', '8425', 'Alegria');
INSERT INTO `address_lookup` VALUES ('2095', 'PH', 'Surigao del Norte', '8408', 'Bacuag');
INSERT INTO `address_lookup` VALUES ('2096', 'PH', 'Surigao del Norte', '8424', 'Burgos');
INSERT INTO `address_lookup` VALUES ('2097', 'PH', 'Surigao del Norte', '8410', 'Claver');
INSERT INTO `address_lookup` VALUES ('2098', 'PH', 'Surigao del Norte', '8417', 'Dapa');
INSERT INTO `address_lookup` VALUES ('2099', 'PH', 'Surigao del Norte', '8418', 'Del Carmen');
INSERT INTO `address_lookup` VALUES ('2100', 'PH', 'Surigao del Norte', '8419', 'Gen. Luna');
INSERT INTO `address_lookup` VALUES ('2101', 'PH', 'Surigao del Norte', '8409', 'Gigaquit');
INSERT INTO `address_lookup` VALUES ('2102', 'PH', 'Surigao del Norte', '8407', 'Mainit');
INSERT INTO `address_lookup` VALUES ('2103', 'PH', 'Surigao del Norte', '8402', 'Malimano');
INSERT INTO `address_lookup` VALUES ('2104', 'PH', 'Surigao del Norte', '8420', 'Pilar');
INSERT INTO `address_lookup` VALUES ('2105', 'PH', 'Surigao del Norte', '8405', 'Placer');
INSERT INTO `address_lookup` VALUES ('2106', 'PH', 'Surigao del Norte', '8423', 'San Benito');
INSERT INTO `address_lookup` VALUES ('2107', 'PH', 'Surigao del Norte', '8401', 'San Francisco');
INSERT INTO `address_lookup` VALUES ('2108', 'PH', 'Surigao del Norte', '8421', 'San Isidro');
INSERT INTO `address_lookup` VALUES ('2109', 'PH', 'Surigao del Norte', '8422', 'Santa Monica');
INSERT INTO `address_lookup` VALUES ('2110', 'PH', 'Surigao del Norte', '8404', 'Sison');
INSERT INTO `address_lookup` VALUES ('2111', 'PH', 'Surigao del Norte', '8416', 'Socorro');
INSERT INTO `address_lookup` VALUES ('2112', 'PH', 'Surigao del Norte', '8400', 'Surigao City');
INSERT INTO `address_lookup` VALUES ('2113', 'PH', 'Surigao del Norte', '8403', 'Tagana-an');
INSERT INTO `address_lookup` VALUES ('2114', 'PH', 'Surigao del Norte', '8406', 'Tubod');
INSERT INTO `address_lookup` VALUES ('2115', 'PH', 'Surigao del Sur', '8309', 'Barobo');
INSERT INTO `address_lookup` VALUES ('2116', 'PH', 'Surigao del Sur', '8303', 'Bayabas');
INSERT INTO `address_lookup` VALUES ('2117', 'PH', 'Surigao del Sur', '8311', 'Bislig');
INSERT INTO `address_lookup` VALUES ('2118', 'PH', 'Surigao del Sur', '8304', 'Cagwait');
INSERT INTO `address_lookup` VALUES ('2119', 'PH', 'Surigao del Sur', '8317', 'Cantillan');
INSERT INTO `address_lookup` VALUES ('2120', 'PH', 'Surigao del Sur', '8315', 'Carmen');
INSERT INTO `address_lookup` VALUES ('2121', 'PH', 'Surigao del Sur', '8318', 'Carrascal');
INSERT INTO `address_lookup` VALUES ('2122', 'PH', 'Surigao del Sur', '8313', 'Cortez');
INSERT INTO `address_lookup` VALUES ('2123', 'PH', 'Surigao del Sur', '8310', 'Hinatuan');
INSERT INTO `address_lookup` VALUES ('2124', 'PH', 'Surigao del Sur', '8314', 'Lanuza');
INSERT INTO `address_lookup` VALUES ('2125', 'PH', 'Surigao del Sur', '8307', 'Lianga');
INSERT INTO `address_lookup` VALUES ('2126', 'PH', 'Surigao del Sur', '8312', 'Lingig');
INSERT INTO `address_lookup` VALUES ('2127', 'PH', 'Surigao del Sur', '8316', 'Madrid');
INSERT INTO `address_lookup` VALUES ('2128', 'PH', 'Surigao del Sur', '8306', 'Marihatag');
INSERT INTO `address_lookup` VALUES ('2129', 'PH', 'Surigao del Sur', '8305', 'San Agustin');
INSERT INTO `address_lookup` VALUES ('2130', 'PH', 'Surigao del Sur', '8301', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('2131', 'PH', 'Surigao del Sur', '8308', 'Tagbina');
INSERT INTO `address_lookup` VALUES ('2132', 'PH', 'Surigao del Sur', '8302', 'Tago');
INSERT INTO `address_lookup` VALUES ('2133', 'PH', 'Surigao del Sur', '8300', 'Tandag');
INSERT INTO `address_lookup` VALUES ('2134', 'PH', 'Tarlac', '2310', 'Anao');
INSERT INTO `address_lookup` VALUES ('2135', 'PH', 'Tarlac', '2317', 'Bamban');
INSERT INTO `address_lookup` VALUES ('2136', 'PH', 'Tarlac', '2306', 'Camiling');
INSERT INTO `address_lookup` VALUES ('2137', 'PH', 'Tarlac', '2333', 'Capas');
INSERT INTO `address_lookup` VALUES ('2138', 'PH', 'Tarlac', '2316', 'Concepcion');
INSERT INTO `address_lookup` VALUES ('2139', 'PH', 'Tarlac', '2302', 'Gerona');
INSERT INTO `address_lookup` VALUES ('2140', 'PH', 'Tarlac', '2314', 'La Paz');
INSERT INTO `address_lookup` VALUES ('2141', 'PH', 'Tarlac', '2304', 'Mayantoc');
INSERT INTO `address_lookup` VALUES ('2142', 'PH', 'Tarlac', '2334', 'Moncada');
INSERT INTO `address_lookup` VALUES ('2143', 'PH', 'Tarlac', '2307', '[Paniqui]');
INSERT INTO `address_lookup` VALUES ('2144', 'PH', 'Tarlac', '2312', 'Pura');
INSERT INTO `address_lookup` VALUES ('2145', 'PH', 'Tarlac', '2311', 'Ramos');
INSERT INTO `address_lookup` VALUES ('2146', 'PH', 'Tarlac', '2305', 'San Clemente');
INSERT INTO `address_lookup` VALUES ('2147', 'PH', 'Tarlac', '2309', 'San Manuel');
INSERT INTO `address_lookup` VALUES ('2148', 'PH', 'Tarlac', '2301', 'San Jose');
INSERT INTO `address_lookup` VALUES ('2149', 'PH', 'Tarlac', '2303', 'Santa Ignacia');
INSERT INTO `address_lookup` VALUES ('2150', 'PH', 'Tarlac', '2300', 'Tarlac City');
INSERT INTO `address_lookup` VALUES ('2151', 'PH', 'Tarlac', '2313', 'Victoria');
INSERT INTO `address_lookup` VALUES ('2152', 'PH', 'Tarlac', '7500', 'Bongao');
INSERT INTO `address_lookup` VALUES ('2153', 'PH', 'Tarlac', '7508', 'Mapun (Cagayan de Sulu)');
INSERT INTO `address_lookup` VALUES ('2154', 'PH', 'Tarlac', '7509', 'Languyan');
INSERT INTO `address_lookup` VALUES ('2155', 'PH', 'Tarlac', '7501', 'Panglima Sugala (Balimbing)');
INSERT INTO `address_lookup` VALUES ('2156', 'PH', 'Tarlac', '7503', 'Sapa-Sapa');
INSERT INTO `address_lookup` VALUES ('2157', 'PH', 'Tarlac', '7505', 'Simunul');
INSERT INTO `address_lookup` VALUES ('2158', 'PH', 'Tarlac', '7506', 'Sitangkai');
INSERT INTO `address_lookup` VALUES ('2159', 'PH', 'Tarlac', '7504', 'South Ubian');
INSERT INTO `address_lookup` VALUES ('2160', 'PH', 'Tarlac', '7507', 'Turtle Island (Taganak)');
INSERT INTO `address_lookup` VALUES ('2161', 'PH', 'Tarlac', '7502', 'Tandubas');
INSERT INTO `address_lookup` VALUES ('2162', 'PH', 'Western Samar', '6724', 'Almagro');
INSERT INTO `address_lookup` VALUES ('2163', 'PH', 'Western Samar', '6720', 'Basey');
INSERT INTO `address_lookup` VALUES ('2164', 'PH', 'Western Samar', '6710', 'Calbayog City');
INSERT INTO `address_lookup` VALUES ('2165', 'PH', 'Western Samar', '6715', 'Calbiga');
INSERT INTO `address_lookup` VALUES ('2166', 'PH', 'Western Samar', '6700', 'Catbalogan');
INSERT INTO `address_lookup` VALUES ('2167', 'PH', 'Western Samar', '6722', 'Daram');
INSERT INTO `address_lookup` VALUES ('2168', 'PH', 'Western Samar', '6706', 'Gandara');
INSERT INTO `address_lookup` VALUES ('2169', 'PH', 'Western Samar', '6713', 'Hinabangan');
INSERT INTO `address_lookup` VALUES ('2170', 'PH', 'Western Samar', '6701', 'Jiabong');
INSERT INTO `address_lookup` VALUES ('2171', 'PH', 'Western Samar', '6721', 'Marabut');
INSERT INTO `address_lookup` VALUES ('2172', 'PH', 'Western Samar', '6708', 'Matuguinao');
INSERT INTO `address_lookup` VALUES ('2173', 'PH', 'Western Samar', '6702', 'Motiong');
INSERT INTO `address_lookup` VALUES ('2174', 'PH', 'Western Samar', '6705', 'Pagsanghan');
INSERT INTO `address_lookup` VALUES ('2175', 'PH', 'Western Samar', '6703', 'Paranas (Wright)');
INSERT INTO `address_lookup` VALUES ('2176', 'PH', 'Western Samar', '6716', 'Pinabacdao');
INSERT INTO `address_lookup` VALUES ('2177', 'PH', 'Western Samar', '6707', 'San Jorge');
INSERT INTO `address_lookup` VALUES ('2178', 'PH', 'Western Samar', '6723', 'San Jose De Buan');
INSERT INTO `address_lookup` VALUES ('2179', 'PH', 'Western Samar', '6714', 'San Sebastian');
INSERT INTO `address_lookup` VALUES ('2180', 'PH', 'Western Samar', '6709', 'Santa Margarita');
INSERT INTO `address_lookup` VALUES ('2181', 'PH', 'Western Samar', '6718', 'Santa Rita');
INSERT INTO `address_lookup` VALUES ('2182', 'PH', 'Western Samar', '6711', 'Santo Niño');
INSERT INTO `address_lookup` VALUES ('2183', 'PH', 'Western Samar', '6712', 'Tagapul-an');
INSERT INTO `address_lookup` VALUES ('2184', 'PH', 'Western Samar', '6719', 'Talalora');
INSERT INTO `address_lookup` VALUES ('2185', 'PH', 'Western Samar', '6704', 'Tarangnan');
INSERT INTO `address_lookup` VALUES ('2186', 'PH', 'Western Samar', '6717', 'Villareal');
INSERT INTO `address_lookup` VALUES ('2187', 'PH', 'Western Samar', '6725', 'Zumarraga');
INSERT INTO `address_lookup` VALUES ('2188', 'PH', 'Zambales', '2202', 'Botolan');
INSERT INTO `address_lookup` VALUES ('2189', 'PH', 'Zambales', '2203', 'Cabangan');
INSERT INTO `address_lookup` VALUES ('2190', 'PH', 'Zambales', '2212', 'Candelaria');
INSERT INTO `address_lookup` VALUES ('2191', 'PH', 'Zambales', '2208', 'Castillejos');
INSERT INTO `address_lookup` VALUES ('2192', 'PH', 'Zambales', '2201', 'Iba');
INSERT INTO `address_lookup` VALUES ('2193', 'PH', 'Zambales', '2211', 'Masinloc');
INSERT INTO `address_lookup` VALUES ('2194', 'PH', 'Zambales', '2200', 'Olongapo City');
INSERT INTO `address_lookup` VALUES ('2195', 'PH', 'Zambales', '2210', 'Palauig & Scarborough Shoal');
INSERT INTO `address_lookup` VALUES ('2196', 'PH', 'Zambales', '2206', 'San Antonio');
INSERT INTO `address_lookup` VALUES ('2197', 'PH', 'Zambales', '2204', 'San Felipe');
INSERT INTO `address_lookup` VALUES ('2198', 'PH', 'Zambales', '2207', 'San Marcelino');
INSERT INTO `address_lookup` VALUES ('2199', 'PH', 'Zambales', '2205', 'San Narciso');
INSERT INTO `address_lookup` VALUES ('2200', 'PH', 'Zambales', '2213', 'Santa Cruz');
INSERT INTO `address_lookup` VALUES ('2201', 'PH', 'Zambales', '2209', 'Subic');
INSERT INTO `address_lookup` VALUES ('2202', 'PH', 'Zambales', '2222', 'Subic Bay Freeport Zone (Metro Subic)');
INSERT INTO `address_lookup` VALUES ('2203', 'PH', 'Zamboanga del Norte', '7123', 'Baliguian');
INSERT INTO `address_lookup` VALUES ('2204', 'PH', 'Zamboanga del Norte', '7101', 'Dapitan City');
INSERT INTO `address_lookup` VALUES ('2205', 'PH', 'Zamboanga del Norte', '7100', 'Dipolog City');
INSERT INTO `address_lookup` VALUES ('2206', 'PH', 'Zamboanga del Norte', '7118', 'Gutalac');
INSERT INTO `address_lookup` VALUES ('2207', 'PH', 'Zamboanga del Norte', '7111', 'Jose Dalman (Ponot)');
INSERT INTO `address_lookup` VALUES ('2208', 'PH', 'Zamboanga del Norte', '7124', 'Kalawit');
INSERT INTO `address_lookup` VALUES ('2209', 'PH', 'Zamboanga del Norte', '7109', 'Katipunan');
INSERT INTO `address_lookup` VALUES ('2210', 'PH', 'Zamboanga del Norte', '7119', 'La Libertad');
INSERT INTO `address_lookup` VALUES ('2211', 'PH', 'Zamboanga del Norte', '7117', 'Labason');
INSERT INTO `address_lookup` VALUES ('2212', 'PH', 'Zamboanga del Norte', '7115', 'Liloy');
INSERT INTO `address_lookup` VALUES ('2213', 'PH', 'Zamboanga del Norte', '7110', 'Manukan');
INSERT INTO `address_lookup` VALUES ('2214', 'PH', 'Zamboanga del Norte', '7107', 'Mutia');
INSERT INTO `address_lookup` VALUES ('2215', 'PH', 'Zamboanga del Norte', '7105', 'Pinan');
INSERT INTO `address_lookup` VALUES ('2216', 'PH', 'Zamboanga del Norte', '7106', 'Polanco');
INSERT INTO `address_lookup` VALUES ('2217', 'PH', 'Zamboanga del Norte', '7104', 'Rizal');
INSERT INTO `address_lookup` VALUES ('2218', 'PH', 'Zamboanga del Norte', '7102', 'Roxas');
INSERT INTO `address_lookup` VALUES ('2219', 'PH', 'Zamboanga del Norte', '7114', 'Salug');
INSERT INTO `address_lookup` VALUES ('2220', 'PH', 'Zamboanga del Norte', '7108', 'Sergio Osmeña');
INSERT INTO `address_lookup` VALUES ('2221', 'PH', 'Zamboanga del Norte', '7113', 'Siayan');
INSERT INTO `address_lookup` VALUES ('2222', 'PH', 'Zamboanga del Norte', '7122', 'Sibuco');
INSERT INTO `address_lookup` VALUES ('2223', 'PH', 'Zamboanga del Norte', '7103', 'Sibutad');
INSERT INTO `address_lookup` VALUES ('2224', 'PH', 'Zamboanga del Norte', '7112', 'Sindangan (Leon B. Postigo)');
INSERT INTO `address_lookup` VALUES ('2225', 'PH', 'Zamboanga del Norte', '7120', 'Siocon');
INSERT INTO `address_lookup` VALUES ('2226', 'PH', 'Zamboanga del Norte', '7121', 'Siraway');
INSERT INTO `address_lookup` VALUES ('2227', 'PH', 'Zamboanga del Norte', '7116', 'Tampilisan');
INSERT INTO `address_lookup` VALUES ('2228', 'PH', 'Zamboanga del Sur', '7020', 'Aurora');
INSERT INTO `address_lookup` VALUES ('2229', 'PH', 'Zamboanga del Sur', '7011', 'Bayog');
INSERT INTO `address_lookup` VALUES ('2230', 'PH', 'Zamboanga del Sur', '7032', 'Dimataling');
INSERT INTO `address_lookup` VALUES ('2231', 'PH', 'Zamboanga del Sur', '7030', 'Dinas');
INSERT INTO `address_lookup` VALUES ('2232', 'PH', 'Zamboanga del Sur', '7015', 'Dumalinao');
INSERT INTO `address_lookup` VALUES ('2233', 'PH', 'Zamboanga del Sur', '7028', 'Dumingag');
INSERT INTO `address_lookup` VALUES ('2234', 'PH', 'Zamboanga del Sur', '7042', 'Guipos');
INSERT INTO `address_lookup` VALUES ('2235', 'PH', 'Zamboanga del Sur', '7027', 'Josefina');
INSERT INTO `address_lookup` VALUES ('2236', 'PH', 'Zamboanga del Sur', '7005', 'Kumalarang');
INSERT INTO `address_lookup` VALUES ('2237', 'PH', 'Zamboanga del Sur', '7017', 'Labangan');
INSERT INTO `address_lookup` VALUES ('2238', 'PH', 'Zamboanga del Sur', '7014', 'Lakewood');
INSERT INTO `address_lookup` VALUES ('2239', 'PH', 'Zamboanga del Sur', '7037', 'Lapuyan');
INSERT INTO `address_lookup` VALUES ('2240', 'PH', 'Zamboanga del Sur', '7026', 'Mahayag');
INSERT INTO `address_lookup` VALUES ('2241', 'PH', 'Zamboanga del Sur', '7035', 'Margosatubig');
INSERT INTO `address_lookup` VALUES ('2242', 'PH', 'Zamboanga del Sur', '7021', 'Midsalip');
INSERT INTO `address_lookup` VALUES ('2243', 'PH', 'Zamboanga del Sur', '7023', 'Molave');
INSERT INTO `address_lookup` VALUES ('2244', 'PH', 'Zamboanga del Sur', '7016', 'Pagadian City');
INSERT INTO `address_lookup` VALUES ('2245', 'PH', 'Zamboanga del Sur', '7033', 'Pitogo');
INSERT INTO `address_lookup` VALUES ('2246', 'PH', 'Zamboanga del Sur', '7024', 'Ramon Magsaysay (Liargo)');
INSERT INTO `address_lookup` VALUES ('2247', 'PH', 'Zamboanga del Sur', '7029', 'San Miguel');
INSERT INTO `address_lookup` VALUES ('2248', 'PH', 'Zamboanga del Sur', '7031', 'San Pablo');
INSERT INTO `address_lookup` VALUES ('2249', 'PH', 'Zamboanga del Sur', '7022', 'Sominot (Don Mariano Marcos)');
INSERT INTO `address_lookup` VALUES ('2250', 'PH', 'Zamboanga del Sur', '7034', 'Tabina');
INSERT INTO `address_lookup` VALUES ('2251', 'PH', 'Zamboanga del Sur', '7025', 'Tambulig');
INSERT INTO `address_lookup` VALUES ('2252', 'PH', 'Zamboanga del Sur', '7000', 'Zamboanga City');
INSERT INTO `address_lookup` VALUES ('2253', 'PH', 'Zamboanga del Sur', '7043', 'Tigbao');
INSERT INTO `address_lookup` VALUES ('2254', 'PH', 'Zamboanga del Sur', '7019', 'Tukuran');
INSERT INTO `address_lookup` VALUES ('2255', 'PH', 'Zamboanga del Sur', '7036', 'Vincenzo A. Sagun');
INSERT INTO `address_lookup` VALUES ('2256', 'PH', 'Zamboanga Sibugay', '7040', 'Alicia');
INSERT INTO `address_lookup` VALUES ('2257', 'PH', 'Zamboanga Sibugay', '7009', 'Buug');
INSERT INTO `address_lookup` VALUES ('2258', 'PH', 'Zamboanga Sibugay', '7039', 'Diplahan');
INSERT INTO `address_lookup` VALUES ('2259', 'PH', 'Zamboanga Sibugay', '7007', 'Imelda');
INSERT INTO `address_lookup` VALUES ('2260', 'PH', 'Zamboanga Sibugay', '7001', 'Ipil');
INSERT INTO `address_lookup` VALUES ('2261', 'PH', 'Zamboanga Sibugay', '7005', 'Kabasalan');
INSERT INTO `address_lookup` VALUES ('2262', 'PH', 'Zamboanga Sibugay', '7010', 'Mabuhay');
INSERT INTO `address_lookup` VALUES ('2263', 'PH', 'Zamboanga Sibugay', '7038', 'Malangas');
INSERT INTO `address_lookup` VALUES ('2264', 'PH', 'Zamboanga Sibugay', '7004', 'Naga');
INSERT INTO `address_lookup` VALUES ('2265', 'PH', 'Zamboanga Sibugay', '7041', 'Olutanga');
INSERT INTO `address_lookup` VALUES ('2266', 'PH', 'Zamboanga Sibugay', '7008', 'Payao');
INSERT INTO `address_lookup` VALUES ('2267', 'PH', 'Zamboanga Sibugay', '7002', 'Roseller T. Lim');
INSERT INTO `address_lookup` VALUES ('2268', 'PH', 'Zamboanga Sibugay', '7006', 'Siay');
INSERT INTO `address_lookup` VALUES ('2269', 'PH', 'Zamboanga Sibugay', '7012', 'Talusan');
INSERT INTO `address_lookup` VALUES ('2270', 'PH', 'Zamboanga Sibugay', '7003', 'Titay');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `country_id` varchar(100) DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11402 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', 'Yamaha', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('2', 'Kawasaki', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('3', 'Yamaha', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('4', 'Kawasaki', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('5', 'Yamaha', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('6', 'Kawasaki', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('7', 'Yamaha', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('8', 'Kawasaki', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('9', 'Yamaha', '1', 'null', '1', null);
INSERT INTO `brand` VALUES ('10', null, '10', null, null, 'Yeah I\'ve updated the data');
INSERT INTO `brand` VALUES ('1251', 'KAWASAKI', '5', null, null, 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1351', null, '10', null, null, 'Yeah I\'ve changed updated the data');
INSERT INTO `brand` VALUES ('1401', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1451', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1551', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1601', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1651', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1701', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1751', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1801', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1851', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1901', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('1951', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('2001', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('2051', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('2101', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('2151', 'ISUZU', '5', null, '1', 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('11301', 'ISUZU', '5', null, null, 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('11351', 'ISUZU', '5', null, null, 'DEMO DEMO DEMO DEMO DEMO');
INSERT INTO `brand` VALUES ('11401', 'ISUZU', '5', null, null, 'DEMO DEMO DEMO DEMO DEMO');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(100) DEFAULT NULL,
  `color_photo` varchar(255) DEFAULT NULL,
  `color_hex` varchar(255) DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of color
-- ----------------------------

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `contact_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2502 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('2401', 'EMaIL', 'Jhon Ronell Arana', null);
INSERT INTO `contact` VALUES ('2451', 'email', 'B@B.com', null);
INSERT INTO `contact` VALUES ('2501', 'email', 'B@B.com', null);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'US', 'United States');
INSERT INTO `country` VALUES ('2', 'CA', 'Canada');
INSERT INTO `country` VALUES ('3', 'AF', 'Afghanistan');
INSERT INTO `country` VALUES ('4', 'AL', 'Albania');
INSERT INTO `country` VALUES ('5', 'DZ', 'Algeria');
INSERT INTO `country` VALUES ('6', 'DS', 'American Samoa');
INSERT INTO `country` VALUES ('7', 'AD', 'Andorra');
INSERT INTO `country` VALUES ('8', 'AO', 'Angola');
INSERT INTO `country` VALUES ('9', 'AI', 'Anguilla');
INSERT INTO `country` VALUES ('10', 'AQ', 'Antarctica');
INSERT INTO `country` VALUES ('11', 'AG', 'Antigua and/or Barbuda');
INSERT INTO `country` VALUES ('12', 'AR', 'Argentina');
INSERT INTO `country` VALUES ('13', 'AM', 'Armenia');
INSERT INTO `country` VALUES ('14', 'AW', 'Aruba');
INSERT INTO `country` VALUES ('15', 'AU', 'Australia');
INSERT INTO `country` VALUES ('16', 'AT', 'Austria');
INSERT INTO `country` VALUES ('17', 'AZ', 'Azerbaijan');
INSERT INTO `country` VALUES ('18', 'BS', 'Bahamas');
INSERT INTO `country` VALUES ('19', 'BH', 'Bahrain');
INSERT INTO `country` VALUES ('20', 'BD', 'Bangladesh');
INSERT INTO `country` VALUES ('21', 'BB', 'Barbados');
INSERT INTO `country` VALUES ('22', 'BY', 'Belarus');
INSERT INTO `country` VALUES ('23', 'BE', 'Belgium');
INSERT INTO `country` VALUES ('24', 'BZ', 'Belize');
INSERT INTO `country` VALUES ('25', 'BJ', 'Benin');
INSERT INTO `country` VALUES ('26', 'BM', 'Bermuda');
INSERT INTO `country` VALUES ('27', 'BT', 'Bhutan');
INSERT INTO `country` VALUES ('28', 'BO', 'Bolivia');
INSERT INTO `country` VALUES ('29', 'BA', 'Bosnia and Herzegovina');
INSERT INTO `country` VALUES ('30', 'BW', 'Botswana');
INSERT INTO `country` VALUES ('31', 'BV', 'Bouvet Island');
INSERT INTO `country` VALUES ('32', 'BR', 'Brazil');
INSERT INTO `country` VALUES ('33', 'IO', 'British lndian Ocean Territory');
INSERT INTO `country` VALUES ('34', 'BN', 'Brunei Darussalam');
INSERT INTO `country` VALUES ('35', 'BG', 'Bulgaria');
INSERT INTO `country` VALUES ('36', 'BF', 'Burkina Faso');
INSERT INTO `country` VALUES ('37', 'BI', 'Burundi');
INSERT INTO `country` VALUES ('38', 'KH', 'Cambodia');
INSERT INTO `country` VALUES ('39', 'CM', 'Cameroon');
INSERT INTO `country` VALUES ('40', 'CV', 'Cape Verde');
INSERT INTO `country` VALUES ('41', 'KY', 'Cayman Islands');
INSERT INTO `country` VALUES ('42', 'CF', 'Central African Republic');
INSERT INTO `country` VALUES ('43', 'TD', 'Chad');
INSERT INTO `country` VALUES ('44', 'CL', 'Chile');
INSERT INTO `country` VALUES ('45', 'CN', 'China');
INSERT INTO `country` VALUES ('46', 'CX', 'Christmas Island');
INSERT INTO `country` VALUES ('47', 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `country` VALUES ('48', 'CO', 'Colombia');
INSERT INTO `country` VALUES ('49', 'KM', 'Comoros');
INSERT INTO `country` VALUES ('50', 'CG', 'Congo');
INSERT INTO `country` VALUES ('51', 'CK', 'Cook Islands');
INSERT INTO `country` VALUES ('52', 'CR', 'Costa Rica');
INSERT INTO `country` VALUES ('53', 'HR', 'Croatia (Hrvatska)');
INSERT INTO `country` VALUES ('54', 'CU', 'Cuba');
INSERT INTO `country` VALUES ('55', 'CY', 'Cyprus');
INSERT INTO `country` VALUES ('56', 'CZ', 'Czech Republic');
INSERT INTO `country` VALUES ('57', 'DK', 'Denmark');
INSERT INTO `country` VALUES ('58', 'DJ', 'Djibouti');
INSERT INTO `country` VALUES ('59', 'DM', 'Dominica');
INSERT INTO `country` VALUES ('60', 'DO', 'Dominican Republic');
INSERT INTO `country` VALUES ('61', 'TP', 'East Timor');
INSERT INTO `country` VALUES ('62', 'EC', 'Ecuador');
INSERT INTO `country` VALUES ('63', 'EG', 'Egypt');
INSERT INTO `country` VALUES ('64', 'SV', 'El Salvador');
INSERT INTO `country` VALUES ('65', 'GQ', 'Equatorial Guinea');
INSERT INTO `country` VALUES ('66', 'ER', 'Eritrea');
INSERT INTO `country` VALUES ('67', 'EE', 'Estonia');
INSERT INTO `country` VALUES ('68', 'ET', 'Ethiopia');
INSERT INTO `country` VALUES ('69', 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `country` VALUES ('70', 'FO', 'Faroe Islands');
INSERT INTO `country` VALUES ('71', 'FJ', 'Fiji');
INSERT INTO `country` VALUES ('72', 'FI', 'Finland');
INSERT INTO `country` VALUES ('73', 'FR', 'France');
INSERT INTO `country` VALUES ('74', 'FX', 'France, Metropolitan');
INSERT INTO `country` VALUES ('75', 'GF', 'French Guiana');
INSERT INTO `country` VALUES ('76', 'PF', 'French Polynesia');
INSERT INTO `country` VALUES ('77', 'TF', 'French Southern Territories');
INSERT INTO `country` VALUES ('78', 'GA', 'Gabon');
INSERT INTO `country` VALUES ('79', 'GM', 'Gambia');
INSERT INTO `country` VALUES ('80', 'GE', 'Georgia');
INSERT INTO `country` VALUES ('81', 'DE', 'Germany');
INSERT INTO `country` VALUES ('82', 'GH', 'Ghana');
INSERT INTO `country` VALUES ('83', 'GI', 'Gibraltar');
INSERT INTO `country` VALUES ('84', 'GR', 'Greece');
INSERT INTO `country` VALUES ('85', 'GL', 'Greenland');
INSERT INTO `country` VALUES ('86', 'GD', 'Grenada');
INSERT INTO `country` VALUES ('87', 'GP', 'Guadeloupe');
INSERT INTO `country` VALUES ('88', 'GU', 'Guam');
INSERT INTO `country` VALUES ('89', 'GT', 'Guatemala');
INSERT INTO `country` VALUES ('90', 'GN', 'Guinea');
INSERT INTO `country` VALUES ('91', 'GW', 'Guinea-Bissau');
INSERT INTO `country` VALUES ('92', 'GY', 'Guyana');
INSERT INTO `country` VALUES ('93', 'HT', 'Haiti');
INSERT INTO `country` VALUES ('94', 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `country` VALUES ('95', 'HN', 'Honduras');
INSERT INTO `country` VALUES ('96', 'HK', 'Hong Kong');
INSERT INTO `country` VALUES ('97', 'HU', 'Hungary');
INSERT INTO `country` VALUES ('98', 'IS', 'Iceland');
INSERT INTO `country` VALUES ('99', 'IN', 'India');
INSERT INTO `country` VALUES ('100', 'ID', 'Indonesia');
INSERT INTO `country` VALUES ('101', 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `country` VALUES ('102', 'IQ', 'Iraq');
INSERT INTO `country` VALUES ('103', 'IE', 'Ireland');
INSERT INTO `country` VALUES ('104', 'IL', 'Israel');
INSERT INTO `country` VALUES ('105', 'IT', 'Italy');
INSERT INTO `country` VALUES ('106', 'CI', 'Ivory Coast');
INSERT INTO `country` VALUES ('107', 'JM', 'Jamaica');
INSERT INTO `country` VALUES ('108', 'JP', 'Japan');
INSERT INTO `country` VALUES ('109', 'JO', 'Jordan');
INSERT INTO `country` VALUES ('110', 'KZ', 'Kazakhstan');
INSERT INTO `country` VALUES ('111', 'KE', 'Kenya');
INSERT INTO `country` VALUES ('112', 'KI', 'Kiribati');
INSERT INTO `country` VALUES ('113', 'KP', 'Korea, Democratic People\'s Republic of');
INSERT INTO `country` VALUES ('114', 'KR', 'Korea, Republic of');
INSERT INTO `country` VALUES ('115', 'XK', 'Kosovo');
INSERT INTO `country` VALUES ('116', 'KW', 'Kuwait');
INSERT INTO `country` VALUES ('117', 'KG', 'Kyrgyzstan');
INSERT INTO `country` VALUES ('118', 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `country` VALUES ('119', 'LV', 'Latvia');
INSERT INTO `country` VALUES ('120', 'LB', 'Lebanon');
INSERT INTO `country` VALUES ('121', 'LS', 'Lesotho');
INSERT INTO `country` VALUES ('122', 'LR', 'Liberia');
INSERT INTO `country` VALUES ('123', 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `country` VALUES ('124', 'LI', 'Liechtenstein');
INSERT INTO `country` VALUES ('125', 'LT', 'Lithuania');
INSERT INTO `country` VALUES ('126', 'LU', 'Luxembourg');
INSERT INTO `country` VALUES ('127', 'MO', 'Macau');
INSERT INTO `country` VALUES ('128', 'MK', 'Macedonia');
INSERT INTO `country` VALUES ('129', 'MG', 'Madagascar');
INSERT INTO `country` VALUES ('130', 'MW', 'Malawi');
INSERT INTO `country` VALUES ('131', 'MY', 'Malaysia');
INSERT INTO `country` VALUES ('132', 'MV', 'Maldives');
INSERT INTO `country` VALUES ('133', 'ML', 'Mali');
INSERT INTO `country` VALUES ('134', 'MT', 'Malta');
INSERT INTO `country` VALUES ('135', 'MH', 'Marshall Islands');
INSERT INTO `country` VALUES ('136', 'MQ', 'Martinique');
INSERT INTO `country` VALUES ('137', 'MR', 'Mauritania');
INSERT INTO `country` VALUES ('138', 'MU', 'Mauritius');
INSERT INTO `country` VALUES ('139', 'TY', 'Mayotte');
INSERT INTO `country` VALUES ('140', 'MX', 'Mexico');
INSERT INTO `country` VALUES ('141', 'FM', 'Micronesia, Federated States of');
INSERT INTO `country` VALUES ('142', 'MD', 'Moldova, Republic of');
INSERT INTO `country` VALUES ('143', 'MC', 'Monaco');
INSERT INTO `country` VALUES ('144', 'MN', 'Mongolia');
INSERT INTO `country` VALUES ('145', 'ME', 'Montenegro');
INSERT INTO `country` VALUES ('146', 'MS', 'Montserrat');
INSERT INTO `country` VALUES ('147', 'MA', 'Morocco');
INSERT INTO `country` VALUES ('148', 'MZ', 'Mozambique');
INSERT INTO `country` VALUES ('149', 'MM', 'Myanmar');
INSERT INTO `country` VALUES ('150', 'NA', 'Namibia');
INSERT INTO `country` VALUES ('151', 'NR', 'Nauru');
INSERT INTO `country` VALUES ('152', 'NP', 'Nepal');
INSERT INTO `country` VALUES ('153', 'NL', 'Netherlands');
INSERT INTO `country` VALUES ('154', 'AN', 'Netherlands Antilles');
INSERT INTO `country` VALUES ('155', 'NC', 'New Caledonia');
INSERT INTO `country` VALUES ('156', 'NZ', 'New Zealand');
INSERT INTO `country` VALUES ('157', 'NI', 'Nicaragua');
INSERT INTO `country` VALUES ('158', 'NE', 'Niger');
INSERT INTO `country` VALUES ('159', 'NG', 'Nigeria');
INSERT INTO `country` VALUES ('160', 'NU', 'Niue');
INSERT INTO `country` VALUES ('161', 'NF', 'Norfork Island');
INSERT INTO `country` VALUES ('162', 'MP', 'Northern Mariana Islands');
INSERT INTO `country` VALUES ('163', 'NO', 'Norway');
INSERT INTO `country` VALUES ('164', 'OM', 'Oman');
INSERT INTO `country` VALUES ('165', 'PK', 'Pakistan');
INSERT INTO `country` VALUES ('166', 'PW', 'Palau');
INSERT INTO `country` VALUES ('167', 'PA', 'Panama');
INSERT INTO `country` VALUES ('168', 'PG', 'Papua New Guinea');
INSERT INTO `country` VALUES ('169', 'PY', 'Paraguay');
INSERT INTO `country` VALUES ('170', 'PE', 'Peru');
INSERT INTO `country` VALUES ('171', 'PH', 'Philippines');
INSERT INTO `country` VALUES ('172', 'PN', 'Pitcairn');
INSERT INTO `country` VALUES ('173', 'PL', 'Poland');
INSERT INTO `country` VALUES ('174', 'PT', 'Portugal');
INSERT INTO `country` VALUES ('175', 'PR', 'Puerto Rico');
INSERT INTO `country` VALUES ('176', 'QA', 'Qatar');
INSERT INTO `country` VALUES ('177', 'RE', 'Reunion');
INSERT INTO `country` VALUES ('178', 'RO', 'Romania');
INSERT INTO `country` VALUES ('179', 'RU', 'Russian Federation');
INSERT INTO `country` VALUES ('180', 'RW', 'Rwanda');
INSERT INTO `country` VALUES ('181', 'KN', 'Saint Kitts and Nevis');
INSERT INTO `country` VALUES ('182', 'LC', 'Saint Lucia');
INSERT INTO `country` VALUES ('183', 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `country` VALUES ('184', 'WS', 'Samoa');
INSERT INTO `country` VALUES ('185', 'SM', 'San Marino');
INSERT INTO `country` VALUES ('186', 'ST', 'Sao Tome and Principe');
INSERT INTO `country` VALUES ('187', 'SA', 'Saudi Arabia');
INSERT INTO `country` VALUES ('188', 'SN', 'Senegal');
INSERT INTO `country` VALUES ('189', 'RS', 'Serbia');
INSERT INTO `country` VALUES ('190', 'SC', 'Seychelles');
INSERT INTO `country` VALUES ('191', 'SL', 'Sierra Leone');
INSERT INTO `country` VALUES ('192', 'SG', 'Singapore');
INSERT INTO `country` VALUES ('193', 'SK', 'Slovakia');
INSERT INTO `country` VALUES ('194', 'SI', 'Slovenia');
INSERT INTO `country` VALUES ('195', 'SB', 'Solomon Islands');
INSERT INTO `country` VALUES ('196', 'SO', 'Somalia');
INSERT INTO `country` VALUES ('197', 'ZA', 'South Africa');
INSERT INTO `country` VALUES ('198', 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `country` VALUES ('199', 'ES', 'Spain');
INSERT INTO `country` VALUES ('200', 'LK', 'Sri Lanka');
INSERT INTO `country` VALUES ('201', 'SH', 'St. Helena');
INSERT INTO `country` VALUES ('202', 'PM', 'St. Pierre and Miquelon');
INSERT INTO `country` VALUES ('203', 'SD', 'Sudan');
INSERT INTO `country` VALUES ('204', 'SR', 'Suriname');
INSERT INTO `country` VALUES ('205', 'SJ', 'Svalbarn and Jan Mayen Islands');
INSERT INTO `country` VALUES ('206', 'SZ', 'Swaziland');
INSERT INTO `country` VALUES ('207', 'SE', 'Sweden');
INSERT INTO `country` VALUES ('208', 'CH', 'Switzerland');
INSERT INTO `country` VALUES ('209', 'SY', 'Syrian Arab Republic');
INSERT INTO `country` VALUES ('210', 'TW', 'Taiwan');
INSERT INTO `country` VALUES ('211', 'TJ', 'Tajikistan');
INSERT INTO `country` VALUES ('212', 'TZ', 'Tanzania, United Republic of');
INSERT INTO `country` VALUES ('213', 'TH', 'Thailand');
INSERT INTO `country` VALUES ('214', 'TG', 'Togo');
INSERT INTO `country` VALUES ('215', 'TK', 'Tokelau');
INSERT INTO `country` VALUES ('216', 'TO', 'Tonga');
INSERT INTO `country` VALUES ('217', 'TT', 'Trinidad and Tobago');
INSERT INTO `country` VALUES ('218', 'TN', 'Tunisia');
INSERT INTO `country` VALUES ('219', 'TR', 'Turkey');
INSERT INTO `country` VALUES ('220', 'TM', 'Turkmenistan');
INSERT INTO `country` VALUES ('221', 'TC', 'Turks and Caicos Islands');
INSERT INTO `country` VALUES ('222', 'TV', 'Tuvalu');
INSERT INTO `country` VALUES ('223', 'UG', 'Uganda');
INSERT INTO `country` VALUES ('224', 'UA', 'Ukraine');
INSERT INTO `country` VALUES ('225', 'AE', 'United Arab Emirates');
INSERT INTO `country` VALUES ('226', 'GB', 'United Kingdom');
INSERT INTO `country` VALUES ('227', 'UM', 'United States minor outlying islands');
INSERT INTO `country` VALUES ('228', 'UY', 'Uruguay');
INSERT INTO `country` VALUES ('229', 'UZ', 'Uzbekistan');
INSERT INTO `country` VALUES ('230', 'VU', 'Vanuatu');
INSERT INTO `country` VALUES ('231', 'VA', 'Vatican City State');
INSERT INTO `country` VALUES ('232', 'VE', 'Venezuela');
INSERT INTO `country` VALUES ('233', 'VN', 'Vietnam');
INSERT INTO `country` VALUES ('234', 'VG', 'Virgin Islands (British)');
INSERT INTO `country` VALUES ('235', 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `country` VALUES ('236', 'WF', 'Wallis and Futuna Islands');
INSERT INTO `country` VALUES ('237', 'EH', 'Western Sahara');
INSERT INTO `country` VALUES ('238', 'YE', 'Yemen');
INSERT INTO `country` VALUES ('239', 'YU', 'Yugoslavia');
INSERT INTO `country` VALUES ('240', 'ZR', 'Zaire');
INSERT INTO `country` VALUES ('241', 'ZM', 'Zambia');
INSERT INTO `country` VALUES ('242', 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for distributor
-- ----------------------------
DROP TABLE IF EXISTS `distributor`;
CREATE TABLE `distributor` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `contact_id` int(100) DEFAULT NULL,
  `date_added` int(100) DEFAULT NULL,
  `added_by` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `distributor_ibfk_1` (`address_id`),
  CONSTRAINT `distributor_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of distributor
-- ----------------------------
INSERT INTO `distributor` VALUES ('1', 'Motorworld', null, null, null, null, null);
INSERT INTO `distributor` VALUES ('3', 'Motoragon', null, null, null, null, null);
INSERT INTO `distributor` VALUES ('3351', 'MOTOWORLD', '2401', null, '2', null, '601');

-- ----------------------------
-- Table structure for form_input_type
-- ----------------------------
DROP TABLE IF EXISTS `form_input_type`;
CREATE TABLE `form_input_type` (
  `Id` int(11) NOT NULL,
  `Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of form_input_type
-- ----------------------------
INSERT INTO `form_input_type` VALUES ('1', 'Text');
INSERT INTO `form_input_type` VALUES ('2', 'Select');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `description` text,
  `status` tinyint(1) DEFAULT NULL,
  `model_id` int(10) DEFAULT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `stock` int(255) DEFAULT NULL,
  `product_type_id` int(10) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_last_modified` datetime DEFAULT NULL,
  `added_by` int(10) DEFAULT NULL,
  `barcode` varchar(255) NOT NULL COMMENT 'barcode\r\n',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_model` (`model_id`),
  KEY `product_type` (`product_type_id`),
  KEY `product_brand` (`brand_id`),
  KEY `code` (`code`),
  CONSTRAINT `product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `product_model` FOREIGN KEY (`model_id`) REFERENCES `product_model` (`id`),
  CONSTRAINT `product_type` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('500', 'CODE', null, null, '1', '4201', '1851', null, '200', null, null, null, '11', null);

-- ----------------------------
-- Table structure for product_item
-- ----------------------------
DROP TABLE IF EXISTS `product_item`;
CREATE TABLE `product_item` (
  `id` int(10) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `price_id` int(10) DEFAULT NULL,
  `distributor_id` int(10) DEFAULT NULL,
  `color_id` int(1) DEFAULT NULL,
  `weight` double(255,0) DEFAULT NULL,
  `height` double(255,0) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_last_modified` date DEFAULT NULL,
  `added_by` int(10) DEFAULT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_color` (`color_id`),
  KEY `product_price` (`price_id`),
  KEY `product_added_by` (`added_by`),
  KEY `product_id` (`product_code`),
  KEY `distributor_id` (`distributor_id`),
  CONSTRAINT `product_added_by` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`),
  CONSTRAINT `product_code` FOREIGN KEY (`product_code`) REFERENCES `product` (`code`),
  CONSTRAINT `product_color` FOREIGN KEY (`color_id`) REFERENCES `color` (`id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_code`) REFERENCES `product` (`code`),
  CONSTRAINT `product_item_ibfk_1` FOREIGN KEY (`distributor_id`) REFERENCES `distributor` (`id`),
  CONSTRAINT `product_price` FOREIGN KEY (`price_id`) REFERENCES `product_price` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_item
-- ----------------------------
INSERT INTO `product_item` VALUES ('600', 'CODE', null, '3351', null, null, null, null, null, null, null, null, '1', '3');
INSERT INTO `product_item` VALUES ('601', 'CODE', null, '1', null, null, null, null, null, null, null, null, '1', '2');

-- ----------------------------
-- Table structure for product_item_option_value
-- ----------------------------
DROP TABLE IF EXISTS `product_item_option_value`;
CREATE TABLE `product_item_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(255) DEFAULT NULL,
  `product_option_value` int(255) DEFAULT NULL,
  `product_item_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_option_value` (`product_option_value`),
  KEY `product_item_id` (`product_item_id`),
  KEY `product_option_id` (`product_option_id`),
  CONSTRAINT `product_item_option_value_ibfk_2` FOREIGN KEY (`product_option_value`) REFERENCES `product_option_selection` (`id`),
  CONSTRAINT `product_item_option_value_ibfk_4` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`),
  CONSTRAINT `product_item_option_value_ibfk_5` FOREIGN KEY (`product_option_id`) REFERENCES `product_option` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14956 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_item_option_value
-- ----------------------------
INSERT INTO `product_item_option_value` VALUES ('1', '600', '4951', '600');
INSERT INTO `product_item_option_value` VALUES ('14952', '14452', '5004', '600');
INSERT INTO `product_item_option_value` VALUES ('14955', '14453', '5008', '600');

-- ----------------------------
-- Table structure for product_model
-- ----------------------------
DROP TABLE IF EXISTS `product_model`;
CREATE TABLE `product_model` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `year_model` int(11) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4452 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_model
-- ----------------------------
INSERT INTO `product_model` VALUES ('1', 'Deore2', '1987', 'Frame');
INSERT INTO `product_model` VALUES ('2', 'Deore', '1981', 'Frame2');
INSERT INTO `product_model` VALUES ('4101', null, null, null);
INSERT INTO `product_model` VALUES ('4151', null, null, null);
INSERT INTO `product_model` VALUES ('4201', null, null, null);
INSERT INTO `product_model` VALUES ('4251', null, null, null);
INSERT INTO `product_model` VALUES ('4301', null, null, null);
INSERT INTO `product_model` VALUES ('4351', null, null, null);
INSERT INTO `product_model` VALUES ('4401', null, null, null);
INSERT INTO `product_model` VALUES ('4451', null, null, null);

-- ----------------------------
-- Table structure for product_option
-- ----------------------------
DROP TABLE IF EXISTS `product_option`;
CREATE TABLE `product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_name_id` int(11) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `added_by` int(255) DEFAULT NULL,
  `visible` tinyint(3) DEFAULT NULL,
  `option_order` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_type_id` (`product_type_id`),
  KEY `product_option_name_id` (`product_option_name_id`),
  CONSTRAINT `product_option_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_option_ibfk_2` FOREIGN KEY (`product_option_name_id`) REFERENCES `product_option_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14454 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_option
-- ----------------------------
INSERT INTO `product_option` VALUES ('600', '1', '200', null, null, null, '3');
INSERT INTO `product_option` VALUES ('14452', '2', '200', null, null, null, '2');
INSERT INTO `product_option` VALUES ('14453', '3', '200', null, null, null, '1');

-- ----------------------------
-- Table structure for product_option_name
-- ----------------------------
DROP TABLE IF EXISTS `product_option_name`;
CREATE TABLE `product_option_name` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `product_option_id` int(11) DEFAULT NULL,
  `form_type_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `product_option_id` (`product_option_id`),
  KEY `product_option_form_type` (`form_type_id`),
  CONSTRAINT `product_option_form_type` FOREIGN KEY (`form_type_id`) REFERENCES `form_input_type` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `product_option_name_ibfk_1` FOREIGN KEY (`product_option_id`) REFERENCES `product_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_option_name
-- ----------------------------
INSERT INTO `product_option_name` VALUES ('1', '1', null, '1', 'Frame Size');
INSERT INTO `product_option_name` VALUES ('2', '1', null, '2', 'Wheel Size');
INSERT INTO `product_option_name` VALUES ('3', '1', null, '1', 'Width');

-- ----------------------------
-- Table structure for product_option_selection
-- ----------------------------
DROP TABLE IF EXISTS `product_option_selection`;
CREATE TABLE `product_option_selection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_value` varchar(100) DEFAULT NULL,
  `product_option_name_id` int(11) DEFAULT NULL,
  `product_option_text` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_option_selection_ibfk_1` (`product_option_name_id`),
  CONSTRAINT `product_option_selection_ibfk_1` FOREIGN KEY (`product_option_name_id`) REFERENCES `product_option_name` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5009 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product_option_selection
-- ----------------------------
INSERT INTO `product_option_selection` VALUES ('4951', '15', '1', null, null);
INSERT INTO `product_option_selection` VALUES ('5001', '29', '2', null, null);
INSERT INTO `product_option_selection` VALUES ('5002', '35mm', '3', null, null);
INSERT INTO `product_option_selection` VALUES ('5003', '17', '1', null, null);
INSERT INTO `product_option_selection` VALUES ('5004', '26', '2', null, null);
INSERT INTO `product_option_selection` VALUES ('5005', '30mm', '3', null, null);
INSERT INTO `product_option_selection` VALUES ('5006', '16', '1', null, null);
INSERT INTO `product_option_selection` VALUES ('5007', '27.5', '2', null, null);
INSERT INTO `product_option_selection` VALUES ('5008', '40mm', '3', null, null);

-- ----------------------------
-- Table structure for product_price
-- ----------------------------
DROP TABLE IF EXISTS `product_price`;
CREATE TABLE `product_price` (
  `id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `msrp` double DEFAULT NULL,
  `capital` double(255,0) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_last_modified` date DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_price
-- ----------------------------
INSERT INTO `product_price` VALUES ('1', null, '2222', '33333', null, null, null, null);
INSERT INTO `product_price` VALUES ('12', null, '444', '55555', '45', null, null, null);
INSERT INTO `product_price` VALUES ('5101', null, null, '111', null, null, null, null);

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `date_added` int(100) DEFAULT NULL,
  `added_by` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_type
-- ----------------------------
INSERT INTO `product_type` VALUES ('1', 'Apple', null, null, '1', 'Details');
INSERT INTO `product_type` VALUES ('200', 'Frame', null, '1231231231', '1', 'Details');

-- ----------------------------
-- Table structure for promo_table
-- ----------------------------
DROP TABLE IF EXISTS `promo_table`;
CREATE TABLE `promo_table` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `percentOff` float DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_table
-- ----------------------------

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('SEQ_GEN', '16650');
INSERT INTO `sequence` VALUES ('SEQ_GEN_TABLE', '250');

-- ----------------------------
-- Table structure for tax_rate
-- ----------------------------
DROP TABLE IF EXISTS `tax_rate`;
CREATE TABLE `tax_rate` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `tax_percent` float DEFAULT NULL,
  `date_added` varchar(100) DEFAULT NULL,
  `added_by` int(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` int(100) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_address` (`address`),
  CONSTRAINT `user_address` FOREIGN KEY (`address`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('2', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('5301', null, null, null, null, null, null, null);
