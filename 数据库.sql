SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `yuedu_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `yuedu_access_tokens`;
CREATE TABLE `yuedu_access_tokens` (
  `token` varchar(30) NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuedu_access_tokens
-- ----------------------------


-- ----------------------------
-- Table structure for `yuedu_articles`
-- ----------------------------
DROP TABLE IF EXISTS `yuedu_articles`;
CREATE TABLE `yuedu_articles` (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_cate` int(10) DEFAULT NULL,
  `art_title` varchar(200) DEFAULT NULL,
  `art_uid` int(11) DEFAULT NULL,
  `art_content` text,
  `art_createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  KEY `art_uid` (`art_uid`),
  KEY `art_cate` (`art_cate`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuedu_articles
-- ----------------------------

-- ----------------------------
-- Table structure for `yuedu_categories`
-- ----------------------------
DROP TABLE IF EXISTS `yuedu_categories`;
CREATE TABLE `yuedu_categories` (
  `cate_id` int(10) NOT NULL AUTO_INCREMENT,
  `cate_pid` int(10) DEFAULT '0',
  `cate_name` varchar(50) DEFAULT NULL,
  `cate_order` int(10) DEFAULT NULL,
  PRIMARY KEY (`cate_id`),
  KEY `cate_pid` (`cate_pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuedu_categories
-- ----------------------------
INSERT INTO `yuedu_categories` VALUES ('1', '0', '风景', '1');
INSERT INTO `yuedu_categories` VALUES ('2', '0', '游记', '2');
INSERT INTO `yuedu_categories` VALUES ('3', '0', '花世界', '3');

-- ----------------------------
-- Table structure for `yuedu_members`
-- ----------------------------
DROP TABLE IF EXISTS `yuedu_members`;
CREATE TABLE `yuedu_members` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_openid` varchar(100) NOT NULL COMMENT 'openid',
  `u_name` varchar(50) NOT NULL COMMENT '用户昵称',
  `u_face` varchar(200) NOT NULL COMMENT '用户头像',
  `u_random` varchar(30) NOT NULL COMMENT '用户随机码',
  `u_integral` int(10) DEFAULT '0' COMMENT '积分',
  `u_remainder` int(10) DEFAULT '0' COMMENT '余额',
  `u_regtime` int(11) NOT NULL COMMENT '用户注册时间',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_openid` (`u_openid`),
  UNIQUE KEY `u_id` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuedu_members
-- ----------------------------
