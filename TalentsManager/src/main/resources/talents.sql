/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : talents

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 19/11/2019 00:19:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '项目经理');
INSERT INTO `department` VALUES (2, '财务总监');
INSERT INTO `department` VALUES (3, '销售经理');
INSERT INTO `department` VALUES (4, '最代码管理');

-- ----------------------------
-- Table structure for enterprise_talent
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_talent`;
CREATE TABLE `enterprise_talent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) DEFAULT NULL,
  `graduate_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `personal_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `work_experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `working_life` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of enterprise_talent
-- ----------------------------
INSERT INTO `enterprise_talent` VALUES (1, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (2, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (3, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (4, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (5, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (6, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (7, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (8, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (9, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (10, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (11, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (12, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (13, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (14, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (15, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (16, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (17, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (18, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (19, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (20, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (21, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (22, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (23, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (24, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (25, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (26, 1, '清华大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (27, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (28, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (29, 2, '北京大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (30, 3, '哈尔滨大学', 'xxx', '性别：男，爱好：运动', '五年工作经验，做过大项目', 5);
INSERT INTO `enterprise_talent` VALUES (31, 4, '北京最代码科技有限公司', '最代码', 'zuidaima.com', 'zuidaima.com', 10);

SET FOREIGN_KEY_CHECKS = 1;
