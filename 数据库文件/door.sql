SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ActivityRooms
-- ----------------------------
DROP TABLE IF EXISTS `ActivityRooms`;
CREATE TABLE `ActivityRooms` (
  `room_Id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(20) NOT NULL,
  `information` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ActivityRooms
-- ----------------------------
INSERT INTO `ActivityRooms` VALUES ('1', '第四教学楼', '4501');

-- ----------------------------
-- Table structure for Open
-- ----------------------------
DROP TABLE IF EXISTS `Open`;
CREATE TABLE `Open` (
  `index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Open
-- ----------------------------
INSERT INTO `Open` VALUES ('0');

-- ----------------------------
-- Table structure for Reservations
-- ----------------------------
DROP TABLE IF EXISTS `Reservations`;
CREATE TABLE `Reservations` (
  `reservation_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `valid` bit(1) NOT NULL,
  `lock` bit(1) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT NULL,
  `finish` int(11) DEFAULT NULL,
  `qr_location` varchar(50) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reservation_Id`),
  KEY `user_id` (`user_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `Reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Reservations_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `ActivityRooms` (`room_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Reservations
-- ----------------------------
INSERT INTO `Reservations` VALUES ('2', '7', '1', '', '\0', '2017', '7', '10', '900', '1000', '../qr_img/qr2.jpg', '');
INSERT INTO `Reservations` VALUES ('3', '3', '1', '', '\0', '2017', '7', '10', '1530', '1600', '../qr_img/qr3.jpg', '');

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `wechat_id` varchar(16) DEFAULT NULL,
  `phone_number` varchar(13) DEFAULT NULL,
  `identity_number` varchar(9) DEFAULT NULL,
  `is_temporary` bit(1) DEFAULT NULL,
  `is_manager` bit(1) DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO `Users` VALUES ('1', '陈爱明', '123456', '1273391194', '15285731997', '092214109', '\0', '', '');
