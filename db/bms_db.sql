/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : bms_db

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 17/02/2022 02:27:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_apartments
-- ----------------------------
DROP TABLE IF EXISTS `tbl_apartments`;
CREATE TABLE `tbl_apartments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  `owner_id` int(11) NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_buildings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_buildings`;
CREATE TABLE `tbl_buildings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_buildings
-- ----------------------------
INSERT INTO `tbl_buildings` VALUES (2, 'History', '3 street', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (3, 'Norcova', '3th address', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (17, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (18, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (24, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (27, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (32, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (33, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (34, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);
INSERT INTO `tbl_buildings` VALUES (35, 'Andro building', 'Kyiv ajax 3 treat', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_maintenances
-- ----------------------------
DROP TABLE IF EXISTS `tbl_maintenances`;
CREATE TABLE `tbl_maintenances`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_id` int(11) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `carried_date` date NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 1,
  `trade_licence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tbl_message_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_message_detail`;
CREATE TABLE `tbl_message_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `message_id` int(11) NULL DEFAULT NULL,
  `reg_date` date NULL DEFAULT NULL,
  `read_status` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_message_detail
-- ----------------------------
INSERT INTO `tbl_message_detail` VALUES (1, 'Hello', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (2, 'fdsfdsasdf', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (3, 'fdsasdfdsa', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (4, 'fdsasdfds', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (5, 'fdsasdfsa', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (6, 'fdsasdfdsa', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (7, 'Do fdsa', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (8, 'Hi what are you doing now I am very busy and please let me know if you are free', 1, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (9, 'Hi I am here', 2, 2, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (10, 'Hi I have some problem. So I conatct you', 1, 1, '2022-01-26', 0);
INSERT INTO `tbl_message_detail` VALUES (13, 'Hi sorry for the delay I am here', 1, 2, '2022-02-07', 0);
INSERT INTO `tbl_message_detail` VALUES (14, 'Are you there', 1, 2, '2022-02-07', 0);
INSERT INTO `tbl_message_detail` VALUES (15, 'Hi', 1, 1, '2022-02-10', 0);
INSERT INTO `tbl_message_detail` VALUES (16, 'Are you there?', 1, 1, '2022-02-10', 0);

-- ----------------------------
-- Table structure for tbl_messages
-- ----------------------------
DROP TABLE IF EXISTS `tbl_messages`;
CREATE TABLE `tbl_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `messages` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reg_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_messages
-- ----------------------------
INSERT INTO `tbl_messages` VALUES (1, 1, 'Message test', 'fdsasdfdsasdf', '2022-01-26');
INSERT INTO `tbl_messages` VALUES (2, 1, 'Test Message', 'This is test messages', '2022-01-26');

-- ----------------------------
-- Table structure for tbl_move_opinions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_move_opinions`;
CREATE TABLE `tbl_move_opinions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `move_id` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `reg_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_move_opinions
-- ----------------------------
INSERT INTO `tbl_move_opinions` VALUES (2, 9, 'Something went wrong', '2022-01-31');
INSERT INTO `tbl_move_opinions` VALUES (3, 5, 'Something is wrong\nPlease repost it again', '2022-01-31');
INSERT INTO `tbl_move_opinions` VALUES (4, 8, 'Something went worng\nNow I am waiting for the response\n', '2022-01-31');
INSERT INTO `tbl_move_opinions` VALUES (5, 9, 'Haha same again', '2022-01-31');
INSERT INTO `tbl_move_opinions` VALUES (6, 6, 'fdsasdfdsasdfsdasdf', '2022-02-07');

-- ----------------------------
-- Table structure for tbl_noc_move
-- ----------------------------
DROP TABLE IF EXISTS `tbl_noc_move`;
CREATE TABLE `tbl_noc_move`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `move_date` date NULL DEFAULT NULL,
  `tenants_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenants_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenants_mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachfile_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attachfile_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `owner_passport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title_deed` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenants_passport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenants_visa` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tenants_emirates_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `move_type` int(3) NULL DEFAULT 1,
  `status` int(11) NULL DEFAULT 1,
  `user_id` int(11) NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trade_licence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carried_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_noc_move
-- ----------------------------
INSERT INTO `tbl_noc_move` VALUES (5, NULL, 2, 1, '2022-02-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, NULL, NULL, NULL);
INSERT INTO `tbl_noc_move` VALUES (6, NULL, 2, 1, '2022-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 1, NULL, 'uploads/temp.pdf', NULL);
INSERT INTO `tbl_noc_move` VALUES (8, NULL, 3, 4, '2022-01-29', '1234', 'test@gta.com', '123', NULL, NULL, 'uploads/temp.pdf', 'uploads/temp.png', 'uploads/temp.pdf', 'uploads/temp.pdf', 'uploads/temp.pdf', 'uploads/temp.pdf', 1, 1, 1, NULL, NULL, NULL);
INSERT INTO `tbl_noc_move` VALUES (9, NULL, 2, 1, '2022-05-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 1, NULL, 'uploads/temp.pdf', 'I want to fix this issues.\nCurrent now I am making the constructor.\n\nHahahaha');

-- ----------------------------
-- Table structure for tbl_notify
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notify`;
CREATE TABLE `tbl_notify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `submit_date` date NULL DEFAULT NULL,
  `photofile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_notify
