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

 Date: 18/06/2020 11:05:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_right
-- ----------------------------
DROP TABLE IF EXISTS `user_right`;
CREATE TABLE `user_right`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账户名',
  `user_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_role` int(11) NULL DEFAULT NULL COMMENT '权限代码',
  `user_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '连接其他表，用于查找账户的具体信息',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
