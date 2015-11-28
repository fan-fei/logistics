/*
Navicat MySQL Data Transfer

Source Server         : 112.126.75.182
Source Server Version : 50051
Source Host           : 112.126.75.182:3306
Source Database       : wuliu

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-11-28 21:37:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `Id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `can_search` bit(1) NOT NULL default '\0',
  `can_adv` bit(1) NOT NULL default '\0',
  `can_user_admin` bit(1) NOT NULL default '\0',
  `can_tongji` bit(1) NOT NULL default '\0',
  `can_history` bit(1) NOT NULL default '\0',
  `is_super` bit(1) NOT NULL default '\0',
  `password` varchar(50) default NULL,
  `can_other` bit(1) NOT NULL default '\0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dianhuaben
-- ----------------------------
DROP TABLE IF EXISTS `dianhuaben`;
CREATE TABLE `dianhuaben` (
  `Id` int(11) NOT NULL auto_increment,
  `dianhua` varchar(20) default NULL,
  `username` varchar(15) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `Id` int(11) NOT NULL auto_increment,
  `fatherid` int(11) default NULL,
  `Name` varchar(50) default NULL,
  `PostCode` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guanggao
-- ----------------------------
DROP TABLE IF EXISTS `guanggao`;
CREATE TABLE `guanggao` (
  `id` int(11) NOT NULL auto_increment,
  `info` varchar(255) default NULL,
  `stoptime` datetime default NULL,
  `link` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `Id` int(11) NOT NULL auto_increment,
  `diqu` varchar(50) default NULL,
  `username` varchar(15) default NULL,
  `info_txt` varchar(255) default NULL,
  `phone` varchar(20) default NULL,
  `tm` varchar(10) default NULL,
  `info_type` varchar(10) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for loginsum
-- ----------------------------
DROP TABLE IF EXISTS `loginsum`;
CREATE TABLE `loginsum` (
  `Id` int(11) NOT NULL auto_increment,
  `sum` int(11) default NULL,
  `type_diqu` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for opdetail
-- ----------------------------
DROP TABLE IF EXISTS `opdetail`;
CREATE TABLE `opdetail` (
  `Id` int(11) NOT NULL auto_increment,
  `op_txt` varchar(50) default NULL,
  `op_time` datetime default NULL,
  `op_username` varchar(50) default NULL,
  `adm` varchar(50) default NULL,
  `oldjiezhi` datetime default NULL,
  `newjiezhi` datetime default NULL,
  `money_days` int(10) default NULL,
  `xufei` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `Id` int(11) NOT NULL auto_increment,
  `paramKey` char(20) default NULL,
  `paramValue` char(80) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shi
-- ----------------------------
DROP TABLE IF EXISTS `shi`;
CREATE TABLE `shi` (
  `id` int(11) NOT NULL auto_increment,
  `fatherid` int(11) default NULL,
  `Name` varchar(50) default NULL,
  `AreaCode` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(15) NOT NULL default '',
  `password` varchar(50) default NULL,
  `shenfenid` varchar(20) default NULL,
  `shi_id` smallint(5) default '0',
  `address` varchar(255) default NULL,
  `mobile` varchar(100) default NULL,
  `telephone` varchar(100) default NULL,
  `register_date` datetime default NULL COMMENT '注册日期',
  `xufei_date` datetime default NULL COMMENT '续费日期',
  `stop_date` datetime default NULL,
  `send_able` bit(1) NOT NULL default '\0',
  `timestamp` varchar(50) default '',
  `realname` varchar(10) default NULL,
  `companyname` varchar(20) default NULL,
  `ipaddress` varchar(20) default NULL,
  `mac` varchar(30) default NULL,
  `lockip` bit(1) default '\0',
  `lockmac` bit(1) default '\0',
  `last_xufei_date` datetime default NULL COMMENT '续费日期',
  `last_stop_date` datetime default NULL,
  `can_redo` tinyint(1) default '0',
  PRIMARY KEY  (`username`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for weihu
-- ----------------------------
DROP TABLE IF EXISTS `weihu`;
CREATE TABLE `weihu` (
  `Id` int(11) NOT NULL auto_increment,
  `info` varchar(255) default NULL,
  `stopdate` date default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wuliuinfo
-- ----------------------------
DROP TABLE IF EXISTS `wuliuinfo`;
CREATE TABLE `wuliuinfo` (
  `Id` int(11) NOT NULL auto_increment,
  `shi_id` smallint(6) default NULL,
  `username` varchar(15) default NULL,
  `info` varchar(255) default NULL,
  `release_time` varchar(10) default NULL,
  `info_type` varchar(10) default NULL,
  `mobile` varchar(100) default NULL,
  `address1` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for xufei
-- ----------------------------
DROP TABLE IF EXISTS `xufei`;
CREATE TABLE `xufei` (
  `Id` int(11) NOT NULL auto_increment,
  `oldjiezhi` datetime default NULL,
  `newjiezhi` datetime default NULL,
  `opdate` datetime default NULL,
  `is_first` bit(1) default NULL,
  `username` varchar(50) default NULL,
  `tm` int(11) default NULL,
  `money_days` int(10) default NULL,
  `huodong_name` varchar(50) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xufei_selection
-- ----------------------------
DROP TABLE IF EXISTS `xufei_selection`;
CREATE TABLE `xufei_selection` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) character set utf8 NOT NULL default '',
  `xufei_yues` smallint(6) default NULL,
  `zengsong_yues` smallint(6) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
