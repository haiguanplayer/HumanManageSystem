/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : humanmanage

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-07-11 10:21:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(20) NOT NULL,
  `dept_class` enum('部门','公司') NOT NULL DEFAULT '部门',
  `dept_phone` varchar(20) DEFAULT NULL,
  `dept_build_date` varchar(20) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '人事部', '公司', '9', '9');
INSERT INTO `department` VALUES ('2', '技术部', '部门', '123456', 'ret');
INSERT INTO `department` VALUES ('3', '外交部', '部门', '12153153', 'sdfsdfs');
INSERT INTO `department` VALUES ('4', '经理部 ', '公司', '5', '5');
INSERT INTO `department` VALUES ('6', '研发部   ', '部门', '1324567', '2017-02-02');

-- ----------------------------
-- Table structure for `dimission`
-- ----------------------------
DROP TABLE IF EXISTS `dimission`;
CREATE TABLE `dimission` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `id_card` varchar(18) NOT NULL,
  `gender` enum('女','男') NOT NULL DEFAULT '男',
  `birth` varchar(20) NOT NULL,
  `edu` enum('高中及以下','大专','本科','研究生') NOT NULL DEFAULT '高中及以下',
  `dept_name` varchar(20) NOT NULL,
  `post_name` varchar(20) NOT NULL,
  `entry_date` varchar(20) NOT NULL,
  `work_date` varchar(20) NOT NULL,
  `score` enum('校园招聘','社会招聘','其他') NOT NULL DEFAULT '社会招聘',
  `leave_date` varchar(20) NOT NULL,
  `leave_class` enum('试用期未通过','开除','退休','辞退','主动辞职') NOT NULL DEFAULT '主动辞职',
  `leave_direction` varchar(20) NOT NULL,
  `whether` enum('否','是') NOT NULL DEFAULT '否',
  `remarks` varchar(200) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dimission
-- ----------------------------

-- ----------------------------
-- Table structure for `emp`
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(18) DEFAULT NULL,
  `gender` enum('男','女') NOT NULL,
  `birth` varchar(18) NOT NULL,
  `id_card` varchar(18) NOT NULL,
  `score` enum('校园招聘','社会招聘','其他') NOT NULL,
  `edu` enum('高中及以下','大专','本科','研究生') NOT NULL,
  `dept_name` varchar(18) NOT NULL,
  `post_name` varchar(18) NOT NULL,
  `entry_date` varchar(18) NOT NULL,
  `work_date` varchar(18) DEFAULT NULL,
  `work_state` enum('临时工','正式工') NOT NULL,
  `remake` varchar(200) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '1', '男', '1997-12-13', '132153199712130231', '校园招聘', '高中及以下', '人事部', 'java', '2018-07-11', '', '临时工', '', '18613218954');
INSERT INTO `emp` VALUES ('2', '企鹅', '女', '1992-06-04', '135142199206041321', '校园招聘', '本科', '人事部', 'cpp', '2018-07-11', '', '临时工', '', '18719812364');
INSERT INTO `emp` VALUES ('3', '千万', '男', '1987-06-04', '132158198706041321', '校园招聘', '大专', '人事部', 'cpp', '2018-07-11', '', '临时工', '', '13218911265');
INSERT INTO `emp` VALUES ('4', 'as', '男', '1988-02-03', '132151198802034513', '社会招聘', '大专', '技术部', 'cpp', '2018-07-11', '', '临时工', '', '16458733254');

-- ----------------------------
-- Table structure for `move_dept`
-- ----------------------------
DROP TABLE IF EXISTS `move_dept`;
CREATE TABLE `move_dept` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(18) NOT NULL,
  `before_dept` varchar(18) DEFAULT NULL,
  `after_dept` varchar(18) NOT NULL,
  `move_dept_class` enum('主动调动','被动调动','数据错误') NOT NULL,
  `move_dept_reason` varchar(200) NOT NULL,
  `move_dept_date` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of move_dept
-- ----------------------------
INSERT INTO `move_dept` VALUES ('1', '12', '9  ', '外交部', '主动调动', '', '2018-06-05');
INSERT INTO `move_dept` VALUES ('6', '6', '', '人事部', '主动调动', '', '');
INSERT INTO `move_dept` VALUES ('7', '7', '', '人事部', '主动调动', '', '');
INSERT INTO `move_dept` VALUES ('13', '啊', '9  ', '人事部', '数据错误', '', '');
INSERT INTO `move_dept` VALUES ('16', 'qwe', '', '人事部', '主动调动', '', '');
INSERT INTO `move_dept` VALUES ('16', 'qwe', '人事部', '经理部', '主动调动', '', '');
INSERT INTO `move_dept` VALUES ('1', '张三', '技术部', '研发部', '主动调动', '调动', '2018-06-05');
INSERT INTO `move_dept` VALUES ('1', 'as', '', '人事部', '主动调动', '调用', '2018-07-10');
INSERT INTO `move_dept` VALUES ('4', '支持', '', '人事部', '主动调动', '阿三', '2018-07-10');
INSERT INTO `move_dept` VALUES ('7', '7', '人事部', '技术部', '主动调动', '请问', '2018-07-02');
INSERT INTO `move_dept` VALUES ('3', '千万', '', '人事部', '主动调动', '招进', '2018-07-11');
INSERT INTO `move_dept` VALUES ('4', 'as', '', '技术部', '主动调动', '', '2018-07-12');

