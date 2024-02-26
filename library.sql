/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-10-05 16:42:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '书名称',
  `author` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `introduction` varchar(100) DEFAULT NULL,
  `cover` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `stock` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', '硅谷钢铁侠', '[美]阿什利·万斯', '66', '中信出版社', '埃隆·马斯克的冒险人生', '1577088408.png', '2020-10-02 19:25:57', '10', '10');
INSERT INTO `books` VALUES ('2', '正面管教', '[美]简·尼尔森', '55', '中信出版社', '怎么才能既不骄纵也不严厉，让孩子成为你的骄傲？', '1577088408f5.png', '2020-10-02 18:02:14', '10', '10');
INSERT INTO `books` VALUES ('3', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '10');
INSERT INTO `books` VALUES ('5', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '5');
INSERT INTO `books` VALUES ('6', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '5');
INSERT INTO `books` VALUES ('7', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '5');
INSERT INTO `books` VALUES ('8', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '5');
INSERT INTO `books` VALUES ('9', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 22:26:40', '11', '5');
INSERT INTO `books` VALUES ('10', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '6');
INSERT INTO `books` VALUES ('11', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '6');
INSERT INTO `books` VALUES ('12', '亲密关系', '克里斯多福·孟', '60', '中信出版社', '亲密关系的秘密——让爱情回归初心，一个人的单边改善也能做到。', '1601633608195.jpg', '2020-10-02 18:14:59', '10', '8');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(5) DEFAULT NULL,
  `avatar` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', 'default.png', '管理员', '2020-10-05 10:10:03', '哈哈哈');
INSERT INTO `comment` VALUES ('3', '1', 'default.png', '管理员', '2020-10-05 15:15:36', '333');
INSERT INTO `comment` VALUES ('4', '1', 'default.png', '管理员', '2020-10-05 15:16:44', '444');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book` varchar(30) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `createTime` varchar(20) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `userId` tinyint(4) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `updateTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '硅谷钢铁侠', '15952119716', '2020-10-03 23:38:22', '1', '2', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('2', '亲密关系', 'admin', '2020-10-03 23:19:52', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('3', '亲密关系', 'admin', '2020-10-03 23:38:24', '11', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('4', '亲密关系', 'admin', '2020-10-03 23:38:25', '10', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('5', '亲密关系', 'admin', '2020-10-03 23:17:00', '9', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('6', '亲密关系', 'admin', '2020-10-03 23:16:57', '7', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('7', '亲密关系', 'admin', '2020-10-03 23:29:04', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('8', '亲密关系', 'admin', '2020-10-03 23:30:05', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('9', '亲密关系', 'admin', '2020-10-03 23:33:12', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('10', '亲密关系', 'admin', '2020-10-03 23:33:55', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('11', '亲密关系', 'admin', '2020-10-03 23:35:40', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('12', '亲密关系', 'admin', '2020-10-03 23:37:13', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('13', '亲密关系', 'admin', '2020-10-03 23:37:45', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('14', '亲密关系', 'admin', '2020-10-03 23:38:10', '12', '1', '0', '2020-10-04 11:38:22');
INSERT INTO `record` VALUES ('15', '亲密关系', 'admin', '2020-10-04 11:34:18', '12', '1', '0', '2020-10-04 11:34:30');
INSERT INTO `record` VALUES ('16', '亲密关系', '15952119716', '2020-10-04 13:50:18', '12', '2', '0', '2020-10-04 13:51:07');
INSERT INTO `record` VALUES ('17', '亲密关系', 'admin', '2020-10-04 19:09:07', '12', '1', '0', '2020-10-04 19:09:17');
INSERT INTO `record` VALUES ('18', '亲密关系', 'admin', '2020-10-04 19:11:04', '12', '1', '1', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `avatar` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '0', 'default.png', '2020-10-02 20:20:11', '管理员');
INSERT INTO `user` VALUES ('2', '15952115566', '123456', '1', '1601790602704.png', '2020-10-02 20:20:11', '小太阳');
INSERT INTO `user` VALUES ('3', '18852156803', '123456', '1', 'default.png', '2020-10-03 11:18:12', '小太阳');
INSERT INTO `user` VALUES ('4', '18852152266', '123456', '1', 'default.png', '2020-10-03 11:20:05', '小太阳');
INSERT INTO `user` VALUES ('5', '18852152804', '123456', '1', 'default.png', '2020-10-03 11:33:15', '小太阳');
INSERT INTO `user` VALUES ('6', '18852152805', '123456', '1', 'default.png', '2020-10-03 11:37:21', '小太阳');
