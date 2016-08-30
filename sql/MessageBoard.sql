/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : messageboard

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2016-08-30 16:07:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mb_message`
-- ----------------------------
DROP TABLE IF EXISTS `mb_message`;
CREATE TABLE `mb_message` (
  `id` int(12) NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `email` varchar(255) default NULL,
  `content` text NOT NULL,
  `reply` text,
  `userid` int(12) default NULL,
  `settop` tinyint(1) NOT NULL default '0',
  `ifshow` tinyint(1) NOT NULL default '0',
  `ifqqh` tinyint(1) NOT NULL default '0',
  `systime` datetime default NULL,
  `replytime` datetime default NULL,
  `userip` varchar(32) default NULL COMMENT '用户ip',
  PRIMARY KEY  (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `mb_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of mb_message
-- ----------------------------
INSERT INTO `mb_message` VALUES ('3', '', null, 'afafasfsafsafasfasf', null, null, '0', '1', '0', '2012-12-21 14:58:47', null, '::1');
INSERT INTO `mb_message` VALUES ('4', 'yinengwu0709', null, 'afa  a a  a \r\n a \r\na\r\n a\r\n \r\na ', null, null, '0', '0', '0', '2012-12-21 15:01:42', null, '::1');
INSERT INTO `mb_message` VALUES ('5', 'wod13579@163.com', null, '吃的饭哈哈大发发', null, null, '0', '1', '0', '2012-12-21 15:11:44', null, '::1');
INSERT INTO `mb_message` VALUES ('7', '你你东风', null, '发发发faf\r\nfi快快快', null, null, '0', '1', '0', '2012-12-21 15:22:44', null, '::1');
INSERT INTO `mb_message` VALUES ('8', '快快快快快', null, 'htmlspecialchars() 函数把一些预定义的字符转换为 HTML 实体。', null, null, '1', '1', '1', '2012-12-21 15:27:50', null, '::1');
INSERT INTO `mb_message` VALUES ('9', '留言内容以免程序出', null, '留言内容，以免程序出', null, null, '0', '0', '0', '2012-12-21 15:34:54', null, '::1');
INSERT INTO `mb_message` VALUES ('10', 'dddd', null, 'sdfasdf', '111', null, '1', '1', '0', '2016-08-29 16:32:10', '2016-08-29 15:47:15', '::1');
INSERT INTO `mb_message` VALUES ('12', 'duxin', null, 'duxin is good ', null, null, '0', '0', '0', '2016-08-29 19:50:52', null, '::1');
INSERT INTO `mb_message` VALUES ('13', '456789', null, '44444444444', null, null, '0', '0', '0', '2016-08-29 19:53:22', null, '::1');
INSERT INTO `mb_message` VALUES ('14', 'duxinduxin', '674009561@qq.com', 'asjkdhfjkashf', null, null, '0', '0', '0', '2016-08-29 20:15:06', null, '::1');
INSERT INTO `mb_message` VALUES ('15', '123456456', '', '12121', null, null, '0', '0', '0', '2016-08-29 20:20:06', null, '::1');

-- ----------------------------
-- Table structure for `mb_users`
-- ----------------------------
DROP TABLE IF EXISTS `mb_users`;
CREATE TABLE `mb_users` (
  `id` int(12) NOT NULL auto_increment COMMENT '用户主键',
  `account` varchar(32) NOT NULL COMMENT '用户账号',
  `name` varchar(32) default '无名' COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `email` varchar(32) default NULL COMMENT '用户邮件',
  `role` int(11) default '4' COMMENT '0为管理员；1为会员；4为普通用户；',
  `created` datetime default NULL COMMENT '最后登录时间',
  `lastlogin` datetime default NULL COMMENT '最后登录时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of mb_users
-- ----------------------------
INSERT INTO `mb_users` VALUES ('1', 'dx', '杜心', '123456', '825687351@qq.com', '0', '2012-12-20 22:12:03', '2012-12-20 22:12:08');
