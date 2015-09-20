/*
Navicat MySQL Data Transfer

Source Server         : 192.168.56.102
Source Server Version : 50543
Source Host           : 192.168.56.102:3306
Source Database       : InventorySystem

Target Server Type    : MYSQL
Target Server Version : 50543
File Encoding         : 65001

Date: 2015-09-20 15:20:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Address
-- ----------------------------
DROP TABLE IF EXISTS `Address`;
CREATE TABLE `Address` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Country` int(10) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `City` int(10) DEFAULT NULL,
  `Region` int(11) DEFAULT NULL,
  `AddressOf` int(255) DEFAULT NULL,
  `AddressFk` int(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Address
-- ----------------------------
INSERT INTO `Address` VALUES ('1', '1', '1232', '3', '232', null, '1', null);
INSERT INTO `Address` VALUES ('2', '234234', '34', '324', '43', '4', '2', null);

-- ----------------------------
-- Table structure for AddressComplete
-- ----------------------------
DROP TABLE IF EXISTS `AddressComplete`;
CREATE TABLE `AddressComplete` (
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
-- Records of AddressComplete
-- ----------------------------
INSERT INTO `AddressComplete` VALUES ('1', 'PH', 'Abra', '2800', 'Bangued');
INSERT INTO `AddressComplete` VALUES ('2', 'PH', 'Abra', '2801', 'Dolores');
INSERT INTO `AddressComplete` VALUES ('3', 'PH', 'Abra', '2802', 'Lagangilang');
INSERT INTO `AddressComplete` VALUES ('4', 'PH', 'Abra', '2803', 'Tayum');
INSERT INTO `AddressComplete` VALUES ('5', 'PH', 'Abra', '2804', 'Peñarrubia');
INSERT INTO `AddressComplete` VALUES ('6', 'PH', 'Abra', '2805', 'Bucay');
INSERT INTO `AddressComplete` VALUES ('7', 'PH', 'Abra', '2806', 'Pidigan');
INSERT INTO `AddressComplete` VALUES ('8', 'PH', 'Abra', '2807', 'Langiden');
INSERT INTO `AddressComplete` VALUES ('9', 'PH', 'Abra', '2808', 'San Quintin');
INSERT INTO `AddressComplete` VALUES ('10', 'PH', 'Abra', '2809', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('11', 'PH', 'Abra', '2810', 'Manabo');
INSERT INTO `AddressComplete` VALUES ('12', 'PH', 'Abra', '2811', 'Villaviciosa');
INSERT INTO `AddressComplete` VALUES ('13', 'PH', 'Abra', '2812', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('14', 'PH', 'Abra', '2813', 'Luba');
INSERT INTO `AddressComplete` VALUES ('15', 'PH', 'Abra', '2814', 'Tubo');
INSERT INTO `AddressComplete` VALUES ('16', 'PH', 'Abra', '2815', 'Boliney');
INSERT INTO `AddressComplete` VALUES ('17', 'PH', 'Abra', '2816', 'Daguioman');
INSERT INTO `AddressComplete` VALUES ('18', 'PH', 'Abra', '2817', 'Bucloc');
INSERT INTO `AddressComplete` VALUES ('19', 'PH', 'Abra', '2818', 'Sallapadan');
INSERT INTO `AddressComplete` VALUES ('20', 'PH', 'Abra', '2819', 'Licuan (Baay)');
INSERT INTO `AddressComplete` VALUES ('21', 'PH', 'Abra', '2820', 'Malibcong');
INSERT INTO `AddressComplete` VALUES ('22', 'PH', 'Abra', '2821', 'Lacub');
INSERT INTO `AddressComplete` VALUES ('23', 'PH', 'Abra', '2822', 'Tineg');
INSERT INTO `AddressComplete` VALUES ('24', 'PH', 'Abra', '2823', 'San Juan');
INSERT INTO `AddressComplete` VALUES ('25', 'PH', 'Abra', '2824', 'Lagayan');
INSERT INTO `AddressComplete` VALUES ('26', 'PH', 'Abra', '2825', 'Danglas');
INSERT INTO `AddressComplete` VALUES ('27', 'PH', 'Abra', '2826', 'La Paz');
INSERT INTO `AddressComplete` VALUES ('28', 'PH', 'Agusan del Norte', '8600', 'Butuan City');
INSERT INTO `AddressComplete` VALUES ('29', 'PH', 'Agusan del Norte', '8601', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('30', 'PH', 'Agusan del Norte', '8602', 'Nasipit');
INSERT INTO `AddressComplete` VALUES ('31', 'PH', 'Agusan del Norte', '8603', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('32', 'PH', 'Agusan del Norte', '8605', 'Cabadbaran City');
INSERT INTO `AddressComplete` VALUES ('33', 'PH', 'Agusan del Norte', '8604', 'Magallanes');
INSERT INTO `AddressComplete` VALUES ('34', 'PH', 'Agusan del Norte', '8606', 'Tubay');
INSERT INTO `AddressComplete` VALUES ('35', 'PH', 'Agusan del Norte', '8607', 'Jabonga');
INSERT INTO `AddressComplete` VALUES ('36', 'PH', 'Agusan del Norte', '8608', 'Santiago');
INSERT INTO `AddressComplete` VALUES ('37', 'PH', 'Agusan del Norte', '8609', 'Kitcharao');
INSERT INTO `AddressComplete` VALUES ('38', 'PH', 'Agusan del Norte', '8610', 'Las Nieves');
INSERT INTO `AddressComplete` VALUES ('39', 'PH', 'Agusan del Norte', '8611', 'Remedios T. Romualdez');
INSERT INTO `AddressComplete` VALUES ('40', 'PH', 'Agusan del Sur', '8500', 'Prosperidad');
INSERT INTO `AddressComplete` VALUES ('41', 'PH', 'Agusan del Sur', '8501', 'San Francisco');
INSERT INTO `AddressComplete` VALUES ('42', 'PH', 'Agusan del Sur', '8502', 'Bayugan');
INSERT INTO `AddressComplete` VALUES ('43', 'PH', 'Agusan del Sur', '8503', 'Sibagat');
INSERT INTO `AddressComplete` VALUES ('44', 'PH', 'Agusan del Sur', '8504', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('45', 'PH', 'Agusan del Sur', '8505', 'Trento');
INSERT INTO `AddressComplete` VALUES ('46', 'PH', 'Agusan del Sur', '8506', 'Bunawan');
INSERT INTO `AddressComplete` VALUES ('47', 'PH', 'Agusan del Sur', '8507', 'Loreto');
INSERT INTO `AddressComplete` VALUES ('48', 'PH', 'Agusan del Sur', '8508', 'La Paz');
INSERT INTO `AddressComplete` VALUES ('49', 'PH', 'Agusan del Sur', '8509', 'Veruela');
INSERT INTO `AddressComplete` VALUES ('50', 'PH', 'Agusan del Sur', '8510', 'Talacogon');
INSERT INTO `AddressComplete` VALUES ('51', 'PH', 'Agusan del Sur', '8511', 'San Luis');
INSERT INTO `AddressComplete` VALUES ('52', 'PH', 'Agusan del Sur', '8512', 'Santa Josefa');
INSERT INTO `AddressComplete` VALUES ('53', 'PH', 'Agusan del Sur', '8513', 'Esperanza');
INSERT INTO `AddressComplete` VALUES ('54', 'PH', 'Aklan', '5616', 'Altavas');
INSERT INTO `AddressComplete` VALUES ('55', 'PH', 'Aklan', '5614', 'Balete');
INSERT INTO `AddressComplete` VALUES ('56', 'PH', 'Aklan', '5601', 'Banga');
INSERT INTO `AddressComplete` VALUES ('57', 'PH', 'Aklan', '5615', 'Batan');
INSERT INTO `AddressComplete` VALUES ('58', 'PH', 'Aklan', '5609', 'Buruanga');
INSERT INTO `AddressComplete` VALUES ('59', 'PH', 'Aklan', '5613', 'Ibajay');
INSERT INTO `AddressComplete` VALUES ('60', 'PH', 'Aklan', '5600', 'Kalibo');
INSERT INTO `AddressComplete` VALUES ('61', 'PH', 'Aklan', '5605', 'Lezo');
INSERT INTO `AddressComplete` VALUES ('62', 'PH', 'Aklan', '5602', 'Libacao');
INSERT INTO `AddressComplete` VALUES ('63', 'PH', 'Aklan', '5603', 'Madalag');
INSERT INTO `AddressComplete` VALUES ('64', 'PH', 'Aklan', '5611', 'Makato');
INSERT INTO `AddressComplete` VALUES ('65', 'PH', 'Aklan', '5608', 'Malay');
INSERT INTO `AddressComplete` VALUES ('66', 'PH', 'Aklan', '5606', 'Malinao');
INSERT INTO `AddressComplete` VALUES ('67', 'PH', 'Aklan', '5607', 'Nabas');
INSERT INTO `AddressComplete` VALUES ('68', 'PH', 'Aklan', '5610', 'New Washington');
INSERT INTO `AddressComplete` VALUES ('69', 'PH', 'Aklan', '5604', 'Numancia');
INSERT INTO `AddressComplete` VALUES ('70', 'PH', 'Aklan', '5612', 'Tangalan');
INSERT INTO `AddressComplete` VALUES ('71', 'PH', 'Albay', '4509', 'Bacacay');
INSERT INTO `AddressComplete` VALUES ('72', 'PH', 'Albay', '4502', 'Camalig');
INSERT INTO `AddressComplete` VALUES ('73', 'PH', 'Albay', '4501', 'Daraga (Locsin)');
INSERT INTO `AddressComplete` VALUES ('74', 'PH', 'Albay', '4503', 'Guinobatan');
INSERT INTO `AddressComplete` VALUES ('75', 'PH', 'Albay', '4515', 'Jovellar');
INSERT INTO `AddressComplete` VALUES ('76', 'PH', 'Albay', '4500', 'Legazpi City');
INSERT INTO `AddressComplete` VALUES ('77', 'PH', 'Albay', '4507', 'Libon');
INSERT INTO `AddressComplete` VALUES ('78', 'PH', 'Albay', '4504', 'Ligao City');
INSERT INTO `AddressComplete` VALUES ('79', 'PH', 'Albay', '4510', 'Malilipot');
INSERT INTO `AddressComplete` VALUES ('80', 'PH', 'Albay', '4512', 'Malinao');
INSERT INTO `AddressComplete` VALUES ('81', 'PH', 'Albay', '4514', 'Manito');
INSERT INTO `AddressComplete` VALUES ('82', 'PH', 'Albay', '4505', 'Oas');
INSERT INTO `AddressComplete` VALUES ('83', 'PH', 'Albay', '4516', 'Pio Duran (Malacbalac)');
INSERT INTO `AddressComplete` VALUES ('84', 'PH', 'Albay', '4506', 'Polangui');
INSERT INTO `AddressComplete` VALUES ('85', 'PH', 'Albay', '4517', 'Rapu-Rapu');
INSERT INTO `AddressComplete` VALUES ('86', 'PH', 'Albay', '4508', 'Santo Domingo');
INSERT INTO `AddressComplete` VALUES ('87', 'PH', 'Albay', '4511', 'Tabaco City');
INSERT INTO `AddressComplete` VALUES ('88', 'PH', 'Albay', '4513', 'Tiwi');
INSERT INTO `AddressComplete` VALUES ('89', 'PH', 'Antique', '5717', 'Anini-y');
INSERT INTO `AddressComplete` VALUES ('90', 'PH', 'Antique', '5706', 'Barbaza');
INSERT INTO `AddressComplete` VALUES ('91', 'PH', 'Antique', '5701', 'Belison');
INSERT INTO `AddressComplete` VALUES ('92', 'PH', 'Antique', '5704', 'Bugasong');
INSERT INTO `AddressComplete` VALUES ('93', 'PH', 'Antique', '5711', 'Caluya');
INSERT INTO `AddressComplete` VALUES ('94', 'PH', 'Antique', '5708', 'Culasi');
INSERT INTO `AddressComplete` VALUES ('95', 'PH', 'Antique', '5715', 'Hamtic');
INSERT INTO `AddressComplete` VALUES ('96', 'PH', 'Antique', '5705', 'Laua-an');
INSERT INTO `AddressComplete` VALUES ('97', 'PH', 'Antique', '5710', 'Libertad');
INSERT INTO `AddressComplete` VALUES ('98', 'PH', 'Antique', '5712', 'Pandan');
INSERT INTO `AddressComplete` VALUES ('99', 'PH', 'Antique', '5702', 'Patnongon');
INSERT INTO `AddressComplete` VALUES ('100', 'PH', 'Antique', '5700', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('101', 'PH', 'Antique', '5714', 'San Remigio');
INSERT INTO `AddressComplete` VALUES ('102', 'PH', 'Antique', '5709', 'Sebaste');
INSERT INTO `AddressComplete` VALUES ('103', 'PH', 'Antique', '5713', 'Sibalom');
INSERT INTO `AddressComplete` VALUES ('104', 'PH', 'Antique', '5707', 'Tibiao');
INSERT INTO `AddressComplete` VALUES ('105', 'PH', 'Antique', '5716', 'Tobias Fornier (Dao)');
INSERT INTO `AddressComplete` VALUES ('106', 'PH', 'Antique', '5703', 'Valderrama');
INSERT INTO `AddressComplete` VALUES ('107', 'PH', 'Apayao', '3814', 'Calanasan (Bayag)');
INSERT INTO `AddressComplete` VALUES ('108', 'PH', 'Apayao', '3807', 'Conner');
INSERT INTO `AddressComplete` VALUES ('109', 'PH', 'Apayao', '3810', 'Flora');
INSERT INTO `AddressComplete` VALUES ('110', 'PH', 'Apayao', '3809', 'Kabugao');
INSERT INTO `AddressComplete` VALUES ('111', 'PH', 'Apayao', '3813', 'Luna');
INSERT INTO `AddressComplete` VALUES ('112', 'PH', 'Apayao', '3812', 'Pudtol');
INSERT INTO `AddressComplete` VALUES ('113', 'PH', 'Apayao', '3811', 'Santa Marcela');
INSERT INTO `AddressComplete` VALUES ('114', 'PH', 'Aurora', '3200', 'Baler');
INSERT INTO `AddressComplete` VALUES ('115', 'PH', 'Aurora', '3204', 'Casiguran');
INSERT INTO `AddressComplete` VALUES ('116', 'PH', 'Aurora', '3205', 'Dilasag');
INSERT INTO `AddressComplete` VALUES ('117', 'PH', 'Aurora', '3206', 'Dinalungan');
INSERT INTO `AddressComplete` VALUES ('118', 'PH', 'Aurora', '3207', 'Dingalan');
INSERT INTO `AddressComplete` VALUES ('119', 'PH', 'Aurora', '3203', 'Dipaculao');
INSERT INTO `AddressComplete` VALUES ('120', 'PH', 'Aurora', '3202', 'Maria Aurora');
INSERT INTO `AddressComplete` VALUES ('121', 'PH', 'Aurora', '3201', 'San Luis');
INSERT INTO `AddressComplete` VALUES ('122', 'PH', 'Basilan', '7300', 'Isabela City');
INSERT INTO `AddressComplete` VALUES ('123', 'PH', 'Basilan', '7301', 'Lantawan');
INSERT INTO `AddressComplete` VALUES ('124', 'PH', 'Basilan', '7302', 'Lamitan City');
INSERT INTO `AddressComplete` VALUES ('125', 'PH', 'Basilan', '7303', 'Maluso');
INSERT INTO `AddressComplete` VALUES ('126', 'PH', 'Basilan', '7304', 'Tipo-Tipo');
INSERT INTO `AddressComplete` VALUES ('127', 'PH', 'Basilan', '7305', 'Sumisip');
INSERT INTO `AddressComplete` VALUES ('128', 'PH', 'Basilan', '7306', 'Tuburan');
INSERT INTO `AddressComplete` VALUES ('129', 'PH', 'Basilan', '7308', 'Froilie');
INSERT INTO `AddressComplete` VALUES ('130', 'PH', 'Bataan', '2114', 'Abucay');
INSERT INTO `AddressComplete` VALUES ('131', 'PH', 'Bataan', '2107', 'Bagac');
INSERT INTO `AddressComplete` VALUES ('132', 'PH', 'Bataan', '2100', 'Balanga City');
INSERT INTO `AddressComplete` VALUES ('133', 'PH', 'Bataan', '2106', 'Mariveles (Bataan Export Processing Zone)');
INSERT INTO `AddressComplete` VALUES ('134', 'PH', 'Bataan', '2110', 'Dinalupihan');
INSERT INTO `AddressComplete` VALUES ('135', 'PH', 'Bataan', '2111', 'Hermosa');
INSERT INTO `AddressComplete` VALUES ('136', 'PH', 'Bataan', '2104', 'Lamao');
INSERT INTO `AddressComplete` VALUES ('137', 'PH', 'Bataan', '2103', 'Limay');
INSERT INTO `AddressComplete` VALUES ('138', 'PH', 'Bataan', '2105', 'Mariveles');
INSERT INTO `AddressComplete` VALUES ('139', 'PH', 'Bataan', '2108', 'Morong');
INSERT INTO `AddressComplete` VALUES ('140', 'PH', 'Bataan', '2112', 'Orani');
INSERT INTO `AddressComplete` VALUES ('141', 'PH', 'Bataan', '2102', 'Orion');
INSERT INTO `AddressComplete` VALUES ('142', 'PH', 'Bataan', '2101', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('143', 'PH', 'Bataan', '2109', 'Morong (Refugee Processing Center)');
INSERT INTO `AddressComplete` VALUES ('144', 'PH', 'Bataan', '2113', 'Samal');
INSERT INTO `AddressComplete` VALUES ('145', 'PH', 'Batanes', '3900', 'Basco');
INSERT INTO `AddressComplete` VALUES ('146', 'PH', 'Batanes', '3905', 'Itbayat');
INSERT INTO `AddressComplete` VALUES ('147', 'PH', 'Batanes', '3902', 'Ivana');
INSERT INTO `AddressComplete` VALUES ('148', 'PH', 'Batanes', '3901', 'Mahatao');
INSERT INTO `AddressComplete` VALUES ('149', 'PH', 'Batanes', '3904', 'Sabtang');
INSERT INTO `AddressComplete` VALUES ('150', 'PH', 'Batanes', '3903', 'Uyugan');
INSERT INTO `AddressComplete` VALUES ('151', 'PH', 'Batangas', '4211', 'Agoncillo');
INSERT INTO `AddressComplete` VALUES ('152', 'PH', 'Batangas', '4205', 'Alitagtag');
INSERT INTO `AddressComplete` VALUES ('153', 'PH', 'Batangas', '4213', 'Balayan');
INSERT INTO `AddressComplete` VALUES ('154', 'PH', 'Batangas', '4219', 'Balete');
INSERT INTO `AddressComplete` VALUES ('155', 'PH', 'Batangas', '4200', 'Batangas City');
INSERT INTO `AddressComplete` VALUES ('156', 'PH', 'Batangas', '4201', 'Bauan');
INSERT INTO `AddressComplete` VALUES ('157', 'PH', 'Batangas', '4212', 'Calaca');
INSERT INTO `AddressComplete` VALUES ('158', 'PH', 'Batangas', '4215', 'Calatagan, incl. Punta Baluarte');
INSERT INTO `AddressComplete` VALUES ('159', 'PH', 'Batangas', '4222', 'Cuenca');
INSERT INTO `AddressComplete` VALUES ('160', 'PH', 'Batangas', '4218', 'Fernando Airbase');
INSERT INTO `AddressComplete` VALUES ('161', 'PH', 'Batangas', '4230', 'Ibaan');
INSERT INTO `AddressComplete` VALUES ('162', 'PH', 'Batangas', '4221', 'Laurel, incl. Diokno Highway');
INSERT INTO `AddressComplete` VALUES ('163', 'PH', 'Batangas', '4209', 'Lemery');
INSERT INTO `AddressComplete` VALUES ('164', 'PH', 'Batangas', '4216', 'Lian, incl. Matabungkay');
INSERT INTO `AddressComplete` VALUES ('165', 'PH', 'Batangas', '4217', 'Lipa City');
INSERT INTO `AddressComplete` VALUES ('166', 'PH', 'Batangas', '4229', 'Lobo, incl. Laiya');
INSERT INTO `AddressComplete` VALUES ('167', 'PH', 'Batangas', '4202', 'Mabini');
INSERT INTO `AddressComplete` VALUES ('168', 'PH', 'Batangas', '4233', 'Malvar');
INSERT INTO `AddressComplete` VALUES ('169', 'PH', 'Batangas', '4223', 'Mataas na Kahoy');
INSERT INTO `AddressComplete` VALUES ('170', 'PH', 'Batangas', '4231', 'Nasugbu, incl. Punta Fuego and Calaruega');
INSERT INTO `AddressComplete` VALUES ('171', 'PH', 'Batangas', '4224', 'Padre Garcia');
INSERT INTO `AddressComplete` VALUES ('172', 'PH', 'Batangas', '4225', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('173', 'PH', 'Batangas', '4227', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('174', 'PH', 'Batangas', '4226', 'San Juan');
INSERT INTO `AddressComplete` VALUES ('175', 'PH', 'Batangas', '4210', 'San Luis');
INSERT INTO `AddressComplete` VALUES ('176', 'PH', 'Batangas', '4207', 'San Nicolas');
INSERT INTO `AddressComplete` VALUES ('177', 'PH', 'Batangas', '4204', 'San Pascual');
INSERT INTO `AddressComplete` VALUES ('178', 'PH', 'Batangas', '4206', 'Santa Teresita');
INSERT INTO `AddressComplete` VALUES ('179', 'PH', 'Batangas', '4234', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('180', 'PH', 'Batangas', '4208', 'Taal');
INSERT INTO `AddressComplete` VALUES ('181', 'PH', 'Batangas', '4220', 'Talisay');
INSERT INTO `AddressComplete` VALUES ('182', 'PH', 'Batangas', '4232', 'Tanauan City');
INSERT INTO `AddressComplete` VALUES ('183', 'PH', 'Batangas', '4228', 'Taysan');
INSERT INTO `AddressComplete` VALUES ('184', 'PH', 'Batangas', '4203', 'Tingloy');
INSERT INTO `AddressComplete` VALUES ('185', 'PH', 'Batangas', '4214', 'Tuy');
INSERT INTO `AddressComplete` VALUES ('186', 'PH', 'Benguet', '2612', 'Atok');
INSERT INTO `AddressComplete` VALUES ('187', 'PH', 'Benguet', '2600', 'Baguio City');
INSERT INTO `AddressComplete` VALUES ('188', 'PH', 'Benguet', '2610', 'Bakun');
INSERT INTO `AddressComplete` VALUES ('189', 'PH', 'Benguet', '2605', 'Bokod');
INSERT INTO `AddressComplete` VALUES ('190', 'PH', 'Benguet', '2607', 'Buguias');
INSERT INTO `AddressComplete` VALUES ('191', 'PH', 'Benguet', '2604', 'Itogon');
INSERT INTO `AddressComplete` VALUES ('192', 'PH', 'Benguet', '2606', 'Kabayan');
INSERT INTO `AddressComplete` VALUES ('193', 'PH', 'Benguet', '2613', 'Kapangan');
INSERT INTO `AddressComplete` VALUES ('194', 'PH', 'Benguet', '2611', 'Kibungan');
INSERT INTO `AddressComplete` VALUES ('195', 'PH', 'Benguet', '2601', 'La Trinidad, including Pico');
INSERT INTO `AddressComplete` VALUES ('196', 'PH', 'Benguet', '2609', 'Lepanto, Mankayan');
INSERT INTO `AddressComplete` VALUES ('197', 'PH', 'Benguet', '2608', 'Mankayan');
INSERT INTO `AddressComplete` VALUES ('198', 'PH', 'Benguet', '2602', 'Philippine Military Academy');
INSERT INTO `AddressComplete` VALUES ('199', 'PH', 'Benguet', '2614', 'Sablan');
INSERT INTO `AddressComplete` VALUES ('200', 'PH', 'Benguet', '2603', 'Tuba, including Marcos Highway and Kennon Road');
INSERT INTO `AddressComplete` VALUES ('201', 'PH', 'Benguet', '2615', 'Tublay');
INSERT INTO `AddressComplete` VALUES ('202', 'PH', 'Biliran', '6544', 'Almeria');
INSERT INTO `AddressComplete` VALUES ('203', 'PH', 'Biliran', '6549', 'Biliran');
INSERT INTO `AddressComplete` VALUES ('204', 'PH', 'Biliran', '6550', 'Cabucgayan');
INSERT INTO `AddressComplete` VALUES ('205', 'PH', 'Biliran', '6548', 'Caibiran');
INSERT INTO `AddressComplete` VALUES ('206', 'PH', 'Biliran', '6547', 'Culaba');
INSERT INTO `AddressComplete` VALUES ('207', 'PH', 'Biliran', '6545', 'Kawayan');
INSERT INTO `AddressComplete` VALUES ('208', 'PH', 'Biliran', '6546', 'Maripipi');
INSERT INTO `AddressComplete` VALUES ('209', 'PH', 'Biliran', '6543', 'Naval');
INSERT INTO `AddressComplete` VALUES ('210', 'PH', 'Bohol', '6302', 'Alburquerque');
INSERT INTO `AddressComplete` VALUES ('211', 'PH', 'Bohol', '6314', 'Alicia');
INSERT INTO `AddressComplete` VALUES ('212', 'PH', 'Bohol', '6311', 'Anda');
INSERT INTO `AddressComplete` VALUES ('213', 'PH', 'Bohol', '6335', 'Antequera');
INSERT INTO `AddressComplete` VALUES ('214', 'PH', 'Bohol', '6301', 'Baclayon');
INSERT INTO `AddressComplete` VALUES ('215', 'PH', 'Bohol', '6342', 'Balilihan');
INSERT INTO `AddressComplete` VALUES ('216', 'PH', 'Bohol', '6318', 'Batuan');
INSERT INTO `AddressComplete` VALUES ('217', 'PH', 'Bohol', '6326', 'Bien Unido');
INSERT INTO `AddressComplete` VALUES ('218', 'PH', 'Bohol', '6317', 'Bilar');
INSERT INTO `AddressComplete` VALUES ('219', 'PH', 'Bohol', '6333', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('220', 'PH', 'Bohol', '6328', 'Calape');
INSERT INTO `AddressComplete` VALUES ('221', 'PH', 'Bohol', '6312', 'Candijay');
INSERT INTO `AddressComplete` VALUES ('222', 'PH', 'Bohol', '6346', 'Pres. Carlos P. Garcia (Pitogo)');
INSERT INTO `AddressComplete` VALUES ('223', 'PH', 'Bohol', '6319', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('224', 'PH', 'Bohol', '6343', 'Catigbian');
INSERT INTO `AddressComplete` VALUES ('225', 'PH', 'Bohol', '6330', 'Clarin');
INSERT INTO `AddressComplete` VALUES ('226', 'PH', 'Bohol', '6337', 'Corella');
INSERT INTO `AddressComplete` VALUES ('227', 'PH', 'Bohol', '6341', 'Cortes');
INSERT INTO `AddressComplete` VALUES ('228', 'PH', 'Bohol', '6322', 'Dagohoy');
INSERT INTO `AddressComplete` VALUES ('229', 'PH', 'Bohol', '6344', 'Danao');
INSERT INTO `AddressComplete` VALUES ('230', 'PH', 'Bohol', '6339', 'Dauis');
INSERT INTO `AddressComplete` VALUES ('231', 'PH', 'Bohol', '6305', 'Dimiao');
INSERT INTO `AddressComplete` VALUES ('232', 'PH', 'Bohol', '6309', 'Duero');
INSERT INTO `AddressComplete` VALUES ('233', 'PH', 'Bohol', '6307', 'Garcia Hernandez');
INSERT INTO `AddressComplete` VALUES ('234', 'PH', 'Bohol', '6310', 'Guindulman');
INSERT INTO `AddressComplete` VALUES ('235', 'PH', 'Bohol', '6332', 'Inabanga');
INSERT INTO `AddressComplete` VALUES ('236', 'PH', 'Bohol', '6308', 'Jagna');
INSERT INTO `AddressComplete` VALUES ('237', 'PH', 'Bohol', '6334', 'Jetafe');
INSERT INTO `AddressComplete` VALUES ('238', 'PH', 'Bohol', '6304', 'Lila');
INSERT INTO `AddressComplete` VALUES ('239', 'PH', 'Bohol', '6202', 'Loay');
INSERT INTO `AddressComplete` VALUES ('240', 'PH', 'Bohol', '6316', 'Loboc');
INSERT INTO `AddressComplete` VALUES ('241', 'PH', 'Bohol', '6327', 'Loon');
INSERT INTO `AddressComplete` VALUES ('242', 'PH', 'Bohol', '6313', 'Mabini');
INSERT INTO `AddressComplete` VALUES ('243', 'PH', 'Bohol', '6336', 'Maribojoc');
INSERT INTO `AddressComplete` VALUES ('244', 'PH', 'Bohol', '6340', 'Panglao');
INSERT INTO `AddressComplete` VALUES ('245', 'PH', 'Bohol', '6321', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('246', 'PH', 'Bohol', '6331', 'Sagbayan');
INSERT INTO `AddressComplete` VALUES ('247', 'PH', 'Bohol', '6345', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('248', 'PH', 'Bohol', '6323', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('249', 'PH', 'Bohol', '6347', 'Sevilla');
INSERT INTO `AddressComplete` VALUES ('250', 'PH', 'Bohol', '6320', 'Sierra Bullones');
INSERT INTO `AddressComplete` VALUES ('251', 'PH', 'Bohol', '6338', 'Sikatuna');
INSERT INTO `AddressComplete` VALUES ('252', 'PH', 'Bohol', '6300', 'Tagbilaran City');
INSERT INTO `AddressComplete` VALUES ('253', 'PH', 'Bohol', '6325', 'Talibon');
INSERT INTO `AddressComplete` VALUES ('254', 'PH', 'Bohol', '6324', 'Trinidad');
INSERT INTO `AddressComplete` VALUES ('255', 'PH', 'Bohol', '6329', 'Tubigon');
INSERT INTO `AddressComplete` VALUES ('256', 'PH', 'Bohol', '6315', 'Ubay');
INSERT INTO `AddressComplete` VALUES ('257', 'PH', 'Bohol', '6306', 'Valencia');
INSERT INTO `AddressComplete` VALUES ('258', 'PH', 'Bukidnon', '8707', 'Baungon');
INSERT INTO `AddressComplete` VALUES ('259', 'PH', 'Bukidnon', '8723', 'Cabanglasan');
INSERT INTO `AddressComplete` VALUES ('260', 'PH', 'Bukidnon', '8721', 'Damulog');
INSERT INTO `AddressComplete` VALUES ('261', 'PH', 'Bukidnon', '8719', 'Dangcagan');
INSERT INTO `AddressComplete` VALUES ('262', 'PH', 'Bukidnon', '8712', 'Don Carlos');
INSERT INTO `AddressComplete` VALUES ('263', 'PH', 'Bukidnon', '8702', 'Impasugong');
INSERT INTO `AddressComplete` VALUES ('264', 'PH', 'Bukidnon', '8713', 'Kadingilan');
INSERT INTO `AddressComplete` VALUES ('265', 'PH', 'Bukidnon', '8718', 'Kalilangan');
INSERT INTO `AddressComplete` VALUES ('266', 'PH', 'Bukidnon', '8720', 'Kibawe');
INSERT INTO `AddressComplete` VALUES ('267', 'PH', 'Bukidnon', '8716', 'Kitaotao');
INSERT INTO `AddressComplete` VALUES ('268', 'PH', 'Bukidnon', '8722', 'Lantapan');
INSERT INTO `AddressComplete` VALUES ('269', 'PH', 'Bukidnon', '8706', 'Libona');
INSERT INTO `AddressComplete` VALUES ('270', 'PH', 'Bukidnon', '8700', 'Malaybalay City');
INSERT INTO `AddressComplete` VALUES ('271', 'PH', 'Bukidnon', '8704', 'Malitbog');
INSERT INTO `AddressComplete` VALUES ('272', 'PH', 'Bukidnon', '8703', 'Manolo Fortich');
INSERT INTO `AddressComplete` VALUES ('273', 'PH', 'Bukidnon', '8714', 'Maramag');
INSERT INTO `AddressComplete` VALUES ('274', 'PH', 'Bukidnon', '8710', 'Musuan');
INSERT INTO `AddressComplete` VALUES ('275', 'PH', 'Bukidnon', '8717', 'Pangantucan');
INSERT INTO `AddressComplete` VALUES ('276', 'PH', 'Bukidnon', '8705', 'Phillips');
INSERT INTO `AddressComplete` VALUES ('277', 'PH', 'Bukidnon', '8715', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('278', 'PH', 'Bukidnon', '8711', 'San Fernando');
INSERT INTO `AddressComplete` VALUES ('279', 'PH', 'Bukidnon', '8701', 'Sumilao');
INSERT INTO `AddressComplete` VALUES ('280', 'PH', 'Bukidnon', '8708', 'Talakag');
INSERT INTO `AddressComplete` VALUES ('281', 'PH', 'Bukidnon', '8709', 'Valencia City');
INSERT INTO `AddressComplete` VALUES ('282', 'PH', 'Bulacan', '3012', 'Angat');
INSERT INTO `AddressComplete` VALUES ('283', 'PH', 'Bulacan', '3016', 'Balagtas (Bigaa)');
INSERT INTO `AddressComplete` VALUES ('284', 'PH', 'Bulacan', '3006', 'Baliuag');
INSERT INTO `AddressComplete` VALUES ('285', 'PH', 'Bulacan', '3018', 'Bocaue');
INSERT INTO `AddressComplete` VALUES ('286', 'PH', 'Bulacan', '3017', 'Bulacan');
INSERT INTO `AddressComplete` VALUES ('287', 'PH', 'Bulacan', '3007', 'Bustos');
INSERT INTO `AddressComplete` VALUES ('288', 'PH', 'Bulacan', '3003', 'Calumpit');
INSERT INTO `AddressComplete` VALUES ('289', 'PH', 'Bulacan', '3009', 'Dona Remedios Trinidad');
INSERT INTO `AddressComplete` VALUES ('290', 'PH', 'Bulacan', '3015', 'Guiguinto');
INSERT INTO `AddressComplete` VALUES ('291', 'PH', 'Bulacan', '3002', 'Hagonoy');
INSERT INTO `AddressComplete` VALUES ('292', 'PH', 'Bulacan', '3000', 'Malolos City');
INSERT INTO `AddressComplete` VALUES ('293', 'PH', 'Bulacan', '3019', 'Marilao');
INSERT INTO `AddressComplete` VALUES ('294', 'PH', 'Bulacan', '3020', 'Meycauayan City');
INSERT INTO `AddressComplete` VALUES ('295', 'PH', 'Bulacan', '3013', 'Norzagaray');
INSERT INTO `AddressComplete` VALUES ('296', 'PH', 'Bulacan', '3021', 'Obando');
INSERT INTO `AddressComplete` VALUES ('297', 'PH', 'Bulacan', '3014', 'Pandi');
INSERT INTO `AddressComplete` VALUES ('298', 'PH', 'Bulacan', '3001', 'Paombong');
INSERT INTO `AddressComplete` VALUES ('299', 'PH', 'Bulacan', '3004', 'Plaridel');
INSERT INTO `AddressComplete` VALUES ('300', 'PH', 'Bulacan', '3005', 'Pulilan');
INSERT INTO `AddressComplete` VALUES ('301', 'PH', 'Bulacan', '3010', 'San Ildefonso');
INSERT INTO `AddressComplete` VALUES ('302', 'PH', 'Bulacan', '3023', 'San Jose del Monte City');
INSERT INTO `AddressComplete` VALUES ('303', 'PH', 'Bulacan', '3011', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('304', 'PH', 'Bulacan', '3008', 'San Rafael');
INSERT INTO `AddressComplete` VALUES ('305', 'PH', 'Bulacan', '3022', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('306', 'PH', 'Bulacan', '3024', 'Sapang Palay, San Jose del Monte City');
INSERT INTO `AddressComplete` VALUES ('307', 'PH', 'Cagayan', '3517', 'Abulug');
INSERT INTO `AddressComplete` VALUES ('308', 'PH', 'Cagayan', '3507', 'Alcala');
INSERT INTO `AddressComplete` VALUES ('309', 'PH', 'Cagayan', '3523', 'Allacapan');
INSERT INTO `AddressComplete` VALUES ('310', 'PH', 'Cagayan', '3505', 'Amulung');
INSERT INTO `AddressComplete` VALUES ('311', 'PH', 'Cagayan', '3515', 'Aparri');
INSERT INTO `AddressComplete` VALUES ('312', 'PH', 'Cagayan', '3506', 'Baggao');
INSERT INTO `AddressComplete` VALUES ('313', 'PH', 'Cagayan', '3516', 'Ballesteros');
INSERT INTO `AddressComplete` VALUES ('314', 'PH', 'Cagayan', '3511', 'Buguey');
INSERT INTO `AddressComplete` VALUES ('315', 'PH', 'Cagayan', '3520', 'Calayan');
INSERT INTO `AddressComplete` VALUES ('316', 'PH', 'Cagayan', '3510', 'Camalaniugan');
INSERT INTO `AddressComplete` VALUES ('317', 'PH', 'Cagayan', '3519', 'Claveria');
INSERT INTO `AddressComplete` VALUES ('318', 'PH', 'Cagayan', '3501', 'Enrile');
INSERT INTO `AddressComplete` VALUES ('319', 'PH', 'Cagayan', '3508', 'Gattaran');
INSERT INTO `AddressComplete` VALUES ('320', 'PH', 'Cagayan', '3513', 'Gonzaga');
INSERT INTO `AddressComplete` VALUES ('321', 'PH', 'Cagayan', '3504', 'Iguig');
INSERT INTO `AddressComplete` VALUES ('322', 'PH', 'Cagayan', '3509', 'Lal-Lo');
INSERT INTO `AddressComplete` VALUES ('323', 'PH', 'Cagayan', '3524', 'Lasam');
INSERT INTO `AddressComplete` VALUES ('324', 'PH', 'Cagayan', '3522', 'Pamplona');
INSERT INTO `AddressComplete` VALUES ('325', 'PH', 'Cagayan', '3502', 'Peñablanca');
INSERT INTO `AddressComplete` VALUES ('326', 'PH', 'Cagayan', '3527', 'Piat');
INSERT INTO `AddressComplete` VALUES ('327', 'PH', 'Cagayan', '3526', 'Rizal');
INSERT INTO `AddressComplete` VALUES ('328', 'PH', 'Cagayan', '3518', 'Sanchez-Mira');
INSERT INTO `AddressComplete` VALUES ('329', 'PH', 'Cagayan', '3514', 'Santa Ana');
INSERT INTO `AddressComplete` VALUES ('330', 'PH', 'Cagayan', '3521', 'Santa Praxedes');
INSERT INTO `AddressComplete` VALUES ('331', 'PH', 'Cagayan', '3512', 'Santa Teresita');
INSERT INTO `AddressComplete` VALUES ('332', 'PH', 'Cagayan', '3525', 'Santo Niño');
INSERT INTO `AddressComplete` VALUES ('333', 'PH', 'Cagayan', '3503', 'Solana');
INSERT INTO `AddressComplete` VALUES ('334', 'PH', 'Cagayan', '3528', 'Tuao');
INSERT INTO `AddressComplete` VALUES ('335', 'PH', 'Cagayan', '3500', 'Tuguegarao City');
INSERT INTO `AddressComplete` VALUES ('336', 'PH', 'Camarines Norte', '4608', 'Basud');
INSERT INTO `AddressComplete` VALUES ('337', 'PH', 'Camarines Norte', '4607', 'Capalonga');
INSERT INTO `AddressComplete` VALUES ('338', 'PH', 'Camarines Norte', '4600', 'Daet');
INSERT INTO `AddressComplete` VALUES ('339', 'PH', 'Camarines Norte', '4610', 'Imelda / San Lorenzo Ruiz');
INSERT INTO `AddressComplete` VALUES ('340', 'PH', 'Camarines Norte', '4606', 'Jose Panganiban');
INSERT INTO `AddressComplete` VALUES ('341', 'PH', 'Camarines Norte', '4604', 'Labo');
INSERT INTO `AddressComplete` VALUES ('342', 'PH', 'Camarines Norte', '4601', 'Mercedes');
INSERT INTO `AddressComplete` VALUES ('343', 'PH', 'Camarines Norte', '4605', 'Paracale');
INSERT INTO `AddressComplete` VALUES ('344', 'PH', 'Camarines Norte', '4609', 'San Vicente');
INSERT INTO `AddressComplete` VALUES ('345', 'PH', 'Camarines Norte', '4611', 'Santa Elena');
INSERT INTO `AddressComplete` VALUES ('346', 'PH', 'Camarines Norte', '4602', 'Talisay');
INSERT INTO `AddressComplete` VALUES ('347', 'PH', 'Camarines Norte', '4612', 'Tulay-na-Lupa');
INSERT INTO `AddressComplete` VALUES ('348', 'PH', 'Camarines Norte', '4603', 'Vinzons');
INSERT INTO `AddressComplete` VALUES ('349', 'PH', 'Camarines Sur', '4432', 'Baao');
INSERT INTO `AddressComplete` VALUES ('350', 'PH', 'Camarines Sur', '4436', 'Balatan');
INSERT INTO `AddressComplete` VALUES ('351', 'PH', 'Camarines Sur', '4435', 'Bato');
INSERT INTO `AddressComplete` VALUES ('352', 'PH', 'Camarines Sur', '4404', 'Bombon');
INSERT INTO `AddressComplete` VALUES ('353', 'PH', 'Camarines Sur', '4433', 'Buhi');
INSERT INTO `AddressComplete` VALUES ('354', 'PH', 'Camarines Sur', '4430', 'Bula');
INSERT INTO `AddressComplete` VALUES ('355', 'PH', 'Camarines Sur', '4406', 'Cabusao');
INSERT INTO `AddressComplete` VALUES ('356', 'PH', 'Camarines Sur', '4405', 'Calabanga');
INSERT INTO `AddressComplete` VALUES ('357', 'PH', 'Camarines Sur', '4401', 'Camaligan');
INSERT INTO `AddressComplete` VALUES ('358', 'PH', 'Camarines Sur', '4402', 'Canaman');
INSERT INTO `AddressComplete` VALUES ('359', 'PH', 'Camarines Sur', '4429', 'Caramoan');
INSERT INTO `AddressComplete` VALUES ('360', 'PH', 'Camarines Sur', '4411', 'Del Gallego');
INSERT INTO `AddressComplete` VALUES ('361', 'PH', 'Camarines Sur', '4412', 'Gainza');
INSERT INTO `AddressComplete` VALUES ('362', 'PH', 'Camarines Sur', '4428', 'Garchitorena');
INSERT INTO `AddressComplete` VALUES ('363', 'PH', 'Camarines Sur', '4422', 'Goa');
INSERT INTO `AddressComplete` VALUES ('364', 'PH', 'Camarines Sur', '4431', 'Iriga City');
INSERT INTO `AddressComplete` VALUES ('365', 'PH', 'Camarines Sur', '4425', 'Lagonoy');
INSERT INTO `AddressComplete` VALUES ('366', 'PH', 'Camarines Sur', '4407', 'Libmanan');
INSERT INTO `AddressComplete` VALUES ('367', 'PH', 'Camarines Sur', '4409', 'Lupi');
INSERT INTO `AddressComplete` VALUES ('368', 'PH', 'Camarines Sur', '4403', 'Magarao');
INSERT INTO `AddressComplete` VALUES ('369', 'PH', 'Camarines Sur', '4413', 'Milaor');
INSERT INTO `AddressComplete` VALUES ('370', 'PH', 'Camarines Sur', '4414', 'Minalabac');
INSERT INTO `AddressComplete` VALUES ('371', 'PH', 'Camarines Sur', '4434', 'Nabua');
INSERT INTO `AddressComplete` VALUES ('372', 'PH', 'Camarines Sur', '4400', 'Naga City');
INSERT INTO `AddressComplete` VALUES ('373', 'PH', 'Camarines Sur', '4419', 'Ocampo');
INSERT INTO `AddressComplete` VALUES ('374', 'PH', 'Camarines Sur', '4416', 'Pamplona');
INSERT INTO `AddressComplete` VALUES ('375', 'PH', 'Camarines Sur', '4417', 'Pasacao');
INSERT INTO `AddressComplete` VALUES ('376', 'PH', 'Camarines Sur', '4418', 'Pili');
INSERT INTO `AddressComplete` VALUES ('377', 'PH', 'Camarines Sur', '4424', 'Presentacion');
INSERT INTO `AddressComplete` VALUES ('378', 'PH', 'Camarines Sur', '4410', 'Ragay');
INSERT INTO `AddressComplete` VALUES ('379', 'PH', 'Camarines Sur', '4421', 'Sagnay');
INSERT INTO `AddressComplete` VALUES ('380', 'PH', 'Camarines Sur', '4415', 'San Fernando');
INSERT INTO `AddressComplete` VALUES ('381', 'PH', 'Camarines Sur', '4423', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('382', 'PH', 'Camarines Sur', '4408', 'Sipocot');
INSERT INTO `AddressComplete` VALUES ('383', 'PH', 'Camarines Sur', '4427', 'Siruma');
INSERT INTO `AddressComplete` VALUES ('384', 'PH', 'Camarines Sur', '4420', 'Tigaon');
INSERT INTO `AddressComplete` VALUES ('385', 'PH', 'Camarines Sur', '4426', 'Tinambac');
INSERT INTO `AddressComplete` VALUES ('386', 'PH', 'Camiguin', '9100', 'Mambajao');
INSERT INTO `AddressComplete` VALUES ('387', 'PH', 'Camiguin', '9101', 'Mahinog');
INSERT INTO `AddressComplete` VALUES ('388', 'PH', 'Camiguin', '9102', 'Guinsiliban');
INSERT INTO `AddressComplete` VALUES ('389', 'PH', 'Camiguin', '9103', 'Sagay');
INSERT INTO `AddressComplete` VALUES ('390', 'PH', 'Camiguin', '9104', 'Catarman');
INSERT INTO `AddressComplete` VALUES ('391', 'PH', 'Capiz', '5811', 'Cuartero');
INSERT INTO `AddressComplete` VALUES ('392', 'PH', 'Capiz', '5810', 'Dao');
INSERT INTO `AddressComplete` VALUES ('393', 'PH', 'Capiz', '5813', 'Dumalag');
INSERT INTO `AddressComplete` VALUES ('394', 'PH', 'Capiz', '5812', 'Dumarao');
INSERT INTO `AddressComplete` VALUES ('395', 'PH', 'Capiz', '5805', 'Ivisan');
INSERT INTO `AddressComplete` VALUES ('396', 'PH', 'Capiz', '5808', 'Jamindan');
INSERT INTO `AddressComplete` VALUES ('397', 'PH', 'Capiz', '5809', 'Ma-ayon');
INSERT INTO `AddressComplete` VALUES ('398', 'PH', 'Capiz', '5807', 'Mambusao');
INSERT INTO `AddressComplete` VALUES ('399', 'PH', 'Capiz', '5801', 'Panay');
INSERT INTO `AddressComplete` VALUES ('400', 'PH', 'Capiz', '5815', 'Panitan');
INSERT INTO `AddressComplete` VALUES ('401', 'PH', 'Capiz', '5804', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('402', 'PH', 'Capiz', '5802', 'Pontevedra');
INSERT INTO `AddressComplete` VALUES ('403', 'PH', 'Capiz', '5803', 'President Roxas');
INSERT INTO `AddressComplete` VALUES ('404', 'PH', 'Capiz', '5800', 'Roxas City');
INSERT INTO `AddressComplete` VALUES ('405', 'PH', 'Capiz', '5806', 'Sapian');
INSERT INTO `AddressComplete` VALUES ('406', 'PH', 'Capiz', '5816', 'Sigma');
INSERT INTO `AddressComplete` VALUES ('407', 'PH', 'Capiz', '5814', 'Tapaz');
INSERT INTO `AddressComplete` VALUES ('408', 'PH', 'Catanduanes', '4807', 'Bagamanoc');
INSERT INTO `AddressComplete` VALUES ('409', 'PH', 'Catanduanes', '4803', 'Baras');
INSERT INTO `AddressComplete` VALUES ('410', 'PH', 'Catanduanes', '4801', 'Bato');
INSERT INTO `AddressComplete` VALUES ('411', 'PH', 'Catanduanes', '4808', 'Caramoran');
INSERT INTO `AddressComplete` VALUES ('412', 'PH', 'Catanduanes', '4804', 'Gigmoto');
INSERT INTO `AddressComplete` VALUES ('413', 'PH', 'Catanduanes', '4809', 'Pandan');
INSERT INTO `AddressComplete` VALUES ('414', 'PH', 'Catanduanes', '4806', 'Panganiban');
INSERT INTO `AddressComplete` VALUES ('415', 'PH', 'Catanduanes', '4810', 'San Andres');
INSERT INTO `AddressComplete` VALUES ('416', 'PH', 'Catanduanes', '4802', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('417', 'PH', 'Catanduanes', '4805', 'Viga');
INSERT INTO `AddressComplete` VALUES ('418', 'PH', 'Catanduanes', '4800', 'Virac');
INSERT INTO `AddressComplete` VALUES ('419', 'PH', 'Cavite', '4133', 'Bailen');
INSERT INTO `AddressComplete` VALUES ('420', 'PH', 'Cavite', '4123', 'Alfonso');
INSERT INTO `AddressComplete` VALUES ('421', 'PH', 'Cavite', '4119', 'Amadeo');
INSERT INTO `AddressComplete` VALUES ('422', 'PH', 'Cavite', '4102', 'Bacoor');
INSERT INTO `AddressComplete` VALUES ('423', 'PH', 'Cavite', '4116', 'Carmona');
INSERT INTO `AddressComplete` VALUES ('424', 'PH', 'Cavite', '4100', 'Cavite City');
INSERT INTO `AddressComplete` VALUES ('425', 'PH', 'Cavite', '4101', 'Sangley Point Naval Base');
INSERT INTO `AddressComplete` VALUES ('426', 'PH', 'Cavite', '4125', 'Corregidor Island');
INSERT INTO `AddressComplete` VALUES ('427', 'PH', 'Cavite', '4114', 'Dasmariñas');
INSERT INTO `AddressComplete` VALUES ('428', 'PH', 'Cavite', '4115', 'Dasmarinas Resettlement Area');
INSERT INTO `AddressComplete` VALUES ('429', 'PH', 'Cavite', '4124', 'General Emilio Aguinaldo (Bailen)');
INSERT INTO `AddressComplete` VALUES ('430', 'PH', 'Cavite', '4117', 'General Mariano Alvarez');
INSERT INTO `AddressComplete` VALUES ('431', 'PH', 'Cavite', '4107', 'General Trias');
INSERT INTO `AddressComplete` VALUES ('432', 'PH', 'Cavite', '4103', 'Imus');
INSERT INTO `AddressComplete` VALUES ('433', 'PH', 'Cavite', '4122', 'Indang');
INSERT INTO `AddressComplete` VALUES ('434', 'PH', 'Cavite', '4104', 'Kawit');
INSERT INTO `AddressComplete` VALUES ('435', 'PH', 'Cavite', '4113', 'Magallanes');
INSERT INTO `AddressComplete` VALUES ('436', 'PH', 'Cavite', '4112', 'Maragondon');
INSERT INTO `AddressComplete` VALUES ('437', 'PH', 'Cavite', '4121', 'Mendez (Mendez-Nuñez)');
INSERT INTO `AddressComplete` VALUES ('438', 'PH', 'Cavite', '4110', 'Naic');
INSERT INTO `AddressComplete` VALUES ('439', 'PH', 'Cavite', '4105', 'Noveleta');
INSERT INTO `AddressComplete` VALUES ('440', 'PH', 'Cavite', '4106', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('441', 'PH', 'Cavite', '4118', 'Silang');
INSERT INTO `AddressComplete` VALUES ('442', 'PH', 'Cavite', '4120', 'Tagaytay City');
INSERT INTO `AddressComplete` VALUES ('443', 'PH', 'Cavite', '4108', 'Tanza');
INSERT INTO `AddressComplete` VALUES ('444', 'PH', 'Cavite', '4111', 'Ternate incl. Caylabne Bay & Puerto Azul');
INSERT INTO `AddressComplete` VALUES ('445', 'PH', 'Cavite', '4109', 'Trece Martires City');
INSERT INTO `AddressComplete` VALUES ('446', 'PH', 'Cebu', '6055', 'Alcantara');
INSERT INTO `AddressComplete` VALUES ('447', 'PH', 'Cebu', '6066', 'Alcoy');
INSERT INTO `AddressComplete` VALUES ('448', 'PH', 'Cebu', '6077', 'Alegria');
INSERT INTO `AddressComplete` VALUES ('449', 'PH', 'Cebu', '6088', 'Aloguinsan');
INSERT INTO `AddressComplete` VALUES ('450', 'PH', 'Cebu', '6099', 'Argao');
INSERT INTO `AddressComplete` VALUES ('451', 'PH', 'Cebu', '6010', 'Asturias');
INSERT INTO `AddressComplete` VALUES ('452', 'PH', 'Cebu', '6011', 'Badian');
INSERT INTO `AddressComplete` VALUES ('453', 'PH', 'Cebu', '6041', 'Balamban');
INSERT INTO `AddressComplete` VALUES ('454', 'PH', 'Cebu', '6052', 'Bantayan');
INSERT INTO `AddressComplete` VALUES ('455', 'PH', 'Cebu', '6036', 'Barili');
INSERT INTO `AddressComplete` VALUES ('456', 'PH', 'Cebu', '6010', 'Bogo City');
INSERT INTO `AddressComplete` VALUES ('457', 'PH', 'Cebu', '6024', 'Boljoon');
INSERT INTO `AddressComplete` VALUES ('458', 'PH', 'Cebu', '6008', 'Borbon');
INSERT INTO `AddressComplete` VALUES ('459', 'PH', 'Cebu', '6019', 'Carcar City');
INSERT INTO `AddressComplete` VALUES ('460', 'PH', 'Cebu', '6005', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('461', 'PH', 'Cebu', '6006', 'Catmon');
INSERT INTO `AddressComplete` VALUES ('462', 'PH', 'Cebu', '6000', 'Cebu City');
INSERT INTO `AddressComplete` VALUES ('463', 'PH', 'Cebu', '6003', 'Compostela');
INSERT INTO `AddressComplete` VALUES ('464', 'PH', 'Cebu', '6001', 'Consolacion');
INSERT INTO `AddressComplete` VALUES ('465', 'PH', 'Cebu', '6017', 'Cordova');
INSERT INTO `AddressComplete` VALUES ('466', 'PH', 'Cebu', '6013', 'Daanbantayan');
INSERT INTO `AddressComplete` VALUES ('467', 'PH', 'Cebu', '6022', 'Dalaguete');
INSERT INTO `AddressComplete` VALUES ('468', 'PH', 'Cebu', '6004', 'Danao City');
INSERT INTO `AddressComplete` VALUES ('469', 'PH', 'Cebu', '6035', 'Dumanjug');
INSERT INTO `AddressComplete` VALUES ('470', 'PH', 'Cebu', '6028', 'Ginatilan');
INSERT INTO `AddressComplete` VALUES ('471', 'PH', 'Cebu', '6015', 'Lapu-Lapu City (Opon)');
INSERT INTO `AddressComplete` VALUES ('472', 'PH', 'Cebu', '6002', 'Liloan');
INSERT INTO `AddressComplete` VALUES ('473', 'PH', 'Cebu', '6016', 'Mactan Airport');
INSERT INTO `AddressComplete` VALUES ('474', 'PH', 'Cebu', '6053', 'Madridejos');
INSERT INTO `AddressComplete` VALUES ('475', 'PH', 'Cebu', '6029', 'Malabuyoc');
INSERT INTO `AddressComplete` VALUES ('476', 'PH', 'Cebu', '6014', 'Mandaue City');
INSERT INTO `AddressComplete` VALUES ('477', 'PH', 'Cebu', '6012', 'Medellin');
INSERT INTO `AddressComplete` VALUES ('478', 'PH', 'Cebu', '6046', 'Minglanilla');
INSERT INTO `AddressComplete` VALUES ('479', 'PH', 'Cebu', '6032', 'Moalboal');
INSERT INTO `AddressComplete` VALUES ('480', 'PH', 'Cebu', '6037', 'Naga');
INSERT INTO `AddressComplete` VALUES ('481', 'PH', 'Cebu', '6025', 'Oslob');
INSERT INTO `AddressComplete` VALUES ('482', 'PH', 'Cebu', '6048', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('483', 'PH', 'Cebu', '6039', 'Pinamungahan');
INSERT INTO `AddressComplete` VALUES ('484', 'PH', 'Cebu', '6049', 'Poro');
INSERT INTO `AddressComplete` VALUES ('485', 'PH', 'Cebu', '6034', 'Ronda');
INSERT INTO `AddressComplete` VALUES ('486', 'PH', 'Cebu', '6027', 'Samboan');
INSERT INTO `AddressComplete` VALUES ('487', 'PH', 'Cebu', '6018', 'San Fernando');
INSERT INTO `AddressComplete` VALUES ('488', 'PH', 'Cebu', '6050', 'San Francisco');
INSERT INTO `AddressComplete` VALUES ('489', 'PH', 'Cebu', '6011', 'San Remigio');
INSERT INTO `AddressComplete` VALUES ('490', 'PH', 'Cebu', '6047', 'Santa Fe');
INSERT INTO `AddressComplete` VALUES ('491', 'PH', 'Cebu', '6026', 'Santander');
INSERT INTO `AddressComplete` VALUES ('492', 'PH', 'Cebu', '6020', 'Sibonga');
INSERT INTO `AddressComplete` VALUES ('493', 'PH', 'Cebu', '6007', 'Sogod');
INSERT INTO `AddressComplete` VALUES ('494', 'PH', 'Cebu', '6009', 'Tabogon');
INSERT INTO `AddressComplete` VALUES ('495', 'PH', 'Cebu', '6044', 'Tabuelan');
INSERT INTO `AddressComplete` VALUES ('496', 'PH', 'Cebu', '6045', 'Talisay City');
INSERT INTO `AddressComplete` VALUES ('497', 'PH', 'Cebu', '6038', 'Toledo City');
INSERT INTO `AddressComplete` VALUES ('498', 'PH', 'Cebu', '6043', 'Tuburan');
INSERT INTO `AddressComplete` VALUES ('499', 'PH', 'Cebu', '6051', 'Tudela');
INSERT INTO `AddressComplete` VALUES ('500', 'PH', 'Compostela Valley', '8109', 'Compostela');
INSERT INTO `AddressComplete` VALUES ('501', 'PH', 'Compostela Valley', '8103', 'Laak (San Vicente)');
INSERT INTO `AddressComplete` VALUES ('502', 'PH', 'Compostela Valley', '8115', 'Mabini (Doña Alicia)');
INSERT INTO `AddressComplete` VALUES ('503', 'PH', 'Compostela Valley', '8114', 'Maco');
INSERT INTO `AddressComplete` VALUES ('504', 'PH', 'Compostela Valley', '8116', 'Maragusan (San Mariano)');
INSERT INTO `AddressComplete` VALUES ('505', 'PH', 'Compostela Valley', '8108', 'Mawab');
INSERT INTO `AddressComplete` VALUES ('506', 'PH', 'Compostela Valley', '8111', 'Monkayo');
INSERT INTO `AddressComplete` VALUES ('507', 'PH', 'Compostela Valley', '8107', 'Montevista');
INSERT INTO `AddressComplete` VALUES ('508', 'PH', 'Compostela Valley', '8106', 'Nabunturan');
INSERT INTO `AddressComplete` VALUES ('509', 'PH', 'Compostela Valley', '8110', 'New Bataan');
INSERT INTO `AddressComplete` VALUES ('510', 'PH', 'Compostela Valley', '8117', 'Pantukan');
INSERT INTO `AddressComplete` VALUES ('511', 'PH', 'Cotabato', '9413', 'Alamada');
INSERT INTO `AddressComplete` VALUES ('512', 'PH', 'Cotabato', '9415', 'Aleosan');
INSERT INTO `AddressComplete` VALUES ('513', 'PH', 'Cotabato', '9414', 'Antipas');
INSERT INTO `AddressComplete` VALUES ('514', 'PH', 'Cotabato', '9417', 'Arakan');
INSERT INTO `AddressComplete` VALUES ('515', 'PH', 'Cotabato', '9416', 'Banisilan');
INSERT INTO `AddressComplete` VALUES ('516', 'PH', 'Cotabato', '9408', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('517', 'PH', 'Cotabato', '9407', 'Kabacan');
INSERT INTO `AddressComplete` VALUES ('518', 'PH', 'Cotabato', '9400', 'Kidapawan City');
INSERT INTO `AddressComplete` VALUES ('519', 'PH', 'Cotabato', '9411', 'Libungan');
INSERT INTO `AddressComplete` VALUES ('520', 'PH', 'Cotabato', '9404', 'Magpet');
INSERT INTO `AddressComplete` VALUES ('521', 'PH', 'Cotabato', '9401', 'Makilala');
INSERT INTO `AddressComplete` VALUES ('522', 'PH', 'Cotabato', '9406', 'Matalam');
INSERT INTO `AddressComplete` VALUES ('523', 'PH', 'Cotabato', '9410', 'Midsayap');
INSERT INTO `AddressComplete` VALUES ('524', 'PH', 'Cotabato', '9402', 'M\'Lang');
INSERT INTO `AddressComplete` VALUES ('525', 'PH', 'Cotabato', '9412', 'Pigkawayan');
INSERT INTO `AddressComplete` VALUES ('526', 'PH', 'Cotabato', '9409', 'Pikit');
INSERT INTO `AddressComplete` VALUES ('527', 'PH', 'Cotabato', '9405', 'President Roxas');
INSERT INTO `AddressComplete` VALUES ('528', 'PH', 'Cotabato', '9403', 'Tulunan');
INSERT INTO `AddressComplete` VALUES ('529', 'PH', 'Davao del Norte', '8102', 'Asuncion');
INSERT INTO `AddressComplete` VALUES ('530', 'PH', 'Davao del Norte', '8118', 'Babak');
INSERT INTO `AddressComplete` VALUES ('531', 'PH', 'Davao del Norte', '8101', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('532', 'PH', 'Davao del Norte', '8113', 'Kapalong');
INSERT INTO `AddressComplete` VALUES ('533', 'PH', 'Davao del Norte', '8120', 'Kaputian');
INSERT INTO `AddressComplete` VALUES ('534', 'PH', 'Davao del Norte', '8104', 'New Corella');
INSERT INTO `AddressComplete` VALUES ('535', 'PH', 'Davao del Norte', '8105', 'Panabo City');
INSERT INTO `AddressComplete` VALUES ('536', 'PH', 'Davao del Norte', '8119', 'Island Garden City of Samal');
INSERT INTO `AddressComplete` VALUES ('537', 'PH', 'Davao del Norte', '8112', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('538', 'PH', 'Davao del Norte', '8100', 'Tagum City');
INSERT INTO `AddressComplete` VALUES ('539', 'PH', 'Davao del Sur', '8005', 'Bansalan');
INSERT INTO `AddressComplete` VALUES ('540', 'PH', 'Davao del Sur', '8000', 'Davao City');
INSERT INTO `AddressComplete` VALUES ('541', 'PH', 'Davao del Sur', '8016', 'Ateneo de Davao University');
INSERT INTO `AddressComplete` VALUES ('542', 'PH', 'Davao del Sur', '8002', 'Digos City');
INSERT INTO `AddressComplete` VALUES ('543', 'PH', 'Davao del Sur', '8013', 'Don Marcelino');
INSERT INTO `AddressComplete` VALUES ('544', 'PH', 'Davao del Sur', '8006', 'Hagonoy');
INSERT INTO `AddressComplete` VALUES ('545', 'PH', 'Davao del Sur', '8014', 'Jose Abad Santos');
INSERT INTO `AddressComplete` VALUES ('546', 'PH', 'Davao del Sur', '8008', 'Kiblawan');
INSERT INTO `AddressComplete` VALUES ('547', 'PH', 'Davao del Sur', '8004', 'Magsaysay');
INSERT INTO `AddressComplete` VALUES ('548', 'PH', 'Davao del Sur', '8010', 'Malalag');
INSERT INTO `AddressComplete` VALUES ('549', 'PH', 'Davao del Sur', '8012', 'Malita');
INSERT INTO `AddressComplete` VALUES ('550', 'PH', 'Davao del Sur', '8003', 'Matanao');
INSERT INTO `AddressComplete` VALUES ('551', 'PH', 'Davao del Sur', '8007', 'Padada');
INSERT INTO `AddressComplete` VALUES ('552', 'PH', 'Davao del Sur', '8001', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('553', 'PH', 'Davao del Sur', '8011', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('554', 'PH', 'Davao del Sur', '8015', 'Sarangani');
INSERT INTO `AddressComplete` VALUES ('555', 'PH', 'Davao del Sur', '8009', 'Sulop');
INSERT INTO `AddressComplete` VALUES ('556', 'PH', 'Davao del Sur', '8200', 'Mati');
INSERT INTO `AddressComplete` VALUES ('557', 'PH', 'Davao del Sur', '8209', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('558', 'PH', 'Davao del Sur', '8201', 'Tarragona');
INSERT INTO `AddressComplete` VALUES ('559', 'PH', 'Dinagat Islands', '8413', 'Basilisa (Rizal)');
INSERT INTO `AddressComplete` VALUES ('560', 'PH', 'Dinagat Islands', '8411', 'Cagdianao');
INSERT INTO `AddressComplete` VALUES ('561', 'PH', 'Dinagat Islands', '8412', 'Dinagat');
INSERT INTO `AddressComplete` VALUES ('562', 'PH', 'Dinagat Islands', '8414', 'Libjo (Albor)');
INSERT INTO `AddressComplete` VALUES ('563', 'PH', 'Dinagat Islands', '8415', 'Loreto');
INSERT INTO `AddressComplete` VALUES ('564', 'PH', 'Dinagat Islands', '8427', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('565', 'PH', 'Dinagat Islands', '8426', 'Tubajon');
INSERT INTO `AddressComplete` VALUES ('566', 'PH', 'Eastern Samar', '6822', 'Arteche');
INSERT INTO `AddressComplete` VALUES ('567', 'PH', 'Eastern Samar', '6812', 'Balangiga');
INSERT INTO `AddressComplete` VALUES ('568', 'PH', 'Eastern Samar', '6801', 'Balangkayan');
INSERT INTO `AddressComplete` VALUES ('569', 'PH', 'Eastern Samar', '6800', 'Borongan');
INSERT INTO `AddressComplete` VALUES ('570', 'PH', 'Eastern Samar', '6806', 'Can-avid');
INSERT INTO `AddressComplete` VALUES ('571', 'PH', 'Eastern Samar', '6817', 'Dolores');
INSERT INTO `AddressComplete` VALUES ('572', 'PH', 'Eastern Samar', '6805', 'General MacArthur');
INSERT INTO `AddressComplete` VALUES ('573', 'PH', 'Eastern Samar', '6811', 'Giporlos');
INSERT INTO `AddressComplete` VALUES ('574', 'PH', 'Eastern Samar', '6809', 'Guiuan');
INSERT INTO `AddressComplete` VALUES ('575', 'PH', 'Eastern Samar', '6804', 'Hernani');
INSERT INTO `AddressComplete` VALUES ('576', 'PH', 'Eastern Samar', '6819', 'Jipapad');
INSERT INTO `AddressComplete` VALUES ('577', 'PH', 'Eastern Samar', '6813', 'Lawaan');
INSERT INTO `AddressComplete` VALUES ('578', 'PH', 'Eastern Samar', '6803', 'Llorente');
INSERT INTO `AddressComplete` VALUES ('579', 'PH', 'Eastern Samar', '6820', 'Maslog');
INSERT INTO `AddressComplete` VALUES ('580', 'PH', 'Eastern Samar', '6802', 'Maydolong');
INSERT INTO `AddressComplete` VALUES ('581', 'PH', 'Eastern Samar', '6808', 'Mercedes');
INSERT INTO `AddressComplete` VALUES ('582', 'PH', 'Eastern Samar', '6818', 'Oras');
INSERT INTO `AddressComplete` VALUES ('583', 'PH', 'Eastern Samar', '6810', 'Quinapondan');
INSERT INTO `AddressComplete` VALUES ('584', 'PH', 'Eastern Samar', '6807', 'Salcedo');
INSERT INTO `AddressComplete` VALUES ('585', 'PH', 'Eastern Samar', '6814', 'San Julian');
INSERT INTO `AddressComplete` VALUES ('586', 'PH', 'Eastern Samar', '6821', 'San Policarpo');
INSERT INTO `AddressComplete` VALUES ('587', 'PH', 'Eastern Samar', '6815', 'Sulat');
INSERT INTO `AddressComplete` VALUES ('588', 'PH', 'Eastern Samar', '6816', 'Taft');
INSERT INTO `AddressComplete` VALUES ('589', 'PH', 'Guimaras', '5044', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('590', 'PH', 'Guimaras', '5045', 'Jordan');
INSERT INTO `AddressComplete` VALUES ('591', 'PH', 'Guimaras', '5046', 'Nueva Valencia');
INSERT INTO `AddressComplete` VALUES ('592', 'PH', 'Guimaras', '5047', 'San Lorenzo');
INSERT INTO `AddressComplete` VALUES ('593', 'PH', 'Guimaras', '5048', 'Sibunag');
INSERT INTO `AddressComplete` VALUES ('594', 'PH', 'Ifugao', '3606', 'Aguinaldo');
INSERT INTO `AddressComplete` VALUES ('595', 'PH', 'Ifugao', '3608', 'Alfonso Lista (Potia)');
INSERT INTO `AddressComplete` VALUES ('596', 'PH', 'Ifugao', '3610', 'Asipulo');
INSERT INTO `AddressComplete` VALUES ('597', 'PH', 'Ifugao', '3601', 'Banaue');
INSERT INTO `AddressComplete` VALUES ('598', 'PH', 'Ifugao', '3607', 'Hingyon');
INSERT INTO `AddressComplete` VALUES ('599', 'PH', 'Ifugao', '3603', 'Hungduan');
INSERT INTO `AddressComplete` VALUES ('600', 'PH', 'Ifugao', '3604', 'Kiangan');
INSERT INTO `AddressComplete` VALUES ('601', 'PH', 'Ifugao', '3600', 'Lagawe');
INSERT INTO `AddressComplete` VALUES ('602', 'PH', 'Ifugao', '3605', 'Lamut');
INSERT INTO `AddressComplete` VALUES ('603', 'PH', 'Ifugao', '3602', 'Mayoyao (Mayaoyao)');
INSERT INTO `AddressComplete` VALUES ('604', 'PH', 'Ifugao', '3609', 'Tinoc');
INSERT INTO `AddressComplete` VALUES ('605', 'PH', 'Ilocos Norte', '2922', 'Adams');
INSERT INTO `AddressComplete` VALUES ('606', 'PH', 'Ilocos Norte', '2916', 'Bacarra');
INSERT INTO `AddressComplete` VALUES ('607', 'PH', 'Ilocos Norte', '2904', 'Badoc');
INSERT INTO `AddressComplete` VALUES ('608', 'PH', 'Ilocos Norte', '2920', 'Bangui');
INSERT INTO `AddressComplete` VALUES ('609', 'PH', 'Ilocos Norte', '2908', 'Banna (Espiritu)');
INSERT INTO `AddressComplete` VALUES ('610', 'PH', 'Ilocos Norte', '2906', 'Batac');
INSERT INTO `AddressComplete` VALUES ('611', 'PH', 'Ilocos Norte', '2918', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('612', 'PH', 'Ilocos Norte', '2911', 'Carasi');
INSERT INTO `AddressComplete` VALUES ('613', 'PH', 'Ilocos Norte', '2903', 'Currimao');
INSERT INTO `AddressComplete` VALUES ('614', 'PH', 'Ilocos Norte', '2913', 'Dingras');
INSERT INTO `AddressComplete` VALUES ('615', 'PH', 'Ilocos Norte', '2921', 'Dumalneg');
INSERT INTO `AddressComplete` VALUES ('616', 'PH', 'Ilocos Norte', '2900', 'Laoag City');
INSERT INTO `AddressComplete` VALUES ('617', 'PH', 'Ilocos Norte', '2907', 'Marcos');
INSERT INTO `AddressComplete` VALUES ('618', 'PH', 'Ilocos Norte', '2909', 'Nueva Era');
INSERT INTO `AddressComplete` VALUES ('619', 'PH', 'Ilocos Norte', '2919', 'Pagudpud');
INSERT INTO `AddressComplete` VALUES ('620', 'PH', 'Ilocos Norte', '2902', 'Paoay');
INSERT INTO `AddressComplete` VALUES ('621', 'PH', 'Ilocos Norte', '2917', 'Pasuquin');
INSERT INTO `AddressComplete` VALUES ('622', 'PH', 'Ilocos Norte', '2912', 'Piddig');
INSERT INTO `AddressComplete` VALUES ('623', 'PH', 'Ilocos Norte', '2905', 'Pinili');
INSERT INTO `AddressComplete` VALUES ('624', 'PH', 'Ilocos Norte', '2901', 'San Nicolas');
INSERT INTO `AddressComplete` VALUES ('625', 'PH', 'Ilocos Norte', '2914', 'Sarrat');
INSERT INTO `AddressComplete` VALUES ('626', 'PH', 'Ilocos Norte', '2910', 'Solsona');
INSERT INTO `AddressComplete` VALUES ('627', 'PH', 'Ilocos Norte', '2915', 'Vintar');
INSERT INTO `AddressComplete` VALUES ('628', 'PH', 'Ilocos Sur', '2716', 'Alilem');
INSERT INTO `AddressComplete` VALUES ('629', 'PH', 'Ilocos Sur', '2708', 'Banayoyo');
INSERT INTO `AddressComplete` VALUES ('630', 'PH', 'Ilocos Sur', '2727', 'Bantay');
INSERT INTO `AddressComplete` VALUES ('631', 'PH', 'Ilocos Sur', '2724', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('632', 'PH', 'Ilocos Sur', '2732', 'Cabugao');
INSERT INTO `AddressComplete` VALUES ('633', 'PH', 'Ilocos Sur', '2710', 'Candon City');
INSERT INTO `AddressComplete` VALUES ('634', 'PH', 'Ilocos Sur', '2702', 'Caoayan');
INSERT INTO `AddressComplete` VALUES ('635', 'PH', 'Ilocos Sur', '2718', 'Cervantes');
INSERT INTO `AddressComplete` VALUES ('636', 'PH', 'Ilocos Sur', '2709', 'Galimuyod');
INSERT INTO `AddressComplete` VALUES ('637', 'PH', 'Ilocos Sur', '2720', 'Gregorio del Pilar');
INSERT INTO `AddressComplete` VALUES ('638', 'PH', 'Ilocos Sur', '2723', 'Lidlidda');
INSERT INTO `AddressComplete` VALUES ('639', 'PH', 'Ilocos Sur', '2730', 'Magsingal');
INSERT INTO `AddressComplete` VALUES ('640', 'PH', 'Ilocos Sur', '2725', 'Nagbukel');
INSERT INTO `AddressComplete` VALUES ('641', 'PH', 'Ilocos Sur', '2704', 'Narvacan');
INSERT INTO `AddressComplete` VALUES ('642', 'PH', 'Ilocos Sur', '2721', 'Quirino (Angkaki)');
INSERT INTO `AddressComplete` VALUES ('643', 'PH', 'Ilocos Sur', '2711', 'Salcedo (Baugen)');
INSERT INTO `AddressComplete` VALUES ('644', 'PH', 'Ilocos Sur', '2722', 'San Emilio');
INSERT INTO `AddressComplete` VALUES ('645', 'PH', 'Ilocos Sur', '2706', 'San Esteban');
INSERT INTO `AddressComplete` VALUES ('646', 'PH', 'Ilocos Sur', '2728', 'San Ildefonso');
INSERT INTO `AddressComplete` VALUES ('647', 'PH', 'Ilocos Sur', '2731', 'San Juan (Lapog)');
INSERT INTO `AddressComplete` VALUES ('648', 'PH', 'Ilocos Sur', '2726', 'San Vicente');
INSERT INTO `AddressComplete` VALUES ('649', 'PH', 'Ilocos Sur', '2703', 'Santa');
INSERT INTO `AddressComplete` VALUES ('650', 'PH', 'Ilocos Sur', '2701', 'Santa Catalina');
INSERT INTO `AddressComplete` VALUES ('651', 'PH', 'Ilocos Sur', '2713', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('652', 'PH', 'Ilocos Sur', '2712', 'Santa Lucia');
INSERT INTO `AddressComplete` VALUES ('653', 'PH', 'Ilocos Sur', '2705', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('654', 'PH', 'Ilocos Sur', '2707', 'Santiago');
INSERT INTO `AddressComplete` VALUES ('655', 'PH', 'Ilocos Sur', '2729', 'Santo Domingo');
INSERT INTO `AddressComplete` VALUES ('656', 'PH', 'Ilocos Sur', '2719', 'Sigay');
INSERT INTO `AddressComplete` VALUES ('657', 'PH', 'Ilocos Sur', '2733', 'Sinait');
INSERT INTO `AddressComplete` VALUES ('658', 'PH', 'Ilocos Sur', '2717', 'Sugpon');
INSERT INTO `AddressComplete` VALUES ('659', 'PH', 'Ilocos Sur', '2715', 'Suyo');
INSERT INTO `AddressComplete` VALUES ('660', 'PH', 'Ilocos Sur', '2714', 'Tagudin');
INSERT INTO `AddressComplete` VALUES ('661', 'PH', 'Ilocos Sur', '2700', 'Vigan City');
INSERT INTO `AddressComplete` VALUES ('662', 'PH', 'Iloilo', '5012', 'Ajuy');
INSERT INTO `AddressComplete` VALUES ('663', 'PH', 'Iloilo', '5028', 'Alimodian');
INSERT INTO `AddressComplete` VALUES ('664', 'PH', 'Iloilo', '5009', 'Anilao');
INSERT INTO `AddressComplete` VALUES ('665', 'PH', 'Iloilo', '5033', 'Badiangan');
INSERT INTO `AddressComplete` VALUES ('666', 'PH', 'Iloilo', '5018', 'Balasan');
INSERT INTO `AddressComplete` VALUES ('667', 'PH', 'Iloilo', '5010', 'Banate');
INSERT INTO `AddressComplete` VALUES ('668', 'PH', 'Iloilo', '5007', 'Barotoc Nuevo');
INSERT INTO `AddressComplete` VALUES ('669', 'PH', 'Iloilo', '5011', 'Barotoc Viejo');
INSERT INTO `AddressComplete` VALUES ('670', 'PH', 'Iloilo', '5016', 'Batad');
INSERT INTO `AddressComplete` VALUES ('671', 'PH', 'Iloilo', '5041', 'Bingawan');
INSERT INTO `AddressComplete` VALUES ('672', 'PH', 'Iloilo', '5031', 'Cabatuan');
INSERT INTO `AddressComplete` VALUES ('673', 'PH', 'Iloilo', '5040', 'Calinog');
INSERT INTO `AddressComplete` VALUES ('674', 'PH', 'Iloilo', '5019', 'Carles');
INSERT INTO `AddressComplete` VALUES ('675', 'PH', 'Iloilo', '5013', 'Concepcion');
INSERT INTO `AddressComplete` VALUES ('676', 'PH', 'Iloilo', '5035', 'Dingle');
INSERT INTO `AddressComplete` VALUES ('677', 'PH', 'Iloilo', '5038', 'Duenas');
INSERT INTO `AddressComplete` VALUES ('678', 'PH', 'Iloilo', '5006', 'Dumangas');
INSERT INTO `AddressComplete` VALUES ('679', 'PH', 'Iloilo', '5017', 'Estancia');
INSERT INTO `AddressComplete` VALUES ('680', 'PH', 'Iloilo', '5022', 'Guimbal');
INSERT INTO `AddressComplete` VALUES ('681', 'PH', 'Iloilo', '5029', 'Igbaras');
INSERT INTO `AddressComplete` VALUES ('682', 'PH', 'Iloilo', '5000', 'Iloilo City');
INSERT INTO `AddressComplete` VALUES ('683', 'PH', 'Iloilo', '5034', 'Janiuay');
INSERT INTO `AddressComplete` VALUES ('684', 'PH', 'Iloilo', '5042', 'Lambunao');
INSERT INTO `AddressComplete` VALUES ('685', 'PH', 'Iloilo', '5003', 'Leganes');
INSERT INTO `AddressComplete` VALUES ('686', 'PH', 'Iloilo', '5043', 'Lemery');
INSERT INTO `AddressComplete` VALUES ('687', 'PH', 'Iloilo', '5026', 'Leon');
INSERT INTO `AddressComplete` VALUES ('688', 'PH', 'Iloilo', '5030', 'Maasin');
INSERT INTO `AddressComplete` VALUES ('689', 'PH', 'Iloilo', '5023', 'Miagao');
INSERT INTO `AddressComplete` VALUES ('690', 'PH', 'Iloilo', '5032', 'Mina');
INSERT INTO `AddressComplete` VALUES ('691', 'PH', 'Iloilo', '5005', 'New Lucena');
INSERT INTO `AddressComplete` VALUES ('692', 'PH', 'Iloilo', '5020', 'Oton');
INSERT INTO `AddressComplete` VALUES ('693', 'PH', 'Iloilo', '5037', 'Passi City');
INSERT INTO `AddressComplete` VALUES ('694', 'PH', 'Iloilo', '5001', 'Pavia');
INSERT INTO `AddressComplete` VALUES ('695', 'PH', 'Iloilo', '5008', 'Pototan');
INSERT INTO `AddressComplete` VALUES ('696', 'PH', 'Iloilo', '5015', 'San Dionisio');
INSERT INTO `AddressComplete` VALUES ('697', 'PH', 'Iloilo', '5036', 'San Enrique');
INSERT INTO `AddressComplete` VALUES ('698', 'PH', 'Iloilo', '5024', 'San Joaquin');
INSERT INTO `AddressComplete` VALUES ('699', 'PH', 'Iloilo', '5025', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('700', 'PH', 'Iloilo', '5039', 'San Rafael');
INSERT INTO `AddressComplete` VALUES ('701', 'PH', 'Iloilo', '5002', 'Santa Barbara');
INSERT INTO `AddressComplete` VALUES ('702', 'PH', 'Iloilo', '5014', 'Sara');
INSERT INTO `AddressComplete` VALUES ('703', 'PH', 'Iloilo', '5021', 'Tigbauan');
INSERT INTO `AddressComplete` VALUES ('704', 'PH', 'Iloilo', '5027', 'Tubungan');
INSERT INTO `AddressComplete` VALUES ('705', 'PH', 'Iloilo', '5004', 'Zarraga');
INSERT INTO `AddressComplete` VALUES ('706', 'PH', 'Isabela', '3306', 'Alicia');
INSERT INTO `AddressComplete` VALUES ('707', 'PH', 'Isabela', '3307', 'Angadanan');
INSERT INTO `AddressComplete` VALUES ('708', 'PH', 'Isabela', '3316', 'Aurora');
INSERT INTO `AddressComplete` VALUES ('709', 'PH', 'Isabela', '3331', 'Benito Soliven');
INSERT INTO `AddressComplete` VALUES ('710', 'PH', 'Isabela', '3322', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('711', 'PH', 'Isabela', '3328', 'Cabagan');
INSERT INTO `AddressComplete` VALUES ('712', 'PH', 'Isabela', '3315', 'Cabatuan');
INSERT INTO `AddressComplete` VALUES ('713', 'PH', 'Isabela', '3305', 'Cauayan City');
INSERT INTO `AddressComplete` VALUES ('714', 'PH', 'Isabela', '3312', 'Cordon');
INSERT INTO `AddressComplete` VALUES ('715', 'PH', 'Isabela', '3326', 'Delfin Albano');
INSERT INTO `AddressComplete` VALUES ('716', 'PH', 'Isabela', '3336', 'Dinapigui');
INSERT INTO `AddressComplete` VALUES ('717', 'PH', 'Isabela', '3335', 'Divilacan');
INSERT INTO `AddressComplete` VALUES ('718', 'PH', 'Isabela', '3309', 'Echague');
INSERT INTO `AddressComplete` VALUES ('719', 'PH', 'Isabela', '3301', 'Gamu');
INSERT INTO `AddressComplete` VALUES ('720', 'PH', 'Isabela', '3300', 'Ilagan');
INSERT INTO `AddressComplete` VALUES ('721', 'PH', 'Isabela', '3313', 'Jones');
INSERT INTO `AddressComplete` VALUES ('722', 'PH', 'Isabela', '3304', 'Luna');
INSERT INTO `AddressComplete` VALUES ('723', 'PH', 'Isabela', '3333', 'Maconacon');
INSERT INTO `AddressComplete` VALUES ('724', 'PH', 'Isabela', '3323', 'Mallig');
INSERT INTO `AddressComplete` VALUES ('725', 'PH', 'Isabela', '3302', 'Naguillan');
INSERT INTO `AddressComplete` VALUES ('726', 'PH', 'Isabela', '3334', 'Palanan');
INSERT INTO `AddressComplete` VALUES ('727', 'PH', 'Isabela', '3324', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('728', 'PH', 'Isabela', '3321', 'Quirino');
INSERT INTO `AddressComplete` VALUES ('729', 'PH', 'Isabela', '3319', 'Ramon');
INSERT INTO `AddressComplete` VALUES ('730', 'PH', 'Isabela', '3303', 'Reina Mercedes');
INSERT INTO `AddressComplete` VALUES ('731', 'PH', 'Isabela', '3320', 'Roxas');
INSERT INTO `AddressComplete` VALUES ('732', 'PH', 'Isabela', '3314', 'San Agustin');
INSERT INTO `AddressComplete` VALUES ('733', 'PH', 'Isabela', '3308', 'San Guillermo');
INSERT INTO `AddressComplete` VALUES ('734', 'PH', 'Isabela', '3310', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('735', 'PH', 'Isabela', '3317', 'San Manuel (Callang)');
INSERT INTO `AddressComplete` VALUES ('736', 'PH', 'Isabela', '3332', 'San Mariano');
INSERT INTO `AddressComplete` VALUES ('737', 'PH', 'Isabela', '3318', 'San Mateo');
INSERT INTO `AddressComplete` VALUES ('738', 'PH', 'Isabela', '3329', 'San Pablo');
INSERT INTO `AddressComplete` VALUES ('739', 'PH', 'Isabela', '3330', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('740', 'PH', 'Isabela', '3311', 'Santiago City');
INSERT INTO `AddressComplete` VALUES ('741', 'PH', 'Isabela', '3327', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('742', 'PH', 'Isabela', '3325', 'Tumauini');
INSERT INTO `AddressComplete` VALUES ('743', 'PH', 'Kalinga', '3801', 'Balbalan');
INSERT INTO `AddressComplete` VALUES ('744', 'PH', 'Kalinga', '3808', 'Liwan (Rizal)');
INSERT INTO `AddressComplete` VALUES ('745', 'PH', 'Kalinga', '3802', 'Lubuagan');
INSERT INTO `AddressComplete` VALUES ('746', 'PH', 'Kalinga', '3803', 'Pasil');
INSERT INTO `AddressComplete` VALUES ('747', 'PH', 'Kalinga', '3806', 'Pinukpuk');
INSERT INTO `AddressComplete` VALUES ('748', 'PH', 'Kalinga', '3800', 'Tabuk City');
INSERT INTO `AddressComplete` VALUES ('749', 'PH', 'Kalinga', '3805', 'Tanudan');
INSERT INTO `AddressComplete` VALUES ('750', 'PH', 'Kalinga', '3804', 'Tinglayan');
INSERT INTO `AddressComplete` VALUES ('751', 'PH', 'La Union', '2504', 'Agoo');
INSERT INTO `AddressComplete` VALUES ('752', 'PH', 'La Union', '2503', 'Aringay');
INSERT INTO `AddressComplete` VALUES ('753', 'PH', 'La Union', '2515', 'Bacnotan');
INSERT INTO `AddressComplete` VALUES ('754', 'PH', 'La Union', '2512', 'Bagulin');
INSERT INTO `AddressComplete` VALUES ('755', 'PH', 'La Union', '2517', 'Balaoan');
INSERT INTO `AddressComplete` VALUES ('756', 'PH', 'La Union', '2519', 'Bangar');
INSERT INTO `AddressComplete` VALUES ('757', 'PH', 'La Union', '2501', 'Bauang');
INSERT INTO `AddressComplete` VALUES ('758', 'PH', 'La Union', '2510', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('759', 'PH', 'La Union', '2502', 'Caba');
INSERT INTO `AddressComplete` VALUES ('760', 'PH', 'La Union', '2507', 'Damortis');
INSERT INTO `AddressComplete` VALUES ('761', 'PH', 'La Union', '2518', 'Luna');
INSERT INTO `AddressComplete` VALUES ('762', 'PH', 'La Union', '2511', 'Naguillan');
INSERT INTO `AddressComplete` VALUES ('763', 'PH', 'La Union', '2508', 'Pugo');
INSERT INTO `AddressComplete` VALUES ('764', 'PH', 'La Union', '2506', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('765', 'PH', 'La Union', '2500', 'San Fernando City');
INSERT INTO `AddressComplete` VALUES ('766', 'PH', 'La Union', '2513', 'San Gabriel');
INSERT INTO `AddressComplete` VALUES ('767', 'PH', 'La Union', '2514', 'San Juan');
INSERT INTO `AddressComplete` VALUES ('768', 'PH', 'La Union', '2505', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('769', 'PH', 'La Union', '2516', 'Santol');
INSERT INTO `AddressComplete` VALUES ('770', 'PH', 'La Union', '2520', 'Sudepen');
INSERT INTO `AddressComplete` VALUES ('771', 'PH', 'La Union', '2509', 'Tubao');
INSERT INTO `AddressComplete` VALUES ('772', 'PH', 'Laguna', '4001', 'Alaminos');
INSERT INTO `AddressComplete` VALUES ('773', 'PH', 'Laguna', '4033', 'Bay');
INSERT INTO `AddressComplete` VALUES ('774', 'PH', 'Laguna', '4024', 'Biñan');
INSERT INTO `AddressComplete` VALUES ('775', 'PH', 'Laguna', '4006', 'Botocan, Magdalena');
INSERT INTO `AddressComplete` VALUES ('776', 'PH', 'Laguna', '4025', 'Cabuyao');
INSERT INTO `AddressComplete` VALUES ('777', 'PH', 'Laguna', '4027', 'Calamba City');
INSERT INTO `AddressComplete` VALUES ('778', 'PH', 'Laguna', '4012', 'Calauan');
INSERT INTO `AddressComplete` VALUES ('779', 'PH', 'Laguna', '4029', 'Camp Vicente Lim');
INSERT INTO `AddressComplete` VALUES ('780', 'PH', 'Laguna', '4028', 'Canlubang, Calamba City');
INSERT INTO `AddressComplete` VALUES ('781', 'PH', 'Laguna', '4013', 'Cavinti');
INSERT INTO `AddressComplete` VALUES ('782', 'PH', 'Laguna', '4021', 'Famy');
INSERT INTO `AddressComplete` VALUES ('783', 'PH', 'Laguna', '4015', 'Kalayaan');
INSERT INTO `AddressComplete` VALUES ('784', 'PH', 'Laguna', '4004', 'Liliw');
INSERT INTO `AddressComplete` VALUES ('785', 'PH', 'Laguna', '4030', 'Los Baños');
INSERT INTO `AddressComplete` VALUES ('786', 'PH', 'Laguna', '4032', 'Luisiana');
INSERT INTO `AddressComplete` VALUES ('787', 'PH', 'Laguna', '4014', 'Lumban');
INSERT INTO `AddressComplete` VALUES ('788', 'PH', 'Laguna', '4020', 'Mabitac');
INSERT INTO `AddressComplete` VALUES ('789', 'PH', 'Laguna', '4007', 'Magdalena');
INSERT INTO `AddressComplete` VALUES ('790', 'PH', 'Laguna', '4005', 'Majayjay');
INSERT INTO `AddressComplete` VALUES ('791', 'PH', 'Laguna', '4002', 'Nagcarlan');
INSERT INTO `AddressComplete` VALUES ('792', 'PH', 'Laguna', '4016', 'Paete');
INSERT INTO `AddressComplete` VALUES ('793', 'PH', 'Laguna', '4008', 'Pagsanjan');
INSERT INTO `AddressComplete` VALUES ('794', 'PH', 'Laguna', '4017', 'Pakil');
INSERT INTO `AddressComplete` VALUES ('795', 'PH', 'Laguna', '4018', 'Pangil');
INSERT INTO `AddressComplete` VALUES ('796', 'PH', 'Laguna', '4010', 'Pila');
INSERT INTO `AddressComplete` VALUES ('797', 'PH', 'Laguna', '4003', 'Rizal');
INSERT INTO `AddressComplete` VALUES ('798', 'PH', 'Laguna', '4000', 'San Pablo City');
INSERT INTO `AddressComplete` VALUES ('799', 'PH', 'Laguna', '4023', 'San Pedro');
INSERT INTO `AddressComplete` VALUES ('800', 'PH', 'Laguna', '4009', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('801', 'PH', 'Laguna', '4022', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('802', 'PH', 'Laguna', '4026', 'Santa Rosa City');
INSERT INTO `AddressComplete` VALUES ('803', 'PH', 'Laguna', '4019', 'Siniloan');
INSERT INTO `AddressComplete` VALUES ('804', 'PH', 'Laguna', '4031', 'University of the Philippines, Los Baños');
INSERT INTO `AddressComplete` VALUES ('805', 'PH', 'Laguna', '4011', 'Victoria');
INSERT INTO `AddressComplete` VALUES ('806', 'PH', 'Lanao del Norte', '9205', 'Bacolod');
INSERT INTO `AddressComplete` VALUES ('807', 'PH', 'Lanao del Norte', '9217', 'Baloi');
INSERT INTO `AddressComplete` VALUES ('808', 'PH', 'Lanao del Norte', '9210', 'Baroy');
INSERT INTO `AddressComplete` VALUES ('809', 'PH', 'Lanao del Norte', '9200', 'Iligan City');
INSERT INTO `AddressComplete` VALUES ('810', 'PH', 'Lanao del Norte', '9214', 'Kapatagan');
INSERT INTO `AddressComplete` VALUES ('811', 'PH', 'Lanao del Norte', '9215', 'Karomatan');
INSERT INTO `AddressComplete` VALUES ('812', 'PH', 'Lanao del Norte', '9202', 'Kauswagan');
INSERT INTO `AddressComplete` VALUES ('813', 'PH', 'Lanao del Norte', '9207', 'Kolambogan');
INSERT INTO `AddressComplete` VALUES ('814', 'PH', 'Lanao del Norte', '9211', 'Lala');
INSERT INTO `AddressComplete` VALUES ('815', 'PH', 'Lanao del Norte', '9201', 'Linamon');
INSERT INTO `AddressComplete` VALUES ('816', 'PH', 'Lanao del Norte', '9221', 'Magsaysay');
INSERT INTO `AddressComplete` VALUES ('817', 'PH', 'Lanao del Norte', '9206', 'Maigo');
INSERT INTO `AddressComplete` VALUES ('818', 'PH', 'Lanao del Norte', '9203', 'Matungao');
INSERT INTO `AddressComplete` VALUES ('819', 'PH', 'Lanao del Norte', '9219', 'Munai');
INSERT INTO `AddressComplete` VALUES ('820', 'PH', 'Lanao del Norte', '9216', 'Nunungan');
INSERT INTO `AddressComplete` VALUES ('821', 'PH', 'Lanao del Norte', '9208', 'Pantao Ragat');
INSERT INTO `AddressComplete` VALUES ('822', 'PH', 'Lanao del Norte', '9218', 'Pantar');
INSERT INTO `AddressComplete` VALUES ('823', 'PH', 'Lanao del Norte', '9204', 'Poona Piagapo');
INSERT INTO `AddressComplete` VALUES ('824', 'PH', 'Lanao del Norte', '9212', 'Salvador');
INSERT INTO `AddressComplete` VALUES ('825', 'PH', 'Lanao del Norte', '9213', 'Sapad');
INSERT INTO `AddressComplete` VALUES ('826', 'PH', 'Lanao del Norte', '9222', 'Tagoloan');
INSERT INTO `AddressComplete` VALUES ('827', 'PH', 'Lanao del Norte', '9220', 'Tangkal');
INSERT INTO `AddressComplete` VALUES ('828', 'PH', 'Lanao del Norte', '9209', 'Tubod');
INSERT INTO `AddressComplete` VALUES ('829', 'PH', 'Lanao del Sur', '9316', 'Bacolod Kalawi');
INSERT INTO `AddressComplete` VALUES ('830', 'PH', 'Lanao del Sur', '9302', 'Balabagan');
INSERT INTO `AddressComplete` VALUES ('831', 'PH', 'Lanao del Sur', '9318', 'Balindong');
INSERT INTO `AddressComplete` VALUES ('832', 'PH', 'Lanao del Sur', '9309', 'Bayang');
INSERT INTO `AddressComplete` VALUES ('833', 'PH', 'Lanao del Sur', '9310', 'Binidayan');
INSERT INTO `AddressComplete` VALUES ('834', 'PH', 'Lanao del Sur', '9714', 'Buadiposo Buntong');
INSERT INTO `AddressComplete` VALUES ('835', 'PH', 'Lanao del Sur', '9708', 'Bubong');
INSERT INTO `AddressComplete` VALUES ('836', 'PH', 'Lanao del Sur', '9320', 'Bumbaran');
INSERT INTO `AddressComplete` VALUES ('837', 'PH', 'Lanao del Sur', '9305', 'Butig');
INSERT INTO `AddressComplete` VALUES ('838', 'PH', 'Lanao del Sur', '9319', 'Calanogas');
INSERT INTO `AddressComplete` VALUES ('839', 'PH', 'Lanao del Sur', '9311', 'Ganassi');
INSERT INTO `AddressComplete` VALUES ('840', 'PH', 'Lanao del Sur', '9709', 'Kapai');
INSERT INTO `AddressComplete` VALUES ('841', 'PH', 'Lanao del Sur', '9703', 'Lumba Bayabao');
INSERT INTO `AddressComplete` VALUES ('842', 'PH', 'Lanao del Sur', '9307', 'Lumbatan');
INSERT INTO `AddressComplete` VALUES ('843', 'PH', 'Lanao del Sur', '9306', 'Lumbayanague');
INSERT INTO `AddressComplete` VALUES ('844', 'PH', 'Lanao del Sur', '9308', 'Macadar Andong');
INSERT INTO `AddressComplete` VALUES ('845', 'PH', 'Lanao del Sur', '9315', 'Madalum');
INSERT INTO `AddressComplete` VALUES ('846', 'PH', 'Lanao del Sur', '9314', 'Madamba');
INSERT INTO `AddressComplete` VALUES ('847', 'PH', 'Lanao del Sur', '9715', 'Maguing');
INSERT INTO `AddressComplete` VALUES ('848', 'PH', 'Lanao del Sur', '9300', 'Malabang');
INSERT INTO `AddressComplete` VALUES ('849', 'PH', 'Lanao del Sur', '9303', 'Marogong');
INSERT INTO `AddressComplete` VALUES ('850', 'PH', 'Lanao del Sur', '9711', 'Marantao');
INSERT INTO `AddressComplete` VALUES ('851', 'PH', 'Lanao del Sur', '9700', 'Marawi City');
INSERT INTO `AddressComplete` VALUES ('852', 'PH', 'Lanao del Sur', '9706', 'Masui');
INSERT INTO `AddressComplete` VALUES ('853', 'PH', 'Lanao del Sur', '9702', 'Mulondo');
INSERT INTO `AddressComplete` VALUES ('854', 'PH', 'Lanao del Sur', '9312', 'Pagayawan');
INSERT INTO `AddressComplete` VALUES ('855', 'PH', 'Lanao del Sur', '9710', 'Piagapo');
INSERT INTO `AddressComplete` VALUES ('856', 'PH', 'Lanao del Sur', '9705', 'Poona Bayabao');
INSERT INTO `AddressComplete` VALUES ('857', 'PH', 'Lanao del Sur', '9313', 'Pualas');
INSERT INTO `AddressComplete` VALUES ('858', 'PH', 'Lanao del Sur', '9713', 'Ramain-Ditsaan');
INSERT INTO `AddressComplete` VALUES ('859', 'PH', 'Lanao del Sur', '9701', 'Saguiaran');
INSERT INTO `AddressComplete` VALUES ('860', 'PH', 'Lanao del Sur', '9301', 'Picong(Sultan Gumander)');
INSERT INTO `AddressComplete` VALUES ('861', 'PH', 'Lanao del Sur', '9321', 'Tagoloan-II');
INSERT INTO `AddressComplete` VALUES ('862', 'PH', 'Lanao del Sur', '9704', 'Tamparan');
INSERT INTO `AddressComplete` VALUES ('863', 'PH', 'Lanao del Sur', '9712', 'Taraka');
INSERT INTO `AddressComplete` VALUES ('864', 'PH', 'Lanao del Sur', '9304', 'Tubaran');
INSERT INTO `AddressComplete` VALUES ('865', 'PH', 'Lanao del Sur', '9317', 'Tugaya');
INSERT INTO `AddressComplete` VALUES ('866', 'PH', 'Lanao del Sur', '9716', 'Wao');
INSERT INTO `AddressComplete` VALUES ('867', 'PH', 'Leyte', '6510', 'Abuyog');
INSERT INTO `AddressComplete` VALUES ('868', 'PH', 'Leyte', '6517', 'Alangalang');
INSERT INTO `AddressComplete` VALUES ('869', 'PH', 'Leyte', '6542', 'Albuera');
INSERT INTO `AddressComplete` VALUES ('870', 'PH', 'Leyte', '6520', 'Babatngon');
INSERT INTO `AddressComplete` VALUES ('871', 'PH', 'Leyte', '6519', 'Barugo');
INSERT INTO `AddressComplete` VALUES ('872', 'PH', 'Leyte', '6525', 'Bato');
INSERT INTO `AddressComplete` VALUES ('873', 'PH', 'Leyte', '6521', 'Baybay');
INSERT INTO `AddressComplete` VALUES ('874', 'PH', 'Leyte', '6516', 'Burauen');
INSERT INTO `AddressComplete` VALUES ('875', 'PH', 'Leyte', '6534', 'Calubian');
INSERT INTO `AddressComplete` VALUES ('876', 'PH', 'Leyte', '6530', 'Capoocan');
INSERT INTO `AddressComplete` VALUES ('877', 'PH', 'Leyte', '6529', 'Carigara');
INSERT INTO `AddressComplete` VALUES ('878', 'PH', 'Leyte', '6515', 'Dagami');
INSERT INTO `AddressComplete` VALUES ('879', 'PH', 'Leyte', '6505', 'Dulag');
INSERT INTO `AddressComplete` VALUES ('880', 'PH', 'Leyte', '6524', 'Hilongos');
INSERT INTO `AddressComplete` VALUES ('881', 'PH', 'Leyte', '6523', 'Hindang');
INSERT INTO `AddressComplete` VALUES ('882', 'PH', 'Leyte', '6522', 'Inopacan');
INSERT INTO `AddressComplete` VALUES ('883', 'PH', 'Leyte', '6539', 'Isabel');
INSERT INTO `AddressComplete` VALUES ('884', 'PH', 'Leyte', '6527', 'Jaro');
INSERT INTO `AddressComplete` VALUES ('885', 'PH', 'Leyte', '6511', 'Javier');
INSERT INTO `AddressComplete` VALUES ('886', 'PH', 'Leyte', '6506', 'Julita');
INSERT INTO `AddressComplete` VALUES ('887', 'PH', 'Leyte', '6531', 'Kananga');
INSERT INTO `AddressComplete` VALUES ('888', 'PH', 'Leyte', '6508', 'La Paz');
INSERT INTO `AddressComplete` VALUES ('889', 'PH', 'Leyte', '6533', 'Leyte');
INSERT INTO `AddressComplete` VALUES ('890', 'PH', 'Leyte', '6509', 'Macarthur');
INSERT INTO `AddressComplete` VALUES ('891', 'PH', 'Leyte', '6512', 'Mahaplag');
INSERT INTO `AddressComplete` VALUES ('892', 'PH', 'Leyte', '6532', 'Matag-ob');
INSERT INTO `AddressComplete` VALUES ('893', 'PH', 'Leyte', '6526', 'Matalom');
INSERT INTO `AddressComplete` VALUES ('894', 'PH', 'Leyte', '6507', 'Mayorga');
INSERT INTO `AddressComplete` VALUES ('895', 'PH', 'Leyte', '6540', 'Merida');
INSERT INTO `AddressComplete` VALUES ('896', 'PH', 'Leyte', '6541', 'Ormoc City');
INSERT INTO `AddressComplete` VALUES ('897', 'PH', 'Leyte', '6501', 'Palo');
INSERT INTO `AddressComplete` VALUES ('898', 'PH', 'Leyte', '6538', 'Palompon');
INSERT INTO `AddressComplete` VALUES ('899', 'PH', 'Leyte', '6514', 'Pastrana');
INSERT INTO `AddressComplete` VALUES ('900', 'PH', 'Leyte', '6535', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('901', 'PH', 'Leyte', '6518', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('902', 'PH', 'Leyte', '6513', 'Santa Fe');
INSERT INTO `AddressComplete` VALUES ('903', 'PH', 'Leyte', '6536', 'Tabango');
INSERT INTO `AddressComplete` VALUES ('904', 'PH', 'Leyte', '6504', 'Tabontabon');
INSERT INTO `AddressComplete` VALUES ('905', 'PH', 'Leyte', '6500', 'Tacloban City');
INSERT INTO `AddressComplete` VALUES ('906', 'PH', 'Leyte', '6502', 'Tanuan');
INSERT INTO `AddressComplete` VALUES ('907', 'PH', 'Leyte', '6503', 'Tolosa');
INSERT INTO `AddressComplete` VALUES ('908', 'PH', 'Leyte', '6528', 'Tunga');
INSERT INTO `AddressComplete` VALUES ('909', 'PH', 'Leyte', '6537', 'Villaba');
INSERT INTO `AddressComplete` VALUES ('910', 'PH', 'Maguindanao', '9600', 'Cotabato City');
INSERT INTO `AddressComplete` VALUES ('911', 'PH', 'Maguindanao', '9609', 'Ampatuan');
INSERT INTO `AddressComplete` VALUES ('912', 'PH', 'Maguindanao', '9616', 'Buluan');
INSERT INTO `AddressComplete` VALUES ('913', 'PH', 'Maguindanao', '9617', 'Datu Paglas');
INSERT INTO `AddressComplete` VALUES ('914', 'PH', 'Maguindanao', '9607', 'Datu Piang');
INSERT INTO `AddressComplete` VALUES ('915', 'PH', 'Maguindanao', '9618', 'Gen. S.K. Pendatun');
INSERT INTO `AddressComplete` VALUES ('916', 'PH', 'Maguindanao', '9608', 'Sarip Aguak (Maganoy)');
INSERT INTO `AddressComplete` VALUES ('917', 'PH', 'Maguindanao', '9610', 'Pagalungan');
INSERT INTO `AddressComplete` VALUES ('918', 'PH', 'Maguindanao', '9603', 'South Upi');
INSERT INTO `AddressComplete` VALUES ('919', 'PH', 'Maguindanao', '9611', 'Sultan sa Barongis');
INSERT INTO `AddressComplete` VALUES ('920', 'PH', 'Maguindanao', '9612', 'Talayan');
INSERT INTO `AddressComplete` VALUES ('921', 'PH', 'Marinduque', '4900', 'Boac');
INSERT INTO `AddressComplete` VALUES ('922', 'PH', 'Marinduque', '4901', 'Mogpog');
INSERT INTO `AddressComplete` VALUES ('923', 'PH', 'Marinduque', '4902', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('924', 'PH', 'Marinduque', '4903', 'Torrijos');
INSERT INTO `AddressComplete` VALUES ('925', 'PH', 'Marinduque', '4904', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('926', 'PH', 'Marinduque', '4905', 'Gasan');
INSERT INTO `AddressComplete` VALUES ('927', 'PH', 'Masbate', '5414', 'Aroroy');
INSERT INTO `AddressComplete` VALUES ('928', 'PH', 'Masbate', '5413', 'Baleno');
INSERT INTO `AddressComplete` VALUES ('929', 'PH', 'Masbate', '5412', 'Balud');
INSERT INTO `AddressComplete` VALUES ('930', 'PH', 'Masbate', '5415', 'Batuan');
INSERT INTO `AddressComplete` VALUES ('931', 'PH', 'Masbate', '5421', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('932', 'PH', 'Masbate', '5405', 'Cataingan');
INSERT INTO `AddressComplete` VALUES ('933', 'PH', 'Masbate', '5409', 'Cawayan');
INSERT INTO `AddressComplete` VALUES ('934', 'PH', 'Masbate', '5419', 'Claveria');
INSERT INTO `AddressComplete` VALUES ('935', 'PH', 'Masbate', '5403', 'Dimasalang');
INSERT INTO `AddressComplete` VALUES ('936', 'PH', 'Masbate', '5407', 'Esperanza');
INSERT INTO `AddressComplete` VALUES ('937', 'PH', 'Masbate', '5411', 'Mandaon');
INSERT INTO `AddressComplete` VALUES ('938', 'PH', 'Masbate', '5400', 'Masbate City');
INSERT INTO `AddressComplete` VALUES ('939', 'PH', 'Masbate', '5410', 'Milagros');
INSERT INTO `AddressComplete` VALUES ('940', 'PH', 'Masbate', '5401', 'Mobo');
INSERT INTO `AddressComplete` VALUES ('941', 'PH', 'Masbate', '5418', 'Monreal');
INSERT INTO `AddressComplete` VALUES ('942', 'PH', 'Masbate', '5404', 'Palanas');
INSERT INTO `AddressComplete` VALUES ('943', 'PH', 'Masbate', '5406', 'Pio V. Corpuz');
INSERT INTO `AddressComplete` VALUES ('944', 'PH', 'Masbate', '5408', 'Placer');
INSERT INTO `AddressComplete` VALUES ('945', 'PH', 'Masbate', '5416', 'San Fernando');
INSERT INTO `AddressComplete` VALUES ('946', 'PH', 'Masbate', '5417', 'San Jacinto');
INSERT INTO `AddressComplete` VALUES ('947', 'PH', 'Masbate', '5420', 'San Pascual');
INSERT INTO `AddressComplete` VALUES ('948', 'PH', 'Masbate', '5402', 'Uson');
INSERT INTO `AddressComplete` VALUES ('949', 'PH', 'Caloocan City', '1420', 'Kaybiga/Deparo');
INSERT INTO `AddressComplete` VALUES ('950', 'PH', 'Caloocan City', '1421', 'Bagumbong/Pag-asa');
INSERT INTO `AddressComplete` VALUES ('951', 'PH', 'Caloocan City', '1422', 'Novaliches North');
INSERT INTO `AddressComplete` VALUES ('952', 'PH', 'Caloocan City', '1423', 'Lilles Ville Subdivision');
INSERT INTO `AddressComplete` VALUES ('953', 'PH', 'Caloocan City', '1424', 'Captol Parkland Subdivision');
INSERT INTO `AddressComplete` VALUES ('954', 'PH', 'Caloocan City', '1425', 'Amparo Subdivision');
INSERT INTO `AddressComplete` VALUES ('955', 'PH', 'Caloocan City', '1426', 'Bankers Village');
INSERT INTO `AddressComplete` VALUES ('956', 'PH', 'Caloocan City', '1427', 'Tala Leprosarium and Victory Heights');
INSERT INTO `AddressComplete` VALUES ('957', 'PH', 'Caloocan City', '1428', 'Bagong Silang');
INSERT INTO `AddressComplete` VALUES ('958', 'PH', 'Caloocan City', '1400', 'Caloocan City Central Post Office');
INSERT INTO `AddressComplete` VALUES ('959', 'PH', 'Caloocan City', '1401', 'Baesa');
INSERT INTO `AddressComplete` VALUES ('960', 'PH', 'Caloocan City', '1402', 'Santa Quiteria');
INSERT INTO `AddressComplete` VALUES ('961', 'PH', 'Caloocan City', '1403', 'Grace Park East');
INSERT INTO `AddressComplete` VALUES ('962', 'PH', 'Caloocan City', '1404', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('963', 'PH', 'Caloocan City', '1405', 'First Avenue to Seventh Avenue West');
INSERT INTO `AddressComplete` VALUES ('964', 'PH', 'Caloocan City', '1406', 'Grace Park West');
INSERT INTO `AddressComplete` VALUES ('965', 'PH', 'Caloocan City', '1407', 'University Hills');
INSERT INTO `AddressComplete` VALUES ('966', 'PH', 'Caloocan City', '1408', 'Sangandaan');
INSERT INTO `AddressComplete` VALUES ('967', 'PH', 'Caloocan City', '1409', 'Kaunlaran Village (shared with Malabon City and Navotas)');
INSERT INTO `AddressComplete` VALUES ('968', 'PH', 'Caloocan City', '1410', 'Maypajo');
INSERT INTO `AddressComplete` VALUES ('969', 'PH', 'Caloocan City', '1411', 'Fish Market (shared with Navotas)');
INSERT INTO `AddressComplete` VALUES ('970', 'PH', 'Caloocan City', '1412', 'Isla de Cocomo');
INSERT INTO `AddressComplete` VALUES ('971', 'PH', 'Caloocan City', '1413', 'Kapitbayahan');
INSERT INTO `AddressComplete` VALUES ('972', 'PH', 'Las Piñas City', '1740', 'Las Piñas Central Post Office');
INSERT INTO `AddressComplete` VALUES ('973', 'PH', 'Las Piñas City', '1741', 'Greymarville Subdivision');
INSERT INTO `AddressComplete` VALUES ('974', 'PH', 'Las Piñas City', '1742', 'Pulang Lupa and Zapote');
INSERT INTO `AddressComplete` VALUES ('975', 'PH', 'Las Piñas City', '1743', 'Cut-cut');
INSERT INTO `AddressComplete` VALUES ('976', 'PH', 'Las Piñas City', '1744', 'Manuyo');
INSERT INTO `AddressComplete` VALUES ('977', 'PH', 'Las Piñas City', '1745', 'Gatchalian Subdivision');
INSERT INTO `AddressComplete` VALUES ('978', 'PH', 'Las Piñas City', '1746', 'Verdant Acres Subdivision');
INSERT INTO `AddressComplete` VALUES ('979', 'PH', 'Las Piñas City', '1747', 'Moonwalk Subdivision and Talon');
INSERT INTO `AddressComplete` VALUES ('980', 'PH', 'Las Piñas City', '1748', 'Manila Doctors Village');
INSERT INTO `AddressComplete` VALUES ('981', 'PH', 'Las Piñas City', '1749', 'Angela Village');
INSERT INTO `AddressComplete` VALUES ('982', 'PH', 'Las Piñas City', '1750', 'Almanza');
INSERT INTO `AddressComplete` VALUES ('983', 'PH', 'Las Piñas City', '1751', 'T.S. Cruz Subdivision');
INSERT INTO `AddressComplete` VALUES ('984', 'PH', 'Las Piñas City', '1752', 'Soldiers Hills Subdivision');
INSERT INTO `AddressComplete` VALUES ('985', 'PH', 'Makati City', '1200', 'Makati Central Post Office');
INSERT INTO `AddressComplete` VALUES ('986', 'PH', 'Makati City', '1201', 'Fort Bonifacio (now part of Taguig City)');
INSERT INTO `AddressComplete` VALUES ('987', 'PH', 'Makati City', '1202', 'Fort Bonifacio Naval Station');
INSERT INTO `AddressComplete` VALUES ('988', 'PH', 'Makati City', '1203', 'San Antonio Village');
INSERT INTO `AddressComplete` VALUES ('989', 'PH', 'Makati City', '1204', 'La Paz, Singkamas, and Tejeros');
INSERT INTO `AddressComplete` VALUES ('990', 'PH', 'Makati City', '1205', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('991', 'PH', 'Makati City', '1206', 'Kasilawan');
INSERT INTO `AddressComplete` VALUES ('992', 'PH', 'Makati City', '1207', 'Carmona and Olympia');
INSERT INTO `AddressComplete` VALUES ('993', 'PH', 'Makati City', '1208', 'Valenzuela (includes Rizal, San Miguel, and Santiago Villages)');
INSERT INTO `AddressComplete` VALUES ('994', 'PH', 'Makati City', '1209', 'Bel-Air');
INSERT INTO `AddressComplete` VALUES ('995', 'PH', 'Makati City', '1210', 'Poblacion');
INSERT INTO `AddressComplete` VALUES ('996', 'PH', 'Makati City', '1211', 'Guadalupe Viejo (includes Palm Village)');
INSERT INTO `AddressComplete` VALUES ('997', 'PH', 'Makati City', '1212', 'Guadalupe Nuevo (includes Visayan Village)');
INSERT INTO `AddressComplete` VALUES ('998', 'PH', 'Makati City', '1213', 'Pinagkaisahan - Pitogo');
INSERT INTO `AddressComplete` VALUES ('999', 'PH', 'Makati City', '1214', 'Cembo');
INSERT INTO `AddressComplete` VALUES ('1000', 'PH', 'Makati City', '1215', 'West Rembo');
INSERT INTO `AddressComplete` VALUES ('1001', 'PH', 'Makati City', '1216', 'East Rembo and Malapad na Bato');
INSERT INTO `AddressComplete` VALUES ('1002', 'PH', 'Makati City', '1217', 'Comembo');
INSERT INTO `AddressComplete` VALUES ('1003', 'PH', 'Makati City', '1218', 'Pembo');
INSERT INTO `AddressComplete` VALUES ('1004', 'PH', 'Makati City', '1219', 'Forbes Park North');
INSERT INTO `AddressComplete` VALUES ('1005', 'PH', 'Makati City', '1220', 'Forbes Park South');
INSERT INTO `AddressComplete` VALUES ('1006', 'PH', 'Makati City', '1221', 'Dasmariñas Village North');
INSERT INTO `AddressComplete` VALUES ('1007', 'PH', 'Makati City', '1222', 'Dasmariñas Village South');
INSERT INTO `AddressComplete` VALUES ('1008', 'PH', 'Makati City', '1223', 'San Lorenzo Village');
INSERT INTO `AddressComplete` VALUES ('1009', 'PH', 'Makati City', '1224', 'Makati Commercial Center');
INSERT INTO `AddressComplete` VALUES ('1010', 'PH', 'Makati City', '1225', 'Urdaneta Village');
INSERT INTO `AddressComplete` VALUES ('1011', 'PH', 'Makati City', '1226', 'Ayala Avenue-Paseo de Roxas');
INSERT INTO `AddressComplete` VALUES ('1012', 'PH', 'Makati City', '1227', 'Salcedo Village');
INSERT INTO `AddressComplete` VALUES ('1013', 'PH', 'Makati City', '1228', 'Greenbelt');
INSERT INTO `AddressComplete` VALUES ('1014', 'PH', 'Makati City', '1229', 'Legaspi Village');
INSERT INTO `AddressComplete` VALUES ('1015', 'PH', 'Makati City', '1230', 'Pio del Pilar');
INSERT INTO `AddressComplete` VALUES ('1016', 'PH', 'Makati City', '1231', 'Pasong Tamo and Ecology Village');
INSERT INTO `AddressComplete` VALUES ('1017', 'PH', 'Makati City', '1232', 'Magallanes Village');
INSERT INTO `AddressComplete` VALUES ('1018', 'PH', 'Makati City', '1233', 'Bangkal');
INSERT INTO `AddressComplete` VALUES ('1019', 'PH', 'Makati City', '1234', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('1020', 'PH', 'Makati City', '1235', 'Palanan');
INSERT INTO `AddressComplete` VALUES ('1021', 'PH', 'Makati City', '700', 'Plain-Truth');
INSERT INTO `AddressComplete` VALUES ('1022', 'PH', 'Makati City', '701', 'Colgate Palmolive Philippines');
INSERT INTO `AddressComplete` VALUES ('1023', 'PH', 'Makati City', '702', 'Citibank');
INSERT INTO `AddressComplete` VALUES ('1024', 'PH', 'Makati City', '703', 'Sarmiento Enterprises');
INSERT INTO `AddressComplete` VALUES ('1025', 'PH', 'Makati City', '704', 'Producers Bank');
INSERT INTO `AddressComplete` VALUES ('1026', 'PH', 'Makati City', '705', 'Union Ajinomoto');
INSERT INTO `AddressComplete` VALUES ('1027', 'PH', 'Makati City', '706', 'Faith Embassy');
INSERT INTO `AddressComplete` VALUES ('1028', 'PH', 'Makati City', '707', 'Canadian Embassy');
INSERT INTO `AddressComplete` VALUES ('1029', 'PH', 'Makati City', '708', 'Philippine National Oil Company');
INSERT INTO `AddressComplete` VALUES ('1030', 'PH', 'Makati City', '709', 'A-Z Direct Marketing');
INSERT INTO `AddressComplete` VALUES ('1031', 'PH', 'Makati City', '710', 'American Express');
INSERT INTO `AddressComplete` VALUES ('1032', 'PH', 'Makati City', '711', 'Land Bank of the Philippines');
INSERT INTO `AddressComplete` VALUES ('1033', 'PH', 'Makati City', '712', 'Prudential Bank');
INSERT INTO `AddressComplete` VALUES ('1034', 'PH', 'Makati City', '713', 'BPI Family Savings Bank');
INSERT INTO `AddressComplete` VALUES ('1035', 'PH', 'Makati City', '714', 'Philippine Manila Mission');
INSERT INTO `AddressComplete` VALUES ('1036', 'PH', 'Makati City', '715', 'Marcopper Mining Corporation');
INSERT INTO `AddressComplete` VALUES ('1037', 'PH', 'Makati City', '716', 'Allied Bank');
INSERT INTO `AddressComplete` VALUES ('1038', 'PH', 'Makati City', '717', 'Diners Club');
INSERT INTO `AddressComplete` VALUES ('1039', 'PH', 'Makati City', '718', 'International Center for Aquatic Resources');
INSERT INTO `AddressComplete` VALUES ('1040', 'PH', 'Makati City', '719', 'Security Bank');
INSERT INTO `AddressComplete` VALUES ('1041', 'PH', 'Makati City', '720', 'Bank of the Philippine Islands');
INSERT INTO `AddressComplete` VALUES ('1042', 'PH', 'Makati City', '721', 'Philippine Long Distance Telephone Company');
INSERT INTO `AddressComplete` VALUES ('1043', 'PH', 'Makati City', '722', 'World Executive Digest');
INSERT INTO `AddressComplete` VALUES ('1044', 'PH', 'Makati City', '723', 'Japanese Embassy');
INSERT INTO `AddressComplete` VALUES ('1045', 'PH', 'Makati City', '724', 'Sun Life Financial');
INSERT INTO `AddressComplete` VALUES ('1046', 'PH', 'Makati City', '725', 'Insular Life Assurance Company');
INSERT INTO `AddressComplete` VALUES ('1047', 'PH', 'Makati City', '726', 'Equitable PCI Bank');
INSERT INTO `AddressComplete` VALUES ('1048', 'PH', 'Makati City', '727', 'Rizal Commercial Banking Corporation');
INSERT INTO `AddressComplete` VALUES ('1049', 'PH', 'Makati City', '728', 'United Coconut Planters Bank');
INSERT INTO `AddressComplete` VALUES ('1050', 'PH', 'Makati City', '729', 'Not used');
INSERT INTO `AddressComplete` VALUES ('1051', 'PH', 'Makati City', '730', 'Zuellig Pharma');
INSERT INTO `AddressComplete` VALUES ('1052', 'PH', 'Makati City', '731', 'BCD Direct Marketing');
INSERT INTO `AddressComplete` VALUES ('1053', 'PH', 'Makati City', '732', 'Export and Industry Bank');
INSERT INTO `AddressComplete` VALUES ('1054', 'PH', 'Makati City', '0733-0739', 'Not used');
INSERT INTO `AddressComplete` VALUES ('1055', 'PH', 'Makati City', '740', 'Sycip, Gorres and Velayo');
INSERT INTO `AddressComplete` VALUES ('1056', 'PH', 'Makati City', '750', 'Philippine Airlines');
INSERT INTO `AddressComplete` VALUES ('1057', 'PH', 'Makati City', '760', 'Pilipinas Shell (subsidiary of Royal Dutch Shell)');
INSERT INTO `AddressComplete` VALUES ('1058', 'PH', 'Makati City', '770', 'ACCRA Law Offices');
INSERT INTO `AddressComplete` VALUES ('1059', 'PH', 'Makati City', '780', 'Mead Johnson Philippines');
INSERT INTO `AddressComplete` VALUES ('1060', 'PH', 'Makati City', '788', 'Directories Pilipinas Corporation');
INSERT INTO `AddressComplete` VALUES ('1061', 'PH', 'Makati City', '790', 'Atlantic, Gulf and Pacific');
INSERT INTO `AddressComplete` VALUES ('1062', 'PH', 'Makati City', '1250', 'Makati CPO-PO Box# 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1063', 'PH', 'Makati City', '1251', 'Makati CPO-PO Box# 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1064', 'PH', 'Makati City', '1252', 'Makati CPO-PO Box# 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1065', 'PH', 'Makati City', '1253', 'Makati CPO-PO Box# 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1066', 'PH', 'Makati City', '1254', 'Makati CPO-PO Box# 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1067', 'PH', 'Makati City', '1255', 'Makati CPO-PO Box# 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1068', 'PH', 'Makati City', '1256', 'Makati CPO-PO Box# 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1069', 'PH', 'Makati City', '1257', 'Makati CPO-PO Box# 1700 to 1799');
INSERT INTO `AddressComplete` VALUES ('1070', 'PH', 'Makati City', '1258', 'Makati CPO-PO Box# 1800 to 1899');
INSERT INTO `AddressComplete` VALUES ('1071', 'PH', 'Makati City', '1259', 'Makati CPO-PO Box# 1900 to 1999');
INSERT INTO `AddressComplete` VALUES ('1072', 'PH', 'Makati City', '1260', 'Makati CPO-PO Box# 2000 to 2099');
INSERT INTO `AddressComplete` VALUES ('1073', 'PH', 'Makati City', '1261', 'Makati CPO-PO Box# 2100 to 2199');
INSERT INTO `AddressComplete` VALUES ('1074', 'PH', 'Makati City', '1262', 'Makati CPO-PO Box# 2200 to 2299');
INSERT INTO `AddressComplete` VALUES ('1075', 'PH', 'Makati City', '1263', 'Makati CPO-PO Box# 2300 to 2399');
INSERT INTO `AddressComplete` VALUES ('1076', 'PH', 'Makati City', '1264', 'Makati CPO-PO Box# 2400 to 2499');
INSERT INTO `AddressComplete` VALUES ('1077', 'PH', 'Makati City', '1265', 'Makati CPO-PO Box# 2500 to 2599');
INSERT INTO `AddressComplete` VALUES ('1078', 'PH', 'Makati City', '1266', 'Makati CPO-PO Box# 2600 to 2699');
INSERT INTO `AddressComplete` VALUES ('1079', 'PH', 'Makati City', '1267', 'Makati CPO-PO Box# 2700 to 2799');
INSERT INTO `AddressComplete` VALUES ('1080', 'PH', 'Makati City', '1268', 'Makati CPO-PO Box# 2800 to 2899');
INSERT INTO `AddressComplete` VALUES ('1081', 'PH', 'Makati City', '1269', 'Makati CPO-PO Box# 2900 to 2999');
INSERT INTO `AddressComplete` VALUES ('1082', 'PH', 'Makati City', '1270', 'Makati CPO-PO Box# 3000 to 3099');
INSERT INTO `AddressComplete` VALUES ('1083', 'PH', 'Makati City', '1271', 'Makati CPO-PO Box# 3100 to 3199');
INSERT INTO `AddressComplete` VALUES ('1084', 'PH', 'Makati City', '1272', 'Makati CPO-PO Box# 3200 to 3299');
INSERT INTO `AddressComplete` VALUES ('1085', 'PH', 'Makati City', '1273', 'Makati CPO-PO Box# 3300 to 3399');
INSERT INTO `AddressComplete` VALUES ('1086', 'PH', 'Makati City', '1274', 'Makati CPO-PO Box# 3400 to 3499');
INSERT INTO `AddressComplete` VALUES ('1087', 'PH', 'Makati City', '1275', 'Makati CPO-PO Box# 3500 to 3599');
INSERT INTO `AddressComplete` VALUES ('1088', 'PH', 'Makati City', '1276', 'Makati CPO-PO Box# 3600 to 3699');
INSERT INTO `AddressComplete` VALUES ('1089', 'PH', 'Makati City', '1277', 'Makati CPO-PO Box# 3700 to 3799');
INSERT INTO `AddressComplete` VALUES ('1090', 'PH', 'Makati City', '1278', 'Makati CPO-PO Box# 3800 to 3899');
INSERT INTO `AddressComplete` VALUES ('1091', 'PH', 'Makati City', '1279', 'Makati CPO-PO Box# 3900 to 3999');
INSERT INTO `AddressComplete` VALUES ('1092', 'PH', 'Makati City', '1280', 'Makati CPO-PO Box# 4000 to 4099');
INSERT INTO `AddressComplete` VALUES ('1093', 'PH', 'Makati City', '1281', 'Makati CPO-PO Box# 4100 to 4199');
INSERT INTO `AddressComplete` VALUES ('1094', 'PH', 'Makati City', '1282', 'Makati CPO-PO Box# 4200 to 4299');
INSERT INTO `AddressComplete` VALUES ('1095', 'PH', 'Makati City', '1283', 'Makati CPO-PO Box# 4300 to 4399');
INSERT INTO `AddressComplete` VALUES ('1096', 'PH', 'Makati City', '1284', 'Makati CPO-PO Box# 4400 to 4499');
INSERT INTO `AddressComplete` VALUES ('1097', 'PH', 'Makati City', '1285', 'Makati CPO-PO Box# 4500 to 4599');
INSERT INTO `AddressComplete` VALUES ('1098', 'PH', 'Makati City', '1286', 'Makati CPO-PO Box# 4600 to 4699');
INSERT INTO `AddressComplete` VALUES ('1099', 'PH', 'Makati City', '1287', 'Makati CPO-PO Box# 4700 to 4799');
INSERT INTO `AddressComplete` VALUES ('1100', 'PH', 'Makati City', '1288', 'Makati CPO-PO Box# 4800 to 4899');
INSERT INTO `AddressComplete` VALUES ('1101', 'PH', 'Makati City', '1289', 'Makati CPO-PO Box# 4900 to 4999');
INSERT INTO `AddressComplete` VALUES ('1102', 'PH', 'Makati City', '1290', 'Makati CPO-PO Box# 5000 to 5099');
INSERT INTO `AddressComplete` VALUES ('1103', 'PH', 'Makati City', '1291', 'Makati CPO-PO Box# 5100 to 5199');
INSERT INTO `AddressComplete` VALUES ('1104', 'PH', 'Makati City', '1292', 'Makati CPO-PO Box# 5200 to 5299');
INSERT INTO `AddressComplete` VALUES ('1105', 'PH', 'Makati City', '1293', 'Makati CPO-PO Box# 5300 to 5399');
INSERT INTO `AddressComplete` VALUES ('1106', 'PH', 'Makati City', '1294', 'Makati CPO-PO Box# 5400 to 5499');
INSERT INTO `AddressComplete` VALUES ('1107', 'PH', 'Makati City', '1295', 'Makati CPO-PO Box# 5500 to 5599');
INSERT INTO `AddressComplete` VALUES ('1108', 'PH', 'Makati City', '1296', 'Makati CPO-PO Box# 5600 to 5699');
INSERT INTO `AddressComplete` VALUES ('1109', 'PH', 'Makati City', '1297', 'Makati CPO-PO Box# 5700 to 5799');
INSERT INTO `AddressComplete` VALUES ('1110', 'PH', 'Makati City', '1298', 'Makati CPO-PO Box# 5800 to 5899');
INSERT INTO `AddressComplete` VALUES ('1111', 'PH', 'Makati City', '1299', 'Makati CPO-PO Box# 5900 to 5999');
INSERT INTO `AddressComplete` VALUES ('1112', 'PH', 'Malabon City', '1409', 'Kaunlaran Village (shared with Caloocan City and Navotas)');
INSERT INTO `AddressComplete` VALUES ('1113', 'PH', 'Malabon City', '1470', 'Malabon');
INSERT INTO `AddressComplete` VALUES ('1114', 'PH', 'Malabon City', '1471', 'Flores');
INSERT INTO `AddressComplete` VALUES ('1115', 'PH', 'Malabon City', '1472', 'Longos');
INSERT INTO `AddressComplete` VALUES ('1116', 'PH', 'Malabon City', '1473', 'Tonsuya');
INSERT INTO `AddressComplete` VALUES ('1117', 'PH', 'Malabon City', '1474', 'Acacia');
INSERT INTO `AddressComplete` VALUES ('1118', 'PH', 'Malabon City', '1475', 'Potrero');
INSERT INTO `AddressComplete` VALUES ('1119', 'PH', 'Malabon City', '1476', 'Araneta Subdivision');
INSERT INTO `AddressComplete` VALUES ('1120', 'PH', 'Malabon City', '1477', 'Maysilo');
INSERT INTO `AddressComplete` VALUES ('1121', 'PH', 'Malabon City', '1478', 'Santolan');
INSERT INTO `AddressComplete` VALUES ('1122', 'PH', 'Malabon City', '1479', 'Muzon');
INSERT INTO `AddressComplete` VALUES ('1123', 'PH', 'Malabon City', '1480', 'Dampalit');
INSERT INTO `AddressComplete` VALUES ('1124', 'PH', 'Malabon City', '1470', 'Tinajeros');
INSERT INTO `AddressComplete` VALUES ('1125', 'PH', 'Mandaluyong City', '1550', 'Mandaluyong Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1126', 'PH', 'Mandaluyong City', '1551', 'Vergara');
INSERT INTO `AddressComplete` VALUES ('1127', 'PH', 'Mandaluyong City', '1552', 'Shaw Boulevard');
INSERT INTO `AddressComplete` VALUES ('1128', 'PH', 'Mandaluyong City', '1553', 'National Center for Mental Health');
INSERT INTO `AddressComplete` VALUES ('1129', 'PH', 'Mandaluyong City', '1554', 'East EDSA');
INSERT INTO `AddressComplete` VALUES ('1130', 'PH', 'Mandaluyong City', '1555', 'Wack Wack');
INSERT INTO `AddressComplete` VALUES ('1131', 'PH', 'Mandaluyong City', '1556', 'Greenhills South');
INSERT INTO `AddressComplete` VALUES ('1132', 'PH', 'Manila', '1000', 'Manila Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1133', 'PH', 'Manila', '1001', 'Quiapo');
INSERT INTO `AddressComplete` VALUES ('1134', 'PH', 'Manila', '1002', 'Intramuros');
INSERT INTO `AddressComplete` VALUES ('1135', 'PH', 'Manila', '1003', 'Santa Cruz South');
INSERT INTO `AddressComplete` VALUES ('1136', 'PH', 'Manila', '1004', 'Malate');
INSERT INTO `AddressComplete` VALUES ('1137', 'PH', 'Manila', '1005', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('1138', 'PH', 'Manila', '1006', 'Binondo');
INSERT INTO `AddressComplete` VALUES ('1139', 'PH', 'Manila', '1007', 'Paco');
INSERT INTO `AddressComplete` VALUES ('1140', 'PH', 'Manila', '1008', 'Sampaloc East');
INSERT INTO `AddressComplete` VALUES ('1141', 'PH', 'Manila', '1009', 'Santa Ana');
INSERT INTO `AddressComplete` VALUES ('1142', 'PH', 'Manila', '1010', 'San Nicolas');
INSERT INTO `AddressComplete` VALUES ('1143', 'PH', 'Manila', '1011', 'Pandacan');
INSERT INTO `AddressComplete` VALUES ('1144', 'PH', 'Manila', '1012', 'Tondo South');
INSERT INTO `AddressComplete` VALUES ('1145', 'PH', 'Manila', '1013', 'Tondo North');
INSERT INTO `AddressComplete` VALUES ('1146', 'PH', 'Manila', '1014', 'Santa Cruz North');
INSERT INTO `AddressComplete` VALUES ('1147', 'PH', 'Manila', '1015', 'Sampaloc West');
INSERT INTO `AddressComplete` VALUES ('1148', 'PH', 'Manila', '1016', 'Santa Mesa');
INSERT INTO `AddressComplete` VALUES ('1149', 'PH', 'Manila', '1017', 'San Andres');
INSERT INTO `AddressComplete` VALUES ('1150', 'PH', 'Manila', '1018', 'Port Area South');
INSERT INTO `AddressComplete` VALUES ('1151', 'PH', 'Manila', '900', 'Manila Bulletin');
INSERT INTO `AddressComplete` VALUES ('1152', 'PH', 'Manila', '901', 'Adventist University of the Philippines');
INSERT INTO `AddressComplete` VALUES ('1153', 'PH', 'Manila', '902', 'Far East Broadcasting Corporation');
INSERT INTO `AddressComplete` VALUES ('1154', 'PH', 'Manila', '903', 'Manila Hilton');
INSERT INTO `AddressComplete` VALUES ('1155', 'PH', 'Manila', '904', 'Midland Hotel');
INSERT INTO `AddressComplete` VALUES ('1156', 'PH', 'Manila', '905', 'The Philippine Star');
INSERT INTO `AddressComplete` VALUES ('1157', 'PH', 'Manila', '906', 'Manila Medical Center');
INSERT INTO `AddressComplete` VALUES ('1158', 'PH', 'Manila', '907', 'San Miguel Corporation');
INSERT INTO `AddressComplete` VALUES ('1159', 'PH', 'Manila', '908', 'Pan-Filipino Shipping');
INSERT INTO `AddressComplete` VALUES ('1160', 'PH', 'Manila', '909', 'Summer Institute of Linguistics');
INSERT INTO `AddressComplete` VALUES ('1161', 'PH', 'Manila', '910', 'Department of Labor and Employment');
INSERT INTO `AddressComplete` VALUES ('1162', 'PH', 'Manila', '911', 'National Statistics Office');
INSERT INTO `AddressComplete` VALUES ('1163', 'PH', 'Manila', '912', 'Bureau of Plant Industry');
INSERT INTO `AddressComplete` VALUES ('1164', 'PH', 'Manila', '913', 'Manila Hotel');
INSERT INTO `AddressComplete` VALUES ('1165', 'PH', 'Manila', '914', 'Philippine Refining Company and Unilever Philippines');
INSERT INTO `AddressComplete` VALUES ('1166', 'PH', 'Manila', '915', 'International Correspondence Institute');
INSERT INTO `AddressComplete` VALUES ('1167', 'PH', 'Manila', '916', 'Radio Veritas');
INSERT INTO `AddressComplete` VALUES ('1168', 'PH', 'Manila', '917', 'Ateneo de Manila University');
INSERT INTO `AddressComplete` VALUES ('1169', 'PH', 'Manila', '918', 'Fil-Japan Shipping Company');
INSERT INTO `AddressComplete` VALUES ('1170', 'PH', 'Manila', '919', 'Manila Police District');
INSERT INTO `AddressComplete` VALUES ('1171', 'PH', 'Manila', '920', 'Sunbursts Publications');
INSERT INTO `AddressComplete` VALUES ('1172', 'PH', 'Manila', '921', 'Philippine Plaza Hotel');
INSERT INTO `AddressComplete` VALUES ('1173', 'PH', 'Manila', '922', 'De La Salle University');
INSERT INTO `AddressComplete` VALUES ('1174', 'PH', 'Manila', '923', 'Don Stewart Evangelistic Association');
INSERT INTO `AddressComplete` VALUES ('1175', 'PH', 'Manila', '924', 'World Map');
INSERT INTO `AddressComplete` VALUES ('1176', 'PH', 'Manila', '925', 'Chinabank');
INSERT INTO `AddressComplete` VALUES ('1177', 'PH', 'Manila', '926', 'Caltex Philippines');
INSERT INTO `AddressComplete` VALUES ('1178', 'PH', 'Manila', '927', 'Philippine Veterans Affairs Office');
INSERT INTO `AddressComplete` VALUES ('1179', 'PH', 'Manila', '928', 'Philippine Campus Crusade');
INSERT INTO `AddressComplete` VALUES ('1180', 'PH', 'Manila', '929', 'Not used');
INSERT INTO `AddressComplete` VALUES ('1181', 'PH', 'Manila', '930', 'United States Embassy');
INSERT INTO `AddressComplete` VALUES ('1182', 'PH', 'Manila', '940', 'Philippine National Bank');
INSERT INTO `AddressComplete` VALUES ('1183', 'PH', 'Manila', '950', 'Manila Midtown Hotel');
INSERT INTO `AddressComplete` VALUES ('1184', 'PH', 'Manila', '960', 'International Rice Research Institute');
INSERT INTO `AddressComplete` VALUES ('1185', 'PH', 'Manila', '970', 'Department of Justice');
INSERT INTO `AddressComplete` VALUES ('1186', 'PH', 'Manila', '980', 'Asian Development Bank');
INSERT INTO `AddressComplete` VALUES ('1187', 'PH', 'Manila', '990', 'Philamlife');
INSERT INTO `AddressComplete` VALUES ('1188', 'PH', 'Manila', '1035', 'Santa Mesa P.O. Box');
INSERT INTO `AddressComplete` VALUES ('1189', 'PH', 'Manila', '1040', 'Santa Cruz P.O. Box');
INSERT INTO `AddressComplete` VALUES ('1190', 'PH', 'Manila', '1045', 'Ermita P.O. Box');
INSERT INTO `AddressComplete` VALUES ('1191', 'PH', 'Manila', '1050', 'Manila CPO-PO Box# 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1192', 'PH', 'Manila', '1051', 'Manila CPO-PO Box# 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1193', 'PH', 'Manila', '1052', 'Manila CPO-PO Box# 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1194', 'PH', 'Manila', '1053', 'Manila CPO-PO Box# 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1195', 'PH', 'Manila', '1054', 'Manila CPO-PO Box# 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1196', 'PH', 'Manila', '1055', 'Manila CPO-PO Box# 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1197', 'PH', 'Manila', '1056', 'Manila CPO-PO Box# 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1198', 'PH', 'Manila', '1057', 'Manila CPO-PO Box# 1700 to 1799');
INSERT INTO `AddressComplete` VALUES ('1199', 'PH', 'Manila', '1058', 'Manila CPO-PO Box# 1800 to 1899');
INSERT INTO `AddressComplete` VALUES ('1200', 'PH', 'Manila', '1059', 'Manila CPO-PO Box# 1900 to 1999');
INSERT INTO `AddressComplete` VALUES ('1201', 'PH', 'Manila', '1060', 'Manila CPO-PO Box# 2000 to 2099');
INSERT INTO `AddressComplete` VALUES ('1202', 'PH', 'Manila', '1061', 'Manila CPO-PO Box# 2100 to 2199');
INSERT INTO `AddressComplete` VALUES ('1203', 'PH', 'Manila', '1062', 'Manila CPO-PO Box# 2200 to 2299');
INSERT INTO `AddressComplete` VALUES ('1204', 'PH', 'Manila', '1063', 'Manila CPO-PO Box# 2300 to 2399');
INSERT INTO `AddressComplete` VALUES ('1205', 'PH', 'Manila', '1064', 'Manila CPO-PO Box# 2400 to 2499');
INSERT INTO `AddressComplete` VALUES ('1206', 'PH', 'Manila', '1065', 'Manila CPO-PO Box# 2500 to 2599');
INSERT INTO `AddressComplete` VALUES ('1207', 'PH', 'Manila', '1066', 'Manila CPO-PO Box# 2600 to 2699');
INSERT INTO `AddressComplete` VALUES ('1208', 'PH', 'Manila', '1067', 'Manila CPO-PO Box# 2700 to 2799');
INSERT INTO `AddressComplete` VALUES ('1209', 'PH', 'Manila', '1068', 'Manila CPO-PO Box# 2800 to 2899');
INSERT INTO `AddressComplete` VALUES ('1210', 'PH', 'Manila', '1069', 'Manila CPO-PO Box# 2900 to 2999');
INSERT INTO `AddressComplete` VALUES ('1211', 'PH', 'Manila', '1070', 'Manila CPO-PO Box# 3000 to 3099');
INSERT INTO `AddressComplete` VALUES ('1212', 'PH', 'Manila', '1071', 'Manila CPO-PO Box# 3100 to 3199');
INSERT INTO `AddressComplete` VALUES ('1213', 'PH', 'Manila', '1072', 'Manila CPO-PO Box# 3200 to 3299');
INSERT INTO `AddressComplete` VALUES ('1214', 'PH', 'Manila', '1073', 'Manila CPO-PO Box# 3300 to 3399');
INSERT INTO `AddressComplete` VALUES ('1215', 'PH', 'Manila', '1074', 'Manila CPO-PO Box# 3400 to 3499');
INSERT INTO `AddressComplete` VALUES ('1216', 'PH', 'Manila', '1075', 'Manila CPO-PO Box# 3500 to 3599');
INSERT INTO `AddressComplete` VALUES ('1217', 'PH', 'Manila', '1076', 'Manila CPO-PO Box# 3600 to 3699');
INSERT INTO `AddressComplete` VALUES ('1218', 'PH', 'Manila', '1077', 'Manila CPO-PO Box# 3700 to 3799');
INSERT INTO `AddressComplete` VALUES ('1219', 'PH', 'Manila', '1078', 'Manila CPO-PO Box# 3800 to 3899');
INSERT INTO `AddressComplete` VALUES ('1220', 'PH', 'Manila', '1079', 'Manila CPO-PO Box# 3900 to 3999');
INSERT INTO `AddressComplete` VALUES ('1221', 'PH', 'Manila', '1080', 'Manila CPO-PO Box# 4000 to 4099');
INSERT INTO `AddressComplete` VALUES ('1222', 'PH', 'Manila', '1081', 'Manila CPO-PO Box# 4100 to 4199');
INSERT INTO `AddressComplete` VALUES ('1223', 'PH', 'Manila', '1082', 'Manila CPO-PO Box# 4200 to 4299');
INSERT INTO `AddressComplete` VALUES ('1224', 'PH', 'Manila', '1083', 'Manila CPO-PO Box# 4300 to 4399');
INSERT INTO `AddressComplete` VALUES ('1225', 'PH', 'Manila', '1084', 'Manila CPO-PO Box# 4400 to 4499');
INSERT INTO `AddressComplete` VALUES ('1226', 'PH', 'Manila', '1085', 'Manila CPO-PO Box# 4500 to 4599');
INSERT INTO `AddressComplete` VALUES ('1227', 'PH', 'Manila', '1086', 'Manila CPO-PO Box# 4600 to 4699');
INSERT INTO `AddressComplete` VALUES ('1228', 'PH', 'Manila', '1087', 'Manila CPO-PO Box# 4700 to 4799');
INSERT INTO `AddressComplete` VALUES ('1229', 'PH', 'Manila', '1088', 'Manila CPO-PO Box# 4800 to 4899');
INSERT INTO `AddressComplete` VALUES ('1230', 'PH', 'Manila', '1089', 'Manila CPO-PO Box# 4900 to 4999');
INSERT INTO `AddressComplete` VALUES ('1231', 'PH', 'Manila', '1090', 'Manila CPO-PO Box# 5000 to 5099');
INSERT INTO `AddressComplete` VALUES ('1232', 'PH', 'Manila', '1091', 'Manila CPO-PO Box# 5100 to 5199');
INSERT INTO `AddressComplete` VALUES ('1233', 'PH', 'Manila', '1092', 'Manila CPO-PO Box# 5200 to 5299');
INSERT INTO `AddressComplete` VALUES ('1234', 'PH', 'Manila', '1093', 'Manila CPO-PO Box# 5300 to 5399');
INSERT INTO `AddressComplete` VALUES ('1235', 'PH', 'Manila', '1094', 'Manila CPO-PO Box# 5400 to 5499');
INSERT INTO `AddressComplete` VALUES ('1236', 'PH', 'Manila', '1095', 'Manila CPO-PO Box# 5500 to 5599');
INSERT INTO `AddressComplete` VALUES ('1237', 'PH', 'Manila', '1096', 'Manila CPO-PO Box# 5600 to 5699');
INSERT INTO `AddressComplete` VALUES ('1238', 'PH', 'Marikina City', '1800', 'Marikina Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1239', 'PH', 'Marikina City', '1801', 'San Roque-Calumpang');
INSERT INTO `AddressComplete` VALUES ('1240', 'PH', 'Marikina City', '1802', 'Industrial Valley');
INSERT INTO `AddressComplete` VALUES ('1241', 'PH', 'Marikina City', '1803', 'Barangka and Tañong');
INSERT INTO `AddressComplete` VALUES ('1242', 'PH', 'Marikina City', '1804', 'J. De La Peña');
INSERT INTO `AddressComplete` VALUES ('1243', 'PH', 'Marikina City', '1805', 'Malanday');
INSERT INTO `AddressComplete` VALUES ('1244', 'PH', 'Marikina City', '1806', 'Northern and Western Marikina River');
INSERT INTO `AddressComplete` VALUES ('1245', 'PH', 'Marikina City', '1807', 'Concepcion tarlac');
INSERT INTO `AddressComplete` VALUES ('1246', 'PH', 'Marikina City', '1808', 'Nangka');
INSERT INTO `AddressComplete` VALUES ('1247', 'PH', 'Marikina City', '1809', 'Parang');
INSERT INTO `AddressComplete` VALUES ('1248', 'PH', 'Marikina City', '1810', 'Marikina Heights');
INSERT INTO `AddressComplete` VALUES ('1249', 'PH', 'Marikina City', '1811', 'Concepcion 2');
INSERT INTO `AddressComplete` VALUES ('1250', 'PH', 'Marikina City', '1812-1819', 'Not used');
INSERT INTO `AddressComplete` VALUES ('1251', 'PH', 'Marikina City', '1820', 'Bagong Nayon, Cupang, Mambagat, and Mayamot');
INSERT INTO `AddressComplete` VALUES ('1252', 'PH', 'Muntinlupa City', '1770', 'Muntinlupa Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1253', 'PH', 'Muntinlupa City', '1771', 'Buli/Cupang');
INSERT INTO `AddressComplete` VALUES ('1254', 'PH', 'Muntinlupa City', '1772', 'Bayanan/Putatan');
INSERT INTO `AddressComplete` VALUES ('1255', 'PH', 'Muntinlupa City', '1772', 'Soldiers\' Hills');
INSERT INTO `AddressComplete` VALUES ('1256', 'PH', 'Muntinlupa City', '1773', 'Tunasan');
INSERT INTO `AddressComplete` VALUES ('1257', 'PH', 'Muntinlupa City', '1774', 'Susana Heights');
INSERT INTO `AddressComplete` VALUES ('1258', 'PH', 'Muntinlupa City', '1775', 'Pearl Heights');
INSERT INTO `AddressComplete` VALUES ('1259', 'PH', 'Muntinlupa City', '1776', 'Poblacion');
INSERT INTO `AddressComplete` VALUES ('1260', 'PH', 'Muntinlupa City', '1777', 'Pleasant Village');
INSERT INTO `AddressComplete` VALUES ('1261', 'PH', 'Muntinlupa City', '1780', 'Ayala Alabang Subdivision');
INSERT INTO `AddressComplete` VALUES ('1262', 'PH', 'Muntinlupa City', '1799', 'Ayala Alabang P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1263', 'PH', 'Navotas City', '1411', 'Fish Market');
INSERT INTO `AddressComplete` VALUES ('1264', 'PH', 'Navotas City', '1412', 'Isla de Cocomo');
INSERT INTO `AddressComplete` VALUES ('1265', 'PH', 'Navotas City', '1413', 'Kapitbahayan [East]');
INSERT INTO `AddressComplete` VALUES ('1266', 'PH', 'Navotas City', '1409', 'Kaunlaran Village');
INSERT INTO `AddressComplete` VALUES ('1267', 'PH', 'Navotas City', '1485', 'Navotas');
INSERT INTO `AddressComplete` VALUES ('1268', 'PH', 'Navotas City', '1489', 'Tangos');
INSERT INTO `AddressComplete` VALUES ('1269', 'PH', 'Navotas City', '1490', 'Tanza');
INSERT INTO `AddressComplete` VALUES ('1270', 'PH', 'Parañaque City', '1714', 'Aeropark Subdivision');
INSERT INTO `AddressComplete` VALUES ('1271', 'PH', 'Parañaque City', '1702', 'Baclaran');
INSERT INTO `AddressComplete` VALUES ('1272', 'PH', 'Parañaque City', '1711', 'Better Living Subdivision');
INSERT INTO `AddressComplete` VALUES ('1273', 'PH', 'Parañaque City', '1720', 'BF Homes 1');
INSERT INTO `AddressComplete` VALUES ('1274', 'PH', 'Parañaque City', '1718', 'BF Homes 2');
INSERT INTO `AddressComplete` VALUES ('1275', 'PH', 'Parañaque City', '1375', 'Domestic Airport P.O. - P.O. Box Nos. 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1276', 'PH', 'Parañaque City', '1376', 'Domestic Airport P.O. - P.O. Box Nos. 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1277', 'PH', 'Parañaque City', '1377', 'Domestic Airport P.O. - P.O. Box Nos. 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1278', 'PH', 'Parañaque City', '1378', 'Domestic Airport P.O. - P.O. Box Nos. 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1279', 'PH', 'Parañaque City', '1379', 'Domestic Airport P.O. - P.O. Box Nos. 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1280', 'PH', 'Parañaque City', '1380', 'Domestic Airport P.O. - P.O. Box Nos. 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1281', 'PH', 'Parañaque City', '1381', 'Domestic Airport P.O. - P.O. Box Nos. 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1282', 'PH', 'Parañaque City', '1710', 'Executive Heights Subdivision');
INSERT INTO `AddressComplete` VALUES ('1283', 'PH', 'Parañaque City', '1719', 'Ireneville Subdivision I & III');
INSERT INTO `AddressComplete` VALUES ('1284', 'PH', 'Parañaque City', '1714', 'Ireneville Subdivision II');
INSERT INTO `AddressComplete` VALUES ('1285', 'PH', 'Parañaque City', '1717', 'Manila Memorial Park');
INSERT INTO `AddressComplete` VALUES ('1286', 'PH', 'Parañaque City', '1703', 'Marina Subdivision (Reclamation)');
INSERT INTO `AddressComplete` VALUES ('1287', 'PH', 'Parañaque City', '1719', 'Maywood Village I');
INSERT INTO `AddressComplete` VALUES ('1288', 'PH', 'Parañaque City', '1716', 'Maywood Village II');
INSERT INTO `AddressComplete` VALUES ('1289', 'PH', 'Parañaque City', '1712', 'Miramar Subdivision');
INSERT INTO `AddressComplete` VALUES ('1290', 'PH', 'Parañaque City', '1708', 'Multinational Village');
INSERT INTO `AddressComplete` VALUES ('1291', 'PH', 'Parañaque City', '1705', 'Ninoy Aquino International Airport');
INSERT INTO `AddressComplete` VALUES ('1292', 'PH', 'Parañaque City', '1700', 'Parañaque CPO');
INSERT INTO `AddressComplete` VALUES ('1293', 'PH', 'Parañaque City', '1706', 'Pulo');
INSERT INTO `AddressComplete` VALUES ('1294', 'PH', 'Parañaque City', '1715', 'San Antonio Valley 1');
INSERT INTO `AddressComplete` VALUES ('1295', 'PH', 'Parañaque City', '1707', 'San Antonio Valley 11 & 12');
INSERT INTO `AddressComplete` VALUES ('1296', 'PH', 'Parañaque City', '1704', 'Santo Niño');
INSERT INTO `AddressComplete` VALUES ('1297', 'PH', 'Parañaque City', '1709', 'South Admiral Village, Merville Park & Moonwalk Subdivision');
INSERT INTO `AddressComplete` VALUES ('1298', 'PH', 'Parañaque City', '1701', 'Tambo');
INSERT INTO `AddressComplete` VALUES ('1299', 'PH', 'Parañaque City', '1713', 'United Parañaque Subdivision');
INSERT INTO `AddressComplete` VALUES ('1300', 'PH', 'Pasay City', '1300', 'Pasay City Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1301', 'PH', 'Pasay City', '1301', 'Domestic Airport P.O.');
INSERT INTO `AddressComplete` VALUES ('1302', 'PH', 'Pasay City', '1302', 'San Rafael');
INSERT INTO `AddressComplete` VALUES ('1303', 'PH', 'Pasay City', '1303', 'San Roque');
INSERT INTO `AddressComplete` VALUES ('1304', 'PH', 'Pasay City', '1304', 'Santa Clara');
INSERT INTO `AddressComplete` VALUES ('1305', 'PH', 'Pasay City', '1305', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1306', 'PH', 'Pasay City', '1306', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('1307', 'PH', 'Pasay City', '1307', 'Philippine International Convention Center');
INSERT INTO `AddressComplete` VALUES ('1308', 'PH', 'Pasay City', '1308', 'Bay City');
INSERT INTO `AddressComplete` VALUES ('1309', 'PH', 'Pasay City', '1309', 'Villamor Airbase');
INSERT INTO `AddressComplete` VALUES ('1310', 'PH', 'Pasay City', '1350', 'Pasay City CPO - P.O. Box Nos. 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1311', 'PH', 'Pasay City', '1351', 'Pasay City CPO - P.O. Box Nos. 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1312', 'PH', 'Pasay City', '1352', 'Pasay City CPO - P.O. Box Nos. 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1313', 'PH', 'Pasay City', '1353', 'Pasay City CPO - P.O. Box Nos. 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1314', 'PH', 'Pasay City', '1354', 'Pasay City CPO - P.O. Box Nos. 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1315', 'PH', 'Pasig City', '1600', 'Pasig Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1316', 'PH', 'Pasig City', '1601', 'San Joaquin');
INSERT INTO `AddressComplete` VALUES ('1317', 'PH', 'Pasig City', '1602', 'Pinagbuhatan');
INSERT INTO `AddressComplete` VALUES ('1318', 'PH', 'Pasig City', '1603', 'Kapitolyo');
INSERT INTO `AddressComplete` VALUES ('1319', 'PH', 'Pasig City', '1604', 'Ugong');
INSERT INTO `AddressComplete` VALUES ('1320', 'PH', 'Pasig City', '1605', 'Ortigas Post Office');
INSERT INTO `AddressComplete` VALUES ('1321', 'PH', 'Pasig City', '1606', 'Caniogan');
INSERT INTO `AddressComplete` VALUES ('1322', 'PH', 'Pasig City', '1607', 'Maybunga');
INSERT INTO `AddressComplete` VALUES ('1323', 'PH', 'Pasig City', '1608', 'Santa Lucia');
INSERT INTO `AddressComplete` VALUES ('1324', 'PH', 'Pasig City', '1609', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('1325', 'PH', 'Pasig City', '1610', 'Santolan');
INSERT INTO `AddressComplete` VALUES ('1326', 'PH', 'Pasig City', '1611', 'Manggahan');
INSERT INTO `AddressComplete` VALUES ('1327', 'PH', 'Pasig City', '1612', 'Green Park');
INSERT INTO `AddressComplete` VALUES ('1328', 'PH', 'Pasig City', '1650', 'Pasig Ortigas CTR-PO Box# 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1329', 'PH', 'Pasig City', '1651', 'Pasig Ortigas CTR-PO Box# 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1330', 'PH', 'Pasig City', '1652', 'Pasig Ortigas CTR-PO Box# 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1331', 'PH', 'Pasig City', '1653', 'Pasig Ortigas CTR-PO Box# 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1332', 'PH', 'Pasig City', '1654', 'Pasig Ortigas CTR-PO Box# 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1333', 'PH', 'Pasig City', '1655', 'Pasig Ortigas CTR-PO Box# 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1334', 'PH', 'Pasig City', '1656', 'Pasig Ortigas CTR-PO Box# 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1335', 'PH', 'Pasig City', '1657', 'Pasig Ortigas CTR-PO Box# 1700 to 1799');
INSERT INTO `AddressComplete` VALUES ('1336', 'PH', 'Pasig City', '1658', 'Pasig Ortigas CTR-PO Box# 1800 to 1899');
INSERT INTO `AddressComplete` VALUES ('1337', 'PH', 'Pasig City', '1659', 'Pasig Ortigas CTR-PO Box# 1900 to 1999');
INSERT INTO `AddressComplete` VALUES ('1338', 'PH', 'Pasig City', '1660', 'Pasig Ortigas CTR-PO Box# 2000 to 2099');
INSERT INTO `AddressComplete` VALUES ('1339', 'PH', 'Pasig City', '1661', 'Pasig Ortigas CTR-PO Box# 2100 to 2199');
INSERT INTO `AddressComplete` VALUES ('1340', 'PH', 'Pasig City', '1662', 'Pasig Ortigas CTR-PO Box# 2200 to 2299');
INSERT INTO `AddressComplete` VALUES ('1341', 'PH', 'Pasig City', '1663', 'Pasig Ortigas CTR-PO Box# 2300 to 2399');
INSERT INTO `AddressComplete` VALUES ('1342', 'PH', 'Pasig City', '1664', 'Pasig Ortigas CTR-PO Box# 2400 to 2499');
INSERT INTO `AddressComplete` VALUES ('1343', 'PH', 'Pasig City', '1665', 'Pasig Ortigas CTR-PO Box# 2500 to 2599');
INSERT INTO `AddressComplete` VALUES ('1344', 'PH', 'Pasig City', '1666', 'Pasig Ortigas CTR-PO Box# 2600 to 2699');
INSERT INTO `AddressComplete` VALUES ('1345', 'PH', 'Pasig City', '1667', 'Pasig Ortigas CTR-PO Box# 2700 to 2799');
INSERT INTO `AddressComplete` VALUES ('1346', 'PH', 'Pasig City', '1668', 'Pasig Ortigas CTR-PO Box# 2800 to 2899');
INSERT INTO `AddressComplete` VALUES ('1347', 'PH', 'Pasig City', '1669', 'Pasig Ortigas CTR-PO Box# 2900 to 2999');
INSERT INTO `AddressComplete` VALUES ('1348', 'PH', 'Pasig City', '1670', 'Pasig Ortigas CTR-PO Box# 3000 to 3099');
INSERT INTO `AddressComplete` VALUES ('1349', 'PH', 'Pasig City', '1671', 'Pasig Ortigas CTR-PO Box# 3100 to 3199');
INSERT INTO `AddressComplete` VALUES ('1350', 'PH', 'Pasig City', '1672', 'Pasig Ortigas CTR-PO Box# 3200 to 3299');
INSERT INTO `AddressComplete` VALUES ('1351', 'PH', 'Pasig City', '1673', 'Pasig Ortigas CTR-PO Box# 3300 to 3399');
INSERT INTO `AddressComplete` VALUES ('1352', 'PH', 'Pasig City', '1674', 'Pasig Ortigas CTR-PO Box# 3400 to 3499');
INSERT INTO `AddressComplete` VALUES ('1353', 'PH', 'Pasig City', '1675', 'Pasig Ortigas CTR-PO Box# 3500 to 3599');
INSERT INTO `AddressComplete` VALUES ('1354', 'PH', 'Pasig City', '1676', 'Pasig Ortigas CTR-PO Box# 3600 to 3699');
INSERT INTO `AddressComplete` VALUES ('1355', 'PH', 'Pasig City', '1677', 'Pasig Ortigas CTR-PO Box# 3700 to 3799');
INSERT INTO `AddressComplete` VALUES ('1356', 'PH', 'Pasig City', '1678', 'Pasig Ortigas CTR-PO Box# 3800 to 3899');
INSERT INTO `AddressComplete` VALUES ('1357', 'PH', 'Pasig City', '1679', 'Pasig Ortigas CTR-PO Box# 3900 to 3999');
INSERT INTO `AddressComplete` VALUES ('1358', 'PH', 'Pasig City', '1680', 'Pasig Ortigas CTR-PO Box# 4000 to 4099');
INSERT INTO `AddressComplete` VALUES ('1359', 'PH', 'Pasig City', '1681', 'Pasig Ortigas CTR-PO Box# 4100 to 4199');
INSERT INTO `AddressComplete` VALUES ('1360', 'PH', 'Pasig City', '1682', 'Pasig Ortigas CTR-PO Box# 4200 to 4299');
INSERT INTO `AddressComplete` VALUES ('1361', 'PH', 'Pasig City', '1683', 'Pasig Ortigas CTR-PO Box# 4300 to 4399');
INSERT INTO `AddressComplete` VALUES ('1362', 'PH', 'Pasig City', '1684', 'Pasig Ortigas CTR-PO Box# 4400 to 4499');
INSERT INTO `AddressComplete` VALUES ('1363', 'PH', 'Pasig City', '1685', 'Pasig Ortigas CTR-PO Box# 4500 to 4599');
INSERT INTO `AddressComplete` VALUES ('1364', 'PH', 'Pasig City', '1686', 'Pasig Ortigas CTR-PO Box# 4600 to 4699');
INSERT INTO `AddressComplete` VALUES ('1365', 'PH', 'Pasig City', '1687', 'Pasig Ortigas CTR-PO Box# 4700 to 4799');
INSERT INTO `AddressComplete` VALUES ('1366', 'PH', 'Pasig City', '1688', 'Pasig Ortigas CTR-PO Box# 4800 to 4899');
INSERT INTO `AddressComplete` VALUES ('1367', 'PH', 'Pasig City', '1689', 'Pasig Ortigas CTR-PO Box# 4900 to 4999');
INSERT INTO `AddressComplete` VALUES ('1368', 'PH', 'Pasig City', '1690', 'Pasig Ortigas CTR-PO Box# 5000 to 5099');
INSERT INTO `AddressComplete` VALUES ('1369', 'PH', 'Pasig City', '1691', 'Pasig Ortigas CTR-PO Box# 5100 to 5199');
INSERT INTO `AddressComplete` VALUES ('1370', 'PH', 'Pasig City', '1692', 'Pasig Ortigas CTR-PO Box# 5200 to 5299');
INSERT INTO `AddressComplete` VALUES ('1371', 'PH', 'Pasig City', '1693', 'Pasig Ortigas CTR-PO Box# 5300 to 5399');
INSERT INTO `AddressComplete` VALUES ('1372', 'PH', 'Pasig City', '1694', 'Pasig Ortigas CTR-PO Box# 5400 to 5499');
INSERT INTO `AddressComplete` VALUES ('1373', 'PH', 'Pasig City', '1695', 'Pasig Ortigas CTR-PO Box# 5500 to 5599');
INSERT INTO `AddressComplete` VALUES ('1374', 'PH', 'Pasig City', '1696', 'Pasig Ortigas CTR-PO Box# 5600 to 5699');
INSERT INTO `AddressComplete` VALUES ('1375', 'PH', 'Pasig City', '1697', 'Pasig Ortigas CTR-PO Box# 5700 to 5799');
INSERT INTO `AddressComplete` VALUES ('1376', 'PH', 'Pasig City', '1698', 'Pasig Ortigas CTR-PO Box# 5800 to 5899');
INSERT INTO `AddressComplete` VALUES ('1377', 'PH', 'Pasig City', '1699', 'Pasig Ortigas CTR-PO Box# 5900 to 5999');
INSERT INTO `AddressComplete` VALUES ('1378', 'PH', 'Pateros', '1620', 'Aguho');
INSERT INTO `AddressComplete` VALUES ('1379', 'PH', 'Pateros', '1621', 'Santa Ana');
INSERT INTO `AddressComplete` VALUES ('1380', 'PH', 'Quezon City', '1105', 'Alicia');
INSERT INTO `AddressComplete` VALUES ('1381', 'PH', 'Quezon City', '1102', 'Amihan');
INSERT INTO `AddressComplete` VALUES ('1382', 'PH', 'Quezon City', '1106', 'Apolonio Samson');
INSERT INTO `AddressComplete` VALUES ('1383', 'PH', 'Quezon City', '810', 'Araneta Center');
INSERT INTO `AddressComplete` VALUES ('1384', 'PH', 'Quezon City', '1135', 'Araneta Center P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1385', 'PH', 'Quezon City', '1106', 'Baesa');
INSERT INTO `AddressComplete` VALUES ('1386', 'PH', 'Quezon City', '1116', 'Bagbag');
INSERT INTO `AddressComplete` VALUES ('1387', 'PH', 'Quezon City', '1110', 'Bagong Bayan');
INSERT INTO `AddressComplete` VALUES ('1388', 'PH', 'Quezon City', '1109', 'Bagong Buhay');
INSERT INTO `AddressComplete` VALUES ('1389', 'PH', 'Quezon City', '1111', 'Bagong Lipunan');
INSERT INTO `AddressComplete` VALUES ('1390', 'PH', 'Quezon City', '1105', 'Bagong Pag-Asa');
INSERT INTO `AddressComplete` VALUES ('1391', 'PH', 'Quezon City', '1119', 'Bagong Silangan');
INSERT INTO `AddressComplete` VALUES ('1392', 'PH', 'Quezon City', '1106', 'Bahay Toro');
INSERT INTO `AddressComplete` VALUES ('1393', 'PH', 'Quezon City', '1115', 'Balingasa');
INSERT INTO `AddressComplete` VALUES ('1394', 'PH', 'Quezon City', '1106', 'Balintawak');
INSERT INTO `AddressComplete` VALUES ('1395', 'PH', 'Quezon City', '1106', 'Balumbato');
INSERT INTO `AddressComplete` VALUES ('1396', 'PH', 'Quezon City', '1126', 'Batasan Hills');
INSERT INTO `AddressComplete` VALUES ('1397', 'PH', 'Quezon City', '1109', 'Bayanihan');
INSERT INTO `AddressComplete` VALUES ('1398', 'PH', 'Quezon City', '1120', 'BF Homes');
INSERT INTO `AddressComplete` VALUES ('1399', 'PH', 'Quezon City', '1109', 'Blue Ridge');
INSERT INTO `AddressComplete` VALUES ('1400', 'PH', 'Quezon City', '1101', 'Botocan');
INSERT INTO `AddressComplete` VALUES ('1401', 'PH', 'Quezon City', '1141', 'Broadway Center P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1402', 'PH', 'Quezon City', '1105', 'Bungad');
INSERT INTO `AddressComplete` VALUES ('1403', 'PH', 'Quezon City', '820', 'Bureau of Internal Revenue');
INSERT INTO `AddressComplete` VALUES ('1404', 'PH', 'Quezon City', '1110', 'Camp Aguinaldo');
INSERT INTO `AddressComplete` VALUES ('1405', 'PH', 'Quezon City', '802', 'Camp Aguinaldo');
INSERT INTO `AddressComplete` VALUES ('1406', 'PH', 'Quezon City', '801', 'Camp Crame');
INSERT INTO `AddressComplete` VALUES ('1407', 'PH', 'Quezon City', '1126', 'Capitol Hills/Park');
INSERT INTO `AddressComplete` VALUES ('1408', 'PH', 'Quezon City', '1117', 'Capri');
INSERT INTO `AddressComplete` VALUES ('1409', 'PH', 'Quezon City', '1100', 'Central');
INSERT INTO `AddressComplete` VALUES ('1410', 'PH', 'Quezon City', '1102', 'Claro');
INSERT INTO `AddressComplete` VALUES ('1411', 'PH', 'Quezon City', '880', 'Commission on Audit');
INSERT INTO `AddressComplete` VALUES ('1412', 'PH', 'Quezon City', '1121', 'Commonwealth');
INSERT INTO `AddressComplete` VALUES ('1413', 'PH', 'Quezon City', '1111', 'Crame');
INSERT INTO `AddressComplete` VALUES ('1414', 'PH', 'Quezon City', '1109', 'Cubao');
INSERT INTO `AddressComplete` VALUES ('1415', 'PH', 'Quezon City', '1128', 'Culiat');
INSERT INTO `AddressComplete` VALUES ('1416', 'PH', 'Quezon City', '1115', 'Damar');
INSERT INTO `AddressComplete` VALUES ('1417', 'PH', 'Quezon City', '1104', 'Damayan');
INSERT INTO `AddressComplete` VALUES ('1418', 'PH', 'Quezon City', '1112', 'Damayan Lagi');
INSERT INTO `AddressComplete` VALUES ('1419', 'PH', 'Quezon City', '1123', 'Damong Maliit');
INSERT INTO `AddressComplete` VALUES ('1420', 'PH', 'Quezon City', '1105', 'Del Monte');
INSERT INTO `AddressComplete` VALUES ('1421', 'PH', 'Quezon City', '1104', 'Diliman');
INSERT INTO `AddressComplete` VALUES ('1422', 'PH', 'Quezon City', '1109', 'Dioquino Zobel');
INSERT INTO `AddressComplete` VALUES ('1423', 'PH', 'Quezon City', '1113', 'Don Manuel');
INSERT INTO `AddressComplete` VALUES ('1424', 'PH', 'Quezon City', '1113', 'Doña Aurora');
INSERT INTO `AddressComplete` VALUES ('1425', 'PH', 'Quezon City', '1125', 'Doña Faustina Subdivision');
INSERT INTO `AddressComplete` VALUES ('1426', 'PH', 'Quezon City', '1113', 'Doña Imelda');
INSERT INTO `AddressComplete` VALUES ('1427', 'PH', 'Quezon City', '1113', 'Doña Josefa');
INSERT INTO `AddressComplete` VALUES ('1428', 'PH', 'Quezon City', '1102', 'Duyan-Duyan');
INSERT INTO `AddressComplete` VALUES ('1429', 'PH', 'Quezon City', '1102', 'E. Rodriguez');
INSERT INTO `AddressComplete` VALUES ('1430', 'PH', 'Quezon City', '1109', 'Escopa');
INSERT INTO `AddressComplete` VALUES ('1431', 'PH', 'Quezon City', '1118', 'Fairview');
INSERT INTO `AddressComplete` VALUES ('1432', 'PH', 'Quezon City', '1121', 'Fairview [North]');
INSERT INTO `AddressComplete` VALUES ('1433', 'PH', 'Quezon City', '1122', 'Fairview [South]');
INSERT INTO `AddressComplete` VALUES ('1434', 'PH', 'Quezon City', '1114', 'Gintong Silahis');
INSERT INTO `AddressComplete` VALUES ('1435', 'PH', 'Quezon City', '1117', 'Gulod');
INSERT INTO `AddressComplete` VALUES ('1436', 'PH', 'Quezon City', '1127', 'Holy Spirit');
INSERT INTO `AddressComplete` VALUES ('1437', 'PH', 'Quezon City', '1112', 'Horseshoe');
INSERT INTO `AddressComplete` VALUES ('1438', 'PH', 'Quezon City', '1111', 'Immaculate Concepcion');
INSERT INTO `AddressComplete` VALUES ('1439', 'PH', 'Quezon City', '1124', 'Kaligayahan');
INSERT INTO `AddressComplete` VALUES ('1440', 'PH', 'Quezon City', '1112', 'Kalusugan');
INSERT INTO `AddressComplete` VALUES ('1441', 'PH', 'Quezon City', '1102', 'Kamias');
INSERT INTO `AddressComplete` VALUES ('1442', 'PH', 'Quezon City', '1103', 'Kamuning');
INSERT INTO `AddressComplete` VALUES ('1443', 'PH', 'Quezon City', '1105', 'Katipunan');
INSERT INTO `AddressComplete` VALUES ('1444', 'PH', 'Quezon City', '1111', 'Kaunlaran');
INSERT INTO `AddressComplete` VALUES ('1445', 'PH', 'Quezon City', '1112', 'Kristong Hari');
INSERT INTO `AddressComplete` VALUES ('1446', 'PH', 'Quezon City', '1101', 'Krus na Ligas');
INSERT INTO `AddressComplete` VALUES ('1447', 'PH', 'Quezon City', '1114', 'La Loma');
INSERT INTO `AddressComplete` VALUES ('1448', 'PH', 'Quezon City', '1103', 'Laging Handa');
INSERT INTO `AddressComplete` VALUES ('1449', 'PH', 'Quezon City', '1110', 'Libis');
INSERT INTO `AddressComplete` VALUES ('1450', 'PH', 'Quezon City', '1114', 'Lourdes');
INSERT INTO `AddressComplete` VALUES ('1451', 'PH', 'Quezon City', '1108', 'Loyola Heights');
INSERT INTO `AddressComplete` VALUES ('1452', 'PH', 'Quezon City', '1114', 'Maharlika');
INSERT INTO `AddressComplete` VALUES ('1453', 'PH', 'Quezon City', '1101', 'Malaya');
INSERT INTO `AddressComplete` VALUES ('1454', 'PH', 'Quezon City', '1109', 'Mangga');
INSERT INTO `AddressComplete` VALUES ('1455', 'PH', 'Quezon City', '1115', 'Manresa');
INSERT INTO `AddressComplete` VALUES ('1456', 'PH', 'Quezon City', '1112', 'Mariana');
INSERT INTO `AddressComplete` VALUES ('1457', 'PH', 'Quezon City', '1104', 'Mariblo');
INSERT INTO `AddressComplete` VALUES ('1458', 'PH', 'Quezon City', '1109', 'Marilag');
INSERT INTO `AddressComplete` VALUES ('1459', 'PH', 'Quezon City', '1109', 'Masagana');
INSERT INTO `AddressComplete` VALUES ('1460', 'PH', 'Quezon City', '1115', 'Masambong');
INSERT INTO `AddressComplete` VALUES ('1461', 'PH', 'Quezon City', '1114', 'Matalahib');
INSERT INTO `AddressComplete` VALUES ('1462', 'PH', 'Quezon City', '1119', 'Matandang Balara');
INSERT INTO `AddressComplete` VALUES ('1463', 'PH', 'Quezon City', '1109', 'Milagrosa');
INSERT INTO `AddressComplete` VALUES ('1464', 'PH', 'Quezon City', '1138', 'Murphy District P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1465', 'PH', 'Quezon City', '1125', 'Nagkaisang Nayon');
INSERT INTO `AddressComplete` VALUES ('1466', 'PH', 'Quezon City', '830', 'National Irrigation Administration');
INSERT INTO `AddressComplete` VALUES ('1467', 'PH', 'Quezon City', '1104', 'Nayon Kaunlaran');
INSERT INTO `AddressComplete` VALUES ('1468', 'PH', 'Quezon City', '1107', 'New Era');
INSERT INTO `AddressComplete` VALUES ('1469', 'PH', 'Quezon City', '1147', 'Novaliches P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1470', 'PH', 'Quezon City', '1123', 'Novaliches Proper');
INSERT INTO `AddressComplete` VALUES ('1471', 'PH', 'Quezon City', '1103', 'Obrero');
INSERT INTO `AddressComplete` VALUES ('1472', 'PH', 'Quezon City', '1101', 'Old Capitol Site');
INSERT INTO `AddressComplete` VALUES ('1473', 'PH', 'Quezon City', '1114', 'Paang Bundok');
INSERT INTO `AddressComplete` VALUES ('1474', 'PH', 'Quezon City', '1115', 'Pag-Ibig sa Nayon');
INSERT INTO `AddressComplete` VALUES ('1475', 'PH', 'Quezon City', '1103', 'Paligsahan');
INSERT INTO `AddressComplete` VALUES ('1476', 'PH', 'Quezon City', '1105', 'Paltok');
INSERT INTO `AddressComplete` VALUES ('1477', 'PH', 'Quezon City', '1108', 'Pansol');
INSERT INTO `AddressComplete` VALUES ('1478', 'PH', 'Quezon City', '1104', 'Paraiso');
INSERT INTO `AddressComplete` VALUES ('1479', 'PH', 'Quezon City', '1118', 'Pasong Putik');
INSERT INTO `AddressComplete` VALUES ('1480', 'PH', 'Quezon City', '1107', 'Pasong Tamo');
INSERT INTO `AddressComplete` VALUES ('1481', 'PH', 'Quezon City', '1119', 'Payatas');
INSERT INTO `AddressComplete` VALUES ('1482', 'PH', 'Quezon City', '1104', 'Phil-Am');
INSERT INTO `AddressComplete` VALUES ('1483', 'PH', 'Quezon City', '850', 'Philippine Heart Center');
INSERT INTO `AddressComplete` VALUES ('1484', 'PH', 'Quezon City', '1111', 'Pinagkaisahan');
INSERT INTO `AddressComplete` VALUES ('1485', 'PH', 'Quezon City', '1100', 'Piñahan');
INSERT INTO `AddressComplete` VALUES ('1486', 'PH', 'Quezon City', '1109', 'Project 4');
INSERT INTO `AddressComplete` VALUES ('1487', 'PH', 'Quezon City', '1100', 'Project 6');
INSERT INTO `AddressComplete` VALUES ('1488', 'PH', 'Quezon City', '1105', 'Project 7');
INSERT INTO `AddressComplete` VALUES ('1489', 'PH', 'Quezon City', '1106', 'Project 8');
INSERT INTO `AddressComplete` VALUES ('1490', 'PH', 'Quezon City', '1100', 'Quezon City CPO');
INSERT INTO `AddressComplete` VALUES ('1491', 'PH', 'Quezon City', '1150', 'Quezon City CPO - P.O. Box Nos. 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1492', 'PH', 'Quezon City', '1151', 'Quezon City CPO - P.O. Box Nos. 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1493', 'PH', 'Quezon City', '1152', 'Quezon City CPO - P.O. Box Nos. 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1494', 'PH', 'Quezon City', '1153', 'Quezon City CPO - P.O. Box Nos. 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1495', 'PH', 'Quezon City', '1154', 'Quezon City CPO - P.O. Box Nos. 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1496', 'PH', 'Quezon City', '1155', 'Quezon City CPO - P.O. Box Nos. 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1497', 'PH', 'Quezon City', '1156', 'Quezon City CPO - P.O. Box Nos. 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1498', 'PH', 'Quezon City', '1157', 'Quezon City CPO - P.O. Box Nos. 1700 to 1799');
INSERT INTO `AddressComplete` VALUES ('1499', 'PH', 'Quezon City', '1158', 'Quezon City CPO - P.O. Box Nos. 1800 to 1899');
INSERT INTO `AddressComplete` VALUES ('1500', 'PH', 'Quezon City', '1159', 'Quezon City CPO - P.O. Box Nos. 1900 to 1999');
INSERT INTO `AddressComplete` VALUES ('1501', 'PH', 'Quezon City', '1160', 'Quezon City CPO - P.O. Box Nos. 2000 to 2099');
INSERT INTO `AddressComplete` VALUES ('1502', 'PH', 'Quezon City', '1161', 'Quezon City CPO - P.O. Box Nos. 2100 to 2199');
INSERT INTO `AddressComplete` VALUES ('1503', 'PH', 'Quezon City', '1162', 'Quezon City CPO - P.O. Box Nos. 2200 to 2299');
INSERT INTO `AddressComplete` VALUES ('1504', 'PH', 'Quezon City', '1163', 'Quezon City CPO - P.O. Box Nos. 2300 to 2399');
INSERT INTO `AddressComplete` VALUES ('1505', 'PH', 'Quezon City', '1164', 'Quezon City CPO - P.O. Box Nos. 2400 to 2499');
INSERT INTO `AddressComplete` VALUES ('1506', 'PH', 'Quezon City', '1165', 'Quezon City CPO - P.O. Box Nos. 2500 to 2599');
INSERT INTO `AddressComplete` VALUES ('1507', 'PH', 'Quezon City', '1166', 'Quezon City CPO - P.O. Box Nos. 2600 to 2699');
INSERT INTO `AddressComplete` VALUES ('1508', 'PH', 'Quezon City', '1167', 'Quezon City CPO - P.O. Box Nos. 2700 to 2799');
INSERT INTO `AddressComplete` VALUES ('1509', 'PH', 'Quezon City', '1168', 'Quezon City CPO - P.O. Box Nos. 2800 to 2899');
INSERT INTO `AddressComplete` VALUES ('1510', 'PH', 'Quezon City', '1169', 'Quezon City CPO - P.O. Box Nos. 2900 to 2999');
INSERT INTO `AddressComplete` VALUES ('1511', 'PH', 'Quezon City', '1170', 'Quezon City CPO - P.O. Box Nos. 3000 to 3099');
INSERT INTO `AddressComplete` VALUES ('1512', 'PH', 'Quezon City', '1171', 'Quezon City CPO - P.O. Box Nos. 3100 to 3199');
INSERT INTO `AddressComplete` VALUES ('1513', 'PH', 'Quezon City', '1172', 'Quezon City CPO - P.O. Box Nos. 3200 to 3299');
INSERT INTO `AddressComplete` VALUES ('1514', 'PH', 'Quezon City', '1173', 'Quezon City CPO - P.O. Box Nos. 3300 to 3399');
INSERT INTO `AddressComplete` VALUES ('1515', 'PH', 'Quezon City', '1174', 'Quezon City CPO - P.O. Box Nos. 3400 to 3499');
INSERT INTO `AddressComplete` VALUES ('1516', 'PH', 'Quezon City', '1175', 'Quezon City CPO - P.O. Box Nos. 3500 to 3599');
INSERT INTO `AddressComplete` VALUES ('1517', 'PH', 'Quezon City', '1176', 'Quezon City CPO - P.O. Box Nos. 3600 to 3699');
INSERT INTO `AddressComplete` VALUES ('1518', 'PH', 'Quezon City', '1177', 'Quezon City CPO - P.O. Box Nos. 3700 to 3799');
INSERT INTO `AddressComplete` VALUES ('1519', 'PH', 'Quezon City', '860', 'Quezon City Hall');
INSERT INTO `AddressComplete` VALUES ('1520', 'PH', 'Quezon City', '1102', 'Quirino District (Project 2 & 3)');
INSERT INTO `AddressComplete` VALUES ('1521', 'PH', 'Quezon City', '1105', 'R. Magsaysay');
INSERT INTO `AddressComplete` VALUES ('1522', 'PH', 'Quezon City', '1103', 'Roxas District');
INSERT INTO `AddressComplete` VALUES ('1523', 'PH', 'Quezon City', '1103', 'Sacred Heart');
INSERT INTO `AddressComplete` VALUES ('1524', 'PH', 'Quezon City', '1114', 'Salvacion');
INSERT INTO `AddressComplete` VALUES ('1525', 'PH', 'Quezon City', '1117', 'San Agustin');
INSERT INTO `AddressComplete` VALUES ('1526', 'PH', 'Quezon City', '1105', 'San Antonio, Quezon City');
INSERT INTO `AddressComplete` VALUES ('1527', 'PH', 'Quezon City', '1116', 'San Bartolome');
INSERT INTO `AddressComplete` VALUES ('1528', 'PH', 'Quezon City', '1113', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('1529', 'PH', 'Quezon City', '1114', 'San Isidro Labrador');
INSERT INTO `AddressComplete` VALUES ('1530', 'PH', 'Quezon City', '1115', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1531', 'PH', 'Quezon City', '1109', 'San Roque');
INSERT INTO `AddressComplete` VALUES ('1532', 'PH', 'Quezon City', '1101', 'San Vicente');
INSERT INTO `AddressComplete` VALUES ('1533', 'PH', 'Quezon City', '1116', 'Sangandaan');
INSERT INTO `AddressComplete` VALUES ('1534', 'PH', 'Quezon City', '1104', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('1535', 'PH', 'Quezon City', '1117', 'Santa Lucia');
INSERT INTO `AddressComplete` VALUES ('1536', 'PH', 'Quezon City', '1117', 'Santa Monica');
INSERT INTO `AddressComplete` VALUES ('1537', 'PH', 'Quezon City', '1114', 'Santa Teresita');
INSERT INTO `AddressComplete` VALUES ('1538', 'PH', 'Quezon City', '1105', 'Santo Cristo');
INSERT INTO `AddressComplete` VALUES ('1539', 'PH', 'Quezon City', '1113', 'Santo Niño');
INSERT INTO `AddressComplete` VALUES ('1540', 'PH', 'Quezon City', '1113', 'Santol');
INSERT INTO `AddressComplete` VALUES ('1541', 'PH', 'Quezon City', '1116', 'Sauyo');
INSERT INTO `AddressComplete` VALUES ('1542', 'PH', 'Quezon City', '1114', 'Sienna');
INSERT INTO `AddressComplete` VALUES ('1543', 'PH', 'Quezon City', '1101', 'Sikatuna Village');
INSERT INTO `AddressComplete` VALUES ('1544', 'PH', 'Quezon City', '1102', 'Silangan');
INSERT INTO `AddressComplete` VALUES ('1545', 'PH', 'Quezon City', '800', 'Social Security System');
INSERT INTO `AddressComplete` VALUES ('1546', 'PH', 'Quezon City', '1109', 'Socorro');
INSERT INTO `AddressComplete` VALUES ('1547', 'PH', 'Quezon City', '1103', 'South Triangle');
INSERT INTO `AddressComplete` VALUES ('1548', 'PH', 'Quezon City', '1110', 'St. Ignatius');
INSERT INTO `AddressComplete` VALUES ('1549', 'PH', 'Quezon City', '1111', 'St. Martin de Porres');
INSERT INTO `AddressComplete` VALUES ('1550', 'PH', 'Quezon City', '1114', 'St. Peter');
INSERT INTO `AddressComplete` VALUES ('1551', 'PH', 'Quezon City', '1109', 'Tagumpay');
INSERT INTO `AddressComplete` VALUES ('1552', 'PH', 'Quezon City', '1110', 'Talampas');
INSERT INTO `AddressComplete` VALUES ('1553', 'PH', 'Quezon City', '1104', 'Talayan');
INSERT INTO `AddressComplete` VALUES ('1554', 'PH', 'Quezon City', '1116', 'Talipapa');
INSERT INTO `AddressComplete` VALUES ('1555', 'PH', 'Quezon City', '1116', 'Tandang Sora');
INSERT INTO `AddressComplete` VALUES ('1556', 'PH', 'Quezon City', '1113', 'Tatalon');
INSERT INTO `AddressComplete` VALUES ('1557', 'PH', 'Quezon City', '1101', 'Teachers Village');
INSERT INTO `AddressComplete` VALUES ('1558', 'PH', 'Quezon City', '1110', 'Ugong Norte');
INSERT INTO `AddressComplete` VALUES ('1559', 'PH', 'Quezon City', '1106', 'Unang Sigaw');
INSERT INTO `AddressComplete` VALUES ('1560', 'PH', 'Quezon City', '1101', 'University of the Philippines Post Office');
INSERT INTO `AddressComplete` VALUES ('1561', 'PH', 'Quezon City', '1144', 'University of the Philippines P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1562', 'PH', 'Quezon City', '1101', 'University of the Philippines Village');
INSERT INTO `AddressComplete` VALUES ('1563', 'PH', 'Quezon City', '840', 'V. Luna Hospital');
INSERT INTO `AddressComplete` VALUES ('1564', 'PH', 'Quezon City', '1112', 'Valencia');
INSERT INTO `AddressComplete` VALUES ('1565', 'PH', 'Quezon City', '1128', 'Vasra');
INSERT INTO `AddressComplete` VALUES ('1566', 'PH', 'Quezon City', '870', 'Veterans Hospital');
INSERT INTO `AddressComplete` VALUES ('1567', 'PH', 'Quezon City', '1105', 'Veterans Village');
INSERT INTO `AddressComplete` VALUES ('1568', 'PH', 'Quezon City', '1109', 'Villa Maria Clara');
INSERT INTO `AddressComplete` VALUES ('1569', 'PH', 'Quezon City', '1120', 'Violago Homes');
INSERT INTO `AddressComplete` VALUES ('1570', 'PH', 'Quezon City', '1104', 'West Triangle');
INSERT INTO `AddressComplete` VALUES ('1571', 'PH', 'Quezon City', '1110', 'White Plains');
INSERT INTO `AddressComplete` VALUES ('1572', 'PH', 'San Juan City', '1504', 'Eisenhower - Crame');
INSERT INTO `AddressComplete` VALUES ('1573', 'PH', 'San Juan City', '1502', 'Greenhills Post Office');
INSERT INTO `AddressComplete` VALUES ('1574', 'PH', 'San Juan City', '1503', 'Greenhills [North]');
INSERT INTO `AddressComplete` VALUES ('1575', 'PH', 'San Juan City', '1500', 'San Juan Central Post Office');
INSERT INTO `AddressComplete` VALUES ('1576', 'PH', 'San Juan City', '400', 'International Correspondence School');
INSERT INTO `AddressComplete` VALUES ('1577', 'PH', 'San Juan City', '401', 'Asian Development Bank');
INSERT INTO `AddressComplete` VALUES ('1578', 'PH', 'San Juan City', '410', 'Radio Bible Class');
INSERT INTO `AddressComplete` VALUES ('1579', 'PH', 'San Juan City', '420', 'Bible School on the Air');
INSERT INTO `AddressComplete` VALUES ('1580', 'PH', 'San Juan City', '1530', 'Greenhills P.O. Box Nos. 1000 to 1099');
INSERT INTO `AddressComplete` VALUES ('1581', 'PH', 'San Juan City', '1531', 'Greenhills P.O. Box Nos. 1100 to 1199');
INSERT INTO `AddressComplete` VALUES ('1582', 'PH', 'San Juan City', '1532', 'Greenhills P.O. Box Nos. 1200 to 1299');
INSERT INTO `AddressComplete` VALUES ('1583', 'PH', 'San Juan City', '1533', 'Greenhills P.O. Box Nos. 1300 to 1399');
INSERT INTO `AddressComplete` VALUES ('1584', 'PH', 'San Juan City', '1534', 'Greenhills P.O. Box Nos. 1400 to 1499');
INSERT INTO `AddressComplete` VALUES ('1585', 'PH', 'San Juan City', '1535', 'Greenhills P.O. Box Nos. 1500 to 1599');
INSERT INTO `AddressComplete` VALUES ('1586', 'PH', 'San Juan City', '1536', 'Greenhills P.O. Box Nos. 1600 to 1699');
INSERT INTO `AddressComplete` VALUES ('1587', 'PH', 'Taguig City', '1636', 'Bay Breeze Executive Village');
INSERT INTO `AddressComplete` VALUES ('1588', 'PH', 'Taguig City', '1631', 'Bicutan');
INSERT INTO `AddressComplete` VALUES ('1589', 'PH', 'Taguig City', '1632', 'ususan');
INSERT INTO `AddressComplete` VALUES ('1590', 'PH', 'Taguig City', '1633', 'Upper Bicutan');
INSERT INTO `AddressComplete` VALUES ('1591', 'PH', 'Taguig City', '1630', 'Western Bicutan (including Food Terminal, Inc. complex)');
INSERT INTO `AddressComplete` VALUES ('1592', 'PH', 'Taguig City', '1638', 'Ligid');
INSERT INTO `AddressComplete` VALUES ('1593', 'PH', 'Taguig City', '1634', 'Nichols - McKinley');
INSERT INTO `AddressComplete` VALUES ('1594', 'PH', 'Taguig City', '1637', 'Tuktukan');
INSERT INTO `AddressComplete` VALUES ('1595', 'PH', 'Valenzuela City', '1444', 'Arkong Bato');
INSERT INTO `AddressComplete` VALUES ('1596', 'PH', 'Valenzuela City', '1445', 'Balangkas - Caloong');
INSERT INTO `AddressComplete` VALUES ('1597', 'PH', 'Valenzuela City', '1443', 'Dalandanan - West Canumay');
INSERT INTO `AddressComplete` VALUES ('1598', 'PH', 'Valenzuela City', '1447', 'East Canumay - Lawang Bato Punturin');
INSERT INTO `AddressComplete` VALUES ('1599', 'PH', 'Valenzuela City', '1442', 'Fortune Village');
INSERT INTO `AddressComplete` VALUES ('1600', 'PH', 'Valenzuela City', '1442', 'General T. de Leon');
INSERT INTO `AddressComplete` VALUES ('1601', 'PH', 'Valenzuela City', '1441', 'Karuhatan');
INSERT INTO `AddressComplete` VALUES ('1602', 'PH', 'Valenzuela City', '1446', 'Lingunan');
INSERT INTO `AddressComplete` VALUES ('1603', 'PH', 'Valenzuela City', '1444', 'Mabolo');
INSERT INTO `AddressComplete` VALUES ('1604', 'PH', 'Valenzuela City', '1444', 'Malanday');
INSERT INTO `AddressComplete` VALUES ('1605', 'PH', 'Valenzuela City', '1448', 'Mapulang Lupa');
INSERT INTO `AddressComplete` VALUES ('1606', 'PH', 'Valenzuela City', '1442', 'Paso de Blas');
INSERT INTO `AddressComplete` VALUES ('1607', 'PH', 'Valenzuela City', '1444', 'Pasolo');
INSERT INTO `AddressComplete` VALUES ('1608', 'PH', 'Valenzuela City', '1444', 'Polo');
INSERT INTO `AddressComplete` VALUES ('1609', 'PH', 'Valenzuela City', '1444', 'Rincon');
INSERT INTO `AddressComplete` VALUES ('1610', 'PH', 'Valenzuela City', '1440', 'Valenzuela Central Post Office - Malinta');
INSERT INTO `AddressComplete` VALUES ('1611', 'PH', 'Valenzuela City', '1469', 'Valenzuela P.O. Boxes');
INSERT INTO `AddressComplete` VALUES ('1612', 'PH', 'Valenzuela City', '560', 'Far East Broadcasting Corporation');
INSERT INTO `AddressComplete` VALUES ('1613', 'PH', 'Valenzuela City', '550', 'Febias College of Bible');
INSERT INTO `AddressComplete` VALUES ('1614', 'PH', 'Misamis Occidental', '7206', 'Aloran');
INSERT INTO `AddressComplete` VALUES ('1615', 'PH', 'Misamis Occidental', '7211', 'Baliangao');
INSERT INTO `AddressComplete` VALUES ('1616', 'PH', 'Misamis Occidental', '7215', 'Bonifacio');
INSERT INTO `AddressComplete` VALUES ('1617', 'PH', 'Misamis Occidental', '7210', 'Calamba');
INSERT INTO `AddressComplete` VALUES ('1618', 'PH', 'Misamis Occidental', '7201', 'Clarin');
INSERT INTO `AddressComplete` VALUES ('1619', 'PH', 'Misamis Occidental', '7213', 'Concepcion');
INSERT INTO `AddressComplete` VALUES ('1620', 'PH', 'Misamis Occidental', '7204', 'Jimenez');
INSERT INTO `AddressComplete` VALUES ('1621', 'PH', 'Misamis Occidental', '7208', 'Lopez Jaena');
INSERT INTO `AddressComplete` VALUES ('1622', 'PH', 'Misamis Occidental', '7207', 'Oroquieta City');
INSERT INTO `AddressComplete` VALUES ('1623', 'PH', 'Misamis Occidental', '7200', 'Ozamis City');
INSERT INTO `AddressComplete` VALUES ('1624', 'PH', 'Misamis Occidental', '7205', 'Panaon');
INSERT INTO `AddressComplete` VALUES ('1625', 'PH', 'Misamis Occidental', '7209', 'Plaridel');
INSERT INTO `AddressComplete` VALUES ('1626', 'PH', 'Misamis Occidental', '7212', 'Sapang Dalaga');
INSERT INTO `AddressComplete` VALUES ('1627', 'PH', 'Misamis Occidental', '7203', 'Sinacaban');
INSERT INTO `AddressComplete` VALUES ('1628', 'PH', 'Misamis Occidental', '7214', 'Tangub City');
INSERT INTO `AddressComplete` VALUES ('1629', 'PH', 'Misamis Occidental', '7202', 'Tudela');
INSERT INTO `AddressComplete` VALUES ('1630', 'PH', 'Misamis Oriental', '9018', 'Alubijid');
INSERT INTO `AddressComplete` VALUES ('1631', 'PH', 'Misamis Oriental', '9005', 'Balingasag');
INSERT INTO `AddressComplete` VALUES ('1632', 'PH', 'Misamis Oriental', '9011', 'Balinguan');
INSERT INTO `AddressComplete` VALUES ('1633', 'PH', 'Misamis Oriental', '9008', 'Binuangan');
INSERT INTO `AddressComplete` VALUES ('1634', 'PH', 'Misamis Oriental', '9000', 'Cagayan de Oro City');
INSERT INTO `AddressComplete` VALUES ('1635', 'PH', 'Misamis Oriental', '9004', 'Claveria');
INSERT INTO `AddressComplete` VALUES ('1636', 'PH', 'Misamis Oriental', '9017', 'El Salvador');
INSERT INTO `AddressComplete` VALUES ('1637', 'PH', 'Misamis Oriental', '9014', 'Gingoog City');
INSERT INTO `AddressComplete` VALUES ('1638', 'PH', 'Misamis Oriental', '9020', 'Gitagum');
INSERT INTO `AddressComplete` VALUES ('1639', 'PH', 'Misamis Oriental', '9022', 'Initao');
INSERT INTO `AddressComplete` VALUES ('1640', 'PH', 'Misamis Oriental', '9003', 'Jasaan');
INSERT INTO `AddressComplete` VALUES ('1641', 'PH', 'Misamis Oriental', '9010', 'Kinogitan');
INSERT INTO `AddressComplete` VALUES ('1642', 'PH', 'Misamis Oriental', '9006', 'Lagonglong');
INSERT INTO `AddressComplete` VALUES ('1643', 'PH', 'Misamis Oriental', '9019', 'Laguindingan');
INSERT INTO `AddressComplete` VALUES ('1644', 'PH', 'Misamis Oriental', '9021', 'Libertad');
INSERT INTO `AddressComplete` VALUES ('1645', 'PH', 'Misamis Oriental', '9025', 'Lugait');
INSERT INTO `AddressComplete` VALUES ('1646', 'PH', 'Misamis Oriental', '9015', 'Magsaysay');
INSERT INTO `AddressComplete` VALUES ('1647', 'PH', 'Misamis Oriental', '9024', 'Manticao');
INSERT INTO `AddressComplete` VALUES ('1648', 'PH', 'Misamis Oriental', '9013', 'Medina');
INSERT INTO `AddressComplete` VALUES ('1649', 'PH', 'Misamis Oriental', '9023', 'Naawan');
INSERT INTO `AddressComplete` VALUES ('1650', 'PH', 'Misamis Oriental', '9016', 'Opol');
INSERT INTO `AddressComplete` VALUES ('1651', 'PH', 'Misamis Oriental', '9007', 'Salay');
INSERT INTO `AddressComplete` VALUES ('1652', 'PH', 'Misamis Oriental', '9009', 'Sugbungcogon');
INSERT INTO `AddressComplete` VALUES ('1653', 'PH', 'Misamis Oriental', '9001', 'Tagoloan');
INSERT INTO `AddressComplete` VALUES ('1654', 'PH', 'Misamis Oriental', '9012', 'Talisayan');
INSERT INTO `AddressComplete` VALUES ('1655', 'PH', 'Misamis Oriental', '9002', 'Villanueva');
INSERT INTO `AddressComplete` VALUES ('1656', 'PH', 'Mountain Province', '2623', 'Barlig');
INSERT INTO `AddressComplete` VALUES ('1657', 'PH', 'Mountain Province', '2621', 'Bauko');
INSERT INTO `AddressComplete` VALUES ('1658', 'PH', 'Mountain Province', '2618', 'Besao');
INSERT INTO `AddressComplete` VALUES ('1659', 'PH', 'Mountain Province', '2616', 'Bontoc');
INSERT INTO `AddressComplete` VALUES ('1660', 'PH', 'Mountain Province', '2624', 'Natonin');
INSERT INTO `AddressComplete` VALUES ('1661', 'PH', 'Mountain Province', '2625', 'Paracelis');
INSERT INTO `AddressComplete` VALUES ('1662', 'PH', 'Mountain Province', '2622', 'Sabangan');
INSERT INTO `AddressComplete` VALUES ('1663', 'PH', 'Mountain Province', '2617', 'Sadanga');
INSERT INTO `AddressComplete` VALUES ('1664', 'PH', 'Mountain Province', '2619', 'Sagada');
INSERT INTO `AddressComplete` VALUES ('1665', 'PH', 'Mountain Province', '2620', 'Tadian');
INSERT INTO `AddressComplete` VALUES ('1666', 'PH', 'Negros Occidental', '6100', 'Bacolod City');
INSERT INTO `AddressComplete` VALUES ('1667', 'PH', 'Negros Occidental', '6101', 'Bago City');
INSERT INTO `AddressComplete` VALUES ('1668', 'PH', 'Negros Occidental', '6107', 'Binalbagan City');
INSERT INTO `AddressComplete` VALUES ('1669', 'PH', 'Negros Occidental', '6121', 'Cadiz City');
INSERT INTO `AddressComplete` VALUES ('1670', 'PH', 'Negros Occidental', '6126', 'Calatrava');
INSERT INTO `AddressComplete` VALUES ('1671', 'PH', 'Negros Occidental', '6110', 'Candoni');
INSERT INTO `AddressComplete` VALUES ('1672', 'PH', 'Negros Occidental', '6118', 'Enrique Magalona');
INSERT INTO `AddressComplete` VALUES ('1673', 'PH', 'Negros Occidental', '6124', 'Escalante City');
INSERT INTO `AddressComplete` VALUES ('1674', 'PH', 'Negros Occidental', '6108', 'Himamaylan City');
INSERT INTO `AddressComplete` VALUES ('1675', 'PH', 'Negros Occidental', '6106', 'Hinigaran City');
INSERT INTO `AddressComplete` VALUES ('1676', 'PH', 'Negros Occidental', '6114', 'Hinoba-an');
INSERT INTO `AddressComplete` VALUES ('1677', 'PH', 'Negros Occidental', '6109', 'Ilog');
INSERT INTO `AddressComplete` VALUES ('1678', 'PH', 'Negros Occidental', '6128', 'Isabela');
INSERT INTO `AddressComplete` VALUES ('1679', 'PH', 'Negros Occidental', '6111', 'Kabankalan City');
INSERT INTO `AddressComplete` VALUES ('1680', 'PH', 'Negros Occidental', '6112', 'Cauayan');
INSERT INTO `AddressComplete` VALUES ('1681', 'PH', 'Negros Occidental', '6130', 'La Carlota City');
INSERT INTO `AddressComplete` VALUES ('1682', 'PH', 'Negros Occidental', '6131', 'La Castillana');
INSERT INTO `AddressComplete` VALUES ('1683', 'PH', 'Negros Occidental', '6120', 'Manapla');
INSERT INTO `AddressComplete` VALUES ('1684', 'PH', 'Negros Occidental', '6132', 'Moises Padilla');
INSERT INTO `AddressComplete` VALUES ('1685', 'PH', 'Negros Occidental', '6129', 'Murcia');
INSERT INTO `AddressComplete` VALUES ('1686', 'PH', 'Negros Occidental', '6123', 'Paraiso (Fabrica)');
INSERT INTO `AddressComplete` VALUES ('1687', 'PH', 'Negros Occidental', '6105', 'Pontevedra');
INSERT INTO `AddressComplete` VALUES ('1688', 'PH', 'Negros Occidental', '6102', 'Pulupandan');
INSERT INTO `AddressComplete` VALUES ('1689', 'PH', 'Negros Occidental', '6122', 'Sagay City');
INSERT INTO `AddressComplete` VALUES ('1690', 'PH', 'Negros Occidental', '6127', 'San Carlos City');
INSERT INTO `AddressComplete` VALUES ('1691', 'PH', 'Negros Occidental', '6104', 'San Enrique');
INSERT INTO `AddressComplete` VALUES ('1692', 'PH', 'Negros Occidental', '6116', 'Silay City');
INSERT INTO `AddressComplete` VALUES ('1693', 'PH', 'Negros Occidental', '6117', 'Silay Hawaiian Central');
INSERT INTO `AddressComplete` VALUES ('1694', 'PH', 'Negros Occidental', '6113', 'Sipalay City');
INSERT INTO `AddressComplete` VALUES ('1695', 'PH', 'Negros Occidental', '6115', 'Talisay City');
INSERT INTO `AddressComplete` VALUES ('1696', 'PH', 'Negros Occidental', '6125', 'Toboso');
INSERT INTO `AddressComplete` VALUES ('1697', 'PH', 'Negros Occidental', '6103', 'Valladolid');
INSERT INTO `AddressComplete` VALUES ('1698', 'PH', 'Negros Occidental', '6119', 'Victorias City');
INSERT INTO `AddressComplete` VALUES ('1699', 'PH', 'Negros Oriental', '6203', 'Amlan');
INSERT INTO `AddressComplete` VALUES ('1700', 'PH', 'Negros Oriental', '6210', 'Ayungon');
INSERT INTO `AddressComplete` VALUES ('1701', 'PH', 'Negros Oriental', '6216', 'Bacong');
INSERT INTO `AddressComplete` VALUES ('1702', 'PH', 'Negros Oriental', '6206', 'Bais City');
INSERT INTO `AddressComplete` VALUES ('1703', 'PH', 'Negros Oriental', '6222', 'Basay');
INSERT INTO `AddressComplete` VALUES ('1704', 'PH', 'Negros Oriental', '6221', 'Bayawan City');
INSERT INTO `AddressComplete` VALUES ('1705', 'PH', 'Negros Oriental', '6209', 'Bindoy');
INSERT INTO `AddressComplete` VALUES ('1706', 'PH', 'Negros Oriental', '6223', 'Canlaon City');
INSERT INTO `AddressComplete` VALUES ('1707', 'PH', 'Negros Oriental', '6217', 'Dauin');
INSERT INTO `AddressComplete` VALUES ('1708', 'PH', 'Negros Oriental', '6200', 'Dumaguete City');
INSERT INTO `AddressComplete` VALUES ('1709', 'PH', 'Negros Oriental', '6214', 'Guihulngan');
INSERT INTO `AddressComplete` VALUES ('1710', 'PH', 'Negros Oriental', '6212', 'Jimalalud');
INSERT INTO `AddressComplete` VALUES ('1711', 'PH', 'Negros Oriental', '6213', 'La Libertad');
INSERT INTO `AddressComplete` VALUES ('1712', 'PH', 'Negros Oriental', '6207', 'Mabinay');
INSERT INTO `AddressComplete` VALUES ('1713', 'PH', 'Negros Oriental', '6208', 'Manjuyod');
INSERT INTO `AddressComplete` VALUES ('1714', 'PH', 'Negros Oriental', '6205', 'Pamplona');
INSERT INTO `AddressComplete` VALUES ('1715', 'PH', 'Negros Oriental', '6202', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1716', 'PH', 'Negros Oriental', '6219', 'Siaton');
INSERT INTO `AddressComplete` VALUES ('1717', 'PH', 'Negros Oriental', '6201', 'Sibulan');
INSERT INTO `AddressComplete` VALUES ('1718', 'PH', 'Negros Oriental', '6220', 'Sta. Catalina');
INSERT INTO `AddressComplete` VALUES ('1719', 'PH', 'Negros Oriental', '6204', 'Tanjay City');
INSERT INTO `AddressComplete` VALUES ('1720', 'PH', 'Negros Oriental', '6211', 'Tayasan');
INSERT INTO `AddressComplete` VALUES ('1721', 'PH', 'Negros Oriental', '6215', 'Valencia');
INSERT INTO `AddressComplete` VALUES ('1722', 'PH', 'Negros Oriental', '6224', 'Valle Hermoso');
INSERT INTO `AddressComplete` VALUES ('1723', 'PH', 'Negros Oriental', '6218', 'Zamboanguita');
INSERT INTO `AddressComplete` VALUES ('1724', 'PH', 'Northern Samar', '6405', 'Allen');
INSERT INTO `AddressComplete` VALUES ('1725', 'PH', 'Northern Samar', '6410', 'Biri');
INSERT INTO `AddressComplete` VALUES ('1726', 'PH', 'Northern Samar', '6401', 'Bobon');
INSERT INTO `AddressComplete` VALUES ('1727', 'PH', 'Northern Samar', '6408', 'Capul');
INSERT INTO `AddressComplete` VALUES ('1728', 'PH', 'Northern Samar', '6400', 'Catarman');
INSERT INTO `AddressComplete` VALUES ('1729', 'PH', 'Northern Samar', '6418', 'Catubig');
INSERT INTO `AddressComplete` VALUES ('1730', 'PH', 'Northern Samar', '6422', 'Gamay');
INSERT INTO `AddressComplete` VALUES ('1731', 'PH', 'Northern Samar', '6411', 'Laoang');
INSERT INTO `AddressComplete` VALUES ('1732', 'PH', 'Northern Samar', '6423', 'Lapinig');
INSERT INTO `AddressComplete` VALUES ('1733', 'PH', 'Northern Samar', '6420', 'Las Navas');
INSERT INTO `AddressComplete` VALUES ('1734', 'PH', 'Northern Samar', '6404', 'Lavezares');
INSERT INTO `AddressComplete` VALUES ('1735', 'PH', 'Northern Samar', '6403', 'Lope de Vega');
INSERT INTO `AddressComplete` VALUES ('1736', 'PH', 'Northern Samar', '6412', 'Mapanas');
INSERT INTO `AddressComplete` VALUES ('1737', 'PH', 'Northern Samar', '6417', 'Mondragon');
INSERT INTO `AddressComplete` VALUES ('1738', 'PH', 'Northern Samar', '6421', 'Palapag');
INSERT INTO `AddressComplete` VALUES ('1739', 'PH', 'Northern Samar', '6413', 'Pambujan');
INSERT INTO `AddressComplete` VALUES ('1740', 'PH', 'Northern Samar', '6416', 'Rosario');
INSERT INTO `AddressComplete` VALUES ('1741', 'PH', 'Northern Samar', '6407', 'San Antonio');
INSERT INTO `AddressComplete` VALUES ('1742', 'PH', 'Northern Samar', '6409', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('1743', 'PH', 'Northern Samar', '6402', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1744', 'PH', 'Northern Samar', '6415', 'San Roque');
INSERT INTO `AddressComplete` VALUES ('1745', 'PH', 'Northern Samar', '6419', 'San Vicente');
INSERT INTO `AddressComplete` VALUES ('1746', 'PH', 'Northern Samar', '6414', 'Silvino Lobos');
INSERT INTO `AddressComplete` VALUES ('1747', 'PH', 'Northern Samar', '6406', 'Victoria');
INSERT INTO `AddressComplete` VALUES ('1748', 'PH', 'Nueva Ecija', '3111', 'Aliaga');
INSERT INTO `AddressComplete` VALUES ('1749', 'PH', 'Nueva Ecija', '3128', 'Bongabon');
INSERT INTO `AddressComplete` VALUES ('1750', 'PH', 'Nueva Ecija', '3100', 'Cabanatuan City');
INSERT INTO `AddressComplete` VALUES ('1751', 'PH', 'Nueva Ecija', '3107', 'Cabiao');
INSERT INTO `AddressComplete` VALUES ('1752', 'PH', 'Nueva Ecija', '3123', 'Carranglan');
INSERT INTO `AddressComplete` VALUES ('1753', 'PH', 'Nueva Ecija', '3120', 'Central Luzon State University');
INSERT INTO `AddressComplete` VALUES ('1754', 'PH', 'Nueva Ecija', '3117', 'Cuyapo');
INSERT INTO `AddressComplete` VALUES ('1755', 'PH', 'Nueva Ecija', '3130', 'Fort Magsaysay');
INSERT INTO `AddressComplete` VALUES ('1756', 'PH', 'Nueva Ecija', '3131', 'Gabaldon');
INSERT INTO `AddressComplete` VALUES ('1757', 'PH', 'Nueva Ecija', '3105', 'Gapan City');
INSERT INTO `AddressComplete` VALUES ('1758', 'PH', 'Nueva Ecija', '3125', 'General M. Natividad');
INSERT INTO `AddressComplete` VALUES ('1759', 'PH', 'Nueva Ecija', '3104', 'General Tinio');
INSERT INTO `AddressComplete` VALUES ('1760', 'PH', 'Nueva Ecija', '3115', 'Guimba');
INSERT INTO `AddressComplete` VALUES ('1761', 'PH', 'Nueva Ecija', '3109', 'Jaen');
INSERT INTO `AddressComplete` VALUES ('1762', 'PH', 'Nueva Ecija', '3129', 'Laur');
INSERT INTO `AddressComplete` VALUES ('1763', 'PH', 'Nueva Ecija', '3112', 'Licab');
INSERT INTO `AddressComplete` VALUES ('1764', 'PH', 'Nueva Ecija', '3126', 'Llanera');
INSERT INTO `AddressComplete` VALUES ('1765', 'PH', 'Nueva Ecija', '3122', 'Lupao');
INSERT INTO `AddressComplete` VALUES ('1766', 'PH', 'Nueva Ecija', '3119', 'Science City of Muñoz');
INSERT INTO `AddressComplete` VALUES ('1767', 'PH', 'Nueva Ecija', '3116', 'Nampicuan');
INSERT INTO `AddressComplete` VALUES ('1768', 'PH', 'Nueva Ecija', '3132', 'Palayan City');
INSERT INTO `AddressComplete` VALUES ('1769', 'PH', 'Nueva Ecija', '3124', 'Pantabangan');
INSERT INTO `AddressComplete` VALUES ('1770', 'PH', 'Nueva Ecija', '3103', 'Peñaranda');
INSERT INTO `AddressComplete` VALUES ('1771', 'PH', 'Nueva Ecija', '3113', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('1772', 'PH', 'Nueva Ecija', '3127', 'Rizal');
INSERT INTO `AddressComplete` VALUES ('1773', 'PH', 'Nueva Ecija', '3108', 'San Antonio');
INSERT INTO `AddressComplete` VALUES ('1774', 'PH', 'Nueva Ecija', '3106', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('1775', 'PH', 'Nueva Ecija', '3121', 'San Jose City');
INSERT INTO `AddressComplete` VALUES ('1776', 'PH', 'Nueva Ecija', '3102', 'San Leonardo');
INSERT INTO `AddressComplete` VALUES ('1777', 'PH', 'Nueva Ecija', '3101', 'Santa Rosa');
INSERT INTO `AddressComplete` VALUES ('1778', 'PH', 'Nueva Ecija', '3133', 'Santo Domingo');
INSERT INTO `AddressComplete` VALUES ('1779', 'PH', 'Nueva Ecija', '3114', 'Talavera');
INSERT INTO `AddressComplete` VALUES ('1780', 'PH', 'Nueva Ecija', '3118', 'Talugtog');
INSERT INTO `AddressComplete` VALUES ('1781', 'PH', 'Nueva Ecija', '3110', 'Zaragoza');
INSERT INTO `AddressComplete` VALUES ('1782', 'PH', 'Nueva Vizcaya', '3714', 'Alfonso Castañeda');
INSERT INTO `AddressComplete` VALUES ('1783', 'PH', 'Nueva Vizcaya', '3701', 'Ambaguio');
INSERT INTO `AddressComplete` VALUES ('1784', 'PH', 'Nueva Vizcaya', '3704', 'Aritao');
INSERT INTO `AddressComplete` VALUES ('1785', 'PH', 'Nueva Vizcaya', '3711', 'Bagabag');
INSERT INTO `AddressComplete` VALUES ('1786', 'PH', 'Nueva Vizcaya', '3702', 'Bambang');
INSERT INTO `AddressComplete` VALUES ('1787', 'PH', 'Nueva Vizcaya', '3700', 'Bayombong');
INSERT INTO `AddressComplete` VALUES ('1788', 'PH', 'Nueva Vizcaya', '3712', 'Diadi');
INSERT INTO `AddressComplete` VALUES ('1789', 'PH', 'Nueva Vizcaya', '3706', 'Dupax del Norte');
INSERT INTO `AddressComplete` VALUES ('1790', 'PH', 'Nueva Vizcaya', '3707', 'Dupax del Sur');
INSERT INTO `AddressComplete` VALUES ('1791', 'PH', 'Nueva Vizcaya', '3703', 'Kasibu');
INSERT INTO `AddressComplete` VALUES ('1792', 'PH', 'Nueva Vizcaya', '3708', 'Kayapa');
INSERT INTO `AddressComplete` VALUES ('1793', 'PH', 'Nueva Vizcaya', '3714', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('1794', 'PH', 'Nueva Vizcaya', '3709', 'Solano');
INSERT INTO `AddressComplete` VALUES ('1795', 'PH', 'Nueva Vizcaya', '3705', 'Santa Fe (Imugan)');
INSERT INTO `AddressComplete` VALUES ('1796', 'PH', 'Nueva Vizcaya', '3710', 'Villa Verde (Ibung)');
INSERT INTO `AddressComplete` VALUES ('1797', 'PH', 'Occidental Mindoro', '5108', 'Abra de Ilog');
INSERT INTO `AddressComplete` VALUES ('1798', 'PH', 'Occidental Mindoro', '5102', 'Calintaan');
INSERT INTO `AddressComplete` VALUES ('1799', 'PH', 'Occidental Mindoro', '5111', 'Looc');
INSERT INTO `AddressComplete` VALUES ('1800', 'PH', 'Occidental Mindoro', '5109', 'Lubang');
INSERT INTO `AddressComplete` VALUES ('1801', 'PH', 'Occidental Mindoro', '5101', 'Magsaysay');
INSERT INTO `AddressComplete` VALUES ('1802', 'PH', 'Occidental Mindoro', '5106', 'Mamburao');
INSERT INTO `AddressComplete` VALUES ('1803', 'PH', 'Occidental Mindoro', '5107', 'Paluan');
INSERT INTO `AddressComplete` VALUES ('1804', 'PH', 'Occidental Mindoro', '5103', 'Rizal');
INSERT INTO `AddressComplete` VALUES ('1805', 'PH', 'Occidental Mindoro', '5104', 'Sablayan');
INSERT INTO `AddressComplete` VALUES ('1806', 'PH', 'Occidental Mindoro', '5100', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1807', 'PH', 'Occidental Mindoro', '5105', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('1808', 'PH', 'Occidental Mindoro', '5110', 'Tilik');
INSERT INTO `AddressComplete` VALUES ('1809', 'PH', 'Oriental Mindoro', '5201', 'Baco');
INSERT INTO `AddressComplete` VALUES ('1810', 'PH', 'Oriental Mindoro', '5210', 'Bansud');
INSERT INTO `AddressComplete` VALUES ('1811', 'PH', 'Oriental Mindoro', '5211', 'Bongabon');
INSERT INTO `AddressComplete` VALUES ('1812', 'PH', 'Oriental Mindoro', '5214', 'Bulalacao');
INSERT INTO `AddressComplete` VALUES ('1813', 'PH', 'Oriental Mindoro', '5200', 'Calapan');
INSERT INTO `AddressComplete` VALUES ('1814', 'PH', 'Oriental Mindoro', '5209', 'Gloria');
INSERT INTO `AddressComplete` VALUES ('1815', 'PH', 'Oriental Mindoro', '5213', 'Mansalay');
INSERT INTO `AddressComplete` VALUES ('1816', 'PH', 'Oriental Mindoro', '5204', 'Naujan');
INSERT INTO `AddressComplete` VALUES ('1817', 'PH', 'Oriental Mindoro', '5208', 'Pinamalayan');
INSERT INTO `AddressComplete` VALUES ('1818', 'PH', 'Oriental Mindoro', '5206', 'Pola');
INSERT INTO `AddressComplete` VALUES ('1819', 'PH', 'Oriental Mindoro', '5203', 'Puerto Galera');
INSERT INTO `AddressComplete` VALUES ('1820', 'PH', 'Oriental Mindoro', '5212', 'Roxas');
INSERT INTO `AddressComplete` VALUES ('1821', 'PH', 'Oriental Mindoro', '5202', 'San Teodoro');
INSERT INTO `AddressComplete` VALUES ('1822', 'PH', 'Oriental Mindoro', '5207', 'Socorro');
INSERT INTO `AddressComplete` VALUES ('1823', 'PH', 'Oriental Mindoro', '5205', 'Victoria');
INSERT INTO `AddressComplete` VALUES ('1824', 'PH', 'Palawan', '5300', 'Puerto Princesa');
INSERT INTO `AddressComplete` VALUES ('1825', 'PH', 'Palawan', '5301', 'Iwahig Penal Colony');
INSERT INTO `AddressComplete` VALUES ('1826', 'PH', 'Palawan', '5302', 'Aborlan');
INSERT INTO `AddressComplete` VALUES ('1827', 'PH', 'Palawan', '5303', 'Narra (Panacan)');
INSERT INTO `AddressComplete` VALUES ('1828', 'PH', 'Palawan', '5304', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('1829', 'PH', 'Palawan', '5305', 'Brooke\'s Point');
INSERT INTO `AddressComplete` VALUES ('1830', 'PH', 'Palawan', '5306', 'Bataraza');
INSERT INTO `AddressComplete` VALUES ('1831', 'PH', 'Palawan', '5307', 'Balabac');
INSERT INTO `AddressComplete` VALUES ('1832', 'PH', 'Palawan', '5308', 'Roxas');
INSERT INTO `AddressComplete` VALUES ('1833', 'PH', 'Palawan', '5309', 'San Vicente');
INSERT INTO `AddressComplete` VALUES ('1834', 'PH', 'Palawan', '5310', 'Dumaran');
INSERT INTO `AddressComplete` VALUES ('1835', 'PH', 'Palawan', '5311', 'Araceli');
INSERT INTO `AddressComplete` VALUES ('1836', 'PH', 'Palawan', '5312', 'Taytay');
INSERT INTO `AddressComplete` VALUES ('1837', 'PH', 'Palawan', '5313', 'El Nido (Bacuit)');
INSERT INTO `AddressComplete` VALUES ('1838', 'PH', 'Palawan', '5314', 'Linapacan');
INSERT INTO `AddressComplete` VALUES ('1839', 'PH', 'Palawan', '5315', 'Culion');
INSERT INTO `AddressComplete` VALUES ('1840', 'PH', 'Palawan', '5316', 'Coron');
INSERT INTO `AddressComplete` VALUES ('1841', 'PH', 'Palawan', '5317', 'Busuanga');
INSERT INTO `AddressComplete` VALUES ('1842', 'PH', 'Palawan', '5318', 'Cuyo');
INSERT INTO `AddressComplete` VALUES ('1843', 'PH', 'Palawan', '5319', 'Magsaysay');
INSERT INTO `AddressComplete` VALUES ('1844', 'PH', 'Palawan', '5320', 'Agutaya');
INSERT INTO `AddressComplete` VALUES ('1845', 'PH', 'Palawan', '5321', 'Cagayancillo');
INSERT INTO `AddressComplete` VALUES ('1846', 'PH', 'Palawan', '5322', 'Kalayaan');
INSERT INTO `AddressComplete` VALUES ('1847', 'PH', 'Pampanga', '2009', 'Angeles City/Clark Special Economic ZoneBalibago a Barangay in Angeles city has its own zip code 2024');
INSERT INTO `AddressComplete` VALUES ('1848', 'PH', 'Pampanga', '2016', 'Apalit');
INSERT INTO `AddressComplete` VALUES ('1849', 'PH', 'Pampanga', '2012', 'Arayat');
INSERT INTO `AddressComplete` VALUES ('1850', 'PH', 'Pampanga', '2001', 'Bacolor');
INSERT INTO `AddressComplete` VALUES ('1851', 'PH', 'Pampanga', '2007', 'Basa Airbase');
INSERT INTO `AddressComplete` VALUES ('1852', 'PH', 'Pampanga', '2013', 'Candaba');
INSERT INTO `AddressComplete` VALUES ('1853', 'PH', 'Pampanga', '2006', 'Floridablanca');
INSERT INTO `AddressComplete` VALUES ('1854', 'PH', 'Pampanga', '2003', 'Guagua');
INSERT INTO `AddressComplete` VALUES ('1855', 'PH', 'Pampanga', '2005', 'Lubao');
INSERT INTO `AddressComplete` VALUES ('1856', 'PH', 'Pampanga', '2010', 'Mabalacat');
INSERT INTO `AddressComplete` VALUES ('1857', 'PH', 'Pampanga', '2018', 'Macabebe');
INSERT INTO `AddressComplete` VALUES ('1858', 'PH', 'Pampanga', '2011', 'Magalang');
INSERT INTO `AddressComplete` VALUES ('1859', 'PH', 'Pampanga', '2017', 'Masantol');
INSERT INTO `AddressComplete` VALUES ('1860', 'PH', 'Pampanga', '2021', 'Mexico');
INSERT INTO `AddressComplete` VALUES ('1861', 'PH', 'Pampanga', '2019', 'Minalin');
INSERT INTO `AddressComplete` VALUES ('1862', 'PH', 'Pampanga', '2008', 'Porac');
INSERT INTO `AddressComplete` VALUES ('1863', 'PH', 'Pampanga', '2000', 'City of San Fernando');
INSERT INTO `AddressComplete` VALUES ('1864', 'PH', 'Pampanga', '2014', 'San Luis');
INSERT INTO `AddressComplete` VALUES ('1865', 'PH', 'Pampanga', '2015', 'San Simon');
INSERT INTO `AddressComplete` VALUES ('1866', 'PH', 'Pampanga', '2022', 'Santa Ana');
INSERT INTO `AddressComplete` VALUES ('1867', 'PH', 'Pampanga', '2002', 'Santa Rita');
INSERT INTO `AddressComplete` VALUES ('1868', 'PH', 'Pampanga', '2020', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('1869', 'PH', 'Pampanga', '2004', 'Sasmuan (Sexmoan)');
INSERT INTO `AddressComplete` VALUES ('1870', 'PH', 'Pangasinan', '2408', 'Agno');
INSERT INTO `AddressComplete` VALUES ('1871', 'PH', 'Pangasinan', '2415', 'Aguilar');
INSERT INTO `AddressComplete` VALUES ('1872', 'PH', 'Pangasinan', '2404', 'Alaminos');
INSERT INTO `AddressComplete` VALUES ('1873', 'PH', 'Pangasinan', '2425', 'Alcala');
INSERT INTO `AddressComplete` VALUES ('1874', 'PH', 'Pangasinan', '2405', 'Anda');
INSERT INTO `AddressComplete` VALUES ('1875', 'PH', 'Pangasinan', '2439', 'Asingan');
INSERT INTO `AddressComplete` VALUES ('1876', 'PH', 'Pangasinan', '2442', 'Balungao');
INSERT INTO `AddressComplete` VALUES ('1877', 'PH', 'Pangasinan', '2407', 'Bani');
INSERT INTO `AddressComplete` VALUES ('1878', 'PH', 'Pangasinan', '2422', 'Basista');
INSERT INTO `AddressComplete` VALUES ('1879', 'PH', 'Pangasinan', '2424', 'Bautista');
INSERT INTO `AddressComplete` VALUES ('1880', 'PH', 'Pangasinan', '2423', 'Bayambang');
INSERT INTO `AddressComplete` VALUES ('1881', 'PH', 'Pangasinan', '2436', 'Binalonan');
INSERT INTO `AddressComplete` VALUES ('1882', 'PH', 'Pangasinan', '2417', 'Binmaley');
INSERT INTO `AddressComplete` VALUES ('1883', 'PH', 'Pangasinan', '2406', 'Bolinao');
INSERT INTO `AddressComplete` VALUES ('1884', 'PH', 'Pangasinan', '2416', 'Bugallon');
INSERT INTO `AddressComplete` VALUES ('1885', 'PH', 'Pangasinan', '2410', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('1886', 'PH', 'Pangasinan', '2418', 'Calasiao');
INSERT INTO `AddressComplete` VALUES ('1887', 'PH', 'Pangasinan', '2400', 'Dagupan City');
INSERT INTO `AddressComplete` VALUES ('1888', 'PH', 'Pangasinan', '2411', 'Dasol');
INSERT INTO `AddressComplete` VALUES ('1889', 'PH', 'Pangasinan', '2412', 'Infanta');
INSERT INTO `AddressComplete` VALUES ('1890', 'PH', 'Pangasinan', '2402', 'Labrador');
INSERT INTO `AddressComplete` VALUES ('1891', 'PH', 'Pangasinan', '2437', 'Laoac');
INSERT INTO `AddressComplete` VALUES ('1892', 'PH', 'Pangasinan', '2401', 'Lingayen');
INSERT INTO `AddressComplete` VALUES ('1893', 'PH', 'Pangasinan', '2409', 'Mabini');
INSERT INTO `AddressComplete` VALUES ('1894', 'PH', 'Pangasinan', '2421', 'Malasiqui');
INSERT INTO `AddressComplete` VALUES ('1895', 'PH', 'Pangasinan', '2430', 'Manaoag');
INSERT INTO `AddressComplete` VALUES ('1896', 'PH', 'Pangasinan', '2432', 'Mangaldan');
INSERT INTO `AddressComplete` VALUES ('1897', 'PH', 'Pangasinan', '2413', 'Mangatarem');
INSERT INTO `AddressComplete` VALUES ('1898', 'PH', 'Pangasinan', '2429', 'Mapandan');
INSERT INTO `AddressComplete` VALUES ('1899', 'PH', 'Pangasinan', '2446', 'Natividad');
INSERT INTO `AddressComplete` VALUES ('1900', 'PH', 'Pangasinan', '2435', 'Pozorrubio');
INSERT INTO `AddressComplete` VALUES ('1901', 'PH', 'Pangasinan', '2441', 'Rosales');
INSERT INTO `AddressComplete` VALUES ('1902', 'PH', 'Pangasinan', '2420', 'San Carlos City');
INSERT INTO `AddressComplete` VALUES ('1903', 'PH', 'Pangasinan', '2433', 'San Fabian');
INSERT INTO `AddressComplete` VALUES ('1904', 'PH', 'Pangasinan', '2431', 'San Jacinto');
INSERT INTO `AddressComplete` VALUES ('1905', 'PH', 'Pangasinan', '2438', 'San Manuel');
INSERT INTO `AddressComplete` VALUES ('1906', 'PH', 'Pangasinan', '2447', 'San Nicolas');
INSERT INTO `AddressComplete` VALUES ('1907', 'PH', 'Pangasinan', '2444', 'San Quintin');
INSERT INTO `AddressComplete` VALUES ('1908', 'PH', 'Pangasinan', '2419', 'Santa Barbara');
INSERT INTO `AddressComplete` VALUES ('1909', 'PH', 'Pangasinan', '2440', 'Santa Maria');
INSERT INTO `AddressComplete` VALUES ('1910', 'PH', 'Pangasinan', '2426', 'Santo Tomas');
INSERT INTO `AddressComplete` VALUES ('1911', 'PH', 'Pangasinan', '2434', 'Sison');
INSERT INTO `AddressComplete` VALUES ('1912', 'PH', 'Pangasinan', '2403', 'Sual');
INSERT INTO `AddressComplete` VALUES ('1913', 'PH', 'Pangasinan', '2445', 'Tayug');
INSERT INTO `AddressComplete` VALUES ('1914', 'PH', 'Pangasinan', '2443', 'Umingan');
INSERT INTO `AddressComplete` VALUES ('1915', 'PH', 'Pangasinan', '2414', 'Urbiztondo');
INSERT INTO `AddressComplete` VALUES ('1916', 'PH', 'Pangasinan', '2428', 'Urdaneta');
INSERT INTO `AddressComplete` VALUES ('1917', 'PH', 'Pangasinan', '2427', 'Villasis');
INSERT INTO `AddressComplete` VALUES ('1918', 'PH', 'Quezon', '4304', 'Agdangan');
INSERT INTO `AddressComplete` VALUES ('1919', 'PH', 'Quezon', '4333', 'Alabat');
INSERT INTO `AddressComplete` VALUES ('1920', 'PH', 'Quezon', '4331', 'Atimonan');
INSERT INTO `AddressComplete` VALUES ('1921', 'PH', 'Quezon', '4320', 'Buenavista');
INSERT INTO `AddressComplete` VALUES ('1922', 'PH', 'Quezon', '4340', 'Burdeos');
INSERT INTO `AddressComplete` VALUES ('1923', 'PH', 'Quezon', '4318', 'Calauag');
INSERT INTO `AddressComplete` VALUES ('1924', 'PH', 'Quezon', '4323', 'Candelaria');
INSERT INTO `AddressComplete` VALUES ('1925', 'PH', 'Quezon', '4311', 'Catanauan');
INSERT INTO `AddressComplete` VALUES ('1926', 'PH', 'Quezon', '4326', 'Dolores');
INSERT INTO `AddressComplete` VALUES ('1927', 'PH', 'Quezon', '4310', 'General Antonio Luna');
INSERT INTO `AddressComplete` VALUES ('1928', 'PH', 'Quezon', '4338', 'General Nakar');
INSERT INTO `AddressComplete` VALUES ('1929', 'PH', 'Quezon', '4319', 'Guinayangan');
INSERT INTO `AddressComplete` VALUES ('1930', 'PH', 'Quezon', '4307', 'Gumaca');
INSERT INTO `AddressComplete` VALUES ('1931', 'PH', 'Quezon', '4317', 'Hondagua');
INSERT INTO `AddressComplete` VALUES ('1932', 'PH', 'Quezon', '4336', 'Infanta');
INSERT INTO `AddressComplete` VALUES ('1933', 'PH', 'Quezon', '4342', 'Jomalig');
INSERT INTO `AddressComplete` VALUES ('1934', 'PH', 'Quezon', '4316', 'Lopez');
INSERT INTO `AddressComplete` VALUES ('1935', 'PH', 'Quezon', '4328', 'Lucban');
INSERT INTO `AddressComplete` VALUES ('1936', 'PH', 'Quezon', '4301', 'Lucena City');
INSERT INTO `AddressComplete` VALUES ('1937', 'PH', 'Quezon', '4309', 'Macalelon');
INSERT INTO `AddressComplete` VALUES ('1938', 'PH', 'Quezon', '4330', 'Mauban');
INSERT INTO `AddressComplete` VALUES ('1939', 'PH', 'Quezon', '4312', 'Mulanay');
INSERT INTO `AddressComplete` VALUES ('1940', 'PH', 'Quezon', '4303', 'Padre Burgos');
INSERT INTO `AddressComplete` VALUES ('1941', 'PH', 'Quezon', '4302', 'Pagbilao');
INSERT INTO `AddressComplete` VALUES ('1942', 'PH', 'Quezon', '4337', 'Panukulan');
INSERT INTO `AddressComplete` VALUES ('1943', 'PH', 'Quezon', '4341', 'Patnanungan');
INSERT INTO `AddressComplete` VALUES ('1944', 'PH', 'Quezon', '4334', 'Perez');
INSERT INTO `AddressComplete` VALUES ('1945', 'PH', 'Quezon', '4308', 'Pitogo');
INSERT INTO `AddressComplete` VALUES ('1946', 'PH', 'Quezon', '4306', 'Plaridel');
INSERT INTO `AddressComplete` VALUES ('1947', 'PH', 'Quezon', '4339', 'Polilio');
INSERT INTO `AddressComplete` VALUES ('1948', 'PH', 'Quezon', '4332', 'Quezon');
INSERT INTO `AddressComplete` VALUES ('1949', 'PH', 'Quezon', '4300', 'Provincial Capitol, Lucena City');
INSERT INTO `AddressComplete` VALUES ('1950', 'PH', 'Quezon', '4335', 'Real');
INSERT INTO `AddressComplete` VALUES ('1951', 'PH', 'Quezon', '4329', 'Sampaloc');
INSERT INTO `AddressComplete` VALUES ('1952', 'PH', 'Quezon', '4314', 'San Andres');
INSERT INTO `AddressComplete` VALUES ('1953', 'PH', 'Quezon', '4324', 'San Antonio');
INSERT INTO `AddressComplete` VALUES ('1954', 'PH', 'Quezon', '4315', 'San Francisco (Aurora)');
INSERT INTO `AddressComplete` VALUES ('1955', 'PH', 'Quezon', '4313', 'San Narciso');
INSERT INTO `AddressComplete` VALUES ('1956', 'PH', 'Quezon', '4322', 'Sariaya');
INSERT INTO `AddressComplete` VALUES ('1957', 'PH', 'Quezon', '4321', 'Tagkawayan');
INSERT INTO `AddressComplete` VALUES ('1958', 'PH', 'Quezon', '4327', 'Tayabas');
INSERT INTO `AddressComplete` VALUES ('1959', 'PH', 'Quezon', '4325', 'Tiaong');
INSERT INTO `AddressComplete` VALUES ('1960', 'PH', 'Quezon', '4305', 'Unisan');
INSERT INTO `AddressComplete` VALUES ('1961', 'PH', 'Quirino', '3400', 'Cabarroguis');
INSERT INTO `AddressComplete` VALUES ('1962', 'PH', 'Quirino', '3401', 'Diffun');
INSERT INTO `AddressComplete` VALUES ('1963', 'PH', 'Quirino', '3402', 'Saguday');
INSERT INTO `AddressComplete` VALUES ('1964', 'PH', 'Quirino', '3403', 'Aglipay');
INSERT INTO `AddressComplete` VALUES ('1965', 'PH', 'Quirino', '3404', 'Maddela');
INSERT INTO `AddressComplete` VALUES ('1966', 'PH', 'Quirino', '3405', 'Nagtipunan (Abbag)');
INSERT INTO `AddressComplete` VALUES ('1967', 'PH', 'Rizal', '1850', 'San Mateo');
INSERT INTO `AddressComplete` VALUES ('1968', 'PH', 'Rizal', '1860', 'Rodriguez');
INSERT INTO `AddressComplete` VALUES ('1969', 'PH', 'Rizal', '1870', 'Antipolo City');
INSERT INTO `AddressComplete` VALUES ('1970', 'PH', 'Rizal', '1880', 'Teresa');
INSERT INTO `AddressComplete` VALUES ('1971', 'PH', 'Rizal', '1900', 'Cainta');
INSERT INTO `AddressComplete` VALUES ('1972', 'PH', 'Rizal', '1910', 'Pililla');
INSERT INTO `AddressComplete` VALUES ('1973', 'PH', 'Rizal', '1920', 'Taytay');
INSERT INTO `AddressComplete` VALUES ('1974', 'PH', 'Rizal', '1930', 'Angono');
INSERT INTO `AddressComplete` VALUES ('1975', 'PH', 'Rizal', '1940', 'Binangonan');
INSERT INTO `AddressComplete` VALUES ('1976', 'PH', 'Rizal', '1950', 'Cardona');
INSERT INTO `AddressComplete` VALUES ('1977', 'PH', 'Rizal', '1960', 'Morong');
INSERT INTO `AddressComplete` VALUES ('1978', 'PH', 'Rizal', '1970', 'Baras');
INSERT INTO `AddressComplete` VALUES ('1979', 'PH', 'Rizal', '1980', 'Tanay');
INSERT INTO `AddressComplete` VALUES ('1980', 'PH', 'Rizal', '1900', 'Jalajala');
INSERT INTO `AddressComplete` VALUES ('1981', 'PH', 'Romblon', '5509', 'Alcantara');
INSERT INTO `AddressComplete` VALUES ('1982', 'PH', 'Romblon', '5515', 'Banton (Jones)');
INSERT INTO `AddressComplete` VALUES ('1983', 'PH', 'Romblon', '5512', 'Cajidiocan');
INSERT INTO `AddressComplete` VALUES ('1984', 'PH', 'Romblon', '5503', 'Calatrava');
INSERT INTO `AddressComplete` VALUES ('1985', 'PH', 'Romblon', '5516', 'Concepcion');
INSERT INTO `AddressComplete` VALUES ('1986', 'PH', 'Romblon', '5514', 'Corcuera');
INSERT INTO `AddressComplete` VALUES ('1987', 'PH', 'Romblon', '5506', 'Ferrol');
INSERT INTO `AddressComplete` VALUES ('1988', 'PH', 'Romblon', '5502', 'Imelda');
INSERT INTO `AddressComplete` VALUES ('1989', 'PH', 'Romblon', '5507', 'Looc');
INSERT INTO `AddressComplete` VALUES ('1990', 'PH', 'Romblon', '5511', 'Magdiwang');
INSERT INTO `AddressComplete` VALUES ('1991', 'PH', 'Romblon', '5505', 'Odiongan');
INSERT INTO `AddressComplete` VALUES ('1992', 'PH', 'Romblon', '5500', 'Romblon');
INSERT INTO `AddressComplete` VALUES ('1993', 'PH', 'Romblon', '5501', 'San Agustin');
INSERT INTO `AddressComplete` VALUES ('1994', 'PH', 'Romblon', '5504', 'San Andres');
INSERT INTO `AddressComplete` VALUES ('1995', 'PH', 'Romblon', '5513', 'San Fernando');
INSERT INTO `AddressComplete` VALUES ('1996', 'PH', 'Romblon', '5510', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('1997', 'PH', 'Romblon', '5508', 'Santa Fe');
INSERT INTO `AddressComplete` VALUES ('1998', 'PH', 'Sarangani', '9501', 'Alabel');
INSERT INTO `AddressComplete` VALUES ('1999', 'PH', 'Sarangani', '9517', 'Glan');
INSERT INTO `AddressComplete` VALUES ('2000', 'PH', 'Sarangani', '9514', 'Kiamba');
INSERT INTO `AddressComplete` VALUES ('2001', 'PH', 'Sarangani', '9502', 'Maasim');
INSERT INTO `AddressComplete` VALUES ('2002', 'PH', 'Sarangani', '9515', 'Maitum');
INSERT INTO `AddressComplete` VALUES ('2003', 'PH', 'Sarangani', '9516', 'Malapatan');
INSERT INTO `AddressComplete` VALUES ('2004', 'PH', 'Sarangani', '9503', 'Malungon');
INSERT INTO `AddressComplete` VALUES ('2005', 'PH', 'Shariff Kabunsuan', '9614', 'Barira');
INSERT INTO `AddressComplete` VALUES ('2006', 'PH', 'Shariff Kabunsuan', '9615', 'Buldon');
INSERT INTO `AddressComplete` VALUES ('2007', 'PH', 'Shariff Kabunsuan', '9601', 'Datu Odin Sinsuat (Dinaig)');
INSERT INTO `AddressComplete` VALUES ('2008', 'PH', 'Shariff Kabunsuan', '9606', 'Kabuntalan/Northern Kabuntalan');
INSERT INTO `AddressComplete` VALUES ('2009', 'PH', 'Shariff Kabunsuan', '9613', 'Matanog');
INSERT INTO `AddressComplete` VALUES ('2010', 'PH', 'Shariff Kabunsuan', '9604', 'Parang');
INSERT INTO `AddressComplete` VALUES ('2011', 'PH', 'Shariff Kabunsuan', '9605', 'Sultan Kudarat/Sultan Mastura');
INSERT INTO `AddressComplete` VALUES ('2012', 'PH', 'Shariff Kabunsuan', '9602', 'Upi/Datu Blah T. Sinsuat');
INSERT INTO `AddressComplete` VALUES ('2013', 'PH', 'Shariff Kabunsuan', '9603', 'Ampatuan City');
INSERT INTO `AddressComplete` VALUES ('2014', 'PH', 'Siquijor', '6230', 'Enrique Villanueva');
INSERT INTO `AddressComplete` VALUES ('2015', 'PH', 'Siquijor', '6226', 'Larena');
INSERT INTO `AddressComplete` VALUES ('2016', 'PH', 'Siquijor', '6228', 'Lazi');
INSERT INTO `AddressComplete` VALUES ('2017', 'PH', 'Siquijor', '6229', 'Maria');
INSERT INTO `AddressComplete` VALUES ('2018', 'PH', 'Siquijor', '6227', 'San Juan');
INSERT INTO `AddressComplete` VALUES ('2019', 'PH', 'Siquijor', '6225', 'Siquij');
INSERT INTO `AddressComplete` VALUES ('2020', 'PH', 'Sorsogon', '4701', 'Bacon');
INSERT INTO `AddressComplete` VALUES ('2021', 'PH', 'Sorsogon', '4712', 'Barcelona');
INSERT INTO `AddressComplete` VALUES ('2022', 'PH', 'Sorsogon', '4706', 'Bulan');
INSERT INTO `AddressComplete` VALUES ('2023', 'PH', 'Sorsogon', '4704', 'Bulusan');
INSERT INTO `AddressComplete` VALUES ('2024', 'PH', 'Sorsogon', '4702', 'Casiguran');
INSERT INTO `AddressComplete` VALUES ('2025', 'PH', 'Sorsogon', '4713', 'Castilla');
INSERT INTO `AddressComplete` VALUES ('2026', 'PH', 'Sorsogon', '4715', 'Donsol');
INSERT INTO `AddressComplete` VALUES ('2027', 'PH', 'Sorsogon', '4710', 'Gubat');
INSERT INTO `AddressComplete` VALUES ('2028', 'PH', 'Sorsogon', '4707', 'Irosin');
INSERT INTO `AddressComplete` VALUES ('2029', 'PH', 'Sorsogon', '4703', 'Juban');
INSERT INTO `AddressComplete` VALUES ('2030', 'PH', 'Sorsogon', '4705', 'Magallanes');
INSERT INTO `AddressComplete` VALUES ('2031', 'PH', 'Sorsogon', '4708', 'Matnog');
INSERT INTO `AddressComplete` VALUES ('2032', 'PH', 'Sorsogon', '4714', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('2033', 'PH', 'Sorsogon', '4711', 'Prieto Diaz');
INSERT INTO `AddressComplete` VALUES ('2034', 'PH', 'Sorsogon', '4709', 'Santa Magdalena');
INSERT INTO `AddressComplete` VALUES ('2035', 'PH', 'Sorsogon', '4700', 'Sorsogon');
INSERT INTO `AddressComplete` VALUES ('2036', 'PH', 'South Cotabato', '9511', 'Banga');
INSERT INTO `AddressComplete` VALUES ('2037', 'PH', 'South Cotabato', '9500', 'General Santos City (Dadiangas)');
INSERT INTO `AddressComplete` VALUES ('2038', 'PH', 'South Cotabato', '9506', 'Koronadal City');
INSERT INTO `AddressComplete` VALUES ('2039', 'PH', 'South Cotabato', '9508', 'Norala');
INSERT INTO `AddressComplete` VALUES ('2040', 'PH', 'South Cotabato', '9504', 'Polomolok');
INSERT INTO `AddressComplete` VALUES ('2041', 'PH', 'South Cotabato', '9509', 'Sto. Niño');
INSERT INTO `AddressComplete` VALUES ('2042', 'PH', 'South Cotabato', '9512', 'Surallah');
INSERT INTO `AddressComplete` VALUES ('2043', 'PH', 'South Cotabato', '9507', 'Tampakan');
INSERT INTO `AddressComplete` VALUES ('2044', 'PH', 'South Cotabato', '9510', 'Tantangan');
INSERT INTO `AddressComplete` VALUES ('2045', 'PH', 'South Cotabato', '9513', 'T\'Boli');
INSERT INTO `AddressComplete` VALUES ('2046', 'PH', 'South Cotabato', '9505', 'Tupi');
INSERT INTO `AddressComplete` VALUES ('2047', 'PH', 'Southern Leyte', '6610', 'Anahawan');
INSERT INTO `AddressComplete` VALUES ('2048', 'PH', 'Southern Leyte', '6604', 'Bontoc');
INSERT INTO `AddressComplete` VALUES ('2049', 'PH', 'Southern Leyte', '6608', 'Hinunangan');
INSERT INTO `AddressComplete` VALUES ('2050', 'PH', 'Southern Leyte', '6609', 'Hinundayan');
INSERT INTO `AddressComplete` VALUES ('2051', 'PH', 'Southern Leyte', '6615', 'Libagon');
INSERT INTO `AddressComplete` VALUES ('2052', 'PH', 'Southern Leyte', '6612', 'Liloan');
INSERT INTO `AddressComplete` VALUES ('2053', 'PH', 'Southern Leyte', '6600', 'Maasin');
INSERT INTO `AddressComplete` VALUES ('2054', 'PH', 'Southern Leyte', '6601', 'Macrohon');
INSERT INTO `AddressComplete` VALUES ('2055', 'PH', 'Southern Leyte', '6603', 'Malitbog');
INSERT INTO `AddressComplete` VALUES ('2056', 'PH', 'Southern Leyte', '6602', 'Padre Burgos');
INSERT INTO `AddressComplete` VALUES ('2057', 'PH', 'Southern Leyte', '6614', 'Pintuyan');
INSERT INTO `AddressComplete` VALUES ('2058', 'PH', 'Southern Leyte', '6613', 'San Francisco');
INSERT INTO `AddressComplete` VALUES ('2059', 'PH', 'Southern Leyte', '6611', 'San Juan (Cabalian)');
INSERT INTO `AddressComplete` VALUES ('2060', 'PH', 'Southern Leyte', '6617', 'San Ricardo');
INSERT INTO `AddressComplete` VALUES ('2061', 'PH', 'Southern Leyte', '6607', 'Silago');
INSERT INTO `AddressComplete` VALUES ('2062', 'PH', 'Southern Leyte', '6606', 'Sogod');
INSERT INTO `AddressComplete` VALUES ('2063', 'PH', 'Southern Leyte', '6616', 'St. Bernard');
INSERT INTO `AddressComplete` VALUES ('2064', 'PH', 'Southern Leyte', '6605', 'Tomas Oppus');
INSERT INTO `AddressComplete` VALUES ('2065', 'PH', 'Sultan Kudarat', '9810', 'Bagumbayan');
INSERT INTO `AddressComplete` VALUES ('2066', 'PH', 'Sultan Kudarat', '9801', 'Columbio');
INSERT INTO `AddressComplete` VALUES ('2067', 'PH', 'Sultan Kudarat', '9806', 'Esperanza (Ampatuan)');
INSERT INTO `AddressComplete` VALUES ('2068', 'PH', 'Sultan Kudarat', '9805', 'Isulan');
INSERT INTO `AddressComplete` VALUES ('2069', 'PH', 'Sultan Kudarat', '9808', 'Kalamansig');
INSERT INTO `AddressComplete` VALUES ('2070', 'PH', 'Sultan Kudarat', '9807', 'Lebak (Salaman)');
INSERT INTO `AddressComplete` VALUES ('2071', 'PH', 'Sultan Kudarat', '9803', 'Lutayan');
INSERT INTO `AddressComplete` VALUES ('2072', 'PH', 'Sultan Kudarat', '9802', 'Mariano Marcos');
INSERT INTO `AddressComplete` VALUES ('2073', 'PH', 'Sultan Kudarat', '9809', 'Palimbang');
INSERT INTO `AddressComplete` VALUES ('2074', 'PH', 'Sultan Kudarat', '9804', 'Pres. Quirino');
INSERT INTO `AddressComplete` VALUES ('2075', 'PH', 'Sultan Kudarat', '9811', 'Sen. Ninoy Aquino');
INSERT INTO `AddressComplete` VALUES ('2076', 'PH', 'Sultan Kudarat', '9800', 'Tacurong');
INSERT INTO `AddressComplete` VALUES ('2077', 'PH', 'Sulu', '7407', 'Indanan');
INSERT INTO `AddressComplete` VALUES ('2078', 'PH', 'Sulu', '7400', 'Jolo');
INSERT INTO `AddressComplete` VALUES ('2079', 'PH', 'Sulu', '7416', 'Kalingalan Kalauang');
INSERT INTO `AddressComplete` VALUES ('2080', 'PH', 'Sulu', '7411', 'Lugus');
INSERT INTO `AddressComplete` VALUES ('2081', 'PH', 'Sulu', '7404', 'Luuk');
INSERT INTO `AddressComplete` VALUES ('2082', 'PH', 'Sulu', '7409', 'Maimbung');
INSERT INTO `AddressComplete` VALUES ('2083', 'PH', 'Sulu', '7413', 'Marungas');
INSERT INTO `AddressComplete` VALUES ('2084', 'PH', 'Sulu', '7402', 'Panamao');
INSERT INTO `AddressComplete` VALUES ('2085', 'PH', 'Sulu', '7415', 'Panglima Estino');
INSERT INTO `AddressComplete` VALUES ('2086', 'PH', 'Sulu', '7414', 'Panguntaran');
INSERT INTO `AddressComplete` VALUES ('2087', 'PH', 'Sulu', '7408', 'Parang');
INSERT INTO `AddressComplete` VALUES ('2088', 'PH', 'Sulu', '7405', 'Pata');
INSERT INTO `AddressComplete` VALUES ('2089', 'PH', 'Sulu', '7401', 'Patikul');
INSERT INTO `AddressComplete` VALUES ('2090', 'PH', 'Sulu', '7412', 'Siasi');
INSERT INTO `AddressComplete` VALUES ('2091', 'PH', 'Sulu', '7403', 'Talipao');
INSERT INTO `AddressComplete` VALUES ('2092', 'PH', 'Sulu', '7410', 'Tapul');
INSERT INTO `AddressComplete` VALUES ('2093', 'PH', 'Sulu', '7406', 'Tongkil');
INSERT INTO `AddressComplete` VALUES ('2094', 'PH', 'Surigao del Norte', '8425', 'Alegria');
INSERT INTO `AddressComplete` VALUES ('2095', 'PH', 'Surigao del Norte', '8408', 'Bacuag');
INSERT INTO `AddressComplete` VALUES ('2096', 'PH', 'Surigao del Norte', '8424', 'Burgos');
INSERT INTO `AddressComplete` VALUES ('2097', 'PH', 'Surigao del Norte', '8410', 'Claver');
INSERT INTO `AddressComplete` VALUES ('2098', 'PH', 'Surigao del Norte', '8417', 'Dapa');
INSERT INTO `AddressComplete` VALUES ('2099', 'PH', 'Surigao del Norte', '8418', 'Del Carmen');
INSERT INTO `AddressComplete` VALUES ('2100', 'PH', 'Surigao del Norte', '8419', 'Gen. Luna');
INSERT INTO `AddressComplete` VALUES ('2101', 'PH', 'Surigao del Norte', '8409', 'Gigaquit');
INSERT INTO `AddressComplete` VALUES ('2102', 'PH', 'Surigao del Norte', '8407', 'Mainit');
INSERT INTO `AddressComplete` VALUES ('2103', 'PH', 'Surigao del Norte', '8402', 'Malimano');
INSERT INTO `AddressComplete` VALUES ('2104', 'PH', 'Surigao del Norte', '8420', 'Pilar');
INSERT INTO `AddressComplete` VALUES ('2105', 'PH', 'Surigao del Norte', '8405', 'Placer');
INSERT INTO `AddressComplete` VALUES ('2106', 'PH', 'Surigao del Norte', '8423', 'San Benito');
INSERT INTO `AddressComplete` VALUES ('2107', 'PH', 'Surigao del Norte', '8401', 'San Francisco');
INSERT INTO `AddressComplete` VALUES ('2108', 'PH', 'Surigao del Norte', '8421', 'San Isidro');
INSERT INTO `AddressComplete` VALUES ('2109', 'PH', 'Surigao del Norte', '8422', 'Santa Monica');
INSERT INTO `AddressComplete` VALUES ('2110', 'PH', 'Surigao del Norte', '8404', 'Sison');
INSERT INTO `AddressComplete` VALUES ('2111', 'PH', 'Surigao del Norte', '8416', 'Socorro');
INSERT INTO `AddressComplete` VALUES ('2112', 'PH', 'Surigao del Norte', '8400', 'Surigao City');
INSERT INTO `AddressComplete` VALUES ('2113', 'PH', 'Surigao del Norte', '8403', 'Tagana-an');
INSERT INTO `AddressComplete` VALUES ('2114', 'PH', 'Surigao del Norte', '8406', 'Tubod');
INSERT INTO `AddressComplete` VALUES ('2115', 'PH', 'Surigao del Sur', '8309', 'Barobo');
INSERT INTO `AddressComplete` VALUES ('2116', 'PH', 'Surigao del Sur', '8303', 'Bayabas');
INSERT INTO `AddressComplete` VALUES ('2117', 'PH', 'Surigao del Sur', '8311', 'Bislig');
INSERT INTO `AddressComplete` VALUES ('2118', 'PH', 'Surigao del Sur', '8304', 'Cagwait');
INSERT INTO `AddressComplete` VALUES ('2119', 'PH', 'Surigao del Sur', '8317', 'Cantillan');
INSERT INTO `AddressComplete` VALUES ('2120', 'PH', 'Surigao del Sur', '8315', 'Carmen');
INSERT INTO `AddressComplete` VALUES ('2121', 'PH', 'Surigao del Sur', '8318', 'Carrascal');
INSERT INTO `AddressComplete` VALUES ('2122', 'PH', 'Surigao del Sur', '8313', 'Cortez');
INSERT INTO `AddressComplete` VALUES ('2123', 'PH', 'Surigao del Sur', '8310', 'Hinatuan');
INSERT INTO `AddressComplete` VALUES ('2124', 'PH', 'Surigao del Sur', '8314', 'Lanuza');
INSERT INTO `AddressComplete` VALUES ('2125', 'PH', 'Surigao del Sur', '8307', 'Lianga');
INSERT INTO `AddressComplete` VALUES ('2126', 'PH', 'Surigao del Sur', '8312', 'Lingig');
INSERT INTO `AddressComplete` VALUES ('2127', 'PH', 'Surigao del Sur', '8316', 'Madrid');
INSERT INTO `AddressComplete` VALUES ('2128', 'PH', 'Surigao del Sur', '8306', 'Marihatag');
INSERT INTO `AddressComplete` VALUES ('2129', 'PH', 'Surigao del Sur', '8305', 'San Agustin');
INSERT INTO `AddressComplete` VALUES ('2130', 'PH', 'Surigao del Sur', '8301', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('2131', 'PH', 'Surigao del Sur', '8308', 'Tagbina');
INSERT INTO `AddressComplete` VALUES ('2132', 'PH', 'Surigao del Sur', '8302', 'Tago');
INSERT INTO `AddressComplete` VALUES ('2133', 'PH', 'Surigao del Sur', '8300', 'Tandag');
INSERT INTO `AddressComplete` VALUES ('2134', 'PH', 'Tarlac', '2310', 'Anao');
INSERT INTO `AddressComplete` VALUES ('2135', 'PH', 'Tarlac', '2317', 'Bamban');
INSERT INTO `AddressComplete` VALUES ('2136', 'PH', 'Tarlac', '2306', 'Camiling');
INSERT INTO `AddressComplete` VALUES ('2137', 'PH', 'Tarlac', '2333', 'Capas');
INSERT INTO `AddressComplete` VALUES ('2138', 'PH', 'Tarlac', '2316', 'Concepcion');
INSERT INTO `AddressComplete` VALUES ('2139', 'PH', 'Tarlac', '2302', 'Gerona');
INSERT INTO `AddressComplete` VALUES ('2140', 'PH', 'Tarlac', '2314', 'La Paz');
INSERT INTO `AddressComplete` VALUES ('2141', 'PH', 'Tarlac', '2304', 'Mayantoc');
INSERT INTO `AddressComplete` VALUES ('2142', 'PH', 'Tarlac', '2334', 'Moncada');
INSERT INTO `AddressComplete` VALUES ('2143', 'PH', 'Tarlac', '2307', '[Paniqui]');
INSERT INTO `AddressComplete` VALUES ('2144', 'PH', 'Tarlac', '2312', 'Pura');
INSERT INTO `AddressComplete` VALUES ('2145', 'PH', 'Tarlac', '2311', 'Ramos');
INSERT INTO `AddressComplete` VALUES ('2146', 'PH', 'Tarlac', '2305', 'San Clemente');
INSERT INTO `AddressComplete` VALUES ('2147', 'PH', 'Tarlac', '2309', 'San Manuel');
INSERT INTO `AddressComplete` VALUES ('2148', 'PH', 'Tarlac', '2301', 'San Jose');
INSERT INTO `AddressComplete` VALUES ('2149', 'PH', 'Tarlac', '2303', 'Santa Ignacia');
INSERT INTO `AddressComplete` VALUES ('2150', 'PH', 'Tarlac', '2300', 'Tarlac City');
INSERT INTO `AddressComplete` VALUES ('2151', 'PH', 'Tarlac', '2313', 'Victoria');
INSERT INTO `AddressComplete` VALUES ('2152', 'PH', 'Tarlac', '7500', 'Bongao');
INSERT INTO `AddressComplete` VALUES ('2153', 'PH', 'Tarlac', '7508', 'Mapun (Cagayan de Sulu)');
INSERT INTO `AddressComplete` VALUES ('2154', 'PH', 'Tarlac', '7509', 'Languyan');
INSERT INTO `AddressComplete` VALUES ('2155', 'PH', 'Tarlac', '7501', 'Panglima Sugala (Balimbing)');
INSERT INTO `AddressComplete` VALUES ('2156', 'PH', 'Tarlac', '7503', 'Sapa-Sapa');
INSERT INTO `AddressComplete` VALUES ('2157', 'PH', 'Tarlac', '7505', 'Simunul');
INSERT INTO `AddressComplete` VALUES ('2158', 'PH', 'Tarlac', '7506', 'Sitangkai');
INSERT INTO `AddressComplete` VALUES ('2159', 'PH', 'Tarlac', '7504', 'South Ubian');
INSERT INTO `AddressComplete` VALUES ('2160', 'PH', 'Tarlac', '7507', 'Turtle Island (Taganak)');
INSERT INTO `AddressComplete` VALUES ('2161', 'PH', 'Tarlac', '7502', 'Tandubas');
INSERT INTO `AddressComplete` VALUES ('2162', 'PH', 'Western Samar', '6724', 'Almagro');
INSERT INTO `AddressComplete` VALUES ('2163', 'PH', 'Western Samar', '6720', 'Basey');
INSERT INTO `AddressComplete` VALUES ('2164', 'PH', 'Western Samar', '6710', 'Calbayog City');
INSERT INTO `AddressComplete` VALUES ('2165', 'PH', 'Western Samar', '6715', 'Calbiga');
INSERT INTO `AddressComplete` VALUES ('2166', 'PH', 'Western Samar', '6700', 'Catbalogan');
INSERT INTO `AddressComplete` VALUES ('2167', 'PH', 'Western Samar', '6722', 'Daram');
INSERT INTO `AddressComplete` VALUES ('2168', 'PH', 'Western Samar', '6706', 'Gandara');
INSERT INTO `AddressComplete` VALUES ('2169', 'PH', 'Western Samar', '6713', 'Hinabangan');
INSERT INTO `AddressComplete` VALUES ('2170', 'PH', 'Western Samar', '6701', 'Jiabong');
INSERT INTO `AddressComplete` VALUES ('2171', 'PH', 'Western Samar', '6721', 'Marabut');
INSERT INTO `AddressComplete` VALUES ('2172', 'PH', 'Western Samar', '6708', 'Matuguinao');
INSERT INTO `AddressComplete` VALUES ('2173', 'PH', 'Western Samar', '6702', 'Motiong');
INSERT INTO `AddressComplete` VALUES ('2174', 'PH', 'Western Samar', '6705', 'Pagsanghan');
INSERT INTO `AddressComplete` VALUES ('2175', 'PH', 'Western Samar', '6703', 'Paranas (Wright)');
INSERT INTO `AddressComplete` VALUES ('2176', 'PH', 'Western Samar', '6716', 'Pinabacdao');
INSERT INTO `AddressComplete` VALUES ('2177', 'PH', 'Western Samar', '6707', 'San Jorge');
INSERT INTO `AddressComplete` VALUES ('2178', 'PH', 'Western Samar', '6723', 'San Jose De Buan');
INSERT INTO `AddressComplete` VALUES ('2179', 'PH', 'Western Samar', '6714', 'San Sebastian');
INSERT INTO `AddressComplete` VALUES ('2180', 'PH', 'Western Samar', '6709', 'Santa Margarita');
INSERT INTO `AddressComplete` VALUES ('2181', 'PH', 'Western Samar', '6718', 'Santa Rita');
INSERT INTO `AddressComplete` VALUES ('2182', 'PH', 'Western Samar', '6711', 'Santo Niño');
INSERT INTO `AddressComplete` VALUES ('2183', 'PH', 'Western Samar', '6712', 'Tagapul-an');
INSERT INTO `AddressComplete` VALUES ('2184', 'PH', 'Western Samar', '6719', 'Talalora');
INSERT INTO `AddressComplete` VALUES ('2185', 'PH', 'Western Samar', '6704', 'Tarangnan');
INSERT INTO `AddressComplete` VALUES ('2186', 'PH', 'Western Samar', '6717', 'Villareal');
INSERT INTO `AddressComplete` VALUES ('2187', 'PH', 'Western Samar', '6725', 'Zumarraga');
INSERT INTO `AddressComplete` VALUES ('2188', 'PH', 'Zambales', '2202', 'Botolan');
INSERT INTO `AddressComplete` VALUES ('2189', 'PH', 'Zambales', '2203', 'Cabangan');
INSERT INTO `AddressComplete` VALUES ('2190', 'PH', 'Zambales', '2212', 'Candelaria');
INSERT INTO `AddressComplete` VALUES ('2191', 'PH', 'Zambales', '2208', 'Castillejos');
INSERT INTO `AddressComplete` VALUES ('2192', 'PH', 'Zambales', '2201', 'Iba');
INSERT INTO `AddressComplete` VALUES ('2193', 'PH', 'Zambales', '2211', 'Masinloc');
INSERT INTO `AddressComplete` VALUES ('2194', 'PH', 'Zambales', '2200', 'Olongapo City');
INSERT INTO `AddressComplete` VALUES ('2195', 'PH', 'Zambales', '2210', 'Palauig & Scarborough Shoal');
INSERT INTO `AddressComplete` VALUES ('2196', 'PH', 'Zambales', '2206', 'San Antonio');
INSERT INTO `AddressComplete` VALUES ('2197', 'PH', 'Zambales', '2204', 'San Felipe');
INSERT INTO `AddressComplete` VALUES ('2198', 'PH', 'Zambales', '2207', 'San Marcelino');
INSERT INTO `AddressComplete` VALUES ('2199', 'PH', 'Zambales', '2205', 'San Narciso');
INSERT INTO `AddressComplete` VALUES ('2200', 'PH', 'Zambales', '2213', 'Santa Cruz');
INSERT INTO `AddressComplete` VALUES ('2201', 'PH', 'Zambales', '2209', 'Subic');
INSERT INTO `AddressComplete` VALUES ('2202', 'PH', 'Zambales', '2222', 'Subic Bay Freeport Zone (Metro Subic)');
INSERT INTO `AddressComplete` VALUES ('2203', 'PH', 'Zamboanga del Norte', '7123', 'Baliguian');
INSERT INTO `AddressComplete` VALUES ('2204', 'PH', 'Zamboanga del Norte', '7101', 'Dapitan City');
INSERT INTO `AddressComplete` VALUES ('2205', 'PH', 'Zamboanga del Norte', '7100', 'Dipolog City');
INSERT INTO `AddressComplete` VALUES ('2206', 'PH', 'Zamboanga del Norte', '7118', 'Gutalac');
INSERT INTO `AddressComplete` VALUES ('2207', 'PH', 'Zamboanga del Norte', '7111', 'Jose Dalman (Ponot)');
INSERT INTO `AddressComplete` VALUES ('2208', 'PH', 'Zamboanga del Norte', '7124', 'Kalawit');
INSERT INTO `AddressComplete` VALUES ('2209', 'PH', 'Zamboanga del Norte', '7109', 'Katipunan');
INSERT INTO `AddressComplete` VALUES ('2210', 'PH', 'Zamboanga del Norte', '7119', 'La Libertad');
INSERT INTO `AddressComplete` VALUES ('2211', 'PH', 'Zamboanga del Norte', '7117', 'Labason');
INSERT INTO `AddressComplete` VALUES ('2212', 'PH', 'Zamboanga del Norte', '7115', 'Liloy');
INSERT INTO `AddressComplete` VALUES ('2213', 'PH', 'Zamboanga del Norte', '7110', 'Manukan');
INSERT INTO `AddressComplete` VALUES ('2214', 'PH', 'Zamboanga del Norte', '7107', 'Mutia');
INSERT INTO `AddressComplete` VALUES ('2215', 'PH', 'Zamboanga del Norte', '7105', 'Pinan');
INSERT INTO `AddressComplete` VALUES ('2216', 'PH', 'Zamboanga del Norte', '7106', 'Polanco');
INSERT INTO `AddressComplete` VALUES ('2217', 'PH', 'Zamboanga del Norte', '7104', 'Rizal');
INSERT INTO `AddressComplete` VALUES ('2218', 'PH', 'Zamboanga del Norte', '7102', 'Roxas');
INSERT INTO `AddressComplete` VALUES ('2219', 'PH', 'Zamboanga del Norte', '7114', 'Salug');
INSERT INTO `AddressComplete` VALUES ('2220', 'PH', 'Zamboanga del Norte', '7108', 'Sergio Osmeña');
INSERT INTO `AddressComplete` VALUES ('2221', 'PH', 'Zamboanga del Norte', '7113', 'Siayan');
INSERT INTO `AddressComplete` VALUES ('2222', 'PH', 'Zamboanga del Norte', '7122', 'Sibuco');
INSERT INTO `AddressComplete` VALUES ('2223', 'PH', 'Zamboanga del Norte', '7103', 'Sibutad');
INSERT INTO `AddressComplete` VALUES ('2224', 'PH', 'Zamboanga del Norte', '7112', 'Sindangan (Leon B. Postigo)');
INSERT INTO `AddressComplete` VALUES ('2225', 'PH', 'Zamboanga del Norte', '7120', 'Siocon');
INSERT INTO `AddressComplete` VALUES ('2226', 'PH', 'Zamboanga del Norte', '7121', 'Siraway');
INSERT INTO `AddressComplete` VALUES ('2227', 'PH', 'Zamboanga del Norte', '7116', 'Tampilisan');
INSERT INTO `AddressComplete` VALUES ('2228', 'PH', 'Zamboanga del Sur', '7020', 'Aurora');
INSERT INTO `AddressComplete` VALUES ('2229', 'PH', 'Zamboanga del Sur', '7011', 'Bayog');
INSERT INTO `AddressComplete` VALUES ('2230', 'PH', 'Zamboanga del Sur', '7032', 'Dimataling');
INSERT INTO `AddressComplete` VALUES ('2231', 'PH', 'Zamboanga del Sur', '7030', 'Dinas');
INSERT INTO `AddressComplete` VALUES ('2232', 'PH', 'Zamboanga del Sur', '7015', 'Dumalinao');
INSERT INTO `AddressComplete` VALUES ('2233', 'PH', 'Zamboanga del Sur', '7028', 'Dumingag');
INSERT INTO `AddressComplete` VALUES ('2234', 'PH', 'Zamboanga del Sur', '7042', 'Guipos');
INSERT INTO `AddressComplete` VALUES ('2235', 'PH', 'Zamboanga del Sur', '7027', 'Josefina');
INSERT INTO `AddressComplete` VALUES ('2236', 'PH', 'Zamboanga del Sur', '7005', 'Kumalarang');
INSERT INTO `AddressComplete` VALUES ('2237', 'PH', 'Zamboanga del Sur', '7017', 'Labangan');
INSERT INTO `AddressComplete` VALUES ('2238', 'PH', 'Zamboanga del Sur', '7014', 'Lakewood');
INSERT INTO `AddressComplete` VALUES ('2239', 'PH', 'Zamboanga del Sur', '7037', 'Lapuyan');
INSERT INTO `AddressComplete` VALUES ('2240', 'PH', 'Zamboanga del Sur', '7026', 'Mahayag');
INSERT INTO `AddressComplete` VALUES ('2241', 'PH', 'Zamboanga del Sur', '7035', 'Margosatubig');
INSERT INTO `AddressComplete` VALUES ('2242', 'PH', 'Zamboanga del Sur', '7021', 'Midsalip');
INSERT INTO `AddressComplete` VALUES ('2243', 'PH', 'Zamboanga del Sur', '7023', 'Molave');
INSERT INTO `AddressComplete` VALUES ('2244', 'PH', 'Zamboanga del Sur', '7016', 'Pagadian City');
INSERT INTO `AddressComplete` VALUES ('2245', 'PH', 'Zamboanga del Sur', '7033', 'Pitogo');
INSERT INTO `AddressComplete` VALUES ('2246', 'PH', 'Zamboanga del Sur', '7024', 'Ramon Magsaysay (Liargo)');
INSERT INTO `AddressComplete` VALUES ('2247', 'PH', 'Zamboanga del Sur', '7029', 'San Miguel');
INSERT INTO `AddressComplete` VALUES ('2248', 'PH', 'Zamboanga del Sur', '7031', 'San Pablo');
INSERT INTO `AddressComplete` VALUES ('2249', 'PH', 'Zamboanga del Sur', '7022', 'Sominot (Don Mariano Marcos)');
INSERT INTO `AddressComplete` VALUES ('2250', 'PH', 'Zamboanga del Sur', '7034', 'Tabina');
INSERT INTO `AddressComplete` VALUES ('2251', 'PH', 'Zamboanga del Sur', '7025', 'Tambulig');
INSERT INTO `AddressComplete` VALUES ('2252', 'PH', 'Zamboanga del Sur', '7000', 'Zamboanga City');
INSERT INTO `AddressComplete` VALUES ('2253', 'PH', 'Zamboanga del Sur', '7043', 'Tigbao');
INSERT INTO `AddressComplete` VALUES ('2254', 'PH', 'Zamboanga del Sur', '7019', 'Tukuran');
INSERT INTO `AddressComplete` VALUES ('2255', 'PH', 'Zamboanga del Sur', '7036', 'Vincenzo A. Sagun');
INSERT INTO `AddressComplete` VALUES ('2256', 'PH', 'Zamboanga Sibugay', '7040', 'Alicia');
INSERT INTO `AddressComplete` VALUES ('2257', 'PH', 'Zamboanga Sibugay', '7009', 'Buug');
INSERT INTO `AddressComplete` VALUES ('2258', 'PH', 'Zamboanga Sibugay', '7039', 'Diplahan');
INSERT INTO `AddressComplete` VALUES ('2259', 'PH', 'Zamboanga Sibugay', '7007', 'Imelda');
INSERT INTO `AddressComplete` VALUES ('2260', 'PH', 'Zamboanga Sibugay', '7001', 'Ipil');
INSERT INTO `AddressComplete` VALUES ('2261', 'PH', 'Zamboanga Sibugay', '7005', 'Kabasalan');
INSERT INTO `AddressComplete` VALUES ('2262', 'PH', 'Zamboanga Sibugay', '7010', 'Mabuhay');
INSERT INTO `AddressComplete` VALUES ('2263', 'PH', 'Zamboanga Sibugay', '7038', 'Malangas');
INSERT INTO `AddressComplete` VALUES ('2264', 'PH', 'Zamboanga Sibugay', '7004', 'Naga');
INSERT INTO `AddressComplete` VALUES ('2265', 'PH', 'Zamboanga Sibugay', '7041', 'Olutanga');
INSERT INTO `AddressComplete` VALUES ('2266', 'PH', 'Zamboanga Sibugay', '7008', 'Payao');
INSERT INTO `AddressComplete` VALUES ('2267', 'PH', 'Zamboanga Sibugay', '7002', 'Roseller T. Lim');
INSERT INTO `AddressComplete` VALUES ('2268', 'PH', 'Zamboanga Sibugay', '7006', 'Siay');
INSERT INTO `AddressComplete` VALUES ('2269', 'PH', 'Zamboanga Sibugay', '7012', 'Talusan');
INSERT INTO `AddressComplete` VALUES ('2270', 'PH', 'Zamboanga Sibugay', '7003', 'Titay');

-- ----------------------------
-- Table structure for Brand
-- ----------------------------
DROP TABLE IF EXISTS `Brand`;
CREATE TABLE `Brand` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `CountryOfOrigin` varchar(100) DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Brand
-- ----------------------------
INSERT INTO `Brand` VALUES ('1', 'Yamaha', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('2', 'Kawasaki', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('3', 'Yamaha', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('4', 'Kawasaki', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('5', 'Yamaha', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('6', 'Kawasaki', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('7', 'Yamaha', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('8', 'Kawasaki', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('9', 'Yamaha', '1', 'null', null, '1', null);
INSERT INTO `Brand` VALUES ('10', 'Kawasaki', '1', 'null', null, '1', null);

-- ----------------------------
-- Table structure for ColorTable
-- ----------------------------
DROP TABLE IF EXISTS `ColorTable`;
CREATE TABLE `ColorTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `ColorName` varchar(100) DEFAULT NULL,
  `ColorPhoto` varchar(255) DEFAULT NULL,
  `ColorHex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ColorTable
-- ----------------------------

-- ----------------------------
-- Table structure for Contacts
-- ----------------------------
DROP TABLE IF EXISTS `Contacts`;
CREATE TABLE `Contacts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `contactType` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Contacts
-- ----------------------------

-- ----------------------------
-- Table structure for Countries
-- ----------------------------
DROP TABLE IF EXISTS `Countries`;
CREATE TABLE `Countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Countries
-- ----------------------------
INSERT INTO `Countries` VALUES ('1', 'US', 'United States');
INSERT INTO `Countries` VALUES ('2', 'CA', 'Canada');
INSERT INTO `Countries` VALUES ('3', 'AF', 'Afghanistan');
INSERT INTO `Countries` VALUES ('4', 'AL', 'Albania');
INSERT INTO `Countries` VALUES ('5', 'DZ', 'Algeria');
INSERT INTO `Countries` VALUES ('6', 'DS', 'American Samoa');
INSERT INTO `Countries` VALUES ('7', 'AD', 'Andorra');
INSERT INTO `Countries` VALUES ('8', 'AO', 'Angola');
INSERT INTO `Countries` VALUES ('9', 'AI', 'Anguilla');
INSERT INTO `Countries` VALUES ('10', 'AQ', 'Antarctica');
INSERT INTO `Countries` VALUES ('11', 'AG', 'Antigua and/or Barbuda');
INSERT INTO `Countries` VALUES ('12', 'AR', 'Argentina');
INSERT INTO `Countries` VALUES ('13', 'AM', 'Armenia');
INSERT INTO `Countries` VALUES ('14', 'AW', 'Aruba');
INSERT INTO `Countries` VALUES ('15', 'AU', 'Australia');
INSERT INTO `Countries` VALUES ('16', 'AT', 'Austria');
INSERT INTO `Countries` VALUES ('17', 'AZ', 'Azerbaijan');
INSERT INTO `Countries` VALUES ('18', 'BS', 'Bahamas');
INSERT INTO `Countries` VALUES ('19', 'BH', 'Bahrain');
INSERT INTO `Countries` VALUES ('20', 'BD', 'Bangladesh');
INSERT INTO `Countries` VALUES ('21', 'BB', 'Barbados');
INSERT INTO `Countries` VALUES ('22', 'BY', 'Belarus');
INSERT INTO `Countries` VALUES ('23', 'BE', 'Belgium');
INSERT INTO `Countries` VALUES ('24', 'BZ', 'Belize');
INSERT INTO `Countries` VALUES ('25', 'BJ', 'Benin');
INSERT INTO `Countries` VALUES ('26', 'BM', 'Bermuda');
INSERT INTO `Countries` VALUES ('27', 'BT', 'Bhutan');
INSERT INTO `Countries` VALUES ('28', 'BO', 'Bolivia');
INSERT INTO `Countries` VALUES ('29', 'BA', 'Bosnia and Herzegovina');
INSERT INTO `Countries` VALUES ('30', 'BW', 'Botswana');
INSERT INTO `Countries` VALUES ('31', 'BV', 'Bouvet Island');
INSERT INTO `Countries` VALUES ('32', 'BR', 'Brazil');
INSERT INTO `Countries` VALUES ('33', 'IO', 'British lndian Ocean Territory');
INSERT INTO `Countries` VALUES ('34', 'BN', 'Brunei Darussalam');
INSERT INTO `Countries` VALUES ('35', 'BG', 'Bulgaria');
INSERT INTO `Countries` VALUES ('36', 'BF', 'Burkina Faso');
INSERT INTO `Countries` VALUES ('37', 'BI', 'Burundi');
INSERT INTO `Countries` VALUES ('38', 'KH', 'Cambodia');
INSERT INTO `Countries` VALUES ('39', 'CM', 'Cameroon');
INSERT INTO `Countries` VALUES ('40', 'CV', 'Cape Verde');
INSERT INTO `Countries` VALUES ('41', 'KY', 'Cayman Islands');
INSERT INTO `Countries` VALUES ('42', 'CF', 'Central African Republic');
INSERT INTO `Countries` VALUES ('43', 'TD', 'Chad');
INSERT INTO `Countries` VALUES ('44', 'CL', 'Chile');
INSERT INTO `Countries` VALUES ('45', 'CN', 'China');
INSERT INTO `Countries` VALUES ('46', 'CX', 'Christmas Island');
INSERT INTO `Countries` VALUES ('47', 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `Countries` VALUES ('48', 'CO', 'Colombia');
INSERT INTO `Countries` VALUES ('49', 'KM', 'Comoros');
INSERT INTO `Countries` VALUES ('50', 'CG', 'Congo');
INSERT INTO `Countries` VALUES ('51', 'CK', 'Cook Islands');
INSERT INTO `Countries` VALUES ('52', 'CR', 'Costa Rica');
INSERT INTO `Countries` VALUES ('53', 'HR', 'Croatia (Hrvatska)');
INSERT INTO `Countries` VALUES ('54', 'CU', 'Cuba');
INSERT INTO `Countries` VALUES ('55', 'CY', 'Cyprus');
INSERT INTO `Countries` VALUES ('56', 'CZ', 'Czech Republic');
INSERT INTO `Countries` VALUES ('57', 'DK', 'Denmark');
INSERT INTO `Countries` VALUES ('58', 'DJ', 'Djibouti');
INSERT INTO `Countries` VALUES ('59', 'DM', 'Dominica');
INSERT INTO `Countries` VALUES ('60', 'DO', 'Dominican Republic');
INSERT INTO `Countries` VALUES ('61', 'TP', 'East Timor');
INSERT INTO `Countries` VALUES ('62', 'EC', 'Ecuador');
INSERT INTO `Countries` VALUES ('63', 'EG', 'Egypt');
INSERT INTO `Countries` VALUES ('64', 'SV', 'El Salvador');
INSERT INTO `Countries` VALUES ('65', 'GQ', 'Equatorial Guinea');
INSERT INTO `Countries` VALUES ('66', 'ER', 'Eritrea');
INSERT INTO `Countries` VALUES ('67', 'EE', 'Estonia');
INSERT INTO `Countries` VALUES ('68', 'ET', 'Ethiopia');
INSERT INTO `Countries` VALUES ('69', 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `Countries` VALUES ('70', 'FO', 'Faroe Islands');
INSERT INTO `Countries` VALUES ('71', 'FJ', 'Fiji');
INSERT INTO `Countries` VALUES ('72', 'FI', 'Finland');
INSERT INTO `Countries` VALUES ('73', 'FR', 'France');
INSERT INTO `Countries` VALUES ('74', 'FX', 'France, Metropolitan');
INSERT INTO `Countries` VALUES ('75', 'GF', 'French Guiana');
INSERT INTO `Countries` VALUES ('76', 'PF', 'French Polynesia');
INSERT INTO `Countries` VALUES ('77', 'TF', 'French Southern Territories');
INSERT INTO `Countries` VALUES ('78', 'GA', 'Gabon');
INSERT INTO `Countries` VALUES ('79', 'GM', 'Gambia');
INSERT INTO `Countries` VALUES ('80', 'GE', 'Georgia');
INSERT INTO `Countries` VALUES ('81', 'DE', 'Germany');
INSERT INTO `Countries` VALUES ('82', 'GH', 'Ghana');
INSERT INTO `Countries` VALUES ('83', 'GI', 'Gibraltar');
INSERT INTO `Countries` VALUES ('84', 'GR', 'Greece');
INSERT INTO `Countries` VALUES ('85', 'GL', 'Greenland');
INSERT INTO `Countries` VALUES ('86', 'GD', 'Grenada');
INSERT INTO `Countries` VALUES ('87', 'GP', 'Guadeloupe');
INSERT INTO `Countries` VALUES ('88', 'GU', 'Guam');
INSERT INTO `Countries` VALUES ('89', 'GT', 'Guatemala');
INSERT INTO `Countries` VALUES ('90', 'GN', 'Guinea');
INSERT INTO `Countries` VALUES ('91', 'GW', 'Guinea-Bissau');
INSERT INTO `Countries` VALUES ('92', 'GY', 'Guyana');
INSERT INTO `Countries` VALUES ('93', 'HT', 'Haiti');
INSERT INTO `Countries` VALUES ('94', 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `Countries` VALUES ('95', 'HN', 'Honduras');
INSERT INTO `Countries` VALUES ('96', 'HK', 'Hong Kong');
INSERT INTO `Countries` VALUES ('97', 'HU', 'Hungary');
INSERT INTO `Countries` VALUES ('98', 'IS', 'Iceland');
INSERT INTO `Countries` VALUES ('99', 'IN', 'India');
INSERT INTO `Countries` VALUES ('100', 'ID', 'Indonesia');
INSERT INTO `Countries` VALUES ('101', 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `Countries` VALUES ('102', 'IQ', 'Iraq');
INSERT INTO `Countries` VALUES ('103', 'IE', 'Ireland');
INSERT INTO `Countries` VALUES ('104', 'IL', 'Israel');
INSERT INTO `Countries` VALUES ('105', 'IT', 'Italy');
INSERT INTO `Countries` VALUES ('106', 'CI', 'Ivory Coast');
INSERT INTO `Countries` VALUES ('107', 'JM', 'Jamaica');
INSERT INTO `Countries` VALUES ('108', 'JP', 'Japan');
INSERT INTO `Countries` VALUES ('109', 'JO', 'Jordan');
INSERT INTO `Countries` VALUES ('110', 'KZ', 'Kazakhstan');
INSERT INTO `Countries` VALUES ('111', 'KE', 'Kenya');
INSERT INTO `Countries` VALUES ('112', 'KI', 'Kiribati');
INSERT INTO `Countries` VALUES ('113', 'KP', 'Korea, Democratic People\'s Republic of');
INSERT INTO `Countries` VALUES ('114', 'KR', 'Korea, Republic of');
INSERT INTO `Countries` VALUES ('115', 'XK', 'Kosovo');
INSERT INTO `Countries` VALUES ('116', 'KW', 'Kuwait');
INSERT INTO `Countries` VALUES ('117', 'KG', 'Kyrgyzstan');
INSERT INTO `Countries` VALUES ('118', 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `Countries` VALUES ('119', 'LV', 'Latvia');
INSERT INTO `Countries` VALUES ('120', 'LB', 'Lebanon');
INSERT INTO `Countries` VALUES ('121', 'LS', 'Lesotho');
INSERT INTO `Countries` VALUES ('122', 'LR', 'Liberia');
INSERT INTO `Countries` VALUES ('123', 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `Countries` VALUES ('124', 'LI', 'Liechtenstein');
INSERT INTO `Countries` VALUES ('125', 'LT', 'Lithuania');
INSERT INTO `Countries` VALUES ('126', 'LU', 'Luxembourg');
INSERT INTO `Countries` VALUES ('127', 'MO', 'Macau');
INSERT INTO `Countries` VALUES ('128', 'MK', 'Macedonia');
INSERT INTO `Countries` VALUES ('129', 'MG', 'Madagascar');
INSERT INTO `Countries` VALUES ('130', 'MW', 'Malawi');
INSERT INTO `Countries` VALUES ('131', 'MY', 'Malaysia');
INSERT INTO `Countries` VALUES ('132', 'MV', 'Maldives');
INSERT INTO `Countries` VALUES ('133', 'ML', 'Mali');
INSERT INTO `Countries` VALUES ('134', 'MT', 'Malta');
INSERT INTO `Countries` VALUES ('135', 'MH', 'Marshall Islands');
INSERT INTO `Countries` VALUES ('136', 'MQ', 'Martinique');
INSERT INTO `Countries` VALUES ('137', 'MR', 'Mauritania');
INSERT INTO `Countries` VALUES ('138', 'MU', 'Mauritius');
INSERT INTO `Countries` VALUES ('139', 'TY', 'Mayotte');
INSERT INTO `Countries` VALUES ('140', 'MX', 'Mexico');
INSERT INTO `Countries` VALUES ('141', 'FM', 'Micronesia, Federated States of');
INSERT INTO `Countries` VALUES ('142', 'MD', 'Moldova, Republic of');
INSERT INTO `Countries` VALUES ('143', 'MC', 'Monaco');
INSERT INTO `Countries` VALUES ('144', 'MN', 'Mongolia');
INSERT INTO `Countries` VALUES ('145', 'ME', 'Montenegro');
INSERT INTO `Countries` VALUES ('146', 'MS', 'Montserrat');
INSERT INTO `Countries` VALUES ('147', 'MA', 'Morocco');
INSERT INTO `Countries` VALUES ('148', 'MZ', 'Mozambique');
INSERT INTO `Countries` VALUES ('149', 'MM', 'Myanmar');
INSERT INTO `Countries` VALUES ('150', 'NA', 'Namibia');
INSERT INTO `Countries` VALUES ('151', 'NR', 'Nauru');
INSERT INTO `Countries` VALUES ('152', 'NP', 'Nepal');
INSERT INTO `Countries` VALUES ('153', 'NL', 'Netherlands');
INSERT INTO `Countries` VALUES ('154', 'AN', 'Netherlands Antilles');
INSERT INTO `Countries` VALUES ('155', 'NC', 'New Caledonia');
INSERT INTO `Countries` VALUES ('156', 'NZ', 'New Zealand');
INSERT INTO `Countries` VALUES ('157', 'NI', 'Nicaragua');
INSERT INTO `Countries` VALUES ('158', 'NE', 'Niger');
INSERT INTO `Countries` VALUES ('159', 'NG', 'Nigeria');
INSERT INTO `Countries` VALUES ('160', 'NU', 'Niue');
INSERT INTO `Countries` VALUES ('161', 'NF', 'Norfork Island');
INSERT INTO `Countries` VALUES ('162', 'MP', 'Northern Mariana Islands');
INSERT INTO `Countries` VALUES ('163', 'NO', 'Norway');
INSERT INTO `Countries` VALUES ('164', 'OM', 'Oman');
INSERT INTO `Countries` VALUES ('165', 'PK', 'Pakistan');
INSERT INTO `Countries` VALUES ('166', 'PW', 'Palau');
INSERT INTO `Countries` VALUES ('167', 'PA', 'Panama');
INSERT INTO `Countries` VALUES ('168', 'PG', 'Papua New Guinea');
INSERT INTO `Countries` VALUES ('169', 'PY', 'Paraguay');
INSERT INTO `Countries` VALUES ('170', 'PE', 'Peru');
INSERT INTO `Countries` VALUES ('171', 'PH', 'Philippines');
INSERT INTO `Countries` VALUES ('172', 'PN', 'Pitcairn');
INSERT INTO `Countries` VALUES ('173', 'PL', 'Poland');
INSERT INTO `Countries` VALUES ('174', 'PT', 'Portugal');
INSERT INTO `Countries` VALUES ('175', 'PR', 'Puerto Rico');
INSERT INTO `Countries` VALUES ('176', 'QA', 'Qatar');
INSERT INTO `Countries` VALUES ('177', 'RE', 'Reunion');
INSERT INTO `Countries` VALUES ('178', 'RO', 'Romania');
INSERT INTO `Countries` VALUES ('179', 'RU', 'Russian Federation');
INSERT INTO `Countries` VALUES ('180', 'RW', 'Rwanda');
INSERT INTO `Countries` VALUES ('181', 'KN', 'Saint Kitts and Nevis');
INSERT INTO `Countries` VALUES ('182', 'LC', 'Saint Lucia');
INSERT INTO `Countries` VALUES ('183', 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `Countries` VALUES ('184', 'WS', 'Samoa');
INSERT INTO `Countries` VALUES ('185', 'SM', 'San Marino');
INSERT INTO `Countries` VALUES ('186', 'ST', 'Sao Tome and Principe');
INSERT INTO `Countries` VALUES ('187', 'SA', 'Saudi Arabia');
INSERT INTO `Countries` VALUES ('188', 'SN', 'Senegal');
INSERT INTO `Countries` VALUES ('189', 'RS', 'Serbia');
INSERT INTO `Countries` VALUES ('190', 'SC', 'Seychelles');
INSERT INTO `Countries` VALUES ('191', 'SL', 'Sierra Leone');
INSERT INTO `Countries` VALUES ('192', 'SG', 'Singapore');
INSERT INTO `Countries` VALUES ('193', 'SK', 'Slovakia');
INSERT INTO `Countries` VALUES ('194', 'SI', 'Slovenia');
INSERT INTO `Countries` VALUES ('195', 'SB', 'Solomon Islands');
INSERT INTO `Countries` VALUES ('196', 'SO', 'Somalia');
INSERT INTO `Countries` VALUES ('197', 'ZA', 'South Africa');
INSERT INTO `Countries` VALUES ('198', 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `Countries` VALUES ('199', 'ES', 'Spain');
INSERT INTO `Countries` VALUES ('200', 'LK', 'Sri Lanka');
INSERT INTO `Countries` VALUES ('201', 'SH', 'St. Helena');
INSERT INTO `Countries` VALUES ('202', 'PM', 'St. Pierre and Miquelon');
INSERT INTO `Countries` VALUES ('203', 'SD', 'Sudan');
INSERT INTO `Countries` VALUES ('204', 'SR', 'Suriname');
INSERT INTO `Countries` VALUES ('205', 'SJ', 'Svalbarn and Jan Mayen Islands');
INSERT INTO `Countries` VALUES ('206', 'SZ', 'Swaziland');
INSERT INTO `Countries` VALUES ('207', 'SE', 'Sweden');
INSERT INTO `Countries` VALUES ('208', 'CH', 'Switzerland');
INSERT INTO `Countries` VALUES ('209', 'SY', 'Syrian Arab Republic');
INSERT INTO `Countries` VALUES ('210', 'TW', 'Taiwan');
INSERT INTO `Countries` VALUES ('211', 'TJ', 'Tajikistan');
INSERT INTO `Countries` VALUES ('212', 'TZ', 'Tanzania, United Republic of');
INSERT INTO `Countries` VALUES ('213', 'TH', 'Thailand');
INSERT INTO `Countries` VALUES ('214', 'TG', 'Togo');
INSERT INTO `Countries` VALUES ('215', 'TK', 'Tokelau');
INSERT INTO `Countries` VALUES ('216', 'TO', 'Tonga');
INSERT INTO `Countries` VALUES ('217', 'TT', 'Trinidad and Tobago');
INSERT INTO `Countries` VALUES ('218', 'TN', 'Tunisia');
INSERT INTO `Countries` VALUES ('219', 'TR', 'Turkey');
INSERT INTO `Countries` VALUES ('220', 'TM', 'Turkmenistan');
INSERT INTO `Countries` VALUES ('221', 'TC', 'Turks and Caicos Islands');
INSERT INTO `Countries` VALUES ('222', 'TV', 'Tuvalu');
INSERT INTO `Countries` VALUES ('223', 'UG', 'Uganda');
INSERT INTO `Countries` VALUES ('224', 'UA', 'Ukraine');
INSERT INTO `Countries` VALUES ('225', 'AE', 'United Arab Emirates');
INSERT INTO `Countries` VALUES ('226', 'GB', 'United Kingdom');
INSERT INTO `Countries` VALUES ('227', 'UM', 'United States minor outlying islands');
INSERT INTO `Countries` VALUES ('228', 'UY', 'Uruguay');
INSERT INTO `Countries` VALUES ('229', 'UZ', 'Uzbekistan');
INSERT INTO `Countries` VALUES ('230', 'VU', 'Vanuatu');
INSERT INTO `Countries` VALUES ('231', 'VA', 'Vatican City State');
INSERT INTO `Countries` VALUES ('232', 'VE', 'Venezuela');
INSERT INTO `Countries` VALUES ('233', 'VN', 'Vietnam');
INSERT INTO `Countries` VALUES ('234', 'VG', 'Virgin Islands (British)');
INSERT INTO `Countries` VALUES ('235', 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `Countries` VALUES ('236', 'WF', 'Wallis and Futuna Islands');
INSERT INTO `Countries` VALUES ('237', 'EH', 'Western Sahara');
INSERT INTO `Countries` VALUES ('238', 'YE', 'Yemen');
INSERT INTO `Countries` VALUES ('239', 'YU', 'Yugoslavia');
INSERT INTO `Countries` VALUES ('240', 'ZR', 'Zaire');
INSERT INTO `Countries` VALUES ('241', 'ZM', 'Zambia');
INSERT INTO `Countries` VALUES ('242', 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for Distributor
-- ----------------------------
DROP TABLE IF EXISTS `Distributor`;
CREATE TABLE `Distributor` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `ContactInformation` int(100) DEFAULT NULL,
  `DateAdded` int(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `Status` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `Addres` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Distributor
-- ----------------------------
INSERT INTO `Distributor` VALUES ('1', 'Motorworld', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ProductModel
-- ----------------------------
DROP TABLE IF EXISTS `ProductModel`;
CREATE TABLE `ProductModel` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `YearModel` int(11) DEFAULT NULL,
  `Details` varchar(100) DEFAULT NULL,
  `BrandID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ProductModel
-- ----------------------------
INSERT INTO `ProductModel` VALUES ('1', 'test', '33', 'sdfa', '3');

-- ----------------------------
-- Table structure for ProductOption
-- ----------------------------
DROP TABLE IF EXISTS `ProductOption`;
CREATE TABLE `ProductOption` (
  `ProductOptionID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductOptionNameID` int(11) DEFAULT NULL,
  `ProductTypeID` int(11) DEFAULT NULL,
  `AddedBy` int(255) DEFAULT NULL,
  `DateAdded` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductOptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ProductOption
-- ----------------------------
INSERT INTO `ProductOption` VALUES ('1', '1', '1', null, null);
INSERT INTO `ProductOption` VALUES ('2', '1', '1', '1', 'Sun Sep 20 14:09:20 SGT 2015');
INSERT INTO `ProductOption` VALUES ('3', '1', '1', '1', 'Sun Sep 20 14:09:44 SGT 2015');
INSERT INTO `ProductOption` VALUES ('4', '1', '1', '1', 'Sun Sep 20 14:13:57 SGT 2015');
INSERT INTO `ProductOption` VALUES ('5', '1', '1', '1', 'Sun Sep 20 14:14:33 SGT 2015');
INSERT INTO `ProductOption` VALUES ('6', '1', '1', '1', 'Sun Sep 20 14:14:40 SGT 2015');
INSERT INTO `ProductOption` VALUES ('7', '1', '1', '1', 'Sun Sep 20 14:14:46 SGT 2015');
INSERT INTO `ProductOption` VALUES ('8', '1', '1', '1', 'Sun Sep 20 14:15:39 SGT 2015');
INSERT INTO `ProductOption` VALUES ('9', '1', '1', '1', 'Sun Sep 20 14:16:02 SGT 2015');
INSERT INTO `ProductOption` VALUES ('10', '1', '1', '1', 'Sun Sep 20 14:16:18 SGT 2015');
INSERT INTO `ProductOption` VALUES ('11', '1', '1', '1', 'Sun Sep 20 14:22:27 SGT 2015');
INSERT INTO `ProductOption` VALUES ('12', '1', '1', '1', 'Sun Sep 20 15:11:42 SGT 2015');

-- ----------------------------
-- Table structure for ProductOptionName
-- ----------------------------
DROP TABLE IF EXISTS `ProductOptionName`;
CREATE TABLE `ProductOptionName` (
  `ProductTypeId` int(11) DEFAULT NULL,
  `ProductOptionName` varchar(100) DEFAULT NULL,
  `ProductOptionNameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ProductOptionName
-- ----------------------------
INSERT INTO `ProductOptionName` VALUES ('100', null, null);

-- ----------------------------
-- Table structure for ProductOptionSelection
-- ----------------------------
DROP TABLE IF EXISTS `ProductOptionSelection`;
CREATE TABLE `ProductOptionSelection` (
  `ProductOptionSelectionID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductOptionValue` varchar(100) DEFAULT NULL,
  `ProductOptionID` int(11) DEFAULT NULL,
  `ProductOptionNameID` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ProductOptionSelectionID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ProductOptionSelection
-- ----------------------------
INSERT INTO `ProductOptionSelection` VALUES ('1', 'DEMO VALUE', null, '10', '1');
INSERT INTO `ProductOptionSelection` VALUES ('2', '2', null, '10', null);
INSERT INTO `ProductOptionSelection` VALUES ('3', 'DEMO VALUE', null, '10', '1');
INSERT INTO `ProductOptionSelection` VALUES ('4', 'DEMO VALUE', null, '10', '1');
INSERT INTO `ProductOptionSelection` VALUES ('5', 'DEMO VALUE', null, '10', '1');
INSERT INTO `ProductOptionSelection` VALUES ('6', 'DEMO VALUE', null, '10', '1');

-- ----------------------------
-- Table structure for ProductPriceTable
-- ----------------------------
DROP TABLE IF EXISTS `ProductPriceTable`;
CREATE TABLE `ProductPriceTable` (
  `Id` int(11) NOT NULL DEFAULT '0',
  `ProductId` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Msrp` float DEFAULT NULL,
  `dateAdded` varchar(100) DEFAULT NULL,
  `addedBy` int(255) DEFAULT NULL,
  `capitalPrice` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ProductPriceTable
-- ----------------------------

-- ----------------------------
-- Table structure for ProductTable
-- ----------------------------
DROP TABLE IF EXISTS `ProductTable`;
CREATE TABLE `ProductTable` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `Height` float DEFAULT NULL,
  `Color` varchar(100) DEFAULT NULL,
  `Code` varchar(100) DEFAULT NULL,
  `Sku` varchar(100) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `DistributorId` int(11) DEFAULT NULL,
  `DatePurchased` varchar(100) DEFAULT NULL,
  `OriginalPrice` float DEFAULT NULL,
  `DateReceived` varchar(100) DEFAULT NULL,
  `ProductType` varchar(100) DEFAULT NULL,
  `DateShipped` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Brand` varchar(100) DEFAULT NULL,
  `Model` int(100) DEFAULT NULL,
  `AddedBy` int(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Model` (`Model`),
  CONSTRAINT `ProductTable_ibfk_1` FOREIGN KEY (`Model`) REFERENCES `ProductModel` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ProductTable
-- ----------------------------
INSERT INTO `ProductTable` VALUES ('1', 'First Product', 'Description', '11', '1', '111', '1', null, null, null, null, null, null, '1', null, null, null, '1', null);
INSERT INTO `ProductTable` VALUES ('2', 'Test', '111', '11', '1', '111', '1', null, null, null, null, null, null, '200', null, null, null, null, null);

-- ----------------------------
-- Table structure for ProductType
-- ----------------------------
DROP TABLE IF EXISTS `ProductType`;
CREATE TABLE `ProductType` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `DateAdded` int(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `Details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ProductType
-- ----------------------------
INSERT INTO `ProductType` VALUES ('1', 'Apple', '123123', '1231231231', '1', 'Details');
INSERT INTO `ProductType` VALUES ('200', 'Frame', '1123123', '1231231231', '1', 'Details');

-- ----------------------------
-- Table structure for PromoTable
-- ----------------------------
DROP TABLE IF EXISTS `PromoTable`;
CREATE TABLE `PromoTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `percentOff` float DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PromoTable
-- ----------------------------

-- ----------------------------
-- Table structure for TaxRateTable
-- ----------------------------
DROP TABLE IF EXISTS `TaxRateTable`;
CREATE TABLE `TaxRateTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `taxPercent` float DEFAULT NULL,
  `DateAdded` varchar(100) DEFAULT NULL,
  `AddedBy` int(100) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TaxRateTable
-- ----------------------------

-- ----------------------------
-- Table structure for UserTable
-- ----------------------------
DROP TABLE IF EXISTS `UserTable`;
CREATE TABLE `UserTable` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `ContactNo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of UserTable
-- ----------------------------