-- ----------------------------
-- Table structure for `move_post`
-- ----------------------------
DROP TABLE IF EXISTS `move_post`;
CREATE TABLE `move_post` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(18) NOT NULL,
  `before_post` varchar(18) DEFAULT NULL,
  `after_post` varchar(18) NOT NULL,
  `move_post_class` enum('主动调动','被动调动','数据错误') NOT NULL,
  `move_post_reason` varchar(200) DEFAULT NULL,
  `move_post_date` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of move_post
-- ----------------------------
INSERT INTO `move_post` VALUES ('12', '1', 'python', 'php', '主动调动', '请问', '123');
INSERT INTO `move_post` VALUES ('6', '6', '', 'cpp', '主动调动', '', '');
INSERT INTO `move_post` VALUES ('7', '7', '', 'cpp', '主动调动', '', '');
INSERT INTO `move_post` VALUES ('13', '啊', 'python', 'java', '主动调动', '', '');
INSERT INTO `move_post` VALUES ('16', 'qwe', '', 'cpp', '主动调动', '', '');
INSERT INTO `move_post` VALUES ('1', '张三', '技术岗', '为', '主动调动', '前期', '2018-07-06');
INSERT INTO `move_post` VALUES ('2', '张三', '技术岗', 'java', '主动调动', '主次', '2018-07-10');
INSERT INTO `move_post` VALUES ('1', 'as', '', 'cpp', '主动调动', '调用', '2018-07-10');
INSERT INTO `move_post` VALUES ('4', '支持', '', 'cpp', '主动调动', '说', '2018-07-10');
INSERT INTO `move_post` VALUES ('1', '1', 'cpp', 'java', '主动调动', '阿飞', '2018-07-02');
INSERT INTO `move_post` VALUES ('3', '千万', '', 'cpp', '主动调动', '招进', '');
INSERT INTO `move_post` VALUES ('4', 'as', '', 'cpp', '主动调动', '', '2018-07-11');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(18) NOT NULL,
  `post_type` enum('管理','技术','营销','市场') NOT NULL,
  `post_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', 'cpp', '管理', '205');
INSERT INTO `post` VALUES ('2', 'java', '技术', '200');
INSERT INTO `post` VALUES ('3', 'python', '营销', '20');
INSERT INTO `post` VALUES ('10', 'php', '营销', '55');
INSERT INTO `post` VALUES ('11', 'C', '管理', '67');
INSERT INTO `post` VALUES ('19', 'ieee', '管理', '123');

-- ----------------------------
-- Table structure for `talent`
-- ----------------------------
DROP TABLE IF EXISTS `talent`;
CREATE TABLE `talent` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(18) NOT NULL,
  `gender` enum('男','女') NOT NULL,
  `birth` varchar(18) NOT NULL,
  `id_card` varchar(18) NOT NULL,
  `score` enum('校园招聘','社会招聘','其他') NOT NULL,
  `edu` enum('高中及以下','大专','本科','研究生') NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of talent
-- ----------------------------

-- ----------------------------
-- Table structure for `temp_emp`
-- ----------------------------
DROP TABLE IF EXISTS `temp_emp`;
CREATE TABLE `temp_emp` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(18) NOT NULL,
  `entry_date` date NOT NULL,
  `try_time` int(3) NOT NULL,
  `qiman_time` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp_emp
-- ----------------------------
INSERT INTO `temp_emp` VALUES ('1', '1', '2018-07-11', '60', '2018-09-09');
INSERT INTO `temp_emp` VALUES ('2', '企鹅', '2018-07-11', '60', '2018-09-09');
INSERT INTO `temp_emp` VALUES ('3', '千万', '2018-07-11', '60', '2018-09-09');
INSERT INTO `temp_emp` VALUES ('4', 'as', '2018-07-11', '60', '2018-09-09');
DROP TRIGGER IF EXISTS `trig_on_emp`;
DELIMITER ;;
CREATE TRIGGER `trig_on_emp` AFTER INSERT ON `emp` FOR EACH ROW insert into temp_emp(p_id,p_name,entry_date,try_time)
		values(new.p_id,new.p_name,new.entry_date,60)
;;
DELIMITER ;