-- ----------------------------
INSERT INTO `tbl_notify` VALUES (2, NULL, 'I have one question\nIn my house have some problem and I want to repair this errors', '2022-01-25', 'uploads/16572289041643078867.jpg', 1, 1);
INSERT INTO `tbl_notify` VALUES (3, NULL, 'fdsasdfdsadf', '2022-01-25', 'uploads/7902466661643078971.jpg', 1, 1);

-- ----------------------------
-- Table structure for tbl_notify_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notify_detail`;
CREATE TABLE `tbl_notify_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `notify_id` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `submit_date` date NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_notify_detail
-- ----------------------------
INSERT INTO `tbl_notify_detail` VALUES (1, 1, 2, 'fdsasdf', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (2, 48, 2, 'fdsasdfrewq', '2022-01-29', NULL);
INSERT INTO `tbl_notify_detail` VALUES (3, 1, 2, 'This is the test Doc', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (4, 1, 2, 'fdsasdffdsa', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (5, 1, 2, 'fdsasdfdsa', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (6, 1, 2, 'fdsasdfdsasdfs', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (7, 1, 2, 'fdsasdfdsa', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (8, 1, 2, 'fdsasdfdsasdf', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (9, 1, 2, '222222', '2022-01-25', NULL);
INSERT INTO `tbl_notify_detail` VALUES (10, 1, 2, 'fdsasdfdsasdfffff', '2022-01-26', NULL);
INSERT INTO `tbl_notify_detail` VALUES (11, 1, 2, 'fdsasdfdsa222222', '2022-01-26', NULL);

-- ----------------------------
-- Table structure for tbl_owners
-- ----------------------------
DROP TABLE IF EXISTS `tbl_owners`;
CREATE TABLE `tbl_owners`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `USER_UNIQUE_UNIT`(`user_id`, `unit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_owners
-- ----------------------------
INSERT INTO `tbl_owners` VALUES (3, 1, 2, 1);
INSERT INTO `tbl_owners` VALUES (4, 1, 3, 4);
INSERT INTO `tbl_owners` VALUES (8, 0, 3, 4);
INSERT INTO `tbl_owners` VALUES (10, 0, 3, 3);
INSERT INTO `tbl_owners` VALUES (12, 55, 3, 3);
INSERT INTO `tbl_owners` VALUES (13, 55, 3, 4);

-- ----------------------------
-- Table structure for tbl_units
-- ----------------------------
DROP TABLE IF EXISTS `tbl_units`;
CREATE TABLE `tbl_units`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `building_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_units
-- ----------------------------
INSERT INTO `tbl_units` VALUES (1, 'GF5', 2);
INSERT INTO `tbl_units` VALUES (3, '101', 3);
INSERT INTO `tbl_units` VALUES (4, '102', 3);
INSERT INTO `tbl_units` VALUES (7, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (8, 'Andro building', 2);
INSERT INTO `tbl_units` VALUES (9, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (10, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (11, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (12, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (13, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (14, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (15, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (16, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (17, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (18, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (19, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (20, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (21, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (22, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (23, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (24, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (25, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (26, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (27, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (28, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (29, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (30, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (31, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (32, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (33, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (34, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (35, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (36, 'Andro building', 3);
INSERT INTO `tbl_units` VALUES (37, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (38, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (39, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (40, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (41, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (42, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (43, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (44, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (45, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (46, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (47, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (48, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (49, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (50, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (51, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (52, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (53, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (54, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (55, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (56, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (57, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (58, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (59, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (60, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (61, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (62, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (63, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (64, 'Andro building', 17);
INSERT INTO `tbl_units` VALUES (65, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (66, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (67, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (68, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (69, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (70, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (71, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (72, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (73, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (74, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (75, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (76, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (77, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (78, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (79, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (80, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (81, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (82, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (83, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (84, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (85, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (86, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (87, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (88, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (89, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (90, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (91, 'Andro building', 27);
INSERT INTO `tbl_units` VALUES (92, 'Andro building', 27);

-- ----------------------------
-- Table structure for tbl_users
-- ----------------------------
DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE `tbl_users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `other` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(3) NULL DEFAULT 1,
  `building_id` int(11) NULL DEFAULT NULL,
  `role` int(11) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_users
-- ----------------------------
INSERT INTO `tbl_users` VALUES (1, 'Neymar', 'John', 'neymarjohn215@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2432124', '12343214321', 'uploads/7165347501642519590.jpg', NULL, 2, 1, 1);
INSERT INTO `tbl_users` VALUES (55, 'Roman', 'Kor1', 'roman@gmail.com', '25f9e794323b453885f5181f1b624d0b', '1234321234231', NULL, NULL, NULL, 1, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
