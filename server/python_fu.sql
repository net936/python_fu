/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_fu

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 20/07/2024 21:11:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1721137389652.jpeg', 'https://gitapp.cn/', '2024-07-16 21:43:12.242642');
INSERT INTO `b_ad` VALUES (2, 'ad/1721137395524.jpeg', 'https://m3u8player.org', '2024-07-16 21:43:19.019786');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '童装', '2024-07-14 22:18:45.987588');
INSERT INTO `b_classification` VALUES (2, '装饰品', '2024-07-14 22:18:50.513896');
INSERT INTO `b_classification` VALUES (3, '内衣', '2024-07-14 22:19:00.679727');
INSERT INTO `b_classification` VALUES (4, '女装', '2024-07-15 21:40:22.683161');
INSERT INTO `b_classification` VALUES (5, '男装', '2024-07-20 11:14:53.593977');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (3, '哈哈哈哈', '2024-07-20 21:05:21.346571', 0, 15, 2);
INSERT INTO `b_comment` VALUES (4, '9999', '2024-07-20 21:05:23.887930', 0, 15, 2);
INSERT INTO `b_comment` VALUES (5, '8888', '2024-07-20 21:10:22.509335', 7, 16, 2);
INSERT INTO `b_comment` VALUES (6, '2222222222', '2024-07-20 21:10:25.940758', 1, 16, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '111111111111111111111', '武松', '222211@gmail.com', '2222651534', '2024-07-16 21:44:09.325896');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 22:16:04.279025');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-16 20:21:00.495603');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-16 20:50:16.324859');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 11:14:06.054802');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 11:14:17.840486');
INSERT INTO `b_login_log` VALUES (6, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 21:02:04.618903');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '13333', '2024-07-16 21:43:25.707058');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1271 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-14 22:15:17.643384', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-14 22:15:17.667573', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-14 22:15:17.684920', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-14 22:15:23.424358', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-14 22:15:23.425774', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-14 22:15:23.425774', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-14 22:16:04.289026', '/myapp/admin/adminLogin', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-14 22:16:04.680380', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-14 22:16:04.682866', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-14 22:16:06.473833', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-14 22:16:07.043209', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-14 22:16:07.046852', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-14 22:17:40.420909', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-14 22:17:40.913337', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-14 22:17:40.915633', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-14 22:18:26.044366', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-14 22:18:26.047314', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-14 22:18:28.427600', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-14 22:18:28.904266', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-14 22:18:28.908402', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-14 22:18:38.610302', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-14 22:18:46.000050', '/myapp/admin/classification/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-14 22:18:46.044791', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-14 22:18:50.516512', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-14 22:18:50.563901', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-14 22:19:00.684784', '/myapp/admin/classification/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-14 22:19:00.731570', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-14 22:19:02.041497', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-14 22:19:02.044840', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-14 22:19:25.160430', '/myapp/admin/thing/create', 'POST', NULL, '495');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-14 22:19:25.236570', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-14 22:19:27.417293', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-14 22:19:28.362333', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-14 22:19:28.385427', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-15 21:31:13.049420', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-15 21:31:13.051979', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-15 21:34:50.674405', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-15 21:36:47.688998', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-15 21:36:47.698034', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-15 21:36:47.707776', '/upload/cover/1720966756430.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-15 21:36:47.756927', '/upload/cover/1720966756430.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-15 21:36:47.947643', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-15 21:36:47.973063', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-15 21:37:49.168647', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-15 21:37:49.243341', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-15 21:38:23.963379', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-15 21:38:30.497904', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-15 21:38:31.887999', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-15 21:38:44.245471', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-15 21:38:44.469843', '/myapp/admin/thing/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-15 21:39:05.667240', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-15 21:39:05.895469', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-15 21:39:26.979675', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-15 21:39:27.171344', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-15 21:39:43.290029', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-15 21:39:43.496287', '/myapp/admin/thing/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-15 21:40:04.058844', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-15 21:40:04.257227', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-15 21:40:08.894929', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-15 21:40:22.690087', '/myapp/admin/classification/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-15 21:40:22.740408', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-15 21:40:24.974152', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-15 21:40:25.107057', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-15 21:40:26.906166', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-15 21:40:41.300847', '/myapp/admin/thing/update', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-15 21:40:41.512741', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-15 21:40:57.613118', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-15 21:40:57.813223', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-15 21:41:03.838510', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-15 21:41:04.049976', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-15 21:41:08.043838', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-15 21:41:08.270299', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-15 21:41:11.922669', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-15 21:41:12.145316', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-15 21:41:16.720713', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-15 21:41:16.912383', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-15 21:41:33.365892', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-15 21:41:33.540145', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-15 21:41:42.420724', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-15 21:41:45.186781', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-15 21:41:45.386245', '/myapp/admin/thing/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-15 21:41:47.922218', '/myapp/index/thing/getRecommend', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-15 21:41:47.955516', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-15 21:41:47.997467', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-15 21:41:48.008852', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-15 21:41:48.020832', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-15 21:41:48.039136', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-15 21:41:48.051557', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-15 21:41:48.051557', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-15 21:41:48.054920', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-15 21:41:48.078503', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-15 21:41:48.334172', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-15 21:41:48.336887', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-15 21:41:48.372950', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-15 21:41:54.476969', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-15 21:41:55.076071', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-15 21:41:55.707251', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-15 21:41:56.041906', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-15 21:41:57.884796', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-15 21:41:59.712502', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-15 21:42:46.158427', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-15 21:42:59.372556', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-15 21:42:59.581575', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-15 21:43:05.165879', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-15 21:43:05.213547', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-15 21:43:05.735889', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-15 21:43:35.843910', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-15 21:43:35.851311', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-15 21:43:35.859778', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-15 21:43:35.876464', '/myapp/index/thing/getRecommend', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-15 21:43:35.930963', '/myapp/index/thing/getRecommend', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-15 21:43:37.214435', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-15 21:43:37.215476', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-15 21:43:37.244024', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-15 21:43:37.294312', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-15 21:43:37.299381', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-15 21:43:37.311220', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-15 21:43:37.328355', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-15 21:43:37.330570', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-15 21:43:37.332685', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-15 21:43:38.031560', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-15 21:43:38.048254', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-15 21:43:38.069350', '/myapp/index/notice/list_api', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-15 21:43:38.085774', '/myapp/index/notice/list_api', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-15 21:43:38.116824', '/myapp/index/notice/list_api', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-15 21:43:38.891797', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-15 21:43:38.908769', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-15 21:43:38.957336', '/myapp/index/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-15 21:43:39.757161', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-15 21:43:39.774370', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-15 21:43:39.790246', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-15 21:43:39.833696', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-15 21:43:39.890137', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-15 21:43:41.046970', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-15 21:43:41.056167', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-15 21:43:41.092886', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-15 21:43:41.136759', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-15 21:43:41.859848', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-15 21:43:41.859848', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-15 21:43:41.890417', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-15 21:43:41.924009', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-15 21:43:41.957199', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-15 21:43:42.618570', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-15 21:43:42.624205', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-15 21:43:42.675574', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-15 21:43:43.905416', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-15 21:43:43.917397', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-15 21:43:43.933809', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-15 21:43:43.967639', '/myapp/index/thing/detail', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-15 21:43:43.992405', '/myapp/index/thing/detail', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-15 21:45:31.005715', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-15 21:45:31.019396', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-15 21:45:31.022644', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-15 21:45:31.064742', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-15 21:45:31.100780', '/myapp/index/thing/getRecommend', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-15 21:58:08.966087', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-15 21:58:09.053590', '/myapp/index/comment/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-15 21:58:09.066353', '/myapp/index/comment/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-15 21:58:09.268302', '/myapp/index/comment/list', 'GET', NULL, '321');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-15 21:58:09.298816', '/myapp/index/comment/list', 'GET', NULL, '352');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-15 21:58:37.185916', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-15 21:58:37.226489', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-15 21:58:37.240829', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-15 21:58:37.264769', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-15 21:58:37.297087', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-15 21:58:37.306755', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-15 21:58:37.348397', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-15 21:58:37.365057', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-15 21:58:37.365057', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-15 21:59:17.380700', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-15 21:59:17.387092', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-15 21:59:17.403457', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-15 21:59:17.435820', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-15 21:59:17.441876', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-15 21:59:17.467927', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-15 21:59:17.499491', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-15 22:03:05.462301', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-15 22:04:39.284593', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-15 22:04:39.290538', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-15 22:04:39.340578', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-15 22:04:39.353641', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-15 22:04:39.370361', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-15 22:04:39.426401', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-15 22:04:39.428745', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-15 22:04:39.434258', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-15 22:05:56.450248', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-15 22:05:56.480721', '/myapp/admin/ad/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-15 22:05:56.492454', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-15 22:05:56.508920', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-15 22:05:56.522729', '/upload/cover/1721050716882.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-15 22:05:56.578051', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-15 22:06:38.120653', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-15 22:06:38.230509', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-15 22:06:38.246161', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-15 22:06:38.309544', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-15 22:06:38.325264', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-15 22:06:39.218255', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-15 22:06:39.257767', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-15 22:06:39.310804', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-15 22:06:39.322467', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-15 22:06:39.372262', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-15 22:06:39.372807', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-15 22:06:39.377897', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-15 22:06:39.379414', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-15 22:06:55.079919', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-15 22:06:55.101495', '/myapp/admin/ad/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-15 22:06:55.126218', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-15 22:06:55.151533', '/myapp/admin/ad/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-15 22:06:55.166428', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-15 22:06:55.218163', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-15 22:06:55.227464', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-15 22:07:04.044489', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-15 22:07:04.059708', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-15 22:07:04.106394', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-15 22:07:04.140080', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-15 22:07:04.157175', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-15 22:07:04.197639', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-15 22:08:59.322707', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-15 22:08:59.322707', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-15 22:08:59.385386', '/myapp/index/thing/detail', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-15 22:08:59.394332', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-15 22:08:59.424074', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-15 22:08:59.471772', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-15 22:08:59.487906', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-15 22:08:59.487906', '/upload/cover/1721050614545.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-16 20:19:27.283913', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-16 20:19:27.286784', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-16 20:19:27.306827', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-16 20:19:27.322193', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-16 20:19:27.339734', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-16 20:19:27.365699', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-16 20:20:53.041312', '/myapp/index/user/login', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-16 20:20:57.984132', '/myapp/index/user/register', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-16 20:21:00.502383', '/myapp/index/user/login', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-16 20:21:00.950323', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-16 20:21:00.991422', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-16 20:21:01.023547', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-16 20:21:01.075942', '/upload/cover/1721050833371.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-16 20:21:01.080277', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-16 20:21:01.080277', '/upload/cover/1721050833371.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-16 20:21:01.087955', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-16 20:21:01.090944', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-16 20:21:01.090944', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-16 20:21:03.086074', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-16 20:21:03.086074', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-16 20:21:03.117790', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-16 20:21:03.151135', '/myapp/index/thing/detail', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-16 20:21:03.184552', '/myapp/index/thing/detail', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-16 20:21:36.108118', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-16 20:21:54.160759', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-16 20:21:59.011966', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-16 20:23:30.771617', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-16 20:23:58.227977', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-16 20:27:09.185464', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-16 20:31:34.742727', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-16 20:32:18.221569', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-16 20:33:22.122989', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-16 20:34:52.683708', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-16 20:35:19.844779', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-16 20:35:23.196613', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-16 20:35:29.270164', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-16 20:36:52.986657', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-16 20:37:05.842736', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-16 20:37:24.942991', '/myapp/index/order/create', 'POST', NULL, '2810');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-16 20:39:40.111290', '/myapp/index/order/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-16 20:39:40.607327', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-16 20:40:10.016125', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-16 20:40:10.018682', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-16 20:40:10.018682', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-16 20:40:10.034315', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-16 20:40:10.047277', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-16 20:40:15.078737', '/myapp/index/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-16 20:41:13.060459', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-16 20:46:16.712148', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-16 20:46:16.716863', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-16 20:46:16.730946', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-16 20:46:16.739506', '/myapp/index/order/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-16 20:46:16.743447', '/myapp/index/order/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-16 20:50:07.417668', '/myapp/index/order/cancel_order', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-16 20:50:07.449849', '/myapp/index/order/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-16 20:50:10.763307', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-16 20:50:10.881959', '/myapp/admin/thing/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-16 20:50:16.324859', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-16 20:50:16.414599', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-16 20:50:16.504471', '/myapp/admin/classification/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-16 20:51:29.985072', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-16 20:53:11.770109', '/myapp/admin/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-16 20:53:46.185984', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-16 21:03:39.028364', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-16 21:07:57.635632', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-16 21:08:59.179599', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-16 21:09:05.714105', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-16 21:09:08.736743', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-16 21:10:02.117846', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-16 21:10:04.900950', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-16 21:10:57.150904', '/myapp/admin/order/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-16 21:10:59.520562', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-16 21:11:35.916420', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-16 21:11:38.803725', '/myapp/admin/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-16 21:12:44.938683', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-16 21:12:47.765998', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-16 21:13:05.213161', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-16 21:13:06.983888', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-16 21:13:17.587016', '/myapp/admin/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-16 21:13:38.646809', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-16 21:13:41.314308', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-16 21:14:11.860379', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-16 21:16:51.665236', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-16 21:18:35.584954', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-16 21:18:54.206781', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-16 21:19:10.826739', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-16 21:19:39.057004', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-16 21:19:51.300803', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-16 21:19:53.540213', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-16 21:19:57.359870', '/myapp/admin/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-16 21:20:00.060513', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-16 21:20:25.634855', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-16 21:22:44.067478', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-16 21:23:02.026417', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-16 21:23:44.101987', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-16 21:23:47.506443', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-16 21:24:31.224093', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-16 21:24:33.741086', '/myapp/admin/order/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-16 21:26:52.433315', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-16 21:26:54.350789', '/myapp/admin/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-16 21:27:10.839771', '/myapp/admin/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-16 21:27:18.386966', '/myapp/admin/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-16 21:27:39.095258', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-16 21:27:46.895947', '/myapp/admin/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-16 21:28:48.157000', '/myapp/admin/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-16 21:29:08.241048', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-16 21:29:40.497766', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-16 21:29:54.253473', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-16 21:29:54.287181', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-16 21:29:54.301339', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-16 21:29:55.953934', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-16 21:29:55.969927', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-16 21:29:55.970373', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-16 21:29:55.989541', '/myapp/admin/ad/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-16 21:29:56.003761', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-16 21:30:06.158170', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-16 21:30:06.181628', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-16 21:30:06.209579', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-16 21:30:06.209579', '/myapp/admin/ad/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-16 21:30:11.285908', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-16 21:30:31.325611', '/myapp/index/order/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-16 21:30:31.372063', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-16 21:30:32.907004', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-16 21:30:32.924343', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-16 21:30:32.924343', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-16 21:30:32.941685', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-16 21:30:32.948224', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-16 21:30:39.382217', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-16 21:30:39.746680', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-16 21:31:28.965960', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-16 21:31:29.382114', '/myapp/admin/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-16 21:31:35.908780', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-16 21:31:35.908780', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-16 21:31:35.957880', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-16 21:31:36.888957', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-16 21:31:36.892502', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-16 21:31:36.892502', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-16 21:31:36.939970', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-16 21:31:36.958364', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-16 21:31:41.326038', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-16 21:31:41.329244', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-16 21:31:41.361656', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-16 21:31:41.397464', '/myapp/admin/ad/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-16 21:31:43.421845', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-16 21:31:43.429056', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-16 21:31:43.463856', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-16 21:31:43.497013', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-16 21:31:45.747023', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-16 21:31:45.760135', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-16 21:31:45.789900', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-16 21:31:45.811349', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-16 21:31:47.539209', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-16 21:31:47.548145', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-16 21:31:47.589329', '/myapp/index/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-16 21:31:50.271284', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-16 21:31:50.276635', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-16 21:31:50.294526', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-16 21:31:50.341416', '/myapp/index/comment/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-16 21:31:50.363542', '/myapp/index/comment/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-16 21:31:52.074025', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-16 21:31:52.078013', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-16 21:31:52.121687', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-16 21:31:53.797077', '/myapp/index/thing/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-16 21:31:53.812996', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-16 21:31:53.830362', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-16 21:31:53.847684', '/myapp/index/thing/detail', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-16 21:31:53.880350', '/myapp/index/thing/detail', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-16 21:31:56.165581', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-16 21:31:56.181027', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-16 21:31:56.197154', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-16 21:31:57.478202', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-16 21:31:57.483878', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-16 21:31:57.497670', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-16 21:31:57.526460', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-16 21:31:57.559078', '/myapp/index/comment/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-16 21:31:58.958626', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-16 21:31:58.965752', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-16 21:31:59.010596', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-16 21:31:59.702423', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-16 21:31:59.722393', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-16 21:31:59.722393', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-16 21:31:59.754677', '/myapp/index/thing/detail', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-16 21:31:59.787428', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-16 21:32:01.158290', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-16 21:32:01.165789', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-16 21:32:01.205760', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-16 21:32:13.613509', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-16 21:32:14.537160', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-16 21:32:14.547300', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-16 21:32:14.576297', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-16 21:35:12.778163', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-16 21:35:12.794262', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-16 21:35:12.828144', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-16 21:35:29.410098', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-16 21:35:29.425601', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-16 21:35:29.459029', '/myapp/index/classification/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-16 21:36:21.600456', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-16 21:36:21.616083', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-16 21:36:21.649876', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-16 21:37:26.898591', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-16 21:37:26.912804', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-16 21:37:26.946314', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-16 21:37:52.908358', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-16 21:38:22.837363', '/myapp/index/order/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-16 21:38:22.910166', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-16 21:38:47.147808', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-16 21:38:47.163430', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-16 21:38:47.179111', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-16 21:38:47.183459', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-16 21:38:47.194917', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-16 21:39:29.312078', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-16 21:39:29.317331', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-16 21:39:29.361535', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-16 21:39:30.062543', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-16 21:39:30.077390', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-16 21:39:30.077390', '/myapp/admin/ad/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-16 21:39:30.128156', '/myapp/admin/ad/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-16 21:39:30.144788', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-16 21:39:32.717844', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-16 21:39:37.053897', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-16 21:39:37.073042', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-16 21:39:37.087370', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-16 21:39:37.111311', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-16 21:39:37.137239', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-16 21:39:39.829945', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-16 21:39:39.833965', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-16 21:39:39.877717', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-16 21:39:47.126125', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-16 21:39:47.127697', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-16 21:39:47.144131', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-16 21:39:47.177484', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-16 21:39:47.209619', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-16 21:39:49.427752', '/myapp/index/thing/addCollectUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-16 21:39:49.482428', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-16 21:39:49.878440', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-16 21:39:49.916343', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-16 21:39:51.403111', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-16 21:39:51.432433', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-16 21:39:54.336949', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-16 21:39:54.364133', '/myapp/index/thing/getWishThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-16 21:39:54.364133', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-16 21:39:54.380889', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-16 21:39:54.397597', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-16 21:39:55.653913', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-16 21:39:56.308101', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-16 21:39:57.105929', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-16 21:39:57.114157', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-16 21:39:57.148214', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-16 21:40:01.741202', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-16 21:40:01.756742', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-16 21:40:03.349576', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-16 21:40:03.389851', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-16 21:40:04.184110', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-16 21:40:04.184110', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-16 21:40:04.234155', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-16 21:40:09.929698', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-16 21:40:09.932634', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-16 21:40:09.953911', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-16 21:40:09.997589', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-16 21:40:10.013020', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-16 21:40:11.740539', '/myapp/index/thing/addCollectUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-16 21:40:11.769234', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-16 21:40:12.132260', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-16 21:40:12.172379', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-16 21:40:13.367723', '/myapp/index/thing/rate', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-16 21:40:50.200828', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-16 21:40:50.217531', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-16 21:40:50.217531', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-16 21:40:50.267710', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-16 21:40:50.284462', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-16 21:40:58.756604', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-16 21:40:58.774212', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-16 21:40:58.795103', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-16 21:40:58.831122', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-16 21:41:02.680608', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-16 21:41:02.728324', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-16 21:41:03.110923', '/myapp/index/thing/addCollectUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-16 21:41:03.179551', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-16 21:41:14.459223', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-16 21:41:49.234906', '/myapp/index/order/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-16 21:41:49.263877', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-16 21:41:51.672635', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-16 21:41:51.691917', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-16 21:41:51.705769', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-16 21:41:51.723699', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-16 21:41:51.731735', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-16 21:42:17.879167', '/myapp/admin/user/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-16 21:42:18.278969', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-16 21:42:38.558307', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-16 21:42:38.655025', '/myapp/admin/classification/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-16 21:42:39.769763', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-16 21:42:40.771805', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-16 21:42:43.454684', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-16 21:42:43.454684', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-16 21:42:43.503272', '/myapp/index/classification/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-16 21:42:44.166478', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-16 21:42:44.173707', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-16 21:42:44.173707', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-16 21:42:44.219540', '/myapp/admin/ad/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-16 21:42:44.259955', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-16 21:42:47.951893', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-16 21:42:47.982193', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-16 21:42:49.448087', '/myapp/index/comment/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-16 21:42:49.477464', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-16 21:42:50.565453', '/myapp/index/comment/create', 'POST', NULL, '3');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-16 21:42:52.047134', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-16 21:42:52.077873', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-16 21:42:52.836527', '/myapp/index/comment/like', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-16 21:42:52.876096', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-16 21:42:53.682267', '/myapp/index/comment/like', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-16 21:42:53.714324', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-16 21:42:53.893928', '/myapp/index/comment/like', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-16 21:42:53.929937', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-16 21:42:54.036375', '/myapp/index/comment/like', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-16 21:42:54.064790', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-16 21:42:54.200216', '/myapp/index/comment/like', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-16 21:42:54.230943', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-16 21:42:54.350102', '/myapp/index/comment/like', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-16 21:42:54.377363', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-16 21:42:54.541793', '/myapp/index/comment/like', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-16 21:42:54.577609', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-16 21:42:56.278793', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-16 21:43:00.930263', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-16 21:43:01.391589', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-16 21:43:02.279737', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-16 21:43:03.910234', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-16 21:43:12.246860', '/myapp/admin/ad/create', 'POST', NULL, '342');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-16 21:43:12.263165', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-16 21:43:12.293163', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-16 21:43:19.023943', '/myapp/admin/ad/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-16 21:43:19.069456', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-16 21:43:19.102128', '/upload/ad/1721137395524.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-16 21:43:20.189964', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-16 21:43:25.726366', '/myapp/admin/notice/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-16 21:43:25.740052', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-16 21:43:30.654288', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-16 21:43:30.675758', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-16 21:43:30.692438', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-16 21:43:30.692438', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-16 21:43:30.727040', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-16 21:43:31.885884', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-16 21:43:34.709416', '/myapp/admin/overview/count', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-16 21:43:52.333746', '/myapp/admin/feedback/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-16 21:43:55.169812', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-16 21:44:09.328428', '/myapp/index/feedback/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-16 21:44:10.922718', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-16 21:44:12.249343', '/myapp/admin/overview/count', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-16 21:44:12.907712', '/myapp/admin/feedback/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-16 21:44:38.289341', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-16 21:44:38.999203', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-16 21:45:18.002372', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-16 21:45:18.356605', '/myapp/admin/feedback/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-16 21:45:21.497020', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-16 21:45:21.499748', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-16 21:45:21.533311', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-16 21:46:05.133958', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-16 21:46:05.133958', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-16 21:46:05.183987', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-16 21:46:06.714344', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-16 21:46:06.759499', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-16 21:46:07.346069', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-16 21:46:07.355687', '/myapp/index/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-16 21:46:07.389910', '/myapp/index/classification/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-16 21:46:14.742489', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-16 21:46:14.775235', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-16 21:46:14.792920', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-16 21:46:14.808757', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-16 21:46:14.826633', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-16 21:46:16.038413', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-16 21:46:16.791448', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-16 21:46:43.087844', '/myapp/index/comment/listMyComments', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-16 21:46:43.114842', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-16 21:46:43.116853', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-16 21:46:43.138351', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-16 21:46:43.138351', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-16 21:46:43.787654', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-16 21:46:49.437954', '/myapp/admin/feedback/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-16 21:46:51.193787', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-16 21:46:51.289512', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-16 21:46:59.752952', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-16 21:47:00.402413', '/myapp/admin/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-16 21:47:26.415146', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-16 21:47:26.421165', '/myapp/index/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-16 21:47:26.456486', '/myapp/index/classification/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-16 21:47:26.795214', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-16 21:47:26.831033', '/myapp/index/thing/getRecommend', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-16 21:47:27.994963', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-16 21:47:27.999953', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-16 21:47:28.039912', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-16 21:47:29.112100', '/myapp/admin/ad/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-16 21:47:29.130623', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-16 21:47:29.144664', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-16 21:47:29.186807', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-16 21:47:29.203697', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-16 21:47:29.724254', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-16 21:47:29.736726', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-16 21:47:31.907261', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-16 21:47:31.913567', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-16 21:47:31.963186', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-16 21:47:50.836094', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-16 21:48:02.418626', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-16 21:48:02.445184', '/myapp/index/thing/getRecommend', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-16 21:48:29.959701', '/myapp/admin/user/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-16 21:48:37.343422', '/myapp/admin/user/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-16 21:48:37.379662', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-16 21:48:47.850583', '/myapp/admin/user/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-16 21:48:47.871454', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-16 21:48:57.255161', '/myapp/admin/user/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-16 21:48:57.298710', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-16 21:49:08.550861', '/myapp/admin/user/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-16 21:49:08.584307', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-16 21:49:25.047775', '/myapp/admin/user/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-16 21:49:25.100593', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-16 21:49:28.075024', '/myapp/admin/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-16 21:49:28.712593', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-16 21:49:29.468957', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-16 21:49:29.579700', '/myapp/admin/classification/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-16 21:49:31.752406', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-16 21:49:31.752406', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-16 21:49:31.802397', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-16 21:49:32.569124', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-16 21:49:33.220288', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-16 21:49:33.921186', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-16 21:49:37.866625', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-16 21:49:37.866625', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-16 21:49:37.916558', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-16 21:49:37.933467', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-16 21:49:39.616220', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-16 21:49:39.652425', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-16 21:49:40.050363', '/myapp/index/thing/addCollectUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-16 21:49:40.100520', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-16 21:49:42.093382', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-16 21:49:42.105815', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-16 21:49:42.117352', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-16 21:49:42.121055', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-16 21:49:42.133739', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-16 21:49:50.448763', '/myapp/index/user/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-16 21:49:51.267948', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-16 21:49:51.306083', '/upload/avatar/1721137786035.png', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-16 21:49:51.308720', '/upload/avatar/1721137786035.png', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-16 21:49:51.317833', '/upload/avatar/1721137786035.png', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-16 21:49:51.317833', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-16 21:49:51.337091', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-16 21:49:52.893053', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-16 21:49:52.896773', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-16 21:49:52.929258', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-16 21:49:54.579285', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-16 21:49:54.597618', '/myapp/index/thing/getRecommend', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-16 21:49:55.178918', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-16 21:49:55.194886', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-16 21:49:55.214074', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-16 21:49:57.594852', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-16 21:49:57.634981', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-16 21:49:57.635951', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-16 21:49:57.643656', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-16 21:49:57.652678', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-16 21:49:58.729337', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-16 21:49:59.484996', '/myapp/index/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-16 21:50:00.449600', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-16 21:50:00.452993', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-16 21:50:00.502942', '/myapp/index/classification/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-16 21:50:05.873172', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-16 21:50:07.876651', '/myapp/admin/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-16 21:50:09.036685', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-16 21:50:09.786228', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-16 21:50:10.722992', '/myapp/admin/overview/count', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-16 21:50:11.394135', '/myapp/admin/feedback/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-16 21:50:13.252377', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1062');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-16 21:50:13.903354', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-16 21:50:14.004091', '/myapp/admin/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-20 11:13:32.716913', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-20 11:13:32.752936', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-20 11:13:32.835220', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-20 11:13:32.848222', '/upload/cover/1721050731450.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-20 11:13:32.860230', '/upload/cover/1721050774821.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-20 11:13:32.854222', '/upload/cover/1721050833371.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-20 11:13:32.885834', '/upload/cover/1721050856519.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-20 11:13:32.887853', '/upload/cover/1721050972272.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-20 11:13:32.907836', '/upload/cover/1721050883264.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-20 11:13:32.910153', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-20 11:13:32.933509', '/upload/cover/1721050752492.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-20 11:13:32.958305', '/upload/cover/1721050789488.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-20 11:14:06.071696', '/myapp/admin/adminLogin', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-20 11:14:06.985323', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-20 11:14:07.129453', '/myapp/admin/classification/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-20 11:14:09.607021', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-20 11:14:12.967353', '/myapp/admin/user/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-20 11:14:17.851891', '/myapp/admin/adminLogin', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-20 11:14:18.079410', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-20 11:14:18.197396', '/myapp/admin/classification/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-20 11:14:19.805215', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-20 11:14:53.598323', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-20 11:14:53.652894', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-20 11:15:00.814741', '/myapp/admin/classification/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-20 11:15:00.888958', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-20 11:15:06.260975', '/myapp/admin/classification/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-20 11:15:06.334898', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-20 11:15:12.417272', '/myapp/admin/classification/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-20 11:15:12.464122', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-20 11:15:18.923587', '/myapp/admin/classification/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-20 11:15:18.975248', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-20 11:15:24.500221', '/myapp/admin/classification/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-20 11:15:24.566800', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-07-20 11:15:26.905026', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-07-20 11:15:27.048976', '/myapp/admin/classification/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-07-20 11:15:29.694766', '/myapp/admin/thing/delete', 'POST', NULL, '85');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-07-20 11:15:29.803385', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-07-20 11:15:34.668150', '/myapp/admin/thing/delete', 'POST', NULL, '76');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-07-20 11:15:34.742490', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-07-20 11:15:36.025267', '/myapp/admin/thing/delete', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-07-20 11:15:36.094955', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-07-20 11:19:25.137090', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-07-20 11:19:25.165569', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-07-20 11:19:27.635516', '/myapp/admin/thing/delete', 'POST', NULL, '85');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-07-20 11:19:27.687165', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-07-20 11:22:35.619898', '/myapp/admin/thing/create', 'POST', NULL, '461');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-07-20 11:22:35.728349', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-07-20 11:27:12.982925', '/upload/cover/1721445700718.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-07-20 11:27:46.905543', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-07-20 11:28:11.495330', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-07-20 11:28:11.749219', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-07-20 11:28:30.099342', '/myapp/admin/thing/update', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-07-20 11:28:30.328855', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-07-20 11:28:48.192963', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-07-20 11:28:48.434156', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-07-20 11:29:05.209064', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-07-20 11:29:05.484646', '/myapp/admin/thing/list', 'GET', NULL, '186');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-07-20 11:29:22.868381', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-07-20 11:29:23.137756', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-07-20 11:29:43.677954', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-07-20 11:29:43.941765', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-07-20 11:29:59.494649', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-07-20 11:29:59.761078', '/myapp/admin/thing/list', 'GET', NULL, '178');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-07-20 11:30:16.148484', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-07-20 11:30:16.377252', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-07-20 11:30:32.694698', '/myapp/admin/thing/update', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-07-20 11:30:32.914917', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-07-20 11:30:49.856453', '/myapp/admin/thing/update', 'POST', NULL, '78');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-07-20 11:30:50.065109', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-07-20 11:31:11.705581', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-07-20 11:31:11.946561', '/myapp/admin/thing/list', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-07-20 11:31:17.367535', '/upload/cover/1721446098990.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-07-20 11:31:20.368280', '/myapp/admin/thing/update', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-07-20 11:31:20.544498', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-07-20 11:31:21.484868', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-07-20 11:31:24.625684', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-07-20 11:31:24.836389', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-07-20 11:31:29.166708', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-07-20 11:31:29.244521', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-07-20 11:31:29.313955', '/upload/cover/1721446115366.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-07-20 11:31:29.313955', '/upload/cover/1721446115366.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-07-20 11:31:29.313955', '/upload/cover/1721446168750.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-07-20 11:31:29.348858', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-07-20 11:31:29.348858', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-07-20 11:31:29.355516', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-07-20 11:31:29.378404', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-07-20 11:31:29.422442', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-07-20 11:31:29.422442', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-07-20 11:31:29.438399', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-07-20 11:31:29.438399', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-07-20 11:31:30.926547', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-07-20 11:31:31.559266', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-07-20 11:31:32.310175', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-07-20 11:31:32.845661', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-07-20 11:31:33.487276', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-07-20 11:31:34.801683', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-07-20 11:31:37.460365', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-07-20 11:31:37.560892', '/upload/ad/1721137395524.jpeg', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-07-20 11:31:37.575516', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-07-20 11:31:37.589939', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-07-20 11:31:37.589939', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-07-20 11:31:37.599495', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-07-20 11:31:37.613361', '/upload/cover/1721446098990.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-07-20 11:31:39.021694', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-07-20 11:31:39.080750', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-07-20 11:31:39.132819', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-07-20 11:31:39.132819', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-07-20 11:31:39.132819', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-07-20 11:31:39.132819', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-07-20 11:31:39.142843', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-07-20 11:31:39.847301', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-07-20 11:31:39.917259', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-07-20 11:31:39.981085', '/myapp/index/comment/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-07-20 11:31:39.987840', '/myapp/index/comment/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-07-20 11:31:40.948243', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-07-20 11:31:41.016915', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-07-20 11:31:41.830696', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-07-20 11:31:41.858363', '/myapp/index/comment/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-07-20 11:31:41.899630', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-07-20 11:31:41.929599', '/myapp/index/comment/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-07-20 11:31:42.851558', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-07-20 11:31:42.915045', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-07-20 11:31:43.963474', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-07-20 11:31:43.974699', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-07-20 11:31:44.006294', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-07-20 11:31:44.051773', '/myapp/index/thing/detail', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-07-20 11:31:44.706281', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-07-20 11:31:44.767081', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-07-20 11:31:45.768105', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-07-20 11:31:45.820162', '/myapp/index/comment/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-07-20 11:31:45.848653', '/myapp/index/comment/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-07-20 11:31:45.874245', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-07-20 11:31:46.877497', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-07-20 11:31:46.921259', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-07-20 11:31:47.698892', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-07-20 11:31:47.731441', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-07-20 11:31:47.765207', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-07-20 11:31:47.799510', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-07-20 11:31:48.994730', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-07-20 11:31:49.050283', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-07-20 11:31:49.115244', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-07-20 11:31:49.115244', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-07-20 11:31:49.115244', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-07-20 11:31:49.125001', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-07-20 11:31:49.131152', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-07-20 11:31:49.136094', '/upload/cover/1721446222491.jpeg', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-07-20 11:31:49.793848', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-07-20 11:31:49.813454', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-07-20 11:31:49.877069', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-07-20 11:31:49.903727', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-07-20 11:31:50.771636', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-07-20 11:31:50.827901', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-07-20 11:31:51.376363', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-07-20 11:31:51.410084', '/myapp/index/thing/detail', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-07-20 11:31:51.444658', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-07-20 11:31:51.492062', '/myapp/index/thing/detail', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-07-20 11:31:52.090231', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-07-20 11:31:52.136595', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-07-20 11:31:53.400726', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-07-20 11:31:53.424123', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-07-20 11:31:53.467512', '/myapp/index/thing/detail', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-07-20 11:31:53.502893', '/myapp/index/thing/detail', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-07-20 11:31:54.425673', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-07-20 11:31:54.453845', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-07-20 11:31:56.640268', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-07-20 11:31:56.654333', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-07-20 11:31:56.699734', '/myapp/index/comment/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-07-20 11:31:56.744504', '/myapp/index/comment/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-07-20 11:31:57.430755', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-07-20 11:31:57.490751', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-07-20 11:31:58.558081', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-07-20 11:31:58.579923', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-07-20 11:31:58.613773', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-07-20 11:31:58.653903', '/myapp/index/comment/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-07-20 11:31:59.308611', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-07-20 11:31:59.367712', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-07-20 11:32:05.190852', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-07-20 21:00:10.712114', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-07-20 21:00:10.741061', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-07-20 21:00:21.121877', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-07-20 21:00:21.132624', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-07-20 21:00:21.164667', '/upload/cover/1721446079020.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-07-20 21:00:21.166792', '/upload/cover/1721446098990.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-07-20 21:00:21.173558', '/upload/cover/1721446079020.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-07-20 21:00:21.174076', '/upload/cover/1721446134725.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-07-20 21:00:21.174634', '/upload/cover/1721446190950.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-07-20 21:00:21.177882', '/upload/cover/1721446168750.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-07-20 21:00:21.183474', '/upload/cover/1721446134725.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-07-20 21:00:21.191879', '/upload/cover/1721446151746.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-07-20 21:00:21.192400', '/upload/cover/1721446207232.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-07-20 21:00:21.193643', '/upload/cover/1721446207232.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-07-20 21:00:21.195157', '/upload/cover/1721446242835.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-07-20 21:00:21.197192', '/upload/cover/1721446259380.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-07-20 21:00:22.125016', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-07-20 21:00:23.486841', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-07-20 21:00:23.500537', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-07-20 21:00:32.645301', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-07-20 21:00:33.298153', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-07-20 21:00:33.336808', '/myapp/admin/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-07-20 21:01:25.931579', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-07-20 21:01:27.087336', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-07-20 21:01:27.215850', '/myapp/admin/classification/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-07-20 21:01:31.436714', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-07-20 21:01:32.109247', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-07-20 21:01:32.221686', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-07-20 21:01:35.871823', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-07-20 21:01:36.466742', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-07-20 21:01:37.018314', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-07-20 21:01:37.495822', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-07-20 21:01:37.911837', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-07-20 21:01:41.951387', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-07-20 21:01:42.978023', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-07-20 21:01:43.541165', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-07-20 21:01:46.178526', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-07-20 21:01:46.194883', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-07-20 21:01:46.245345', '/upload/ad/1721137395524.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-07-20 21:01:46.264004', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-07-20 21:01:46.267424', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-07-20 21:01:46.279296', '/upload/ad/1721137389652.jpeg', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-07-20 21:01:47.428624', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-07-20 21:01:47.473774', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-07-20 21:01:49.980842', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-07-20 21:01:49.997707', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-07-20 21:01:50.048080', '/myapp/index/comment/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-07-20 21:01:50.064225', '/myapp/index/comment/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-07-20 21:01:51.674230', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-07-20 21:01:51.698190', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-07-20 21:01:53.303989', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-07-20 21:01:53.312528', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-07-20 21:01:53.335391', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-07-20 21:01:53.365956', '/myapp/admin/ad/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-07-20 21:02:04.624903', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-07-20 21:02:04.681038', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-07-20 21:02:04.694629', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-07-20 21:02:04.743753', '/upload/avatar/1721137786035.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-07-20 21:02:04.761287', '/upload/avatar/1721137786035.png', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-07-20 21:02:06.610234', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-07-20 21:02:06.630653', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-07-20 21:02:06.630653', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-07-20 21:02:06.676985', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-07-20 21:02:06.692670', '/myapp/index/comment/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-07-20 21:02:08.594063', '/myapp/index/thing/addWishUser', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-07-20 21:02:08.632739', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-07-20 21:02:09.032810', '/myapp/index/thing/addCollectUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-07-20 21:02:09.096952', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-07-20 21:02:13.294036', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-07-20 21:02:13.337756', '/myapp/index/thing/getRecommend', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-07-20 21:02:14.208040', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-07-20 21:02:14.210940', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-07-20 21:02:14.245248', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-07-20 21:02:16.584574', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-07-20 21:02:16.584574', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-07-20 21:02:16.608081', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-07-20 21:02:16.641441', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-07-20 21:02:16.651453', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-07-20 21:02:20.945109', '/myapp/index/thing/addWishUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-07-20 21:02:20.966672', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-07-20 21:02:21.327648', '/myapp/index/thing/addCollectUser', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-07-20 21:02:21.412357', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-07-20 21:02:22.607183', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-07-20 21:02:22.632343', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-07-20 21:02:22.632343', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-07-20 21:02:22.649737', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-07-20 21:02:22.682859', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-07-20 21:02:23.624682', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-07-20 21:02:24.233600', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-07-20 21:02:25.080711', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-07-20 21:02:25.081939', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-07-20 21:02:25.133752', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-07-20 21:02:29.919383', '/myapp/admin/ad/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-07-20 21:02:29.936558', '/myapp/admin/ad/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-07-20 21:02:29.952870', '/myapp/admin/ad/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-07-20 21:02:29.986841', '/myapp/admin/ad/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-07-20 21:02:30.019417', '/myapp/admin/ad/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-07-20 21:02:39.041889', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-07-20 21:03:09.905951', '/myapp/index/order/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-07-20 21:03:10.012875', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-07-20 21:03:11.310289', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-07-20 21:03:11.344513', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-07-20 21:03:11.361870', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-07-20 21:03:11.377468', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-07-20 21:03:11.393551', '/myapp/index/user/info', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-07-20 21:03:36.469553', '/myapp/index/comment/listMyComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-07-20 21:03:37.058991', '/myapp/index/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-07-20 21:03:44.379760', '/myapp/admin/order/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-07-20 21:03:53.264156', '/myapp/index/order/cancel_order', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-07-20 21:03:53.283503', '/myapp/index/order/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-07-20 21:03:57.983160', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-07-20 21:03:57.998733', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-07-20 21:03:58.029387', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-07-20 21:04:00.465736', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-07-20 21:04:00.481750', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-07-20 21:04:00.497467', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-07-20 21:04:00.544440', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-07-20 21:04:00.560807', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-07-20 21:04:02.593855', '/myapp/index/thing/addWishUser', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-07-20 21:04:02.623261', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-07-20 21:04:03.135617', '/myapp/index/thing/addCollectUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-07-20 21:04:03.188034', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-07-20 21:04:06.385919', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-07-20 21:04:06.401408', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-07-20 21:04:06.459849', '/myapp/admin/ad/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-07-20 21:04:06.475414', '/myapp/admin/ad/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-07-20 21:04:08.517000', '/myapp/admin/ad/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-07-20 21:04:08.540916', '/myapp/admin/ad/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-07-20 21:04:08.555175', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-07-20 21:04:08.591250', '/myapp/admin/ad/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-07-20 21:04:10.427601', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-07-20 21:04:10.438674', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-07-20 21:04:10.456116', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-07-20 21:04:10.490484', '/myapp/admin/ad/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-07-20 21:04:12.646492', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-07-20 21:04:12.647934', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-07-20 21:04:12.700599', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-07-20 21:04:12.717770', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-07-20 21:04:15.109204', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-07-20 21:04:15.114569', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-07-20 21:04:15.148214', '/myapp/index/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-07-20 21:04:16.736485', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-07-20 21:04:16.753002', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-07-20 21:04:16.758266', '/myapp/index/thing/getRecommend', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-07-20 21:04:16.814992', '/myapp/index/thing/getRecommend', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-07-20 21:04:16.847108', '/myapp/index/thing/getRecommend', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-07-20 21:04:18.781344', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-07-20 21:04:18.816102', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-07-20 21:04:18.823017', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-07-20 21:04:19.715313', '/myapp/index/thing/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-07-20 21:04:19.717313', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-07-20 21:04:19.735305', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-07-20 21:04:19.775963', '/myapp/index/thing/detail', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-07-20 21:04:19.787138', '/myapp/index/thing/detail', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-07-20 21:04:21.302438', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-07-20 21:04:21.314234', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-07-20 21:04:21.350324', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-07-20 21:04:22.260281', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-07-20 21:04:22.270487', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-07-20 21:04:22.287191', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-07-20 21:04:22.319959', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-07-20 21:04:22.364267', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-07-20 21:04:24.514553', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-07-20 21:04:24.514553', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-07-20 21:04:24.548242', '/myapp/index/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-07-20 21:04:29.905866', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-07-20 21:04:46.190490', '/myapp/index/order/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-07-20 21:04:46.218318', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-07-20 21:04:47.781896', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-07-20 21:04:47.799150', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-07-20 21:04:47.814823', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-07-20 21:04:47.836139', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-07-20 21:04:47.846655', '/myapp/index/user/info', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-07-20 21:04:53.728457', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-07-20 21:04:53.811435', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-07-20 21:05:05.282826', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-07-20 21:05:05.779938', '/myapp/admin/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-07-20 21:05:09.699873', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-07-20 21:05:10.379145', '/myapp/admin/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-07-20 21:05:13.270687', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-07-20 21:05:13.279827', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-07-20 21:05:13.304186', '/myapp/index/classification/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-07-20 21:05:14.789054', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-07-20 21:05:14.799246', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-07-20 21:05:14.816359', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-07-20 21:05:14.849622', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-07-20 21:05:14.882479', '/myapp/index/comment/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-07-20 21:05:21.354654', '/myapp/index/comment/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-07-20 21:05:21.392030', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-07-20 21:05:23.890977', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-07-20 21:05:23.920811', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-07-20 21:05:26.474870', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-07-20 21:05:29.129280', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-07-20 21:05:31.002412', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-07-20 21:05:32.317707', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-07-20 21:05:34.946765', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-07-20 21:05:36.110791', '/myapp/admin/notice/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-07-20 21:05:38.921534', '/myapp/admin/loginLog/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-07-20 21:05:39.417167', '/myapp/admin/opLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-07-20 21:05:42.277160', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-07-20 21:05:45.145455', '/myapp/admin/errorLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-07-20 21:05:46.553922', '/myapp/admin/loginLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-07-20 21:05:48.784355', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-07-20 21:05:54.381712', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-07-20 21:05:57.873030', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1686');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-07-20 21:05:58.407758', '/myapp/admin/feedback/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-07-20 21:05:59.889307', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-07-20 21:06:05.816787', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-07-20 21:06:05.921646', '/myapp/admin/classification/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-07-20 21:06:06.287127', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-07-20 21:06:11.097878', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-07-20 21:06:11.099168', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-07-20 21:06:11.150995', '/myapp/index/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-07-20 21:06:33.403926', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-07-20 21:06:33.988377', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-07-20 21:06:34.005120', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-07-20 21:06:34.055004', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-07-20 21:08:57.105953', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-07-20 21:08:57.139537', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-07-20 21:08:59.162270', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-07-20 21:08:59.171291', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-07-20 21:08:59.207209', '/myapp/index/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-07-20 21:09:01.093493', '/myapp/index/thing/getRecommend', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-07-20 21:09:01.156014', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-07-20 21:09:01.759231', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-07-20 21:09:01.771668', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-07-20 21:09:01.805612', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-07-20 21:09:38.605463', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2024-07-20 21:09:38.642972', '/myapp/index/thing/getRecommend', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2024-07-20 21:09:39.499978', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2024-07-20 21:09:39.524635', '/myapp/index/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2024-07-20 21:09:39.550356', '/myapp/index/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2024-07-20 21:09:40.266203', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2024-07-20 21:09:40.283552', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2024-07-20 21:09:40.319068', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2024-07-20 21:09:40.327094', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2024-07-20 21:09:40.340319', '/myapp/index/comment/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2024-07-20 21:09:41.010900', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2024-07-20 21:09:41.016280', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2024-07-20 21:09:41.052742', '/myapp/index/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2024-07-20 21:09:41.550165', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2024-07-20 21:09:41.567189', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2024-07-20 21:09:41.582300', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2024-07-20 21:09:41.600135', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2024-07-20 21:09:41.633541', '/myapp/admin/ad/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2024-07-20 21:09:42.221595', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2024-07-20 21:09:42.226973', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2024-07-20 21:09:42.266539', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2024-07-20 21:09:42.659981', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2024-07-20 21:09:42.686008', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2024-07-20 21:09:44.494641', '/myapp/index/thing/getRecommend', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2024-07-20 21:09:44.511729', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2024-07-20 21:09:44.528441', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2024-07-20 21:09:44.561624', '/myapp/index/thing/getRecommend', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2024-07-20 21:09:44.561624', '/myapp/index/thing/getRecommend', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2024-07-20 21:09:46.327482', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2024-07-20 21:09:46.327482', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2024-07-20 21:09:46.343511', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2024-07-20 21:09:46.360904', '/myapp/index/comment/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2024-07-20 21:09:46.378328', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-20 21:09:48.656793', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-20 21:09:48.676500', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-20 21:09:48.691846', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-20 21:09:48.723840', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-20 21:09:48.740538', '/myapp/index/comment/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-20 21:09:51.294513', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-20 21:09:51.294513', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-20 21:09:51.313814', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-20 21:09:51.344186', '/myapp/index/thing/detail', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-20 21:09:51.344186', '/myapp/index/thing/detail', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-20 21:09:53.501713', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-20 21:09:53.501713', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-20 21:09:53.536940', '/myapp/index/classification/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-20 21:09:55.128241', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-20 21:09:55.143572', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-20 21:09:55.143572', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-20 21:09:55.193490', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-20 21:09:55.195242', '/myapp/index/comment/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2024-07-20 21:09:55.950716', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2024-07-20 21:09:55.966374', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2024-07-20 21:09:55.968763', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2024-07-20 21:09:56.340393', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2024-07-20 21:09:56.351668', '/myapp/index/thing/getRecommend', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2024-07-20 21:09:58.421139', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2024-07-20 21:09:58.441526', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2024-07-20 21:09:58.458329', '/myapp/index/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2024-07-20 21:09:59.242725', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2024-07-20 21:09:59.257277', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2024-07-20 21:09:59.290195', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2024-07-20 21:09:59.307292', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2024-07-20 21:09:59.307292', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2024-07-20 21:09:59.985164', '/myapp/index/thing/getRecommend', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2024-07-20 21:09:59.990402', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2024-07-20 21:10:00.786597', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2024-07-20 21:10:00.794123', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2024-07-20 21:10:00.824447', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2024-07-20 21:10:01.408208', '/myapp/index/thing/getRecommend', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2024-07-20 21:10:01.435011', '/myapp/index/thing/getRecommend', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2024-07-20 21:10:01.457835', '/myapp/index/thing/getRecommend', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2024-07-20 21:10:01.463155', '/myapp/index/thing/getRecommend', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2024-07-20 21:10:01.481954', '/myapp/index/thing/getRecommend', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2024-07-20 21:10:02.190452', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2024-07-20 21:10:02.206947', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2024-07-20 21:10:02.787058', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2024-07-20 21:10:02.790432', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2024-07-20 21:10:02.824567', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2024-07-20 21:10:03.423778', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2024-07-20 21:10:03.423778', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2024-07-20 21:10:03.457112', '/myapp/admin/ad/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2024-07-20 21:10:03.474992', '/myapp/admin/ad/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2024-07-20 21:10:03.493913', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2024-07-20 21:10:04.381605', '/myapp/index/thing/getRecommend', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2024-07-20 21:10:04.407257', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2024-07-20 21:10:05.855662', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2024-07-20 21:10:05.881513', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2024-07-20 21:10:05.904264', '/myapp/index/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2024-07-20 21:10:12.705044', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2024-07-20 21:10:16.101484', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2024-07-20 21:10:16.114531', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2024-07-20 21:10:16.119235', '/myapp/admin/ad/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2024-07-20 21:10:16.148694', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2024-07-20 21:10:16.148694', '/myapp/admin/ad/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2024-07-20 21:10:22.514366', '/myapp/index/comment/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2024-07-20 21:10:22.550020', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2024-07-20 21:10:25.945801', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2024-07-20 21:10:25.981651', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2024-07-20 21:10:26.708689', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2024-07-20 21:10:26.732600', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2024-07-20 21:10:27.591632', '/myapp/index/comment/like', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2024-07-20 21:10:27.630129', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2024-07-20 21:10:27.775028', '/myapp/index/comment/like', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2024-07-20 21:10:27.814296', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2024-07-20 21:10:27.925772', '/myapp/index/comment/like', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2024-07-20 21:10:27.953366', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2024-07-20 21:10:28.107723', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2024-07-20 21:10:28.148376', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2024-07-20 21:10:28.275247', '/myapp/index/comment/like', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2024-07-20 21:10:28.298019', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2024-07-20 21:10:28.423075', '/myapp/index/comment/like', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2024-07-20 21:10:28.464570', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2024-07-20 21:10:28.609556', '/myapp/index/comment/like', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2024-07-20 21:10:28.635080', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2024-07-20 21:10:30.701285', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2024-07-20 21:10:31.118816', '/myapp/admin/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2024-07-20 21:10:37.095246', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2024-07-20 21:10:37.213994', '/myapp/admin/thing/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2024-07-20 21:10:41.391959', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2024-07-20 21:10:41.399154', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2024-07-20 21:10:41.441779', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2024-07-20 21:10:42.129016', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2024-07-20 21:10:42.142097', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2024-07-20 21:10:43.946242', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2024-07-20 21:10:43.946242', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2024-07-20 21:10:43.978070', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2024-07-20 21:10:49.653872', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2024-07-20 21:10:49.670644', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2024-07-20 21:10:49.686773', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2024-07-20 21:10:49.695397', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2024-07-20 21:10:49.710077', '/myapp/admin/ad/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2024-07-20 21:10:53.196580', '/myapp/index/thing/addWishUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2024-07-20 21:10:53.245355', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2024-07-20 21:10:54.214334', '/myapp/index/thing/addCollectUser', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2024-07-20 21:10:54.247874', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2024-07-20 21:11:00.362312', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2024-07-20 21:11:00.403083', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2024-07-20 21:11:00.403083', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2024-07-20 21:11:00.418991', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2024-07-20 21:11:00.436062', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2024-07-20 21:11:01.487734', '/myapp/index/comment/listMyComments', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2024-07-20 21:11:02.034384', '/myapp/index/order/list', 'GET', NULL, '24');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `gwc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (5, '1721480589881', '2', '2024-07-20 21:03:09.890189', '刘备', '市中区文化路99号', '13211111', '2222', 2, '{\"gwc\":[{\"id\":16,\"title\":\"冰丝衬衫女士款\",\"price\":\"258\",\"count\":2}]}', '516');
INSERT INTO `b_order` VALUES (6, '1721480686178', '1', '2024-07-20 21:04:46.186489', '武松', '奥体西路99号', '1321111', '', 2, '{\"gwc\":[{\"id\":21,\"title\":\"女士测试长裙\",\"price\":\"258\",\"count\":3},{\"id\":16,\"title\":\"冰丝衬衫女士款\",\"price\":\"258\",\"count\":3},{\"id\":18,\"title\":\"冰丝内衣女士\",\"price\":\"258\",\"count\":1},{\"id\":23,\"title\":\"测试内衣\",\"price\":\"258\",\"count\":1},{\"id\":19,\"title\":\"好看的童装\",\"price\":\"258\",\"count\":1},{\"id\":13,\"title\":\"冰丝衬衫夏季情侣款\",\"price\":\"258\",\"count\":1}]}', '2580');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (11, 15, 3, '127.0.0.2');
INSERT INTO `b_record` VALUES (12, 14, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (13, 18, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (14, 17, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (15, 23, 5, '127.0.0.1');
INSERT INTO `b_record` VALUES (16, 20, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (17, 13, 4, '127.0.0.1');
INSERT INTO `b_record` VALUES (18, 21, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (19, 24, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (20, 22, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (21, 19, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (22, 16, 6, '127.0.0.2');
INSERT INTO `b_record` VALUES (23, 15, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (24, 16, 3, '127.0.0.1');
INSERT INTO `b_record` VALUES (25, 18, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (26, 20, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (27, 14, 4, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `caizhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shiyong` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pinpai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (13, '冰丝衬衫夏季情侣款', 'cover/1721445700718.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 4, 0, 0, 0, 5, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (14, '冰丝衬衫夏季测试款', 'cover/1721446079020.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 5, 0, 1, 1, 5, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (15, '男衬衫测试999', 'cover/1721446098990.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '88', '0', '2024-07-20 11:22:35.602390', 5, 0, 0, 0, 5, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (16, '冰丝衬衫女士款', 'cover/1721446115366.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 9, 0, 1, 1, 4, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (17, '冰丝衬衫夏季连衣裙测试', 'cover/1721446134725.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 1, 0, 0, 0, 4, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (18, '冰丝内衣女士', 'cover/1721446151746.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 6, 0, 1, 1, 3, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (19, '好看的童装', 'cover/1721446168750.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 2, 0, 0, 0, 1, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (20, '男士领带', 'cover/1721446190950.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '68', '0', '2024-07-20 11:22:35.602390', 2, 0, 0, 0, 2, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (21, '女士测试长裙', 'cover/1721446207232.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 5, 0, 1, 1, 4, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (22, '服装店优惠款', 'cover/1721446222491.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 1, 0, 0, 0, 5, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (23, '测试内衣', 'cover/1721446242835.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 5, 0, 0, 0, 3, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');
INSERT INTO `b_thing` VALUES (24, '测试女士服装', 'cover/1721446259380.jpeg', '服装是指人们穿着的各种衣物及相关配饰，既是基本的生活需求，也是文化和艺术的体现。它不仅能够保护人体免受外界环境的影响，还能展现个体的风格、身份和品味。服装的发展历程悠久，随着社会的演变、经济的变化和技术的进步，服装的款式、面料和制作工艺也在不断创新。\r\n\r\n现代服装涵盖了多种风格，如休闲、正式、运动、民族和时尚等，各种风格反映了不同的文化背景和社会价值观。设计师通过色彩、剪裁和材质的巧妙搭配，将创意与实用相结合，创造出适应不同场合和需求的服装。\r\n\r\n在当今社会，服装不仅仅是穿着的工具，更是一种自我表达的方式。无论是日常穿着还是特别场合，服装都能够传达个人的情感和态度。在快速发展的时尚潮流中，个性化和可持续性成为新的消费趋势，越来越多的人开始关注服装的环保和伦理生产，从而推动了服装行业的转型和升级。', '258', '0', '2024-07-20 11:22:35.602390', 1, 0, 0, 0, 4, NULL, 3, '纯棉', '黑色', '青年人', '海澜之家');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (8, 14, 2);
INSERT INTO `b_thing_collect` VALUES (6, 16, 2);
INSERT INTO `b_thing_collect` VALUES (5, 18, 2);
INSERT INTO `b_thing_collect` VALUES (7, 21, 2);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (8, 14, 2);
INSERT INTO `b_thing_wish` VALUES (6, 16, 2);
INSERT INTO `b_thing_wish` VALUES (5, 18, 2);
INSERT INTO `b_thing_wish` VALUES (7, 21, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'adfs3', 'avatar/1721137786035.png', NULL, NULL, NULL, '333', '2024-07-16 20:20:57.979036', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:37.329660', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:47.830467', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:48:57.243352', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:49:08.534407', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (7, 'bababa', '4e510be093d346512011c3f4fe36e4af', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-16 21:49:25.047775', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-14 22:10:02.578234');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-14 22:10:03.386857');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-14 22:10:03.536258');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-14 22:10:03.553981');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-14 22:10:03.570256');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-14 22:10:03.709089');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-14 22:10:03.792020');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-14 22:10:03.874672');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-14 22:10:03.891922');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-14 22:10:03.974103');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-14 22:10:03.980599');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-14 22:10:03.994855');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-14 22:10:04.088923');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-14 22:10:04.189121');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-14 22:10:04.267163');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-14 22:10:04.288573');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-14 22:10:04.368463');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-14 22:10:06.536316');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-14 22:10:06.664252');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-14 22:10:06.979543');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-14 22:10:07.159525');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240714_2209', '2024-07-14 22:10:08.161315');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-14 22:10:08.269215');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_rename_thing_text_order_gwc', '2024-07-16 20:33:03.646242');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_order_amount', '2024-07-16 20:34:25.776847');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_auto_20240718_2128', '2024-07-20 11:11:12.414768');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0009_auto_20240720_1111', '2024-07-20 11:11:12.499536');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
