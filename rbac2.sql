/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : rbac2

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-18 23:51:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('经理', '2', '1534432461');
INSERT INTO `auth_assignment` VALUES ('超级管理员', '1', '1534498519');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/aaaaaaaaaaaaaaaa', '2', '/site/aaaaaaaaaaaaaaaa', null, null, '1534433888', '1534433888');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1534432530', '1534432530');
INSERT INTO `auth_item` VALUES ('/site/test', '2', null, null, null, '1534519831', '1534519831');
INSERT INTO `auth_item` VALUES ('/site/time', '2', null, 'test', null, '1534521843', '1534521843');
INSERT INTO `auth_item` VALUES ('permission-1', '2', null, null, null, '1534482466', '1534482466');
INSERT INTO `auth_item` VALUES ('time', '2', null, 'test', null, '1534521940', '1534521940');
INSERT INTO `auth_item` VALUES ('经理', '1', '部门经理', null, null, '1534432012', '1534432012');
INSERT INTO `auth_item` VALUES ('超级管理员', '1', '超级管理员', null, null, '1534498350', '1534498350');
INSERT INTO `auth_item` VALUES ('运营', '1', '运营人员', null, null, '1534482168', '1534482168');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('经理', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('经理', '/site/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/aaaaaaaaaaaaaaaa');
INSERT INTO `auth_item_child` VALUES ('运营', '/site/aaaaaaaaaaaaaaaa');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/error');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/login');
INSERT INTO `auth_item_child` VALUES ('permission-1', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/logout');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/test');
INSERT INTO `auth_item_child` VALUES ('time', '/site/time');
INSERT INTO `auth_item_child` VALUES ('经理', '/site/time');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/time');
INSERT INTO `auth_item_child` VALUES ('超级管理员', 'permission-1');
INSERT INTO `auth_item_child` VALUES ('经理', 'time');
INSERT INTO `auth_item_child` VALUES ('超级管理员', 'time');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('test', 'O:21:\"common\\rules\\TestRule\":3:{s:4:\"name\";s:4:\"test\";s:9:\"createdAt\";i:1534519777;s:9:\"updatedAt\";i:1534524443;}', '1534519777', '1534524443');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('3', '首页', null, '/site/index', null, null);
INSERT INTO `menu` VALUES ('4', 'gii', null, '', null, null);
INSERT INTO `menu` VALUES ('5', 'gii-view', '4', '/gii/default/view', null, null);
INSERT INTO `menu` VALUES ('6', 'gii-index', '4', '/gii/default/index', null, null);
INSERT INTO `menu` VALUES ('7', 'debug', null, null, null, null);
INSERT INTO `menu` VALUES ('8', 'debug-index', '7', '/debug/default/index', null, null);
INSERT INTO `menu` VALUES ('9', 'debug-view', '7', '/debug/default/view', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '', '$2y$13$e9ZkU0BJuvluTZBwo/U/wuqr9wU2DyJwJVX/mZeCYJS8gw1regNne', null, 'admin@qq.com', '10', '0', '0');
INSERT INTO `user` VALUES ('2', 'peter', 'dwuEyWr_7KgGHtxA4fBgxR7yXS-2OhkV', '$2y$13$MQVMdOtd15fwtHWldJlYS.epxjAwVWydHCaJSluaksXbQ3jLulULy', null, 'peter@qq.com', '10', '1534430908', '1534430908');
