/*
 Navicat Premium Data Transfer

 Source Server         : cloud
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : rm-m5eec513y253sj2ofoo.mysql.rds.aliyuncs.com:3306
 Source Schema         : sbgl

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/04/2020 19:18:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for shebei
-- ----------------------------
DROP TABLE IF EXISTS `shebei`;
CREATE TABLE `shebei`  (
  `sbid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `sbzt` int(11) NULL DEFAULT NULL,
  `sbname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sbid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebei
-- ----------------------------
INSERT INTO `shebei` VALUES (3, 1, 0, 'sbname2');
INSERT INTO `shebei` VALUES (4, 1, 0, 'sbname3');
INSERT INTO `shebei` VALUES (5, 1, 4, 'sbname4');
INSERT INTO `shebei` VALUES (7, 1, 4, 'sbname6');
INSERT INTO `shebei` VALUES (11, 1, 0, '投影仪');
INSERT INTO `shebei` VALUES (12, 1, 5, '录音器');

-- ----------------------------
-- Table structure for shebeijilu
-- ----------------------------
DROP TABLE IF EXISTS `shebeijilu`;
CREATE TABLE `shebeijilu`  (
  `sbjlid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `neirong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sbid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`sbjlid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shebeijilu
-- ----------------------------
INSERT INTO `shebeijilu` VALUES (1, 1, '2020-03-21 :11:24:31', '用户租借', 1);
INSERT INTO `shebeijilu` VALUES (2, 1, '2020-03-22 :04:23:12', '用户租借', 1);
INSERT INTO `shebeijilu` VALUES (3, 1, '2020-03-22 :04:53:57', '用户归还', 4);
INSERT INTO `shebeijilu` VALUES (4, 1, '2020-03-22 :04:54:03', '用户租借', 1);
INSERT INTO `shebeijilu` VALUES (5, 1, '2020-03-22 :04:54:09', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (6, 1, '2020-03-22 :04:54:14', '用户归还', 1);
INSERT INTO `shebeijilu` VALUES (7, 1, '2020-03-22 :04:54:16', '用户归还', 3);
INSERT INTO `shebeijilu` VALUES (8, 1, '2020-03-22 :04:54:22', '申请维护', 4);
INSERT INTO `shebeijilu` VALUES (9, 1, '2020-03-22 :04:58:01', '用户归还', 4);
INSERT INTO `shebeijilu` VALUES (10, 1, '2020-03-22 :04:58:05', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (11, 1, '2020-03-22 :04:59:49', '申请维修', 4);
INSERT INTO `shebeijilu` VALUES (12, 1, '2020-03-22 :05:03:35', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (13, 2, '2020-03-22 :05:14:01', '维修完成', 4);
INSERT INTO `shebeijilu` VALUES (14, 1, '2020-03-22 :05:14:27', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (15, 1, '2020-03-22 :05:15:28', '申请维护', 4);
INSERT INTO `shebeijilu` VALUES (16, 2, '2020-03-22 :05:19:53', '申请维修', 4);
INSERT INTO `shebeijilu` VALUES (17, 3, '2020-03-22 :05:39:36', '维修完成', 4);
INSERT INTO `shebeijilu` VALUES (18, 1, '2020-03-22 :05:39:57', '用户租借', 6);
INSERT INTO `shebeijilu` VALUES (19, 1, '2020-03-22 :05:40:03', '申请维护', 6);
INSERT INTO `shebeijilu` VALUES (20, 2, '2020-03-22 :05:40:15', '申请维修', 6);
INSERT INTO `shebeijilu` VALUES (21, 1, '2020-03-22 :09:32:31', '用户租借', 7);
INSERT INTO `shebeijilu` VALUES (22, 1, '2020-03-22 :09:32:42', '申请维护', 7);
INSERT INTO `shebeijilu` VALUES (23, 2, '2020-03-22 :09:33:07', '申请维修', 7);
INSERT INTO `shebeijilu` VALUES (24, 3, '2020-03-22 :09:33:20', '维修完成', 7);
INSERT INTO `shebeijilu` VALUES (25, 1, '2020-03-22 :10:12:16', '用户租借', 7);
INSERT INTO `shebeijilu` VALUES (26, 1, '2020-03-22 :10:12:20', '用户租借', 5);
INSERT INTO `shebeijilu` VALUES (27, 1, '2020-03-22 :10:12:28', '用户归还', 7);
INSERT INTO `shebeijilu` VALUES (28, 1, '2020-03-22 :10:12:32', '申请维护', 3);
INSERT INTO `shebeijilu` VALUES (29, 2, '2020-03-22 :10:12:58', '维修完成', 3);
INSERT INTO `shebeijilu` VALUES (30, 1, '2020-03-22 :10:13:17', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (31, 1, '2020-03-22 :10:13:21', '申请维护', 3);
INSERT INTO `shebeijilu` VALUES (32, 1, '2020-03-22 :10:13:22', '申请维护', 5);
INSERT INTO `shebeijilu` VALUES (33, 2, '2020-03-22 :10:14:03', '申请维修', 5);
INSERT INTO `shebeijilu` VALUES (34, 3, '2020-03-22 :10:14:14', '维修完成', 5);
INSERT INTO `shebeijilu` VALUES (35, 1, '2020-04-06 :01:38:49', '用户租借', 1);
INSERT INTO `shebeijilu` VALUES (36, 1, '2020-04-06 :01:39:38', '申请维护', 1);
INSERT INTO `shebeijilu` VALUES (37, 2, '2020-04-06 :01:41:05', '申请维修', 1);
INSERT INTO `shebeijilu` VALUES (38, 1, '2020-04-08 :12:42:14', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (39, 1, '2020-04-08 :12:43:07', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (40, 1, '2020-04-08 :12:43:09', '用户归还', 4);
INSERT INTO `shebeijilu` VALUES (41, 1, '2020-04-08 :12:43:11', '申请维护', 5);
INSERT INTO `shebeijilu` VALUES (42, 1, '2020-04-08 :12:44:00', '申请维护', 5);
INSERT INTO `shebeijilu` VALUES (43, 1, '2020-04-08 :12:53:52', '用户归还', 5);
INSERT INTO `shebeijilu` VALUES (44, 1, '2020-04-08 :12:54:02', '用户租借', 5);
INSERT INTO `shebeijilu` VALUES (45, 2, '2020-04-08 :01:01:45', '申请维修', 5);
INSERT INTO `shebeijilu` VALUES (46, 1, '2020-04-08 :01:01:57', '申请维护', 5);
INSERT INTO `shebeijilu` VALUES (47, 2, '2020-04-08 :01:02:07', '申请维修', 5);
INSERT INTO `shebeijilu` VALUES (48, 3, '2020-04-08 :01:03:04', '维修完成', 5);
INSERT INTO `shebeijilu` VALUES (49, 1, '2020-04-08 :01:03:15', '用户租借', 5);
INSERT INTO `shebeijilu` VALUES (50, 1, '2020-04-08 :01:05:14', '申请维护', 5);
INSERT INTO `shebeijilu` VALUES (51, 2, '2020-04-08 :01:05:29', '申请维修', 5);
INSERT INTO `shebeijilu` VALUES (53, 4, '2020-04-08 :02:28:59', '设备报废', 5);
INSERT INTO `shebeijilu` VALUES (54, 1, '2020-04-08 :02:45:50', '用户租借', 7);
INSERT INTO `shebeijilu` VALUES (55, 1, '2020-04-08 :02:59:45', '申请维护', 7);
INSERT INTO `shebeijilu` VALUES (56, 1, '2020-04-08 :02:59:49', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (57, 2, '2020-04-08 :03:00:08', '申请维修', 7);
INSERT INTO `shebeijilu` VALUES (58, 3, '2020-04-08 :03:00:29', '维修完成', 7);
INSERT INTO `shebeijilu` VALUES (59, 4, '2020-04-08 :11:10:49', '设备报废', 7);
INSERT INTO `shebeijilu` VALUES (60, 1, '2020-04-08 :11:12:58', '用户租借', 11);
INSERT INTO `shebeijilu` VALUES (61, 1, '2020-04-08 :11:13:17', '申请维护', 11);
INSERT INTO `shebeijilu` VALUES (62, 1, '2020-04-08 :11:13:26', '用户归还', 4);
INSERT INTO `shebeijilu` VALUES (63, 2, '2020-04-08 :11:17:54', '维修完成', 11);
INSERT INTO `shebeijilu` VALUES (64, 1, '2020-04-08 :12:43:51', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (65, 1, '2020-04-08 :12:44:05', '用户归还', 3);
INSERT INTO `shebeijilu` VALUES (66, 1, '2020-04-08 :12:44:13', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (67, 1, '2020-04-08 :12:44:20', '申请维护', 4);
INSERT INTO `shebeijilu` VALUES (68, 2, '2020-04-08 :12:46:13', '维修完成', 4);
INSERT INTO `shebeijilu` VALUES (69, 1, '2020-04-08 :12:47:10', '用户租借', 3);
INSERT INTO `shebeijilu` VALUES (70, 1, '2020-04-08 :12:47:19', '申请维护', 3);
INSERT INTO `shebeijilu` VALUES (71, 2, '2020-04-08 :12:47:30', '申请维修', 3);
INSERT INTO `shebeijilu` VALUES (72, 3, '2020-04-08 :12:47:48', '维修完成', 3);
INSERT INTO `shebeijilu` VALUES (73, 1, '2020-04-08 :12:48:16', '用户租借', 12);
INSERT INTO `shebeijilu` VALUES (74, 1, '2020-04-08 :12:48:22', '申请维护', 12);
INSERT INTO `shebeijilu` VALUES (75, 2, '2020-04-08 :12:48:34', '申请维修', 12);
INSERT INTO `shebeijilu` VALUES (76, 3, '2020-04-08 :12:48:56', NULL, 12);
INSERT INTO `shebeijilu` VALUES (77, 1, '2020-04-08 :01:12:42', '用户租借', 11);
INSERT INTO `shebeijilu` VALUES (78, 1, '2020-04-08 :01:12:47', '申请维护', 11);
INSERT INTO `shebeijilu` VALUES (79, 2, '2020-04-08 :01:12:59', '维修完成', 11);
INSERT INTO `shebeijilu` VALUES (80, 1, '2020-04-08 :01:14:32', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (81, 1, '2020-04-08 :01:14:36', '申请维护', 4);
INSERT INTO `shebeijilu` VALUES (82, 2, '2020-04-08 :01:15:08', '维修完成', 4);
INSERT INTO `shebeijilu` VALUES (83, 1, '2020-04-08 :01:16:49', '用户租借', 4);
INSERT INTO `shebeijilu` VALUES (84, 1, '2020-04-08 :01:16:53', '申请维护', 4);
INSERT INTO `shebeijilu` VALUES (85, 2, '2020-04-08 :01:17:00', '维修完成', 4);

-- ----------------------------
-- Table structure for t_emp
-- ----------------------------
DROP TABLE IF EXISTS `t_emp`;
CREATE TABLE `t_emp`  (
  `id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deptId` int(11) NULL DEFAULT NULL,
  `salary` float(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuangtai` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', 'liu', 0, '123', 1);
INSERT INTO `user` VALUES (2, '1234', 'yang', 1, '1234', 1);
INSERT INTO `user` VALUES (3, '12345', 'weixiu', 2, '12345', 1);
INSERT INTO `user` VALUES (4, 'admin123', 'admin', 3, 'admin', 1);
INSERT INTO `user` VALUES (20, '123', '测试', 0, '测试', 0);
INSERT INTO `user` VALUES (27, '999', '999', 0, '999', 0);
INSERT INTO `user` VALUES (28, '9999', '9999', 1, '9999', 0);
INSERT INTO `user` VALUES (29, '99999', '99999', 2, '99999', 1);
INSERT INTO `user` VALUES (30, '111', 'zhangsan', 0, 'zhangsan', 1);
INSERT INTO `user` VALUES (31, '111', 'lisi', 0, 'lisi', 0);
INSERT INTO `user` VALUES (32, '', '', 0, '', 0);

SET FOREIGN_KEY_CHECKS = 1;
