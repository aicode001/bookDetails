/*
 Navicat Premium Dump SQL

 Source Server         : home
 Source Server Type    : MySQL
 Source Server Version : 80027 (8.0.27)
 Source Host           : localhost:3306
 Source Schema         : book_retail_system

 Target Server Type    : MySQL
 Target Server Version : 80027 (8.0.27)
 File Encoding         : 65001

 Date: 28/12/2025 12:28:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 系统用户', 6, 'add_user');
INSERT INTO `auth_permission` VALUES (22, 'Can change 系统用户', 6, 'change_user');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 系统用户', 6, 'delete_user');
INSERT INTO `auth_permission` VALUES (24, 'Can view 系统用户', 6, 'view_user');
INSERT INTO `auth_permission` VALUES (25, 'Can add 图书分类', 7, 'add_bookcategory');
INSERT INTO `auth_permission` VALUES (26, 'Can change 图书分类', 7, 'change_bookcategory');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 图书分类', 7, 'delete_bookcategory');
INSERT INTO `auth_permission` VALUES (28, 'Can view 图书分类', 7, 'view_bookcategory');
INSERT INTO `auth_permission` VALUES (29, 'Can add 图书信息', 8, 'add_bookinfo');
INSERT INTO `auth_permission` VALUES (30, 'Can change 图书信息', 8, 'change_bookinfo');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 图书信息', 8, 'delete_bookinfo');
INSERT INTO `auth_permission` VALUES (32, 'Can view 图书信息', 8, 'view_bookinfo');
INSERT INTO `auth_permission` VALUES (33, 'Can add 库存', 9, 'add_inventory');
INSERT INTO `auth_permission` VALUES (34, 'Can change 库存', 9, 'change_inventory');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 库存', 9, 'delete_inventory');
INSERT INTO `auth_permission` VALUES (36, 'Can view 库存', 9, 'view_inventory');
INSERT INTO `auth_permission` VALUES (37, 'Can add 库存操作记录', 10, 'add_inventoryrecord');
INSERT INTO `auth_permission` VALUES (38, 'Can change 库存操作记录', 10, 'change_inventoryrecord');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 库存操作记录', 10, 'delete_inventoryrecord');
INSERT INTO `auth_permission` VALUES (40, 'Can view 库存操作记录', 10, 'view_inventoryrecord');
INSERT INTO `auth_permission` VALUES (41, 'Can add 销售渠道', 11, 'add_saleschannel');
INSERT INTO `auth_permission` VALUES (42, 'Can change 销售渠道', 11, 'change_saleschannel');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 销售渠道', 11, 'delete_saleschannel');
INSERT INTO `auth_permission` VALUES (44, 'Can view 销售渠道', 11, 'view_saleschannel');
INSERT INTO `auth_permission` VALUES (45, 'Can add 订单明细', 12, 'add_salesorderitem');
INSERT INTO `auth_permission` VALUES (46, 'Can change 订单明细', 12, 'change_salesorderitem');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 订单明细', 12, 'delete_salesorderitem');
INSERT INTO `auth_permission` VALUES (48, 'Can view 订单明细', 12, 'view_salesorderitem');
INSERT INTO `auth_permission` VALUES (49, 'Can add 销售订单', 13, 'add_salesorder');
INSERT INTO `auth_permission` VALUES (50, 'Can change 销售订单', 13, 'change_salesorder');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 销售订单', 13, 'delete_salesorder');
INSERT INTO `auth_permission` VALUES (52, 'Can view 销售订单', 13, 'view_salesorder');

-- ----------------------------
-- Table structure for book_category
-- ----------------------------
DROP TABLE IF EXISTS `book_category`;
CREATE TABLE `book_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `sort_order` int NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `category_code`(`category_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_category
-- ----------------------------
INSERT INTO `book_category` VALUES (1, '文学', 'LIT', 0, 1, '文学类图书', 1, '2025-12-11 21:55:25.706719', '2025-12-11 21:55:25.706773');
INSERT INTO `book_category` VALUES (2, '科幻', 'SCI', 0, 2, '科幻小说', 1, '2025-12-11 21:55:25.706853', '2025-12-11 21:55:25.706902');
INSERT INTO `book_category` VALUES (3, '经济', 'ECO', 0, 3, '经济管理类', 1, '2025-12-11 21:55:25.706970', '2025-12-11 21:55:25.706996');
INSERT INTO `book_category` VALUES (4, '历史', 'HIS', 0, 4, '历史类图书', 1, '2025-12-11 21:55:25.707064', '2025-12-11 21:55:25.707089');
INSERT INTO `book_category` VALUES (5, '艺术', 'ART', 0, 5, '艺术设计类', 1, '2025-12-11 21:55:25.707158', '2025-12-11 21:55:25.707184');
INSERT INTO `book_category` VALUES (6, '教育', 'EDU', 0, 6, '教育培训类', 1, '2025-12-11 21:55:25.707306', '2025-12-11 21:55:25.707373');
INSERT INTO `book_category` VALUES (7, '科技', 'TEC', 0, 7, '科学技术类', 1, '2025-12-11 21:55:25.707504', '2025-12-11 21:55:25.707556');
INSERT INTO `book_category` VALUES (8, '哲学', 'PHI', 0, 8, '哲学思想类', 1, '2025-12-11 21:55:25.707641', '2025-12-11 21:55:25.707670');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `isbn` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `cost_price` decimal(10, 2) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `publish_date` date NULL DEFAULT NULL,
  `page_count` int NULL DEFAULT NULL,
  `binding` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_sales` int NOT NULL,
  `total_revenue` decimal(15, 2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `isbn`(`isbn` ASC) USING BTREE,
  INDEX `book_info_category_id_94dbcda5_fk_book_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `book_info_category_id_94dbcda5_fk_book_category_id` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, '9787020002207', '活着', '余华', '人民文学出版社', 30.00, 18.00, '在售', '一部关于生命意义的经典之作', NULL, NULL, NULL, NULL, 245, 7350.00, '2025-12-11 21:55:25.984239', '2025-12-11 21:55:25.984274', 0, 1);
INSERT INTO `book_info` VALUES (2, '9787536692930', '三体', '刘慈欣', '重庆出版社', 44.00, 26.40, '在售', '中国科幻文学的里程碑作品', NULL, NULL, NULL, NULL, 198, 8712.00, '2025-12-11 21:55:25.984402', '2025-12-11 21:55:25.984420', 0, 2);
INSERT INTO `book_info` VALUES (3, '9787020008735', '百年孤独', '加西亚·马尔克斯', '人民文学出版社', 55.00, 33.00, '在售', '魔幻现实主义代表作', NULL, NULL, NULL, NULL, 5, 275.00, '2025-12-11 21:55:25.984533', '2025-12-11 21:55:25.984550', 0, 1);
INSERT INTO `book_info` VALUES (4, '9787208061644', '1984', '乔治·奥威尔', '上海人民出版社', 35.00, 21.00, '在售', '反乌托邦经典作品', NULL, NULL, NULL, NULL, 156, 5460.00, '2025-12-11 21:55:25.984661', '2025-12-11 21:55:25.984679', 0, 1);
INSERT INTO `book_info` VALUES (5, '9787544291170', '解忧杂货店', '东野圭吾', '南海出版公司', 39.50, 23.70, '在售', '温情治愈系推理小说', NULL, NULL, NULL, NULL, 189, 7465.50, '2025-12-11 21:55:25.984790', '2025-12-11 21:55:25.984807', 0, 1);
INSERT INTO `book_info` VALUES (6, '9787115551702', 'Python编程：从入门到实践', 'Eric Matthes', '人民邮电出版社', 89.00, 53.40, '在售', 'Python入门经典教程', NULL, NULL, NULL, NULL, 132, 11748.00, '2025-12-11 21:55:25.984942', '2025-12-11 21:55:25.984961', 0, 7);
INSERT INTO `book_info` VALUES (7, '9787508353920', '人类简史', '尤瓦尔·赫拉利', '中信出版社', 68.00, 40.80, '在售', '从动物到上帝的历史', NULL, NULL, NULL, NULL, 178, 12104.00, '2025-12-11 21:55:25.985073', '2025-12-11 21:55:25.985090', 0, 4);
INSERT INTO `book_info` VALUES (8, '9787508680989', '未来简史', '尤瓦尔·赫拉利', '中信出版社', 68.00, 40.80, '在售', '人类的未来走向', NULL, NULL, NULL, NULL, 145, 9860.00, '2025-12-11 21:55:25.985201', '2025-12-11 21:55:25.985218', 0, 4);
INSERT INTO `book_info` VALUES (9, '9787111544937', '深入理解计算机系统', 'Randal E. Bryant', '机械工业出版社', 139.00, 83.40, '在售', '计算机科学经典教材', NULL, NULL, NULL, NULL, 98, 13622.00, '2025-12-11 21:55:25.985329', '2025-12-11 21:55:25.985346', 0, 7);
INSERT INTO `book_info` VALUES (10, '9787540487720', '平凡的世界', '路遥', '湖南文艺出版社', 99.00, 59.40, '在售', '中国当代文学经典', NULL, NULL, NULL, NULL, 167, 16533.00, '2025-12-11 21:55:25.985458', '2025-12-11 21:55:25.985475', 0, 1);
INSERT INTO `book_info` VALUES (11, '9787521713626', '被讨厌的勇气', '岸见一郎', '机械工业出版社', 45.00, 27.00, '在售', '阿德勒心理学入门', NULL, NULL, NULL, NULL, 156, 7020.00, '2025-12-11 21:55:25.985585', '2025-12-11 21:55:25.985602', 0, 8);
INSERT INTO `book_info` VALUES (12, '9787559446664', '白夜行', '东野圭吾', '江苏凤凰文艺出版社', 45.00, 27.00, '在售', '东野圭吾巅峰之作', NULL, NULL, NULL, NULL, 178, 8010.00, '2025-12-11 21:55:25.985712', '2025-12-11 21:55:25.985729', 0, 1);
INSERT INTO `book_info` VALUES (13, '9787508689968', '原则', '瑞·达利欧', '中信出版社', 98.00, 58.80, '在售', '桥水基金创始人的人生原则', NULL, NULL, NULL, NULL, 134, 13132.00, '2025-12-11 21:55:25.985839', '2025-12-11 21:55:25.985856', 0, 3);
INSERT INTO `book_info` VALUES (14, '9787550015166', '三体II：黑暗森林', '刘慈欣', '重庆出版社', 44.00, 26.40, '在售', '三体系列第二部', NULL, NULL, NULL, NULL, 165, 7260.00, '2025-12-11 21:55:25.986254', '2025-12-11 21:55:25.986291', 0, 2);
INSERT INTO `book_info` VALUES (15, '9787550028364', '三体III：死神永生', '刘慈欣', '重庆出版社', 44.00, 26.40, '在售', '三体系列第三部', NULL, NULL, NULL, NULL, 152, 6688.00, '2025-12-11 21:55:25.986463', '2025-12-11 21:55:25.986493', 0, 2);
INSERT INTO `book_info` VALUES (16, '9787544270878', '追风筝的人', '卡勒德·胡赛尼', '上海人民出版社', 39.00, 23.40, '在售', '关于背叛与救赎的故事', NULL, NULL, NULL, NULL, 143, 5577.00, '2025-12-11 21:55:25.986660', '2025-12-11 21:55:25.986691', 0, 1);
INSERT INTO `book_info` VALUES (17, '9787544291811', '嫌疑人X的献身', '东野圭吾', '南海出版公司', 35.00, 21.00, '在售', '直木奖获奖作品', NULL, NULL, NULL, NULL, 187, 6545.00, '2025-12-11 21:55:25.986863', '2025-12-11 21:55:25.986899', 0, 1);
INSERT INTO `book_info` VALUES (18, '9787020138791', '红楼梦', '曹雪芹', '人民文学出版社', 99.80, 59.88, '在售', '中国古典文学巅峰之作', NULL, NULL, NULL, NULL, 201, 20059.80, '2025-12-11 21:55:25.987072', '2025-12-11 21:55:25.987101', 0, 1);
INSERT INTO `book_info` VALUES (19, '9787559642578', '月亮与六便士2', '毛姆', '北京联合出版公司', 42.00, 25.20, '在售', '1213', NULL, NULL, NULL, NULL, 126, 5292.00, '2025-12-11 21:55:25.987302', '2025-12-18 10:33:32.579242', 0, 1);
INSERT INTO `book_info` VALUES (20, '9787559620729', '房思琪的初恋乐园2', '林奕含', '北京联合出版公司', 45.00, 27.00, '在售', '111', NULL, NULL, NULL, NULL, 78, 3510.00, '2025-12-11 21:55:25.987584', '2025-12-18 09:49:00.324254', 0, 1);
INSERT INTO `book_info` VALUES (21, '9787530212943', '平凡的世界2', '路遥', '北京十月文艺出版社', 30.00, 18.00, '在售', '描绘了中国农村改革开放前后的时代画卷', NULL, '2012-03-01', 1206, '平装', 0, 0.00, '2025-12-27 09:39:11.901044', '2025-12-27 09:39:11.901067', 0, 1);
INSERT INTO `book_info` VALUES (22, '9787020002211', '活着2', '余华', '人民文学出版社', 30.00, 18.00, '在售', '一部关于生命意义的经典之作', NULL, '2012-08-01', 256, '平装', 0, 0.00, '2025-12-27 09:39:56.369523', '2025-12-27 09:39:56.369538', 0, 1);
INSERT INTO `book_info` VALUES (23, '9787536692912', '三体2', '刘慈欣', '重庆出版社', 44.00, 26.00, '在售', '中国科幻文学的里程碑作品', NULL, '2008-01-01', 449, '平装', 0, 0.00, '2025-12-27 09:39:56.372225', '2025-12-27 09:39:56.372238', 0, 7);
INSERT INTO `book_info` VALUES (24, '9787530212913', '平凡的世界2', '路遥', '北京十月文艺出版社', 30.00, 18.00, '在售', '描绘了中国农村改革开放前后的时代画卷', NULL, '2012-03-01', 1206, '平装', 0, 0.00, '2025-12-27 09:39:56.374370', '2025-12-27 09:39:56.374383', 0, 1);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_sys_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_sys_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (7, 'books', 'bookcategory');
INSERT INTO `django_content_type` VALUES (8, 'books', 'bookinfo');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'inventory', 'inventory');
INSERT INTO `django_content_type` VALUES (10, 'inventory', 'inventoryrecord');
INSERT INTO `django_content_type` VALUES (11, 'sales', 'saleschannel');
INSERT INTO `django_content_type` VALUES (13, 'sales', 'salesorder');
INSERT INTO `django_content_type` VALUES (12, 'sales', 'salesorderitem');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'users', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-12-11 21:39:59.627814');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2025-12-11 21:39:59.754618');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2025-12-11 21:40:00.243037');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2025-12-11 21:40:00.353743');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2025-12-11 21:40:00.372555');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2025-12-11 21:40:00.406111');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2025-12-11 21:40:00.442160');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2025-12-11 21:40:00.455860');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2025-12-11 21:40:00.474640');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2025-12-11 21:40:00.500930');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2025-12-11 21:40:00.534049');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2025-12-11 21:40:00.581515');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2025-12-11 21:40:00.603035');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2025-12-11 21:40:00.634396');
INSERT INTO `django_migrations` VALUES (15, 'users', '0001_initial', '2025-12-11 21:40:01.191069');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2025-12-11 21:40:01.555291');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2025-12-11 21:40:01.585155');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2025-12-11 21:40:01.630988');
INSERT INTO `django_migrations` VALUES (19, 'books', '0001_initial', '2025-12-11 21:40:01.880119');
INSERT INTO `django_migrations` VALUES (20, 'inventory', '0001_initial', '2025-12-11 21:40:02.196934');
INSERT INTO `django_migrations` VALUES (21, 'inventory', '0002_initial', '2025-12-11 21:40:02.375233');
INSERT INTO `django_migrations` VALUES (22, 'sales', '0001_initial', '2025-12-11 21:40:02.625250');
INSERT INTO `django_migrations` VALUES (23, 'sales', '0002_initial', '2025-12-11 21:40:02.891660');
INSERT INTO `django_migrations` VALUES (24, 'sessions', '0001_initial', '2025-12-11 21:40:02.932451');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_stock` int NOT NULL,
  `warning_stock` int NOT NULL,
  `locked_stock` int NOT NULL,
  `total_in` int NOT NULL,
  `total_out` int NOT NULL,
  `last_in_time` datetime(6) NULL DEFAULT NULL,
  `last_out_time` datetime(6) NULL DEFAULT NULL,
  `update_time` datetime(6) NOT NULL,
  `book_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `book_id`(`book_id` ASC) USING BTREE,
  CONSTRAINT `inventory_book_id_3a40b39f_fk_book_info_id` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (1, 251, 20, 0, 350, 99, '2025-12-16 18:32:48.228191', '2025-12-16 14:53:50.680549', '2025-12-16 18:32:48.228337', 20);
INSERT INTO `inventory` VALUES (2, 100, 20, 0, 226, 126, '2025-11-26 21:55:26.038311', '2025-12-10 21:55:26.038326', '2025-12-11 21:55:26.042621', 19);
INSERT INTO `inventory` VALUES (3, 100, 15, 0, 301, 201, '2025-11-26 21:55:26.038434', '2025-12-10 21:55:26.038443', '2025-12-11 21:55:26.042745', 18);
INSERT INTO `inventory` VALUES (4, 100, 20, 0, 287, 187, '2025-11-26 21:55:26.038533', '2025-12-10 21:55:26.038539', '2025-12-11 21:55:26.042867', 17);
INSERT INTO `inventory` VALUES (5, 100, 20, 0, 243, 143, '2025-11-26 21:55:26.038626', '2025-12-10 21:55:26.038633', '2025-12-11 21:55:26.043054', 16);
INSERT INTO `inventory` VALUES (6, 100, 20, 0, 252, 152, '2025-11-26 21:55:26.038722', '2025-12-10 21:55:26.038730', '2025-12-11 21:55:26.043189', 15);
INSERT INTO `inventory` VALUES (7, 0, 20, 0, 265, 165, '2025-11-26 21:55:26.038814', '2025-12-10 21:55:26.038822', '2025-12-11 21:55:26.043331', 14);
INSERT INTO `inventory` VALUES (8, 100, 115, 0, 234, 134, '2025-11-26 21:55:26.038931', '2025-12-10 21:55:26.038939', '2025-12-11 21:55:26.043471', 13);
INSERT INTO `inventory` VALUES (9, 100, 20, 0, 278, 178, '2025-11-26 21:55:26.039023', '2025-12-10 21:55:26.039031', '2025-12-11 21:55:26.043608', 12);
INSERT INTO `inventory` VALUES (10, 100, 20, 0, 256, 156, '2025-11-26 21:55:26.039114', '2025-12-10 21:55:26.039121', '2025-12-11 21:55:26.043751', 11);
INSERT INTO `inventory` VALUES (11, 100, 15, 0, 267, 167, '2025-11-26 21:55:26.039202', '2025-12-10 21:55:26.039210', '2025-12-11 21:55:26.043907', 10);
INSERT INTO `inventory` VALUES (12, 150, 15, 0, 248, 98, '2025-11-26 21:55:26.039297', '2025-12-10 21:55:26.039306', '2025-12-11 21:55:26.044042', 9);
INSERT INTO `inventory` VALUES (13, 100, 15, 0, 245, 145, '2025-11-26 21:55:26.039390', '2025-12-10 21:55:26.039397', '2025-12-11 21:55:26.044169', 8);
INSERT INTO `inventory` VALUES (14, 100, 15, 0, 278, 178, '2025-11-26 21:55:26.039480', '2025-12-10 21:55:26.039487', '2025-12-11 21:55:26.044284', 7);
INSERT INTO `inventory` VALUES (15, 100, 15, 0, 232, 132, '2025-11-26 21:55:26.039569', '2025-12-10 21:55:26.039577', '2025-12-11 21:55:26.044397', 6);
INSERT INTO `inventory` VALUES (16, 100, 20, 0, 289, 189, '2025-11-26 21:55:26.039663', '2025-12-10 21:55:26.039670', '2025-12-11 21:55:26.044517', 5);
INSERT INTO `inventory` VALUES (17, 100, 20, 0, 256, 156, '2025-11-26 21:55:26.039757', '2025-12-10 21:55:26.039765', '2025-12-11 21:55:26.044664', 4);
INSERT INTO `inventory` VALUES (18, 150, 15, 0, 155, 5, '2025-11-26 21:55:26.039852', '2025-12-10 21:55:26.039859', '2025-12-11 21:55:26.044785', 3);
INSERT INTO `inventory` VALUES (19, 100, 20, 0, 298, 198, '2025-11-26 21:55:26.039988', '2025-12-10 21:55:26.039997', '2025-12-11 21:55:26.044916', 2);
INSERT INTO `inventory` VALUES (20, 100, 20, 0, 345, 245, '2025-11-26 21:55:26.040089', '2025-12-10 21:55:26.040096', '2025-12-11 21:55:26.045035', 1);
INSERT INTO `inventory` VALUES (21, 0, 20, 0, 0, 0, NULL, NULL, '2025-12-27 09:39:11.904033', 21);
INSERT INTO `inventory` VALUES (22, 0, 20, 0, 0, 0, NULL, NULL, '2025-12-27 09:39:56.370445', 22);
INSERT INTO `inventory` VALUES (23, 0, 20, 0, 0, 0, NULL, NULL, '2025-12-27 09:39:56.372983', 23);
INSERT INTO `inventory` VALUES (24, 0, 20, 0, 0, 0, NULL, NULL, '2025-12-27 09:39:56.375157', 24);

-- ----------------------------
-- Table structure for inventory_record
-- ----------------------------
DROP TABLE IF EXISTS `inventory_record`;
CREATE TABLE `inventory_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `operate_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `before_stock` int NOT NULL,
  `after_stock` int NOT NULL,
  `related_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `operate_time` datetime(6) NOT NULL,
  `book_id` bigint NOT NULL,
  `operator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `inventory_record_book_id_2696d45a_fk_book_info_id`(`book_id` ASC) USING BTREE,
  INDEX `inventory_record_operator_id_60220831_fk_sys_user_id`(`operator_id` ASC) USING BTREE,
  CONSTRAINT `inventory_record_book_id_2696d45a_fk_book_info_id` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `inventory_record_operator_id_60220831_fk_sys_user_id` FOREIGN KEY (`operator_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_record
-- ----------------------------
INSERT INTO `inventory_record` VALUES (1, '入库', 228, 0, 228, NULL, '首批进货', '2025-12-11 21:55:26.601922', 20, 2);
INSERT INTO `inventory_record` VALUES (2, '入库', 226, 0, 226, NULL, '首批进货', '2025-12-11 21:55:26.602047', 19, 2);
INSERT INTO `inventory_record` VALUES (3, '入库', 301, 0, 301, NULL, '首批进货', '2025-12-11 21:55:26.602142', 18, 2);
INSERT INTO `inventory_record` VALUES (4, '入库', 287, 0, 287, NULL, '首批进货', '2025-12-11 21:55:26.602241', 17, 2);
INSERT INTO `inventory_record` VALUES (5, '入库', 243, 0, 243, NULL, '首批进货', '2025-12-11 21:55:26.602337', 16, 2);
INSERT INTO `inventory_record` VALUES (6, '入库', 252, 0, 252, NULL, '首批进货', '2025-12-11 21:55:26.602430', 15, 2);
INSERT INTO `inventory_record` VALUES (7, '入库', 265, 0, 265, NULL, '首批进货', '2025-12-11 21:55:26.602524', 14, 2);
INSERT INTO `inventory_record` VALUES (8, '入库', 234, 0, 234, NULL, '首批进货', '2025-12-11 21:55:26.602615', 13, 2);
INSERT INTO `inventory_record` VALUES (9, '入库', 278, 0, 278, NULL, '首批进货', '2025-12-11 21:55:26.602706', 12, 2);
INSERT INTO `inventory_record` VALUES (10, '入库', 256, 0, 256, NULL, '首批进货', '2025-12-11 21:55:26.602799', 11, 2);
INSERT INTO `inventory_record` VALUES (11, '入库', 11, 150, 161, NULL, '11', '2025-12-16 14:52:35.742125', 20, 1);
INSERT INTO `inventory_record` VALUES (12, '出库', -21, 161, 140, NULL, '11', '2025-12-16 14:53:50.682640', 20, 1);
INSERT INTO `inventory_record` VALUES (13, '入库', 111, 140, 251, NULL, '121', '2025-12-16 18:32:48.231369', 20, 1);

-- ----------------------------
-- Table structure for sales_channel
-- ----------------------------
DROP TABLE IF EXISTS `sales_channel`;
CREATE TABLE `sales_channel`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_rate` decimal(5, 2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `channel_code`(`channel_code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_channel
-- ----------------------------
INSERT INTO `sales_channel` VALUES (1, '线上商城', 'ONLINE', '线上', 0.08, 1, '2025-12-11 21:55:26.008120', '2025-12-11 21:55:26.008170');
INSERT INTO `sales_channel` VALUES (2, '实体书店', 'OFFLINE', '线下', 0.15, 1, '2025-12-11 21:55:26.008247', '2025-12-11 21:55:26.008274');
INSERT INTO `sales_channel` VALUES (3, '社群团购', 'GROUP', '线上', 0.12, 1, '2025-12-11 21:55:26.008344', '2025-12-11 21:55:26.008371');

-- ----------------------------
-- Table structure for sales_order
-- ----------------------------
DROP TABLE IF EXISTS `sales_order`;
CREATE TABLE `sales_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_quantity` int NOT NULL,
  `total_amount` decimal(12, 2) NOT NULL,
  `discount_amount` decimal(12, 2) NOT NULL,
  `actual_amount` decimal(12, 2) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_time` datetime(6) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sale_date` datetime(6) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `channel_id` bigint NOT NULL,
  `operator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_id`(`order_id` ASC) USING BTREE,
  INDEX `sales_order_channel_id_6fd8a8ea_fk_sales_channel_id`(`channel_id` ASC) USING BTREE,
  INDEX `sales_order_operator_id_3591e391_fk_sys_user_id`(`operator_id` ASC) USING BTREE,
  CONSTRAINT `sales_order_channel_id_6fd8a8ea_fk_sales_channel_id` FOREIGN KEY (`channel_id`) REFERENCES `sales_channel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sales_order_operator_id_3591e391_fk_sys_user_id` FOREIGN KEY (`operator_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_order
-- ----------------------------
INSERT INTO `sales_order` VALUES (1, 'SO202312110001', '客户001', '13800000000', 1, 45.00, 10.00, 35.00, '微信支付', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.093121', '2025-12-11 21:55:26.093157', '2025-12-11 21:55:26.093185', 0, 3, 2);
INSERT INTO `sales_order` VALUES (2, 'SO202312110002', '客户002', '13800000001', 2, 84.00, 0.00, 84.00, '支付宝', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.114302', '2025-12-11 21:55:26.114338', '2025-12-11 21:55:26.114362', 0, 2, 2);
INSERT INTO `sales_order` VALUES (3, 'SO202312110003', '客户003', '13800000002', 3, 299.40, 0.00, 299.40, '现金', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.127424', '2025-12-11 21:55:26.127458', '2025-12-11 21:55:26.127485', 0, 1, 2);
INSERT INTO `sales_order` VALUES (4, 'SO202312110004', '客户004', '13800000003', 1, 35.00, 0.00, 35.00, '微信支付', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.139046', '2025-12-11 21:55:26.139082', '2025-12-11 21:55:26.139114', 0, 3, 2);
INSERT INTO `sales_order` VALUES (5, 'SO202312110005', '客户005', '13800000004', 2, 78.00, 0.00, 78.00, '支付宝', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.149248', '2025-12-11 21:55:26.149284', '2025-12-11 21:55:26.149311', 0, 2, 2);
INSERT INTO `sales_order` VALUES (6, 'SO202312110006', '客户006', '13800000005', 3, 132.00, 0.00, 132.00, '现金', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.159339', '2025-12-11 21:55:26.159375', '2025-12-11 21:55:26.159402', 0, 1, 2);
INSERT INTO `sales_order` VALUES (7, 'SO202312110007', '客户007', '13800000006', 1, 44.00, 10.00, 34.00, '微信支付', '2025-12-11 21:55:26.091785', '已完成', NULL, '2025-12-11 21:55:26.169297', '2025-12-11 21:55:26.169332', '2025-12-11 21:55:26.169358', 0, 3, 2);
INSERT INTO `sales_order` VALUES (8, 'SO202312100008', '客户008', '13800000007', 1, 98.00, 10.00, 88.00, '微信支付', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.178720', '2025-12-11 21:55:26.178753', '2025-12-11 21:55:26.178781', 0, 3, 2);
INSERT INTO `sales_order` VALUES (9, 'SO202312100009', '客户009', '13800000008', 2, 90.00, 0.00, 90.00, '支付宝', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.187952', '2025-12-11 21:55:26.187987', '2025-12-11 21:55:26.188015', 0, 2, 2);
INSERT INTO `sales_order` VALUES (10, 'SO202312100010', '客户010', '13800000009', 3, 135.00, 0.00, 135.00, '现金', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.196655', '2025-12-11 21:55:26.196689', '2025-12-11 21:55:26.196717', 0, 1, 2);
INSERT INTO `sales_order` VALUES (11, 'SO202312100011', '客户011', '13800000010', 1, 99.00, 0.00, 99.00, '微信支付', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.204913', '2025-12-11 21:55:26.204936', '2025-12-11 21:55:26.204953', 0, 3, 2);
INSERT INTO `sales_order` VALUES (12, 'SO202312100012', '客户012', '13800000011', 2, 278.00, 0.00, 278.00, '支付宝', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.214028', '2025-12-11 21:55:26.214063', '2025-12-11 21:55:26.214089', 0, 2, 2);
INSERT INTO `sales_order` VALUES (13, 'SO202312100013', '客户013', '13800000012', 3, 204.00, 0.00, 204.00, '现金', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.224645', '2025-12-11 21:55:26.224683', '2025-12-11 21:55:26.224712', 0, 1, 2);
INSERT INTO `sales_order` VALUES (14, 'SO202312100014', '客户014', '13800000013', 1, 68.00, 10.00, 58.00, '微信支付', '2025-12-10 21:55:26.177771', '已完成', NULL, '2025-12-11 21:55:26.234188', '2025-12-11 21:55:26.234219', '2025-12-11 21:55:26.234246', 0, 3, 2);
INSERT INTO `sales_order` VALUES (15, 'SO202312090015', '客户015', '13800000014', 1, 89.00, 10.00, 79.00, '微信支付', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.244717', '2025-12-11 21:55:26.244752', '2025-12-11 21:55:26.244779', 0, 3, 2);
INSERT INTO `sales_order` VALUES (16, 'SO202312090016', '客户016', '13800000015', 2, 79.00, 0.00, 79.00, '支付宝', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.254044', '2025-12-11 21:55:26.254075', '2025-12-11 21:55:26.254100', 0, 2, 2);
INSERT INTO `sales_order` VALUES (17, 'SO202312090017', '客户017', '13800000016', 3, 105.00, 0.00, 105.00, '现金', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.263871', '2025-12-11 21:55:26.263914', '2025-12-11 21:55:26.263932', 0, 1, 2);
INSERT INTO `sales_order` VALUES (18, 'SO202312090018', '客户018', '13800000017', 1, 55.00, 0.00, 55.00, '微信支付', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.272919', '2025-12-11 21:55:26.272955', '2025-12-11 21:55:26.272982', 0, 3, 2);
INSERT INTO `sales_order` VALUES (19, 'SO202312090019', '客户019', '13800000018', 2, 88.00, 0.00, 88.00, '支付宝', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.281656', '2025-12-11 21:55:26.281692', '2025-12-11 21:55:26.281720', 0, 2, 2);
INSERT INTO `sales_order` VALUES (20, 'SO202312090020', '客户020', '13800000019', 3, 90.00, 0.00, 90.00, '现金', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.290985', '2025-12-11 21:55:26.291007', '2025-12-11 21:55:26.291025', 0, 1, 2);
INSERT INTO `sales_order` VALUES (21, 'SO202312090021', '客户021', '13800000020', 1, 45.00, 10.00, 35.00, '微信支付', '2025-12-09 21:55:26.243766', '已完成', NULL, '2025-12-11 21:55:26.299230', '2025-12-11 21:55:26.299252', '2025-12-11 21:55:26.299268', 0, 3, 2);
INSERT INTO `sales_order` VALUES (22, 'SO202312080022', '客户022', '13800000021', 1, 42.00, 10.00, 32.00, '微信支付', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.307236', '2025-12-11 21:55:26.307258', '2025-12-11 21:55:26.307274', 0, 3, 2);
INSERT INTO `sales_order` VALUES (23, 'SO202312080023', '客户023', '13800000022', 2, 199.60, 0.00, 199.60, '支付宝', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.315573', '2025-12-11 21:55:26.315604', '2025-12-11 21:55:26.315629', 0, 2, 2);
INSERT INTO `sales_order` VALUES (24, 'SO202312080024', '客户024', '13800000023', 3, 105.00, 0.00, 105.00, '现金', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.325413', '2025-12-11 21:55:26.325435', '2025-12-11 21:55:26.325452', 0, 1, 2);
INSERT INTO `sales_order` VALUES (25, 'SO202312080025', '客户025', '13800000024', 1, 39.00, 0.00, 39.00, '微信支付', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.335350', '2025-12-11 21:55:26.335384', '2025-12-11 21:55:26.335413', 0, 3, 2);
INSERT INTO `sales_order` VALUES (26, 'SO202312080026', '客户026', '13800000025', 2, 88.00, 0.00, 88.00, '支付宝', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.345298', '2025-12-11 21:55:26.345332', '2025-12-11 21:55:26.345359', 0, 2, 2);
INSERT INTO `sales_order` VALUES (27, 'SO202312080027', '客户027', '13800000026', 3, 132.00, 0.00, 132.00, '现金', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.361714', '2025-12-11 21:55:26.361747', '2025-12-11 21:55:26.361773', 0, 1, 2);
INSERT INTO `sales_order` VALUES (28, 'SO202312080028', '客户028', '13800000027', 1, 98.00, 10.00, 88.00, '微信支付', '2025-12-08 21:55:26.306407', '已完成', NULL, '2025-12-11 21:55:26.372494', '2025-12-11 21:55:26.372527', '2025-12-11 21:55:26.372553', 0, 3, 2);
INSERT INTO `sales_order` VALUES (29, 'SO202312070029', '客户029', '13800000028', 1, 45.00, 10.00, 35.00, '微信支付', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.382364', '2025-12-11 21:55:26.382385', '2025-12-11 21:55:26.382402', 0, 3, 2);
INSERT INTO `sales_order` VALUES (30, 'SO202312070030', '客户030', '13800000029', 2, 90.00, 0.00, 90.00, '支付宝', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.390579', '2025-12-11 21:55:26.390601', '2025-12-11 21:55:26.390617', 0, 2, 2);
INSERT INTO `sales_order` VALUES (31, 'SO202312070031', '客户031', '13800000030', 3, 297.00, 0.00, 297.00, '现金', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.399099', '2025-12-11 21:55:26.399133', '2025-12-11 21:55:26.399160', 0, 1, 2);
INSERT INTO `sales_order` VALUES (32, 'SO202312070032', '客户032', '13800000031', 1, 139.00, 0.00, 139.00, '微信支付', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.408076', '2025-12-11 21:55:26.408108', '2025-12-11 21:55:26.408133', 0, 3, 2);
INSERT INTO `sales_order` VALUES (33, 'SO202312070033', '客户033', '13800000032', 2, 136.00, 0.00, 136.00, '支付宝', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.417029', '2025-12-11 21:55:26.417061', '2025-12-11 21:55:26.417087', 0, 2, 2);
INSERT INTO `sales_order` VALUES (34, 'SO202312070034', '客户034', '13800000033', 3, 204.00, 0.00, 204.00, '现金', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.425836', '2025-12-11 21:55:26.425886', '2025-12-11 21:55:26.425915', 0, 1, 2);
INSERT INTO `sales_order` VALUES (35, 'SO202312070035', '客户035', '13800000034', 1, 89.00, 10.00, 79.00, '微信支付', '2025-12-07 21:55:26.381619', '已完成', NULL, '2025-12-11 21:55:26.435013', '2025-12-11 21:55:26.435047', '2025-12-11 21:55:26.435073', 0, 3, 2);
INSERT INTO `sales_order` VALUES (36, 'SO202312060036', '客户036', '13800000035', 1, 39.50, 10.00, 29.50, '微信支付', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.444506', '2025-12-11 21:55:26.444538', '2025-12-11 21:55:26.444565', 0, 3, 2);
INSERT INTO `sales_order` VALUES (37, 'SO202312060037', '客户037', '13800000036', 2, 70.00, 0.00, 70.00, '支付宝', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.453721', '2025-12-11 21:55:26.453756', '2025-12-11 21:55:26.453822', 0, 2, 2);
INSERT INTO `sales_order` VALUES (38, 'SO202312060038', '客户038', '13800000037', 3, 165.00, 0.00, 165.00, '现金', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.463461', '2025-12-11 21:55:26.463483', '2025-12-11 21:55:26.463500', 0, 1, 2);
INSERT INTO `sales_order` VALUES (39, 'SO202312060039', '客户039', '13800000038', 1, 44.00, 0.00, 44.00, '微信支付', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.472330', '2025-12-11 21:55:26.472365', '2025-12-11 21:55:26.472394', 0, 3, 2);
INSERT INTO `sales_order` VALUES (40, 'SO202312060040', '客户040', '13800000039', 2, 60.00, 0.00, 60.00, '支付宝', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.481568', '2025-12-11 21:55:26.481603', '2025-12-11 21:55:26.481632', 0, 2, 2);
INSERT INTO `sales_order` VALUES (41, 'SO202312060041', '客户041', '13800000040', 3, 135.00, 0.00, 135.00, '现金', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.490098', '2025-12-11 21:55:26.490147', '2025-12-11 21:55:26.490180', 0, 1, 2);
INSERT INTO `sales_order` VALUES (42, 'SO202312060042', '客户042', '13800000041', 1, 42.00, 10.00, 32.00, '微信支付', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.498639', '2025-12-11 21:55:26.498662', '2025-12-11 21:55:26.498678', 0, 3, 2);
INSERT INTO `sales_order` VALUES (43, 'SO202312060043', '客户043', '13800000042', 2, 199.60, 0.00, 199.60, '支付宝', '2025-12-06 21:55:26.443597', '已完成', NULL, '2025-12-11 21:55:26.507475', '2025-12-11 21:55:26.507497', '2025-12-11 21:55:26.507514', 0, 2, 2);
INSERT INTO `sales_order` VALUES (44, 'SO202312050044', '客户044', '13800000043', 1, 35.00, 10.00, 25.00, '微信支付', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.516048', '2025-12-11 21:55:26.516081', '2025-12-11 21:55:26.516111', 0, 3, 2);
INSERT INTO `sales_order` VALUES (45, 'SO202312050045', '客户045', '13800000044', 2, 78.00, 0.00, 78.00, '支付宝', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.525025', '2025-12-11 21:55:26.525060', '2025-12-11 21:55:26.525088', 0, 2, 2);
INSERT INTO `sales_order` VALUES (46, 'SO202312050046', '客户046', '13800000045', 3, 132.00, 0.00, 132.00, '现金', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.533145', '2025-12-11 21:55:26.533180', '2025-12-11 21:55:26.533207', 0, 1, 2);
INSERT INTO `sales_order` VALUES (47, 'SO202312050047', '客户047', '13800000046', 1, 44.00, 0.00, 44.00, '微信支付', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.542216', '2025-12-11 21:55:26.542238', '2025-12-11 21:55:26.542255', 0, 3, 2);
INSERT INTO `sales_order` VALUES (48, 'SO202312050048', '客户048', '13800000047', 2, 196.00, 0.00, 196.00, '支付宝', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.550178', '2025-12-11 21:55:26.550211', '2025-12-11 21:55:26.550241', 0, 2, 2);
INSERT INTO `sales_order` VALUES (49, 'SO202312050049', '客户049', '13800000048', 3, 135.00, 0.00, 135.00, '现金', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.560500', '2025-12-11 21:55:26.560544', '2025-12-11 21:55:26.560575', 0, 1, 2);
INSERT INTO `sales_order` VALUES (50, 'SO202312050050', '客户050', '13800000049', 1, 45.00, 10.00, 35.00, '微信支付', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.571407', '2025-12-11 21:55:26.571442', '2025-12-11 21:55:26.571469', 0, 3, 2);
INSERT INTO `sales_order` VALUES (51, 'SO202312050051', '客户051', '13800000050', 2, 198.00, 0.00, 198.00, '支付宝', '2025-12-05 21:55:26.515127', '已完成', NULL, '2025-12-11 21:55:26.580527', '2025-12-11 21:55:26.580562', '2025-12-11 21:55:26.580590', 0, 2, 2);

-- ----------------------------
-- Table structure for sales_order_item
-- ----------------------------
DROP TABLE IF EXISTS `sales_order_item`;
CREATE TABLE `sales_order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `quantity` int NOT NULL,
  `total_amount` decimal(12, 2) NOT NULL,
  `discount_amount` decimal(12, 2) NOT NULL,
  `actual_amount` decimal(12, 2) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `book_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sales_order_item_book_id_2da7f7dd_fk_book_info_id`(`book_id` ASC) USING BTREE,
  INDEX `sales_order_item_order_id_f48d3989_fk_sales_order_id`(`order_id` ASC) USING BTREE,
  CONSTRAINT `sales_order_item_book_id_2da7f7dd_fk_book_info_id` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sales_order_item_order_id_f48d3989_fk_sales_order_id` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sales_order_item
-- ----------------------------
INSERT INTO `sales_order_item` VALUES (1, '房思琪的初恋乐园', '9787559620729', 45.00, 1, 45.00, 10.00, 35.00, '2025-12-11 21:55:26.108540', 20, 1);
INSERT INTO `sales_order_item` VALUES (2, '月亮与六便士', '9787559642578', 42.00, 2, 84.00, 0.00, 84.00, '2025-12-11 21:55:26.122075', 19, 2);
INSERT INTO `sales_order_item` VALUES (3, '红楼梦', '9787020138791', 99.80, 3, 299.40, 0.00, 299.40, '2025-12-11 21:55:26.133794', 18, 3);
INSERT INTO `sales_order_item` VALUES (4, '嫌疑人X的献身', '9787544291811', 35.00, 1, 35.00, 0.00, 35.00, '2025-12-11 21:55:26.144584', 17, 4);
INSERT INTO `sales_order_item` VALUES (5, '追风筝的人', '9787544270878', 39.00, 2, 78.00, 0.00, 78.00, '2025-12-11 21:55:26.153967', 16, 5);
INSERT INTO `sales_order_item` VALUES (6, '三体III：死神永生', '9787550028364', 44.00, 3, 132.00, 0.00, 132.00, '2025-12-11 21:55:26.164756', 15, 6);
INSERT INTO `sales_order_item` VALUES (7, '三体II：黑暗森林', '9787550015166', 44.00, 1, 44.00, 10.00, 34.00, '2025-12-11 21:55:26.174075', 14, 7);
INSERT INTO `sales_order_item` VALUES (8, '原则', '9787508689968', 98.00, 1, 98.00, 10.00, 88.00, '2025-12-11 21:55:26.183388', 13, 8);
INSERT INTO `sales_order_item` VALUES (9, '白夜行', '9787559446664', 45.00, 2, 90.00, 0.00, 90.00, '2025-12-11 21:55:26.192401', 12, 9);
INSERT INTO `sales_order_item` VALUES (10, '被讨厌的勇气', '9787521713626', 45.00, 3, 135.00, 0.00, 135.00, '2025-12-11 21:55:26.201071', 11, 10);
INSERT INTO `sales_order_item` VALUES (11, '平凡的世界', '9787540487720', 99.00, 1, 99.00, 0.00, 99.00, '2025-12-11 21:55:26.209401', 10, 11);
INSERT INTO `sales_order_item` VALUES (12, '深入理解计算机系统', '9787111544937', 139.00, 2, 278.00, 0.00, 278.00, '2025-12-11 21:55:26.219101', 9, 12);
INSERT INTO `sales_order_item` VALUES (13, '未来简史', '9787508680989', 68.00, 3, 204.00, 0.00, 204.00, '2025-12-11 21:55:26.229385', 8, 13);
INSERT INTO `sales_order_item` VALUES (14, '人类简史', '9787508353920', 68.00, 1, 68.00, 10.00, 58.00, '2025-12-11 21:55:26.239560', 7, 14);
INSERT INTO `sales_order_item` VALUES (15, 'Python编程：从入门到实践', '9787115551702', 89.00, 1, 89.00, 10.00, 79.00, '2025-12-11 21:55:26.249362', 6, 15);
INSERT INTO `sales_order_item` VALUES (16, '解忧杂货店', '9787544291170', 39.50, 2, 79.00, 0.00, 79.00, '2025-12-11 21:55:26.258931', 5, 16);
INSERT INTO `sales_order_item` VALUES (17, '1984', '9787208061644', 35.00, 3, 105.00, 0.00, 105.00, '2025-12-11 21:55:26.268446', 4, 17);
INSERT INTO `sales_order_item` VALUES (18, '百年孤独', '9787020008735', 55.00, 1, 55.00, 0.00, 55.00, '2025-12-11 21:55:26.277315', 3, 18);
INSERT INTO `sales_order_item` VALUES (19, '三体', '9787536692930', 44.00, 2, 88.00, 0.00, 88.00, '2025-12-11 21:55:26.286675', 2, 19);
INSERT INTO `sales_order_item` VALUES (20, '活着', '9787020002207', 30.00, 3, 90.00, 0.00, 90.00, '2025-12-11 21:55:26.295182', 1, 20);
INSERT INTO `sales_order_item` VALUES (21, '房思琪的初恋乐园', '9787559620729', 45.00, 1, 45.00, 10.00, 35.00, '2025-12-11 21:55:26.303163', 20, 21);
INSERT INTO `sales_order_item` VALUES (22, '月亮与六便士', '9787559642578', 42.00, 1, 42.00, 10.00, 32.00, '2025-12-11 21:55:26.311362', 19, 22);
INSERT INTO `sales_order_item` VALUES (23, '红楼梦', '9787020138791', 99.80, 2, 199.60, 0.00, 199.60, '2025-12-11 21:55:26.320408', 18, 23);
INSERT INTO `sales_order_item` VALUES (24, '嫌疑人X的献身', '9787544291811', 35.00, 3, 105.00, 0.00, 105.00, '2025-12-11 21:55:26.330476', 17, 24);
INSERT INTO `sales_order_item` VALUES (25, '追风筝的人', '9787544270878', 39.00, 1, 39.00, 0.00, 39.00, '2025-12-11 21:55:26.340202', 16, 25);
INSERT INTO `sales_order_item` VALUES (26, '三体III：死神永生', '9787550028364', 44.00, 2, 88.00, 0.00, 88.00, '2025-12-11 21:55:26.357278', 15, 26);
INSERT INTO `sales_order_item` VALUES (27, '三体II：黑暗森林', '9787550015166', 44.00, 3, 132.00, 0.00, 132.00, '2025-12-11 21:55:26.367380', 14, 27);
INSERT INTO `sales_order_item` VALUES (28, '原则', '9787508689968', 98.00, 1, 98.00, 10.00, 88.00, '2025-12-11 21:55:26.378088', 13, 28);
INSERT INTO `sales_order_item` VALUES (29, '白夜行', '9787559446664', 45.00, 1, 45.00, 10.00, 35.00, '2025-12-11 21:55:26.386640', 12, 29);
INSERT INTO `sales_order_item` VALUES (30, '被讨厌的勇气', '9787521713626', 45.00, 2, 90.00, 0.00, 90.00, '2025-12-11 21:55:26.394617', 11, 30);
INSERT INTO `sales_order_item` VALUES (31, '平凡的世界', '9787540487720', 99.00, 3, 297.00, 0.00, 297.00, '2025-12-11 21:55:26.403572', 10, 31);
INSERT INTO `sales_order_item` VALUES (32, '深入理解计算机系统', '9787111544937', 139.00, 1, 139.00, 0.00, 139.00, '2025-12-11 21:55:26.412665', 9, 32);
INSERT INTO `sales_order_item` VALUES (33, '未来简史', '9787508680989', 68.00, 2, 136.00, 0.00, 136.00, '2025-12-11 21:55:26.421495', 8, 33);
INSERT INTO `sales_order_item` VALUES (34, '人类简史', '9787508353920', 68.00, 3, 204.00, 0.00, 204.00, '2025-12-11 21:55:26.430123', 7, 34);
INSERT INTO `sales_order_item` VALUES (35, 'Python编程：从入门到实践', '9787115551702', 89.00, 1, 89.00, 10.00, 79.00, '2025-12-11 21:55:26.440074', 6, 35);
INSERT INTO `sales_order_item` VALUES (36, '解忧杂货店', '9787544291170', 39.50, 1, 39.50, 10.00, 29.50, '2025-12-11 21:55:26.448921', 5, 36);
INSERT INTO `sales_order_item` VALUES (37, '1984', '9787208061644', 35.00, 2, 70.00, 0.00, 70.00, '2025-12-11 21:55:26.459124', 4, 37);
INSERT INTO `sales_order_item` VALUES (38, '百年孤独', '9787020008735', 55.00, 3, 165.00, 0.00, 165.00, '2025-12-11 21:55:26.467690', 3, 38);
INSERT INTO `sales_order_item` VALUES (39, '三体', '9787536692930', 44.00, 1, 44.00, 0.00, 44.00, '2025-12-11 21:55:26.477137', 2, 39);
INSERT INTO `sales_order_item` VALUES (40, '活着', '9787020002207', 30.00, 2, 60.00, 0.00, 60.00, '2025-12-11 21:55:26.485553', 1, 40);
INSERT INTO `sales_order_item` VALUES (41, '房思琪的初恋乐园', '9787559620729', 45.00, 3, 135.00, 0.00, 135.00, '2025-12-11 21:55:26.494695', 20, 41);
INSERT INTO `sales_order_item` VALUES (42, '月亮与六便士', '9787559642578', 42.00, 1, 42.00, 10.00, 32.00, '2025-12-11 21:55:26.502926', 19, 42);
INSERT INTO `sales_order_item` VALUES (43, '红楼梦', '9787020138791', 99.80, 2, 199.60, 0.00, 199.60, '2025-12-11 21:55:26.511648', 18, 43);
INSERT INTO `sales_order_item` VALUES (44, '嫌疑人X的献身', '9787544291811', 35.00, 1, 35.00, 10.00, 25.00, '2025-12-11 21:55:26.520477', 17, 44);
INSERT INTO `sales_order_item` VALUES (45, '追风筝的人', '9787544270878', 39.00, 2, 78.00, 0.00, 78.00, '2025-12-11 21:55:26.529016', 16, 45);
INSERT INTO `sales_order_item` VALUES (46, '三体III：死神永生', '9787550028364', 44.00, 3, 132.00, 0.00, 132.00, '2025-12-11 21:55:26.538197', 15, 46);
INSERT INTO `sales_order_item` VALUES (47, '三体II：黑暗森林', '9787550015166', 44.00, 1, 44.00, 0.00, 44.00, '2025-12-11 21:55:26.546346', 14, 47);
INSERT INTO `sales_order_item` VALUES (48, '原则', '9787508689968', 98.00, 2, 196.00, 0.00, 196.00, '2025-12-11 21:55:26.555673', 13, 48);
INSERT INTO `sales_order_item` VALUES (49, '白夜行', '9787559446664', 45.00, 3, 135.00, 0.00, 135.00, '2025-12-11 21:55:26.565973', 12, 49);
INSERT INTO `sales_order_item` VALUES (50, '被讨厌的勇气', '9787521713626', 45.00, 1, 45.00, 10.00, 35.00, '2025-12-11 21:55:26.576147', 11, 50);
INSERT INTO `sales_order_item` VALUES (51, '平凡的世界', '9787540487720', 99.00, 2, 198.00, 0.00, 198.00, '2025-12-11 21:55:26.585148', 10, 51);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_login_ip` char(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'pbkdf2_sha256$1000000$SnL1Jh3LFLSeOZYAh7hLTi$0h9H7L6ymdGHWfsoJyBra1RJusKwS+ju9cpJPAWl3vI=', NULL, 1, 'admin', '', '', 1, 1, '2025-12-11 21:55:18.384721', '管理员', '管理员', '13800138000', 'admin@example.com', '127.0.0.1', 0);
INSERT INTO `sys_user` VALUES (2, 'pbkdf2_sha256$1000000$ya09G7s4B5tsX6wJlZItMF$tnX8+kI/+hRwrBXxMHW7pIBL8Uw6zdhjXMINGvKrnNg=', NULL, 0, 'operator01', '', '', 1, 1, '2025-12-11 21:55:21.721957', '操作员01', '操作员', '13800138001', 'operator01@example.com', '127.0.0.1', 0);
INSERT INTO `sys_user` VALUES (3, 'pbkdf2_sha256$1000000$SKFkJeeiLqoXO1DMVlRM7s$hl7nKLrkliglXBUhJ2P/hyOX7sWrSwf5f2ncKQz8fvA=', NULL, 0, 'viewer01', '', '', 0, 1, '2025-12-11 21:55:25.614167', '查看员01', '查看员', '13800138002', 'viewer01@example.com', NULL, 0);

-- ----------------------------
-- Table structure for sys_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_groups`;
CREATE TABLE `sys_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_user_groups_user_id_group_id_9eeca8dc_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `sys_user_groups_group_id_9b8b43fc_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `sys_user_groups_group_id_9b8b43fc_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_groups_user_id_87e5b1ea_fk_sys_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_user_permissions`;
CREATE TABLE `sys_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_user_user_permissions_user_id_permission_id_20b74a10_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `sys_user_user_permis_permission_id_55623e22_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `sys_user_user_permis_permission_id_55623e22_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_user_user_permissions_user_id_ad6c918a_fk_sys_user_id` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
