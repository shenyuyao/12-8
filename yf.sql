/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50719
Source Host           : localhost:3307
Source Database       : newdata

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-12-08 11:13:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yf
-- ----------------------------
DROP TABLE IF EXISTS `yf`;
CREATE TABLE `yf` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `titles` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yf
-- ----------------------------
INSERT INTO `yf` VALUES ('1', 'Dont fcvghb cfgvbhnj', '/images/4.jpg', '第一件衣服', '$50.00', 'dfgh esdfghjn edcfgvhbjnmk dfcgvbhjnm ddfghbnjmk dcfgvhjk fcgvhbn sdfghj erfgh');
INSERT INTO `yf` VALUES ('2', 'Dont fcvghb cfgvbhnj', '/images/5.jpg', '第二件衣服', '$50.00', 'dfgh esdfghjn edcfgvhbjnmk dfcgvbhjnm ddfghbnjmk dcfgvhjk fcgvhbn sdfghj erfgh');
INSERT INTO `yf` VALUES ('3', 'Dont fcvghb cfgvbhnj', '/images/5.jpg', '第三件衣服', '$50.00', 'dfgh esdfghjn edcfgvhbjnmk dfcgvbhjnm ddfghbnjmk dcfgvhjk fcgvhbn sdfghj erfgh');
INSERT INTO `yf` VALUES ('4', 'Dont fcvghb cfgvbhnj', '/images/4.jpg', '第四件衣服', '$50.00', 'dfgh esdfghjn edcfgvhbjnmk dfcgvbhjnm ddfghbnjmk dcfgvhjk fcgvhbn sdfghj erfgh');
