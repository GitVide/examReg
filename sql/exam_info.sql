/*
 Navicat Premium Data Transfer

 Source Server         : spring
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : xm11

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 20/06/2020 10:59:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for exam_info
-- ----------------------------
DROP TABLE IF EXISTS `exam_info`;
CREATE TABLE `exam_info`  (
  `exam_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_used` int(11) NULL DEFAULT 0,
  `is_now` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`exam_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of exam_info
-- ----------------------------
INSERT INTO `exam_info` VALUES ('asd', 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
