/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : ssh_2

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 29/01/2020 11:58:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '区编号',
  `aname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区名称',
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '区表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (1, '江岸区');
INSERT INTO `area` VALUES (2, '江汉区');
INSERT INTO `area` VALUES (3, '洪山区');
INSERT INTO `area` VALUES (4, '武昌区');
INSERT INTO `area` VALUES (5, '汉阳区');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋编号',
  `price` int(11) NULL DEFAULT NULL COMMENT '房屋租金',
  `htid` int(11) NULL DEFAULT NULL COMMENT '房屋类型编号',
  `shi` int(11) NULL DEFAULT NULL COMMENT '几室',
  `ting` int(11) NULL DEFAULT NULL COMMENT '几厅',
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, 14212, 3, 3, 4);
INSERT INTO `house` VALUES (2, 10806, 1, 4, 4);
INSERT INTO `house` VALUES (3, 4380, 3, 5, 5);
INSERT INTO `house` VALUES (4, 14056, 5, 1, 5);
INSERT INTO `house` VALUES (5, 11633, 4, 1, 5);
INSERT INTO `house` VALUES (6, 11679, 5, 4, 4);
INSERT INTO `house` VALUES (7, 19680, 3, 4, 5);
INSERT INTO `house` VALUES (8, 6271, 3, 3, 1);
INSERT INTO `house` VALUES (9, 11905, 1, 3, 4);
INSERT INTO `house` VALUES (10, 4549, 1, 4, 3);
INSERT INTO `house` VALUES (12, 15773, 2, 5, 3);
INSERT INTO `house` VALUES (13, 18486, 1, 5, 1);
INSERT INTO `house` VALUES (14, 13220, 5, 3, 4);
INSERT INTO `house` VALUES (15, 10070, 4, 4, 2);
INSERT INTO `house` VALUES (16, 19522, 1, 5, 2);

-- ----------------------------
-- Table structure for house_type
-- ----------------------------
DROP TABLE IF EXISTS `house_type`;
CREATE TABLE `house_type`  (
  `htid` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋类型编号',
  `htname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋类型名称',
  PRIMARY KEY (`htid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房屋类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house_type
-- ----------------------------
INSERT INTO `house_type` VALUES (1, '地下室');
INSERT INTO `house_type` VALUES (2, '平房');
INSERT INTO `house_type` VALUES (3, '普通住宅');
INSERT INTO `house_type` VALUES (4, '公寓');
INSERT INTO `house_type` VALUES (5, '别墅');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发布信息编号',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `hid` int(11) NULL DEFAULT NULL COMMENT '房屋编号',
  `houseinfo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋信息',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户编号',
  `fbtime` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `sid` int(11) NULL DEFAULT NULL COMMENT '街道编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '发布信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES (1, '文庭雅苑', 1, '房间布局堪称完美', 2, '2018-01-21 10:37:49', 12);
INSERT INTO `info` VALUES (2, '美景天城', 2, '优雅又不失情调', 2, '2018-08-03 17:04:21', 6);
INSERT INTO `info` VALUES (3, '西钓鱼台', 3, '让人无比舒心', 2, '2019-05-15 22:49:23', 4);
INSERT INTO `info` VALUES (4, '阳光斯坦福', 4, '价格也很合理', 1, '2018-01-20 20:55:34', 9);
INSERT INTO `info` VALUES (5, '北苑家园', 5, '一般人是不愿进去的', 1, '2018-02-20 01:54:06', 3);
INSERT INTO `info` VALUES (6, '美景天城', 6, '无懈可击', 2, '2019-01-19 19:10:42', 10);
INSERT INTO `info` VALUES (7, '夏都盈座', 7, '交通方便', 2, '2018-07-07 18:57:01', 1);
INSERT INTO `info` VALUES (8, '翡翠城', 8, '视野开阔', 2, '2019-07-26 14:14:50', 10);
INSERT INTO `info` VALUES (9, '上东三角洲', 9, '设施有点陈旧', 1, '2019-04-06 04:08:29', 5);
INSERT INTO `info` VALUES (10, '怡禾国际中心', 10, '房间大出行方便', 2, '2018-08-29 18:40:37', 1);
INSERT INTO `info` VALUES (12, '山水倾城', 12, '网络要弱一点', 3, '2017-02-05 21:19:26', 6);
INSERT INTO `info` VALUES (13, '光彩国际公寓', 13, '入住率比较高', 1, '2017-02-16 21:59:12', 1);
INSERT INTO `info` VALUES (14, '山水文园', 14, '价格相对合理，但一楼餐厅卫生急待提高', 3, '2019-02-18 07:14:03', 12);
INSERT INTO `info` VALUES (15, '幻星家园', 15, '就是早餐的品种少了点', 2, '2019-03-29 09:07:22', 6);
INSERT INTO `info` VALUES (16, '京城雅居', 16, '房间干净，面积也可以', 3, '2017-09-02 06:32:03', 2);

-- ----------------------------
-- Table structure for street
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '街道编号',
  `sname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道名称',
  `aid` int(11) NULL DEFAULT NULL COMMENT '区编号',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '街道表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of street
-- ----------------------------
INSERT INTO `street` VALUES (1, '新村', 1);
INSERT INTO `street` VALUES (2, '花桥', 1);
INSERT INTO `street` VALUES (3, '后湖', 1);
INSERT INTO `street` VALUES (4, '大智路', 2);
INSERT INTO `street` VALUES (5, '江汉路', 2);
INSERT INTO `street` VALUES (6, '关山', 3);
INSERT INTO `street` VALUES (7, '梨园', 3);
INSERT INTO `street` VALUES (8, '首义路', 4);
INSERT INTO `street` VALUES (9, '水果湖', 4);
INSERT INTO `street` VALUES (10, '南湖', 4);
INSERT INTO `street` VALUES (11, '晴川', 5);
INSERT INTO `street` VALUES (12, '月湖', 5);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123', '管理员', '12345678901');
INSERT INTO `user` VALUES (2, 'zhangsan', '123', '张三', '12345678902');
INSERT INTO `user` VALUES (3, 'lisi', '123', '李四', '12345678903');

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
delimiter ;;
CREATE PROCEDURE `test`()
begin
DECLARE i int DEFAULT 1;
while i<=15 do
INSERT into house values(null,ROUND(RAND()*17000)+3000,ROUND(RAND()*4)+1,ROUND(RAND()*4)+1,ROUND(RAND()*4)+1);
set i=i+1;
end while;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
