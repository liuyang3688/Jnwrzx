/*
Navicat MySQL Data Transfer

Source Server         : Shejijia
Source Server Version : 50612
Source Host           : 127.0.0.1:3306
Source Database       : wr

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2016-03-23 23:58:00
*/
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wr_ad
-- ----------------------------
DROP TABLE IF EXISTS `wr_ad`;
CREATE TABLE `wr_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) NOT NULL COMMENT '广告名称',
  `title_alias` char(40) NOT NULL DEFAULT '' COMMENT '标识',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `width` varchar(10) NOT NULL DEFAULT '' COMMENT '图片宽',
  `height` varchar(10) NOT NULL DEFAULT '' COMMENT '图片高',
  `intro` text COMMENT '广告描述',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击数',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '过期时间',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '附件',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of wr_ad
-- ----------------------------
INSERT INTO `wr_ad` VALUES ('1', '首页banner', 'index_banner', 'http://www.bagecms.com', '', '', '', '', '0', '1379520000', '1546272000', 'uploads/201309/523a2c04a37a1.jpg', '8', 'Y', '1379544068');
INSERT INTO `wr_ad` VALUES ('2', '首页banner', 'index_banner', '', '', '', '', '', '0', '1379520000', '1546272000', 'uploads/201309/523a2c4baba12.jpg', '9', 'Y', '1379544139');

-- ----------------------------
-- Table structure for wr_admin
-- ----------------------------
DROP TABLE IF EXISTS `wr_admin`;
CREATE TABLE `wr_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(50) NOT NULL COMMENT '用户',
  `password` char(32) NOT NULL COMMENT '密码',
  `realname` varchar(100) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `qq` varchar(15) NOT NULL DEFAULT '0' COMMENT 'QQ',
  `notebook` text COMMENT '备忘',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `last_login_ip` char(15) NOT NULL DEFAULT '127' COMMENT '最后登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `login_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '用户状态',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of wr_admin
-- ----------------------------
INSERT INTO `wr_admin` VALUES ('1', 'root', '21232f297a57a5a743894a0e4a801fc3', '刘洋', '1', 'jnwrzx@126.com', '1960009001', '网站合作，请拨打电话或发送QQ消息。', '18678825257', '18678825257', '0.0.0.0', '1458739182', '4', 'Y', '1458566599');

-- ----------------------------
-- Table structure for wr_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `wr_admin_group`;
CREATE TABLE `wr_admin_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL COMMENT '组名称',
  `acl` text NOT NULL COMMENT '权限',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员组';

-- ----------------------------
-- Records of wr_admin_group
-- ----------------------------
INSERT INTO `wr_admin_group` VALUES ('1', '超级管理', 'administrator', '', '0');
INSERT INTO `wr_admin_group` VALUES ('2', '禁用', 'administrator', 'Y', '0');

-- ----------------------------
-- Table structure for wr_admin_logger
-- ----------------------------
DROP TABLE IF EXISTS `wr_admin_logger`;
CREATE TABLE `wr_admin_logger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `catalog` enum('login','create','update','delete','other','browse') NOT NULL DEFAULT 'other' COMMENT '类型',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `intro` text COMMENT '操作',
  `ip` char(15) NOT NULL DEFAULT '127.0.0.1' COMMENT '操作ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='管理员日志';

-- ----------------------------
-- Records of wr_admin_logger
-- ----------------------------
INSERT INTO `wr_admin_logger` VALUES ('1', '1', 'login', '/index.php?r=admini/public/login', '用户登录成功:root', '0.0.0.0', '1458566640');
INSERT INTO `wr_admin_logger` VALUES ('2', '1', 'login', '/index.php?r=admini/public/login', '用户登录成功:root', '0.0.0.0', '1458566641');
INSERT INTO `wr_admin_logger` VALUES ('3', '1', 'update', '/index.php?r=admini/config/seo', '更新系统配置，模块：seo', '0.0.0.0', '1458567504');
INSERT INTO `wr_admin_logger` VALUES ('4', '1', 'update', '/index.php?r=admini/config/custom', '更新系统配置，模块：custom', '0.0.0.0', '1458567753');
INSERT INTO `wr_admin_logger` VALUES ('5', '1', 'update', '/index.php?r=admini/config/custom', '更新系统配置，模块：custom', '0.0.0.0', '1458567766');
INSERT INTO `wr_admin_logger` VALUES ('6', '1', 'update', '/index.php?r=admini/admin/update&id=1', '更新管理员资料:root', '0.0.0.0', '1458568284');
INSERT INTO `wr_admin_logger` VALUES ('7', '1', 'update', '/index.php?r=admini/admin/update&id=1', '更新管理员资料:root', '0.0.0.0', '1458568298');
INSERT INTO `wr_admin_logger` VALUES ('8', '1', 'create', '/index.php?r=admini/question/update&id=1', '编辑留言，ID:1', '0.0.0.0', '1458568369');
INSERT INTO `wr_admin_logger` VALUES ('9', '1', 'delete', '/index.php?r=admini/operation/batch&command=adDelete&id=3', '删除广告，ID:3', '0.0.0.0', '1458568424');
INSERT INTO `wr_admin_logger` VALUES ('10', '1', 'login', '/index.php?r=admini/public/login', '用户登录成功:root', '0.0.0.0', '1458571174');
INSERT INTO `wr_admin_logger` VALUES ('11', '1', 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=6', '删除全局分类，ID:6', '0.0.0.0', '1458572800');
INSERT INTO `wr_admin_logger` VALUES ('12', '1', 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=5', '删除全局分类，ID:5', '0.0.0.0', '1458572803');
INSERT INTO `wr_admin_logger` VALUES ('13', '1', 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=3', '删除全局分类，ID:3', '0.0.0.0', '1458572806');
INSERT INTO `wr_admin_logger` VALUES ('14', '1', 'delete', '/index.php?r=admini/catalog/batch&command=delete&id=2', '删除全局分类，ID:2', '0.0.0.0', '1458572809');
INSERT INTO `wr_admin_logger` VALUES ('15', '1', 'login', '/index.php?r=admini/public/login', '用户登录成功:root', '0.0.0.0', '1458739183');
INSERT INTO `wr_admin_logger` VALUES ('16', '1', 'update', '/index.php?r=admini/post/specialUpdate&id=2', '专题更新,ID:2', '0.0.0.0', '1458741491');
INSERT INTO `wr_admin_logger` VALUES ('17', '1', 'update', '/index.php?r=admini/post/specialUpdate&id=1', '专题更新,ID:1', '0.0.0.0', '1458741510');
INSERT INTO `wr_admin_logger` VALUES ('18', '1', 'update', '/index.php?r=admini/post/update&id=18', '编辑内容,ID:18', '0.0.0.0', '1458741704');
INSERT INTO `wr_admin_logger` VALUES ('19', '1', 'update', '/index.php?r=admini/post/update&id=18', '编辑内容,ID:18', '0.0.0.0', '1458741813');
INSERT INTO `wr_admin_logger` VALUES ('20', '1', 'delete', '/index.php?r=admini/post/batch&command=delete&id=5', '删除内容，ID:5', '0.0.0.0', '1458742060');
INSERT INTO `wr_admin_logger` VALUES ('21', '1', 'delete', '/index.php?r=admini/post/batch', '删除内容，ID:4,3,2,1', '0.0.0.0', '1458742075');
INSERT INTO `wr_admin_logger` VALUES ('22', '1', 'update', '/index.php?r=admini/post/update&id=17', '编辑内容,ID:17', '0.0.0.0', '1458742310');
INSERT INTO `wr_admin_logger` VALUES ('23', '1', 'update', '/index.php?r=admini/post/update&id=16', '编辑内容,ID:16', '0.0.0.0', '1458742684');
INSERT INTO `wr_admin_logger` VALUES ('24', '1', 'update', '/index.php?r=admini/catalog/update&id=1', '编辑全局分类,ID:1,名称：分享', '0.0.0.0', '1458742800');
INSERT INTO `wr_admin_logger` VALUES ('25', '1', 'update', '/index.php?r=admini/post/update&id=15', '编辑内容,ID:15', '0.0.0.0', '1458742943');
INSERT INTO `wr_admin_logger` VALUES ('26', '1', 'update', '/index.php?r=admini/post/update&id=17', '编辑内容,ID:17', '0.0.0.0', '1458742970');
INSERT INTO `wr_admin_logger` VALUES ('27', '1', 'update', '/index.php?r=admini/post/update&id=16', '编辑内容,ID:16', '0.0.0.0', '1458742979');
INSERT INTO `wr_admin_logger` VALUES ('28', '1', 'update', '/index.php?r=admini/post/update&id=15', '编辑内容,ID:15', '0.0.0.0', '1458742992');
INSERT INTO `wr_admin_logger` VALUES ('29', '1', 'update', '/index.php?r=admini/post/update&id=14', '编辑内容,ID:14', '0.0.0.0', '1458743090');
INSERT INTO `wr_admin_logger` VALUES ('30', '1', 'update', '/index.php?r=admini/post/update&id=14', '编辑内容,ID:14', '0.0.0.0', '1458743099');
INSERT INTO `wr_admin_logger` VALUES ('31', '1', 'update', '/index.php?r=admini/post/update&id=13', '编辑内容,ID:13', '0.0.0.0', '1458743194');
INSERT INTO `wr_admin_logger` VALUES ('32', '1', 'update', '/index.php?r=admini/post/update&id=12', '编辑内容,ID:12', '0.0.0.0', '1458743286');
INSERT INTO `wr_admin_logger` VALUES ('33', '1', 'update', '/index.php?r=admini/post/update&id=11', '编辑内容,ID:11', '0.0.0.0', '1458743363');
INSERT INTO `wr_admin_logger` VALUES ('34', '1', 'update', '/index.php?r=admini/post/update&id=10', '编辑内容,ID:10', '0.0.0.0', '1458743465');
INSERT INTO `wr_admin_logger` VALUES ('35', '1', 'update', '/index.php?r=admini/post/update&id=9', '编辑内容,ID:9', '0.0.0.0', '1458743588');
INSERT INTO `wr_admin_logger` VALUES ('36', '1', 'update', '/index.php?r=admini/post/update&id=9', '编辑内容,ID:9', '0.0.0.0', '1458743609');
INSERT INTO `wr_admin_logger` VALUES ('37', '1', 'update', '/index.php?r=admini/post/update&id=10', '编辑内容,ID:10', '0.0.0.0', '1458743628');
INSERT INTO `wr_admin_logger` VALUES ('38', '1', 'update', '/index.php?r=admini/post/update&id=11', '编辑内容,ID:11', '0.0.0.0', '1458743655');
INSERT INTO `wr_admin_logger` VALUES ('39', '1', 'update', '/index.php?r=admini/post/update&id=12', '编辑内容,ID:12', '0.0.0.0', '1458743674');
INSERT INTO `wr_admin_logger` VALUES ('40', '1', 'update', '/index.php?r=admini/post/update&id=8', '编辑内容,ID:8', '0.0.0.0', '1458743809');
INSERT INTO `wr_admin_logger` VALUES ('41', '1', 'delete', '/index.php?r=admini/post/batch&command=delete&id=6', '删除内容，ID:6', '0.0.0.0', '1458743816');
INSERT INTO `wr_admin_logger` VALUES ('42', '1', 'delete', '/index.php?r=admini/post/batch&command=delete&id=7', '删除内容，ID:7', '0.0.0.0', '1458743820');

-- ----------------------------
-- Table structure for wr_attr
-- ----------------------------
DROP TABLE IF EXISTS `wr_attr`;
CREATE TABLE `wr_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `scope` enum('config','post','page') NOT NULL DEFAULT 'post' COMMENT '使用范围',
  `attr_name` varchar(50) NOT NULL COMMENT '字段名称',
  `attr_name_alias` char(50) NOT NULL DEFAULT '' COMMENT '字段别名',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `attr_type` enum('select','input','file','checkbox','textarea','radio') NOT NULL DEFAULT 'input' COMMENT '字段类型',
  `data_default` text COMMENT '字段默认数据',
  `max_lenght` int(11) NOT NULL DEFAULT '0' COMMENT '长度',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='扩展字段管理';

-- ----------------------------
-- Records of wr_attr
-- ----------------------------
INSERT INTO `wr_attr` VALUES ('1', 'config', '手机', 'mobile', '0', '', '0', 'input', '', '0', '1379553842');
INSERT INTO `wr_attr` VALUES ('2', 'config', '传真', 'fax', '0', '', '0', 'input', '', '0', '1379553920');
INSERT INTO `wr_attr` VALUES ('3', 'config', '电话', 'telephone', '0', '', '0', 'input', '', '0', '1379553920');
INSERT INTO `wr_attr` VALUES ('4', 'config', '400电话', 'telephone_400', '0', '', '0', 'input', '', '0', '1379553920');
INSERT INTO `wr_attr` VALUES ('5', 'config', '地址', 'address', '0', '', '0', 'input', '', '0', '1379553920');

-- ----------------------------
-- Table structure for wr_attr_val
-- ----------------------------
DROP TABLE IF EXISTS `wr_attr_val`;
CREATE TABLE `wr_attr_val` (
  `val_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `attr_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '属性编号',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `attr_val` text COMMENT '属性内容',
  PRIMARY KEY (`val_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='属性内容';

-- ----------------------------
-- Records of wr_attr_val
-- ----------------------------

-- ----------------------------
-- Table structure for wr_catalog
-- ----------------------------
DROP TABLE IF EXISTS `wr_catalog`;
CREATE TABLE `wr_catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类',
  `catalog_name` varchar(100) NOT NULL COMMENT '名称',
  `catalog_name_second` varchar(100) DEFAULT '' COMMENT '副名称',
  `catalog_name_alias` varchar(100) NOT NULL DEFAULT '' COMMENT '别名',
  `content` text COMMENT '详细介绍',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `attach_file` varchar(100) DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据量',
  `page_size` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '每页显示数量',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `menu_is` enum('Y','N') DEFAULT 'N' COMMENT '是否导航显示',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转地址',
  `display_type` enum('page','list') NOT NULL DEFAULT 'list' COMMENT '显示方式',
  `template_list` varchar(100) NOT NULL DEFAULT '' COMMENT '列表模板',
  `template_page` varchar(100) NOT NULL DEFAULT '' COMMENT '单页模板',
  `template_show` varchar(100) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `acl_browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览权限',
  `acl_operate` varchar(255) NOT NULL DEFAULT '' COMMENT '操作权限',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='全局分类';

-- ----------------------------
-- Records of wr_catalog
-- ----------------------------
INSERT INTO `wr_catalog` VALUES ('1', '0', '分享', '分享', 'share', '新闻栏目介绍', '', '', '', '', '', '0', '0', '0', 'Y', 'N', '', 'list', 'list_text', 'list_page', 'show_post', '', '', '1379545020');
INSERT INTO `wr_catalog` VALUES ('4', '0', '产品', '产品', 'goods', '产品栏目介绍', '', '', '', '', '', '0', '0', '0', 'Y', 'N', '', 'list', 'list_goods', 'list_page', 'show_goods', '', '', '1379545330');

-- ----------------------------
-- Table structure for wr_config
-- ----------------------------
DROP TABLE IF EXISTS `wr_config`;
CREATE TABLE `wr_config` (
  `scope` char(20) NOT NULL DEFAULT '' COMMENT '范围',
  `variable` varchar(50) NOT NULL COMMENT '变量',
  `value` text COMMENT '值',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统配置';

-- ----------------------------
-- Records of wr_config
-- ----------------------------
INSERT INTO `wr_config` VALUES ('base', 'site_name', '唯识深层沟通-济南蔚然中心', '');
INSERT INTO `wr_config` VALUES ('base', 'site_domain', 'http://www.jnwrzx.com', '');
INSERT INTO `wr_config` VALUES ('base', 'admin_email', '1960009001@qq.com', '');
INSERT INTO `wr_config` VALUES ('base', 'site_icp', '鲁ICP备16008496号-1', '');
INSERT INTO `wr_config` VALUES ('base', 'site_closed_summary', '系统维护中，请稍候......', '');
INSERT INTO `wr_config` VALUES ('base', 'site_stats', '', '');
INSERT INTO `wr_config` VALUES ('base', 'seo_title', '唯识深层沟通—济南蔚然中心', '');
INSERT INTO `wr_config` VALUES ('base', 'seo_description', '济南心理培训,济南心理咨询,济南健康教育,咨询沟通,亲子教育,心灵沟通培训,心理咨询机构,身心疗愈,婚姻情感,沟通培训师, 教育培训,济南蔚然中心,承爱深层沟通,林显宗深层沟通济南分中心,林显宗唯识深层沟通课程', '');
INSERT INTO `wr_config` VALUES ('base', 'seo_keywords', '济南心理培训,济南心理咨询,济南健康教育,咨询沟通,亲子教育,心灵沟通培训,心理咨询机构,身心疗愈,婚姻情感,沟通培训师, 教育培训,济南蔚然中心,承爱深层沟通,林显宗深层沟通济南分中心,林显宗唯识深层沟通课程', '');
INSERT INTO `wr_config` VALUES ('base', 'admin_telephone', '18606712910', '');
INSERT INTO `wr_config` VALUES ('base', 'site_status', 'open', '');
INSERT INTO `wr_config` VALUES ('base', 'site_status_intro', '网站升级中..........', '');
INSERT INTO `wr_config` VALUES ('base', 'admin_logger', 'open', '');
INSERT INTO `wr_config` VALUES ('base', 'user_status', 'open', '');
INSERT INTO `wr_config` VALUES ('base', 'user_mail_verify', 'open', '');
INSERT INTO `wr_config` VALUES ('base', 'site_copyright', '© 2009-2016 Jnwrzx.com 版权所有 ICP证：鲁ICP备16008496号-1', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_size', '100x100', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_file', 'static/watermark.png', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_status', 'close', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_allow_ext', 'jpg,gif,bmp,jpeg,png,doc,zip,rar,7z,txt,sql,pdf', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_max_size', '200', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_scope', '100x100', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_position', '5', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_padding', '5', '');
INSERT INTO `wr_config` VALUES ('base', 'upload_water_trans', '30', '');
INSERT INTO `wr_config` VALUES ('custom', '_address', '济南市历下区盛景家园小区10号楼2单元602室', '');
INSERT INTO `wr_config` VALUES ('custom', '_fasdf', 'fasfcccccccccccc', '');
INSERT INTO `wr_config` VALUES ('custom', '_telephone', '0531-58969006', '');
INSERT INTO `wr_config` VALUES ('custom', '_telephone_400', '0531-58969006', '');
INSERT INTO `wr_config` VALUES ('custom', '_fax', '', '');
INSERT INTO `wr_config` VALUES ('custom', '_mobile', '13805311479', '');

-- ----------------------------
-- Table structure for wr_link
-- ----------------------------
DROP TABLE IF EXISTS `wr_link`;
CREATE TABLE `wr_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_name` varchar(100) NOT NULL COMMENT '名称',
  `site_url` varchar(255) NOT NULL COMMENT '链接地址',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `link_type` enum('image','txt') NOT NULL DEFAULT 'txt' COMMENT '链接类型',
  `attach_file` varchar(100) NOT NULL DEFAULT '' COMMENT '链接图片',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '显示状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of wr_link
-- ----------------------------

-- ----------------------------
-- Table structure for wr_page
-- ----------------------------
DROP TABLE IF EXISTS `wr_page`;
CREATE TABLE `wr_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `title_second` varchar(100) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(40) NOT NULL COMMENT '标签',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件',
  `intro` text COMMENT '简单描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO KEYWORDS',
  `seo_description` text COMMENT 'SEO DESCRIPTION',
  `template` varchar(30) NOT NULL DEFAULT '' COMMENT '模板',
  `attach_file` varchar(60) NOT NULL DEFAULT '' COMMENT '附件',
  `attach_thumb` varchar(60) NOT NULL DEFAULT '' COMMENT '附件小图',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '查看次数',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='单页';

-- ----------------------------
-- Records of wr_page
-- ----------------------------
INSERT INTO `wr_page` VALUES ('1', '中心介绍', '', 'about', '', '', '<b>[ 唯识深层沟通济南蔚然中心 ]</b> 是唯识深层沟通总部在济南东部区域开设的重点中心，本中心为对心灵成长有急切需求，对自我认知更加清晰，对人生完美有渴望的灵魂提供完整成熟的专业唯识深层技术服务，传播科学系统的身心灵生活方式，与内在的成长理念，致力于让唯识深层沟通技术帮助到更多的人，协助这些人唤醒内心深处的爱和智慧，找到心灵最深处的光，回归内在，与最完美的本我相遇。', '<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"color:#3DA742;\"><span style=\"font-family:宋体;\">唯识深层沟通济南蔚然中心：</span></span></strong><span style=\"font-family:宋体;\">是唯识深层沟通总部在济南东部区域开设的重点中心，本中心为对心灵成长有急切需求，对自我认知更加清晰，对人生完美有渴望的灵魂提供完整成熟的专业唯识深层技术服务，传播科学系统的身心灵生活方式，与内在的成长理念，致力于让唯识深层沟通技术帮助到更多的人，协助这些人唤醒内心深处的爱和智慧，找到心灵最深处的光，回归内在，与最完美的本我相遇。</span>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:宋体;\"><br />\r\n</span>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"font-family:宋体;\"></span></strong>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><span style=\"color:#3DA742;\">中心地址：</span></strong>济南市历下区盛景花园小区10号楼2单元602室（奥体中路与轻风路交叉口西南），环境优美，清新安静，为济南及周边地区的学员及需要自我成长的朋友们提供了一个极其便利与亲近的心灵家园和爱的港湾。&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp;<span style=\"color:#3DA742;\"><strong>中心愿景：</strong></span>愿迷惑者得以清明；愿痛苦者得以安康；愿我们的生命得以完整。\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp;<strong><span style=\"color:#3DA742;\">中心使命：</span></strong>协助个人的生命觉醒；推动人类的意识转化；显化社会的幸福丰盛。&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	&nbsp;&nbsp;\r\n</p>\r\n<hr />\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"background-color:#00D100;\">&nbsp;心灵顾问微信号：</span>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	申娟：Juanjuan503703; &nbsp; &nbsp;lily:weixin123816347 &nbsp;小光：gxgwxt &nbsp;&nbsp;\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"background-color:#00D100;\">电话：</span>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	申娟：13573100078； &nbsp;lily： 18660174900 &nbsp; &nbsp; 小光： 13688638848\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<br />\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span style=\"font-family:汉仪大宋简;color:green;font-size:20px;\"><span><span style=\"font-family:宋体;\">PS：关注更多活动信息，敬请关注我们的微信平台。</span></span></span>\r\n</p>\r\n\r\n', '', '', '', '', 'static/images/s_logo.png', 'uploads/201309/logo.jpg', '0', '0', '', '1322999570');
INSERT INTO `wr_page` VALUES ('2', '联系我们', '', 'contact', '', '', '', '<p style=\"font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<span><b><span style=\"color:#E53333;background-color:#CCCCCC;\">联系方式：</span></b></span>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><strong><span style=\"color:#009900;\"><br />\r\n</span></strong></strong>\r\n</p>\r\n<p style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;font-size:16px;background-color:#FFFFFF;\">\r\n	<strong><strong><span style=\"color:#009900;\">心灵顾问微信号：</span><span><span style=\"font-size:16px;\">申娟(Juanjuan503703)、lily(weixin123816347)、小光(gxgwxt)</span></span></strong></strong> \r\n</p>\r\n<p>\r\n	<strong><span style=\"color:#3DA742;\"><span style=\"color:#333333;\"><strong><span style=\"color:#3DA742;\"><span style=\"color:#009900;\"><span style=\"font-family:\'Microsoft YaHei\';font-size:16px;\">中心电话</span>： &nbsp;</span></span></strong></span></span></strong><span style=\"color:#3DA742;\"><span style=\"color:#333333;\"><span style=\"color:#3DA742;\"><span style=\"color:#333333;font-size:16px;\">0531-58969006</span></span><span style=\"font-size:16px;\"></span></span></span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"color:#009900;font-family:\'Microsoft YaHei\';font-size:16px;\">中心地址：&nbsp;</span></strong><span style=\"color:#3E3E3E;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;line-height:25.6px;font-size:16px;background-color:#FFFFFF;\">济南市历下区盛景花园小区10号楼2单元602室（奥体中路与轻风路交叉口西南）</span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"color:#3DA742;\"><span style=\"color:#009900;font-family:\'Microsoft YaHei\';font-size:16px;\">中心网站</span><span style=\"font-family:\'Microsoft YaHei\';font-size:16px;\">：&nbsp;</span></span></strong><span><span style=\"line-height:25.6px;font-size:16px;background-color:#FFFFFF;\">www.jnwrzx.com</span></span> \r\n</p>\r\n<p>\r\n	<strong><span style=\"color:#009900;font-family:\'Microsoft YaHei\';font-size:16px;\">咨询邮箱</span></strong><strong><span style=\"color:#3DA742;font-family:\'Microsoft YaHei\';font-size:16px;\">：&nbsp;</span></strong><span style=\"color:#333333;font-size:16px;\"><span style=\"font-size:16px;line-height:25.6px;color:#333333;background-color:#FFFFFF;\">jnwrzx@126.com</span></span><span style=\"font-size:16px;\"></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '', '', '', '0', '0', '', '1322999588');
INSERT INTO `wr_page` VALUES ('3', '蔚然文化', '', 'cultural', '', '', '企业文化是企业为解决生存和发展的问题的而树立形成的，被组织成员认为有效而共享，并共同遵循的基本信念和认知。 企业文化集中体现了一个企业经营管理的核心主张，以及由此产生的组织行为。', '<p>\r\n	<span style=\"color:#333333;font-size:14px;line-height:36px;\">【愿景】</span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;color:#333333;\">&nbsp; &nbsp; ——愿迷惑者得以清明；愿痛苦者得以安康；愿安息者得以解脱；愿我们的生命得以完整。</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:18px;color:#9933E5;\"> </span></strong> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-size:14px;line-height:36px;\">【使命】</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:14px;color:#333333;\">&nbsp; &nbsp; ——协助[个人]的生命觉醒，推动[人类]的意识转化，显化[社会]的幸福丰盛。</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;color:#006600;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;color:#006600;\"><span style=\"font-size:18px;color:#9933E5;\"> </span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;line-height:36px;font-size:14px;\">【独特技术】</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-size:14px;\">&nbsp; &nbsp; ——[唯识深层沟通]技术</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#006600;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#006600;\"><span style=\"font-size:18px;color:#9933E5;\"> </span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#006600;\"><span style=\"color:#9933E5;\"></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;line-height:36px;font-size:14px;\">【核心理念】</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-size:14px;\">&nbsp; &nbsp; ——[了解因果，发现自己，圆满人生]</span> \r\n</p>\r\n<p>\r\n	<span style=\"color:#333333;font-size:14px;\"><br />\r\n</span>\r\n</p>\r\n<br />\r\n<p>\r\n	<strong><span style=\"color:#9933E5;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img src=\"http://localhost/uploads/201603/5b0da90f1f08dda6f70f0aaa1960e5b3.png\" alt=\"\" /></span></strong> \r\n</p>\r\n<br />\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong><span style=\"font-size:18px;color:#9933E5;\"><br />\r\n</span></strong> \r\n</p>', '', '', '', '', '', '', '0', '0', '', '1331877791');
INSERT INTO `wr_page` VALUES ('4', '蔚然团队', '', 'team', '', '', '团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。', '<div>\r\n	<div>\r\n		团队是现代企业管理中战斗的核心，几乎没有一家企业不谈团队，好象团队就是企业做大做强的灵丹妙药，只要抓紧团队建设就能有锦锈前程了。团队是个好东西，但怎样的团队才算一个好团队，怎样才能运作好一个团队呢？却是许多企业管理者不甚了然的，于是在企业团队建设的过程中就出现了许多弊病，例如从理论著作中生搬硬套到团队运作里面，是很难产生好团队的。任何理念都不能执着，执着生僵化，就会蜕变为形式主义，后果很糟糕。在如今企业管理者热火朝天进行的团队建设中就存在这个问题，将团队作为企业文化建设的至上准则是不恰当的，是不符合多元化的现实状况的。\r\n	</div>\r\n	<div>\r\n		一个优秀的企业管理者，应该怎样管理员工?道理也很简单，那就是要给员工创造一个充分利用自己的个性将工作干得最好的条件。不一定什么都要团队化，太死板了。虽然现在的企业也都提倡创新，但如果管理者过分强调团队精神，则员工的创新精神必然受到压抑。压抑个性就是压抑创新，没有个性哪来的创新?说得极端一点，企业管理者要谨防团队建设法西斯化。团队是需要的，企业管理者在团队建设的同时要遵循一个原则，不能压抑员工的个性。在团队内部，企业管理者要给员工充分的自由，少说几句少数服从多数，要知道，聪明的人在世界上还就占少数。\r\n	</div>\r\n	<div>\r\n		企业管理者应该解放思想，要有多元化的思维。不同的企业，团队的性质也不一样。要量体裁衣建设符合企业内在要求的团队，要灵活变化，别搞一刀切。如果该企业是劳动密集型企业，那你可以建设一支高度纪律性组织性的团队。如果该企业是知识密集型企业，那就要以自由主义来管理员工了，建立一支人尽其才的团队是最重要的，严格说算不上是团队，也没必要强调团队，更注重的应该是员工的个人创造力，千万别让团队束缚住员工的头脑，当然应该有的纪律和合作也是不可少的。如果企业既有创造型员工也有操作型员工，那可将团队建设重点放到操作型员工身上。需要注意的一点是，越聪明的人越倾向个人主义，这个情况，企业管理者要注意有的放矢。\r\n	</div>\r\n</div>\r\n<div>\r\n</div>', '', '', '', '', '', '', '0', '0', 'Y', '1379392484');

-- ----------------------------
-- Table structure for wr_post
-- ----------------------------
DROP TABLE IF EXISTS `wr_post`;
CREATE TABLE `wr_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '用户',
  `nickname` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `author` varchar(100) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `title_second` varchar(255) NOT NULL DEFAULT '' COMMENT '副标题',
  `title_alias` char(50) NOT NULL DEFAULT '' COMMENT '别名 ',
  `title_style` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式',
  `title_style_serialize` varchar(255) NOT NULL DEFAULT '' COMMENT '标题样式序列化',
  `html_path` varchar(100) NOT NULL DEFAULT '' COMMENT 'html路径',
  `html_file` varchar(100) NOT NULL DEFAULT '' COMMENT 'html文件名',
  `template` varchar(60) NOT NULL DEFAULT '' COMMENT '模板',
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `special_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `intro` text COMMENT '摘要',
  `image_list` text COMMENT '组图',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_description` text COMMENT 'SEO描述',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `content` mediumtext NOT NULL COMMENT '内容',
  `copy_from` varchar(100) NOT NULL DEFAULT '' COMMENT '来源',
  `copy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '来源url',
  `redirect_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转URL',
  `tags` varchar(255) NOT NULL DEFAULT '' COMMENT 'tags',
  `view_count` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '查看次数',
  `commend` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '推荐',
  `attach_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '是否上传附件',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `attention_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关注次数',
  `top_line` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '头条',
  `last_update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  `reply_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复次数',
  `reply_allow` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '允许评论',
  `sort_desc` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `acl` varchar(100) NOT NULL DEFAULT 'Y' COMMENT '权限检测',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '新闻状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='内容管理';

-- ----------------------------
-- Records of wr_post
-- ----------------------------
INSERT INTO `wr_post` VALUES ('8', '1', '', '', '【亲子教育案例】当你的孩子尿床时', '', '', '', '', '', '', '', '1', '1', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:2:\"14\";s:4:\"file\";s:51:\"uploads/201603/2306dce41fbcccb80c1dd2e5808c2922.jpg\";}}', '', '', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">个案是一位</span><span style=\"font-family:微软雅黑, sans-serif;\">28</span><span style=\"font-family:微软雅黑, sans-serif;\">岁的白领男青年</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">看上去文质彬彬的，性格内向，不擅交际，总是给人一种萎靡不振和</span></span><span><span style=\"font-family:微软雅黑, sans-serif;\">心事重重的感觉。眼看就快</span><span style=\"font-family:微软雅黑, sans-serif;\">30</span><span style=\"font-family:微软雅黑, sans-serif;\">的人，可情感生活却是一片空白，在家人的劝说下，两个月前认识了一位女友，开始交往，双方感觉都不错。最近这段时间个案</span><span style=\"font-family:微软雅黑, sans-serif;\">却</span><span style=\"font-family:微软雅黑, sans-serif;\">开始恐惧担心</span><span style=\"font-family:微软雅黑, sans-serif;\">女友</span><span style=\"font-family:微软雅黑, sans-serif;\">与他分手</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">但女友打电话约他，他又以加班为由拒绝约会，怕见女友，内心很疚结，前来沟通。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　做完前置沟通，我请</span><span style=\"font-family:微软雅黑, sans-serif;\">他</span><span style=\"font-family:微软雅黑, sans-serif;\">找出最近发生的让</span><span style=\"font-family:微软雅黑, sans-serif;\">他</span><span style=\"font-family:微软雅黑, sans-serif;\">挂碍的事。个案回想一个月前的一个上午和女友一块去她姐姐家作客，听到女友与姐</span><span style=\"font-family:微软雅黑, sans-serif;\">姐</span><span style=\"font-family:微软雅黑, sans-serif;\">聊到她儿子昨晚尿床了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">女友就笑着对孩子说</span><span style=\"font-family:微软雅黑, sans-serif;\">:“</span><span style=\"font-family:微软雅黑, sans-serif;\">哈哈，你尿床了嘛</span><span style=\"font-family:微软雅黑, sans-serif;\">!”</span><span style=\"font-family:微软雅黑, sans-serif;\">个案就开始紧张，想到自己以前</span><span style=\"font-family:微软雅黑, sans-serif;\">也</span><span style=\"font-family:微软雅黑, sans-serif;\">经常尿床，要是自己最亲密的人知道了，她会怎么看待我</span><span style=\"font-family:微软雅黑, sans-serif;\">?</span><span style=\"font-family:微软雅黑, sans-serif;\">那时候我在她眼里还会是现在这个伟岸坚强的男人吗</span><span style=\"font-family:微软雅黑, sans-serif;\">?</span><span style=\"font-family:微软雅黑, sans-serif;\">发生矛盾时她会不会揭我的伤疤，往自己伤口上撒盐</span><span style=\"font-family:微软雅黑, sans-serif;\">?</span><span style=\"font-family:微软雅黑, sans-serif;\">后来，回</span><span style=\"font-family:微软雅黑, sans-serif;\">去</span><span style=\"font-family:微软雅黑, sans-serif;\">后就不敢见女友。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　为什么个案一听到尿床就反应这么大，一定有原因的。于是，我请个案往更早之前找出其它类似事件。个案回溯到小学一年级，</span><span style=\"font-family:微软雅黑, sans-serif;\">有一天，个案尿床了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">父母为此大惊失色，说你</span><span style=\"font-family:微软雅黑, sans-serif;\">2</span><span style=\"font-family:微软雅黑, sans-serif;\">岁就不再尿床了，现在都</span><span style=\"font-family:微软雅黑, sans-serif;\">7</span><span style=\"font-family:微软雅黑, sans-serif;\">岁了，怎么反而又尿床，越活越倒退了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">父母的话让小小的他非常羞愧，以至于当天晚上睡觉的时候，心里非常担忧，好久都没睡着。但也许是因为太紧张，也许因为前半夜没睡着，后半夜睡得太香，第二天早上醒来，居然又一次尿床了。这下子，父母特别不高兴，说你是怎么搞的，昨天尿了床，今天怎么又尿了，是不是成心的啊？</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　当时他们住的是大院平房，有很多住户，妈妈一边抱着湿褥子往外走，一边说，这么大孩子了还尿床，褥子晒到外面，让别人看到多丢人。爸爸板起面孔严肃地警告</span><span style=\"font-family:微软雅黑, sans-serif;\">他</span><span style=\"font-family:微软雅黑, sans-serif;\">说，有再一再二，没有再三，这两次尿床我原谅你了，再尿床我可对你不客气了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">以后，睡觉前再也不许喝糖水了。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　父母的话让小小的他内心充满羞辱感和恐惧，所以接下来的一个晚上，他更害怕得不敢睡觉，直到困得坚持不住，沉沉睡去</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">结果是，他连着第三次尿床了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">后被打雷声惊醒了，他摸摸屁股，裤子是湿的，知道自己又</span><span style=\"font-family:微软雅黑, sans-serif;\">尿</span><span style=\"font-family:微软雅黑, sans-serif;\">床了。想起爸爸早上说再尿床对你不客气了就不敢说，决定偷偷起来换裤子。于是，就去柜子里找裤子，也不敢开灯</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">翻动的声音惊动了父母。个案只好说尿床了要换裤子。妈妈说哪里还有裤子，都被你尿湿了，洗了还没干</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">爸爸听了生气极了，跳下床就用手拧起个案的肩膀往门外拖。爸爸凶巴巴的样子，吼到</span><span style=\"font-family:微软雅黑, sans-serif;\">:“</span><span style=\"font-family:微软雅黑, sans-serif;\">又尿床了，这么大了，弟妹都不尿床，你再尿床就不要回来了。</span><span style=\"font-family:微软雅黑, sans-serif;\">”</span><span style=\"font-family:微软雅黑, sans-serif;\">说完，就</span><span style=\"font-family:微软雅黑, sans-serif;\">\"</span><span style=\"font-family:微软雅黑, sans-serif;\">怦</span><span style=\"font-family:微软雅黑, sans-serif;\">”</span><span style=\"font-family:微软雅黑, sans-serif;\">的一声把门关了，把门栓也擦上了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">外面下着雨，黑漆漆的一片。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　个案哭着敲门父母也没回应。听到风吹得树叶沙沙响，雨也越下越大，黑黑的什么也看不见</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">个案开始害怕了，全身开始哆嗦起来，心里很失落，以为父母真的不要他了。</span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">我很清楚父母此刻的做法对年纪7岁的他来说已种下了无明种。于是，我不停的让个案重复听到的、看到的、感受到的，来协助个案清除种子，当个案不断重复“爸爸真的不要我了，爸爸真的不要我了。”我看到个案双手抱着肩膀躺在沟通椅上不停的发抖，哭得很<span style=\"color:#0D0D0D;\">伤心，难怪</span></span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">，个案会担心女友</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">因此</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">不要他了。</span><span style=\"font-family:微软雅黑, sans-serif;\">我还是继续请个案重复，直到他慢慢的平缓下来，不再哭泣。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　后来，过了好久才开门让他进去。第二天，外面一直下雨，只有在家里用火冲烤褥子</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">妈妈边考边唠叨</span><span style=\"font-family:微软雅黑, sans-serif;\">:“</span><span style=\"font-family:微软雅黑, sans-serif;\">是不是脑子有问题啊</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">会不会长大也这样啊。</span><span style=\"font-family:微软雅黑, sans-serif;\">”</span><span style=\"font-family:微软雅黑, sans-serif;\">个案开始怀疑是不是自己脑子有问题，也担心以后还会不会这样。从此陷入恶性循环中，从那时起，</span><span style=\"font-family:微软雅黑, sans-serif;\">晚上只要外面在</span><span style=\"font-family:微软雅黑, sans-serif;\">下雨</span><span style=\"font-family:微软雅黑, sans-serif;\">或梦到下雨</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">他</span><span style=\"font-family:微软雅黑, sans-serif;\">就会尿床。隔三差五地尿床</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">。第2天，天</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">晴</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">了</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">，妈妈就把褥子拿到外面去晒。很快，院子里的人都知道了</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">，</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">还为他取了一</span><span style=\"font-family:微软雅黑, sans-serif;\">个绰号</span><span style=\"font-family:微软雅黑, sans-serif;\">\"</span><span style=\"font-family:微软雅黑, sans-serif;\">尿床狗</span><span style=\"font-family:微软雅黑, sans-serif;\">”</span><span style=\"font-family:微软雅黑, sans-serif;\">，于是，个案</span><span style=\"font-family:微软雅黑, sans-serif;\">感觉到自己</span><span style=\"font-family:微软雅黑, sans-serif;\">成了小朋友中的另类，成了他们侮辱的对象。随时随地，当个案有不按他们旨意办事时，他们就会一遍遍地大声喊</span><span style=\"font-family:微软雅黑, sans-serif;\">:“</span><span style=\"font-family:微软雅黑, sans-serif;\">某某某，尿床狗。</span><span style=\"font-family:微软雅黑, sans-serif;\">”</span><span style=\"font-family:微软雅黑, sans-serif;\">每次，个案都很难堪。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　渐渐地</span><span style=\"font-family:微软雅黑, sans-serif;\">就不愿意出去玩了</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">由于经常尿床弟妹都不愿意同他睡一床，本来家里都很窄，还得安一张床</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">个案开始自责、报怨</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">他认为家人也这样对待他。于是每天都把自己锁在小房间拼命读书</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">实在找不到其他任何可以平等地接纳他、对待他的地方了。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　我知道个案当时很失落，觉得自己不被人接纳。我请个案重复了几遍后，问道：<span style=\"color:#0D0D0D;\">“从这种感觉你有联想到什么吗？”“有啊，那天从女朋友姐姐家出来后，也是这种感觉，我就一直担心女朋友不接纳我，所以，不敢见她。”“还联想到什么？”“我把自己封闭起来，不与人接触，导致性格内向。”</span></span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　后</span><span style=\"font-family:微软雅黑, sans-serif;\">来，</span><span style=\"font-family:微软雅黑, sans-serif;\">父母可能后来意识到打骂解决不了问题，就开始带他找医生看病，吃过很多中药西民间偏方，从捕风捉影到道听途说，从佛到神，每隔十几天就要换一种新方法</span><span style=\"font-family:微软雅黑, sans-serif;\">，却</span><span style=\"font-family:微软雅黑, sans-serif;\">都没有作用，直到</span><span style=\"font-family:微软雅黑, sans-serif;\">15</span><span style=\"font-family:微软雅黑, sans-serif;\">岁，仍不能解决。</span><span style=\"font-family:微软雅黑, sans-serif;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　后来，个案考上重点高中开始住校了，</span><span style=\"font-family:微软雅黑, sans-serif;\">一个月才能回去一次，</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">父母也放弃了</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">对他的治疗。而由于环境的改变，个案再也听不到父母的抱怨</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">从此</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">就</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\">再有没有再尿床了。</span><span style=\"font-family:微软雅黑, sans-serif;color:#0D0D0D;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　听了个案的经历，我想，要化解个案的想法的话（爸爸真的不要我了），只有让他融入爸爸。于是我请个案又回到那天晚上，请他再去经历一次后，又问道“</span><span style=\"font-family:微软雅黑, sans-serif;\">后来</span><span style=\"font-family:微软雅黑, sans-serif;\">呢？”听到妈妈说，外面这么冷，让他进来吧！爸爸可能也感觉自己有点过分了就</span><span style=\"font-family:微软雅黑, sans-serif;\">开门让他进去</span><span style=\"font-family:微软雅黑, sans-serif;\">，我问道：“爸爸有说什么吗？”“有啊，他说，进来吧”请他重复爸爸说的话后问道：“请你看看爸爸有要你吗？”“有要我。”于是，我请他融入爸爸，去感受爸爸当时的感受。“爸爸</span><span style=\"font-family:微软雅黑, sans-serif;\">以为是</span><span style=\"font-family:微软雅黑, sans-serif;\">我</span><span style=\"font-family:微软雅黑, sans-serif;\">懒惰、不肯半夜起床撒尿才会尿床</span><span style=\"font-family:微软雅黑, sans-serif;\">，他这样做以为我就会长记性。”我又问道：“还有感觉到什么？”个案再次哭了：“不是爸爸不要我，爸爸只是生气了，爸爸让我进来，还让妈妈找弟弟的裤子给我穿。”</span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　沟通快结束了，我问道：“从沟通事件中又看看到什么吗<span style=\"color:#0D0D0D;\">？”“不是爸爸不要我，那只是我的想法、感觉，爸爸是要爱我的”“</span>还有看到什<span style=\"color:#0D0D0D;\">么？”“不是小朋友不跟我玩，是我自己觉得难堪，不敢跟他们玩”，“还有呢？”我又问道“不是女朋友不跟我交往，她有打电话给我的，是我自己担心、害怕她不接纳我。”“那有知道该怎么做吗？”“我不应该担心、害怕，我主动打电话约她。”</span></span><span style=\"font-family:微软雅黑, sans-serif;color:red;\"></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span style=\"font-family:微软雅黑, sans-serif;\">　　从个案的经历让我看到，家长在处理孩子尿床的态度上若处理不当，会带来十分严重的后果</span><span style=\"font-family:微软雅黑, sans-serif;\">，</span><span style=\"font-family:微软雅黑, sans-serif;\">直接影响到孩子长大后的为人处世、婚姻、事业。也会导致孩子长大后仍然背着沉重的心理包袱。在这里我也祝愿个案早一点从童年的阴影里走出来</span><span style=\"font-family:微软雅黑, sans-serif;\">,</span><span style=\"font-family:微软雅黑, sans-serif;\">迎接他的照样是灿烂的生活。（<span>学员分享</span>）</span></span>\r\n	</p>\r\n</p>', '', '', '', '亲子,教育,案例', '97', 'N', 'Y', 'uploads/201309/523a3737db503.jpg', 'uploads/201309/thumb_523a3737db503.jpg', '11', '21', 'N', '1458743808', '0', 'Y', '0', '', 'Y', '1379546936');
INSERT INTO `wr_post` VALUES ('9', '1', '', '', '【案例】童年和至亲分离的痛有多痛，大人们你们知道吗？', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:2:\"10\";s:4:\"file\";s:51:\"uploads/201603/5f2a279c29f1614a6a5ee15f0428b91a.jpg\";}}', '', '', '', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>个案是一个漂亮、有着优雅气质的女人，离异多年，带着孩子生活，她有着一份稳定的高薪收入。是她的心理医生陪同她一起来深层沟通昆明区中心参加基因班课程的，据说被诊断有精神焦虑障碍，已经服用了一年多精神科的药物，他的心理医生学过深层沟通所以介绍她过来学习。个案之前有抽烟喝酒的习惯，因声带息肉手术后戒除了。个案从来不敢一个人在家、夜晚不敢一个人外出、怕黑、恐高、下雨打雷激烈的声响都会令她浑身冒汗甚至晕倒……她明明长得很漂亮却总觉的自己不够好。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　沟通前她要求她的心理医生进入沟通室陪她，我考虑再三拒绝了她的要求，看得出她很依赖她的心理医生。因长期服药会影响沟通效果，沟通前我给她做了光净化水净化。从她的疾病声带息肉手术切入沟通，(因个案情况比较特殊想先从手术过程中清理无名种入手，方便她进入回溯状态，没想到她的回溯能力其实很强<span style=\"line-height:30px;\"><span>)</span></span>。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　个案在家中排行老二，不到一岁就被送到外婆家生活，到了7岁才被接回父母身边上学。在外婆家的时候，外公很疼她，个案记忆最深刻的是外公把她抱在怀里，她摸着外公的胡子撒娇，那一刻她感受到的是满满的幸福。外婆也很疼她，可是舅妈很厉害，外婆只能悄悄的对她好，在她吃不饱的时候偶尔给她去厨房捏个饭团吃。可是在外婆家的日子总是没衣服穿没鞋穿、吃不饱，她会偷偷跑去厨房找吃的。可是在厨房偷吃时经常被舅妈发现，每当她一听到身后叫声“小老二！”会被吓得案魂飞魄散，<span style=\"line-height:30px;\"><span>(</span></span>一直到现在她都不能听谁在她身后大声讲话。)</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　之后舅妈会冲过来抓着她的胳膊使劲的掐，使劲的拧，舅妈还不许她哭泣，她只要哭舅妈就会掐的更狠！她不敢哭也不敢告诉外婆，因为外婆保护不了自己，唯一疼爱自己的外公又经常不在家，讲到这里个案已经痛不欲生哭得非常伤心，她不明白为什么父母不要自己，让自己寄人篱下，吃不饱穿不暖，还被欺负，她一直恨舅妈，恨父母……</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><a href=\"http://photo.blog.sina.com.cn/showpic.html#blogid=808bf2e20102v5pg&amp;url=http://album.sina.com.cn/pic/002lX6zogy6NuUaktcZ99\" target=\"_blank\"><span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;color:windowtext;\"></span></a></span><span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案讲到小时候只要舅妈觉得自己不听话就会把她关在门外，门外漆黑一片，她非常地害怕。有一次又被关在门外，她居然一个人走了好几公里夜路，跑去找在外面看果园的外公，她一边哭一边走，只为了可以见到外公，能够得到安慰和保护。当她见到外公，外公把她抱在怀里的那一刻，她觉得自己什么都不怕了……（我说：“这让你想到什么？”她才明白原来长大之后，个案特别喜欢有人抱她，可是老公从来没有抱过，她觉得老公不爱自己，后来她离婚了……离婚后她一直不停地寻找能给她一个温暖怀抱的男人，可是她找不到，因为自从外公去世之后，她觉得再也没有一个人能像外公一样疼她爱她了，她的心从那一刻就关闭了！泪如雨下！）</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">外公去世的时候，个案四五岁大，那天早晨醒来，她看到一屋子的人，不知道发生了什么。家里一直以来放着的两口棺材之中的一个被摆在屋子中间，(从小每天晚上睡觉个案都会很害怕那两口黑乎乎的棺材，大人告诉她里面是放死人的。<span><span>)</span></span>她又看到有人把外公抬着放进棺材里，放进去的时候外公的一只胳膊和手举着伸到了棺材外面，后面有人把它按进棺材里，个案问外婆外公怎么了，外婆指着棺材哭着告诉她说：“外公死了”她不知道死了是什么意思，但是隐隐约约觉得不是什么好事，就不停地哭着喊：“外公……外公……”，这个时候舅妈过来了，很不耐烦咬着牙齿恶狠狠的地说：“哭什么哭？再哭就让外公把你抓走！”舅妈的一句话让个案立马捂住嘴巴再也不敢哭了。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" align=\"center\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\"><img border=\"0\" src=\"http://www.juexing.net/upload_files/article/6/54504_20141117101129_hllvn.png\" style=\"height:auto;\" /></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">她一个人蜷缩在墙角，木木的看着人进进出出忙碌，没有一个人搭理她。天越来越黑，人也越来越少，越来越安静，她一个人一直蜷缩在墙角里，屋里只有一盏昏黄的油灯透着一点微弱的光，其它地方一片漆黑。听着外面传来的各种虫子的叫声，青蛙的叫声……惊恐万分的盯着外公的棺材，偶尔因为极度恐惧哭泣两声，一想到舅妈的话：“再哭就让外公把你抓走”又想到外公伸在棺材外面的那只手，怕外公真的把自己抓进棺材里去，立刻吓得不敢哭了。脚都麻了也不敢动一下子。就这样她一个人在那间放着两口棺材的漆黑的房子里迷迷糊糊一直待到天亮，没有一个人记得还有她。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">第二天一早被吵醒了之后，发觉他们在把外公的棺材往外抬，还没有来得及反应过来，问清楚是怎么回事，门就被舅妈锁上了，她继续一个人在房子里待着，惊恐的盯着另外的一个棺材，生怕里面会突然出来一只手把自己抓走。直到舅妈他们忙完回来，打开房门喊她出去吃饭。到了晚上，她哭着要找外公，因为她根本就不知道外公去了哪里，也没有人告诉她，结果舅妈又像往常一样抓着个案的胳膊把她推搡到门外站着(个案直到现在都很讨厌有人拉着她的胳膊，即使是儿子想挎着她的胳膊都不行，舅妈的这个动作对个案已经形成了无明种<span><span>)</span></span>，门外依旧一片漆黑，个案孤零零一个人惊恐极了，哭都不敢哭，一是害怕被抓进棺材里，二是觉得外公不在了再也没有人能保护自己了……</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">讲到这里的时候，个案哭的声嘶力竭：“外公你走了，再也没有人保护我了，再也没有人爱我了……”我适时的引导个案和外公对话，个案把这些年所有的伤心委屈统统的告诉外公，一边说一边哭，让人心酸不已，为之动容……(我说：“这让你想到什么？”个案了解到原来从小因为舅妈不让哭不让说话，造成个案一直十分的压抑的个性，很少哭也不敢表达，以至于后来得了声带息肉。<span><span>)</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案好不容易到了上学的年纪，妈妈来接个案回家，妈妈来的那天她高兴极了，跑去厨房帮忙切韭菜，结果切到手指，舅妈一边扇风点火：“小老二总是这个样子”，妈妈过来二话不说照着个案脸上就是两巴掌。捂着火辣辣的脸个案委屈极了：“我就是想切韭菜给妈妈吃，干嘛打我？”手指不停地流血，可是她依旧不敢哭，那一刻她多想妈妈把她搂在怀里安慰她，可是妈妈没有这样做，她给女儿的是女儿记了一辈子的两巴掌。同时那一刻个案也暗暗的冲着舅妈发誓：我这个样子怎么了？我一定要做给你看，我一定要出人头地！这也是后来个案长大了拼命的学习工作，不断的证明自己的原因。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">回到父母的家里，个案依然有种寄人篱下的感觉，觉得自己和家里人格格不入，自己像个外人一样，妈妈总是对自己挑三捡四，这也不对那也不对，总是拿自己和姐姐比，说自己没有姐姐懂事，没姐姐好……个案慢慢的开始恨姐姐恨妈妈，在农村从来没有喝过牛奶的个案因为好奇偷偷喝了给弟弟买的牛奶被妈妈骂，觉得妈妈好偏心，一点也不爱自己，最后她连弟弟也恨，整个家里除了爸爸对她好，没人喜欢她，所以她一直以来跟爸爸很亲近。在沟通妈妈往生的点的时候，个案开始都没什么情绪，有的只是对妈妈的怨恨。当她把过往和妈妈之间发生怨恨和不满的事件表达出来了以后，在火葬场工作人员要拉妈妈遗体火化的那一刻，她终于溃堤！拉着放妈妈遗体的车子死活不松手：“我真的再也没有妈了，从今以后就成了没妈的孩子了。妈妈……你为什么那么残忍，小时候把我送走让我没妈疼，大了回到你身边，你对我那么冷漠，你从来都没爱过我，现在你走了，你又把我丢下了，妈妈……，我也想要你疼我爱我，你不能丢下我……”我引导她和妈妈在光中对话，她了解到妈妈不是不爱她，只是妈妈用的是另外的方式在爱她，而且妈妈不知道她在外婆家舅妈是那样对她的，妈妈也真诚地跟女儿忏悔了：“对不起，把你送回老家让你受委屈了”。那一刻，她才真正的释怀放下了几十年来对妈妈的怨恨。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案在沟通中还忆起自己的儿子三岁时，因哭着要爸爸，个案心里烦躁不已，拉着孩子胳膊把他推到门外，门外漆黑一片，这个时候我引导个案去体会孩子的感受，她立刻想到小时候被舅妈关在门外的感觉，她哭着说：“太对不起儿子了，完全明白孩子当时的恐惧和无助。”</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案离婚后带着儿子生活，却和儿子关系十分紧张。跟儿子的冲突最终导致找心理医生的过程也让人唏嘘不已。个案因为跟男朋友吵架心情不好，加上那天打麻将输钱，回家和儿子发生口角，打了儿子两个嘴巴子，儿子气得抓住个案两个胳膊把她往墙上撞，完了之后儿子又用头去撞墙，撞到头破血流，并且把糊的到处是血的脸凑到妈妈脸前：“你记着，你好好看着我现在的样子，你会遭报应的！”个案当时就心跳加速，晕坐在沙发上……后来儿子跑出去了，个案第二天再次晕倒了，送去医院什么都检查不出来，心脏一切都是正常的，但是就是会忽快忽慢，有时会停跳。医院只有叫精神科的医生来，最后个案莫名其妙被诊断为精神焦虑障碍，吃了一年多的精神科的药。可是通过几天的沟通，看到个案一天一天的改变，根本就看不出她有精神方面的问题。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案的怕黑，不敢一个人在家等一系列问题的根源也随着种子的清除，影响力逐步消失了，第二天晚上沟通后，在我们的鼓励下，自己尝试着一个人回了家，没有让儿子过来接她。我给个案布置了一个作业，就和儿子发生冲突这件事回家好好的和儿子沟通，并且跟孩子道歉。第二天她回来高兴的告诉我，那天母子俩聊了很久哭了很久，儿子原谅她了，母子间紧张的关系终于得到了缓解，我想她儿子多年积压的情绪等来母亲的道歉，该有多高兴呀！她也逐步尝试摆脱对药物和心理医生的依赖，并且说愿意给前夫一个机会，也给自己一个机会尝试重新接纳前夫，我想这也是她的儿子乐见的结果。在这里真诚的祝福他们一家幸福圆满。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">通过深层沟通从个案身上可以看到，她遭遇的种种现状基本上都源自于童年与父母分离的伤痛。与父母短暂的分离造成了她一生的痛，随着童年伤痛的疗愈，她很多的状况立刻有了改善。在这个个案身上再一次真切的看到：所有的结果都与童年有关。强烈呼吁那些整日忙于工作打拼的父母们，再苦再累一定要让孩子留在自己身边生活，多抽出时间陪陪孩子。给他们足够的关怀和爱。教育孩子就如同一张单程车票，一旦我们做错了，错过了，也许连回头改正错误的机会都没有了，要知道任何成功都无法弥补教育孩子的失败。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span style=\"font-family:微软雅黑, sans-serif;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family:微软雅黑, sans-serif;\">个案沟通后一个月来中心分享，这一个月来她感觉重新活过来了，过去的经历就像上辈子的事，从未有过的开心，不再怕高，不再害怕一个人走夜路，不再害怕一个人回家，她领悟到原来伤害是缘于爱。真心的为她感到高兴，仅仅沟通了28个小时，她的人生彻底转变，这也缘于她很勇敢的再次面对过往。最后她希望把这份转变分享给更多的人，哪怕你的内心早已溃烂，早已支离破碎，但只要能勇敢的面对过往，总会有获得重生的机会！愿每个人圆满生命的体验，找回属于自己的幸福！<span style=\"color:#7030A0;\"><span>（学员分享）</span></span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '童年,至亲,分离', '87', 'N', 'Y', 'uploads/201309/523a379a5e8f5.jpg', 'uploads/201309/thumb_523a379a5e8f5.jpg', '16', '8', 'N', '1458743609', '0', 'Y', '0', '', 'Y', '1379547034');
INSERT INTO `wr_post` VALUES ('10', '1', '', '', '【学分班】唤醒爱 感受爱', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:2:\"11\";s:4:\"file\";s:51:\"uploads/201603/bb32cc90b9b9db137c195db3f8d6dc75.jpg\";}}', '', '', '', '<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>这是我第二次上学分班，我的名字叫周Ｘ宁，周是姓不能改了，鹤是一种与众不同的鸟，宁是宁静致远，安宁的意思。古汉语中宁是宝字盖代表家，丁是男丁的意思，家中一丁代表家庭唯一的孩子，也就是说虽是女孩但爸妈只想要我一个孩子。我之所以把名字解释这么仔细，是因为这就是我要分享的主题：唤醒爱，感受爱。</span><span><br />\r\n　　曾经我离家出走，我一直说是妈妈不要我了，骂我，我才走的。后来回来时是参加爷爷葬礼，妈妈说了句：爷爷是因为你才死的。为此我一直埋怨妈妈，并且自责。而这次学分班，我亡灵10场才过，晚上沟通我才逐渐看清真相，是我先在外夜不归宿，妈妈担心我，第二天妈妈才骂我，而我因为无法面对自己的错，才离家出走，想用这个方式让妈妈自责，难过，然后原谅我的错。<span style=\"line-height:30px;\"></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　离家出走一个月爸爸妈妈找我找的肝肠寸断。这时候爷爷往生，我知道了就马上赶回来，而妈妈也用同样的方式让我来体验她的感受。当我理解这一切，我给爸爸妈妈发了短信：我在广州一切安好。曾经我离家出走，是我错了，我因为不愿意承担自己的错，不愿意面对，所以用离家出走逃避，并且用这样的方式向爸爸妈妈讨爱，带给爸妈很多痛苦，让爸妈自责，难过，担心。用爸妈对我的爱来威胁伤害你们，对不起，我彻底认识到我的错误，我再也不会犯同样的错误。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　感觉到您们对我的包容，对我的爱，我已经明白从小到大每一次对我的要求和批评背后都是你们深深的爱，是我一直不理解，我收到爸妈对我的爱了。是女儿懂的太晚，让你们伤心了，我爱你们，晚安。而爸妈分别给我回了短信，至此我和爸爸妈妈心中最大的隔阂消失了。</span><span style=\"font-size:15px;line-height:30px;\"><br />\r\n</span><span>　　昨天我给爸爸打了一个电话。我问爸爸为什么给我取这个名字，于是爸爸讲了他和妈妈起这个名字的寓意，就是开头我讲的。然后我和爸爸说：爸爸，我记得我1,2岁时常常生病，有一次妈妈带我去打针，妈妈抱着我，你去给我挂号，买好吃的。你们是那么的爱我，那么的担心我，那么的焦急。我深深的感受到你们的爱。后来我<span style=\"line-height:30px;\"><span>6</span></span>岁妈妈生病胃出血，我吓得要死。你们去医院，我在家好担心，我像上天祈求：只要妈妈能平安回来，我愿意被妈妈骂，起码那样她还活着。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　我愿意用我的命去换妈妈的命。这时我的焦急和爸爸妈妈对我生病时的焦急一模一样。后来我上了大学，晚上九点多您给我打电话，说医院，让我马上过去。我当时好害怕，我怕爸爸就这样死了，我知道这是您想见我最后一面。我死活都不去，因为我想如果我不去，您见不到我，您就一定不会走，因为您心里唯一的挂碍就是我，只要见不到我，您就不会死。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-size:11pt;line-height:29.3333px;font-family:微软雅黑, sans-serif;\"><span>　　爸爸一直安静的听着我讲完，他停顿了半天，爸爸生死关头我没有过去，爸爸心里一直有一个结，而这一刻，爸爸忍着泪说了句：十点了，你早点睡吧。电话挂了，那个结消失不见了。</span><span style=\"font-size:15px;line-height:30px;\"><br />\r\n</span><span>　　所以我明白了，从我出生那一刻起，我就拥有着爸妈的爱，长大拥有着身边人的爱，所以唤醒爱，感受爱，传播爱，爱从未离开！感恩这次学分班，感恩黄瑞萍老师及其他辅导师，感恩雪萍沟通师，感恩长春中心负责人徐老师夫妇对我来学分班的支持！以及同学们对我的鼓励！（学员分享）</span></span> \r\n</p>\r\n<br />', '', '', '', '包容,理解,爱', '98', 'Y', 'Y', 'uploads/201309/523a5063ae6b3.jpg', 'uploads/201309/thumb_523a5063ae6b3.jpg', '21', '10', 'Y', '1458743628', '0', 'Y', '0', '', 'Y', '1379553379');
INSERT INTO `wr_post` VALUES ('11', '1', '', '', '如何学好深层沟通：回到生活并坚持', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:2:\"12\";s:4:\"file\";s:51:\"uploads/201603/e1a292e26deb887d7ce76d6e103ea61e.jpg\";}}', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>大家都很想知道怎么快点过分是吧？我就和大家分享一下我的心得，其实平时在私下，我是会经常去复训基因班，和全像亲子课的，这两个课程都是很基础的课程，里面会讲很多东西，很值得细细听，那么业种和疾病单元我是在复训一次圆满班的时候好好学习的，其他单元我都是在心灵基因改造班学，我就在基因班不断的听不断的听，还经常会和同学们相互交流，每考一个单元就去向过了分的学长请教，怎么过的，我下次再做沟通的时候，心里就有个底，这样我成长速度是比较快的，有次在学分班曼莎老师讲沟通被沟通占一半，行动力算一半，我在生活中有去做，把那该做没做的用在学分班上力量是非常强大的，我有上过觉照营和情境卡，我都会将在这里学到的用在我的生活中。</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　比如说，经常觉察自己，我每天擦地的时候，有时候有些角落没清理干净，我就会觉察自己的心态是怎样的，会不会因为它不会被人看见，所以自己也可以忽略它，我就对比自己的内心，我要是把这种心态带到沟通中，是不是我自己觉得不重要的，我就去忽略它？就是看自己的行为模式，看自己的心态。再比如我平时去浇花，是自己主动愿意去浇花的，还是被动的不情愿的去浇花的，带着这些觉知回看自己是非常有效的。</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span>&nbsp;</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span><span>　　</span>原来上学分班前，我设定自己过分的期数，想着5期吧，但会不会太早了，于是我设定自己<span>7</span>期过，后来真的是上了7期。但学分班的过程太痛苦，一直盼着早点能过，可当初为什么要设定是<span>7</span>期呢，所以说心念真的很重要。</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　在上学分班的过程中，有一期是一分都没有过，但在小组六个人的共业场中，震出了自己很深的种子也就是我的“两对父母”我平时都很孝顺他们，对他们特别好，但在这个过程中，我是心不甘情不愿的，内心是有抗拒和愤怒在里面。所以，虽然没有过分，但还有比分数更重要的东西，每期都能在同学身上看到自己，只有在深层沟通中，才能有这样的收获。</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　而对于我，最大的收获就是：我只要看到我自己，每个人都有不同的认知，没有对错，我只要找到我自己就好，看清自己，就不会那么纠结。比如说，我明明觉得自己很好，我对父母很孝顺，可那些所作所为和我想的不一样，明明是很讨厌的人，却还要对着她说好话等等，真的很分裂，太痛苦了，但后来，我接受了自己，人就是不完美的啊，我也是不完美的啊，为什么要这样跟自己过不去呢？</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　当我真的接受了自己，看清了自己，我就不纠结了，而我也发现讨厌的人并不那么讨厌，就是这样的一个过程，认清自己的过程，非常感恩几位辅导师的耐心辅导，感恩同学们这段时间的相互陪伴，这次是真的，不分裂的由衷的感恩！（掌声）</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span>&nbsp;</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　来上学分班的十天，我基本上天天拉肚子，我以为是说来了广州饮食习惯导致的，后来在沟通疾病单元的时候，才发现我的内心是非常恐惧和焦虑的。我在学分班收获了很多，最多的是我和父母的链接，在接触深层沟通之前，我曾经是患有很严重的抑郁症，试过学习很多哲学，国学，包括催眠等很多很多的东西，也曾自杀过，后来接触深层沟通，那时，我也是很拮据的状态，在这里非常感恩福州中心的负责人郑萍在物质和精神上对我的支持！</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　在上完学分班几期后，我回家发现和我父母的沟通模式完全没变，就是他们一说话，我无名火就上来了，我说花了这么多钱为什么一点改变都没有？后来我参加了一场共业沟通，在那场共业场中，对我的触动是非常大的，如果有共业场这样的机会，我鼓励大家多参加这样的共业沟通，在共业场中的疗愈作用是非常大的。</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　我几乎是共业的资深学员，只要一有共业，我都会去参加，我每次都能在共业场中有收获，特别是有一次参加共业之后，我回去和我父母的沟通完全不一样，真的能理解他们的了。我自己有个虎头蛇尾的习性，我性子特别急，做什么事也不容易坚持，但在学分班，我说我要考过八分，给自己一个交代，我人生中没坚持做完什么事，但在这里，但深层沟通的八分我坚持下来了。所以鼓励大家千万不要放弃，深层沟通真的非常好！</span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span style=\"font-family:微软雅黑, sans-serif;\"><span><span>　　那怎么样快速提升呢，其实深层沟通在全国已经是开设了非常多的区中心，我鼓励大家都在就近的中心多参加一些活动，复训，对我们的成长是非常有益的，收获也会非常多。（<span>学员分享</span>）</span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '学员,分享,深层沟通', '213', 'Y', 'Y', 'uploads/201309/523a53d233f15.jpg', 'uploads/201309/thumb_523a53d233f15.jpg', '41', '23', 'Y', '1458743655', '0', 'Y', '0', '', 'Y', '1379554258');
INSERT INTO `wr_post` VALUES ('12', '1', '', '', '面对你认为的不堪，究竟需要多少勇气？', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:2:\"13\";s:4:\"file\";s:51:\"uploads/201603/00619dc7bdd783213b3070da6c7c215b.jpg\";}}', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span>《学分班》是唯识深层沟通技术的学习与掌握，心性淬炼的必经之路。一层一层的抽丝剥茧，对人性的深度剖析，对自我的拷问，对灵魂的净化提升，对深层沟通技术的烂熟于心等等，因为它是如此的痛，又是如此的令人向往，每一场学分班下来，家人们都颇有心得与收获，且来听听看，他们的心声。</span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span></span></span>&nbsp;\r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>1<span>、以前一直去找别人的问题，无明到身处无明还不知道。每天从个案到沟通师，不停地撞出自己内在的种子，撞得好痛。总以为自己已经被资深沟通师沟通过四十八小时了，哪里还会有这么多的问题，甚至上完基因班时，就以为十八个小时我已经够用了。原来还差得远了。这样十天下来，真正认识到这条路才刚刚开始，清理得路，转识成智的路才刚刚开始。第一期的学分班，我踌躇满志而来，可是来到之后，才知道自己该去做什么，自己才刚刚是幼儿园的小小班，既然让自己开始了，就要坚持走下去，勇敢的走下去。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>2<span>、第一次参加学分班，新奇并感动，原来深层沟通，并不仅仅是一种技术，也是一种艺术，与灵的沟通真的会感动到自己。几位辅导师的耐心，精确点评，让我受益匪浅。更加了解何为因果，何为无明种，因缘种和业种，对于前置沟通的目的和如何与个案调频，何为同理，陪伴，耐心。感谢几位辅导师的犀利点评，让我能看到自己的习性和生活模式，以及自己在生活中需要穿越的东西，老师的点评可以协助我更加快速的突破自己，打破包裹在自己身上的铠甲。感谢这十天同学们的陪伴和成长，这些战友的鼓励和支持让我感觉到温暖，心灵之路，让我们一起走。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>3<span>、这次学分班，我对老婆怀孕期间，她的感觉和想法理解了很多，也为自己在那个期间所做的业有了更深的认识。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　对自己的盲点看的更清了，对于细微的感觉往往都略过了，生活中没做到的有了清醒的认识，对于在生活中要如何穿越，也有了计划。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>4<span>、对于本次的课程学习内容，我学会了生活中的角色互换，去了解生活中的角色感受。更了解到自己充当的角色，也学会了怎样去真正的面对自己，去与父母链接，去好好的面对自己的业种，也了解到了自己的强大头脑的判断和分别心。了解到过去自己是生活在处处警备，不去信任别人，本次学习收获太大了。感恩辅导老师的点评与陪伴，感恩同学的陪伴和示现，也感恩自己的勇敢，感受到陪伴，精准的引导，感受到技术的精髓。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>5<span>、这次课程，虽然没有过分，但是还是有很大收获，尤其是宋采蓉老师幽默睿智的点评，让我获益匪浅，让我学到了不仅是技术上的进步，更是心性品质的提升，希望自己借此契机，不断进步，不断成长，在深层沟通的道路上越走越远，我会多多练习，争取早日圆满八分。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span><span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>6<span>、收获太多了，虽然没有过分。但内心充满了力量与感动！清晰了自己许多错误的认知，并要在生活中去改正和落实穿越，内心充满了无限的力量与笃定！感恩学分班，感恩辅导师，感恩我自己！</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　课程中让我看到了人生无小事，凡是都要认真用心对待，也让我看到了心念力量的强大，人生的过程全部围绕着这个心念展开，所以时时刻刻保持正知正见，正见是多么的重要。也进一步见识到了深层沟通的魅力，此生有幸遇到深层沟通，是多么的幸运，好感动！亲爱的自己，加油！</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>7<span>、辅导老师针针见血的指出我的问题，给予我最触动心底的点评！学分班期间，自己的种子被触碰后，状况百出，内心五味杂陈，很难受。老师们耐心的陪伴及勉励给予我最坚定的支持，让我顺利走过，突破自己。面对自己，过往的一次次起心动念，心里忐忑难安，恐惧，害怕的情绪频繁浮现，每次的面对如同画皮妖怪撕下自己美丽脸皮的瞬间，看到自己最阴暗的一面，不敢相信，那是真实的自己，原来我一直是不接纳自己的，不爱自己的。学分班的第八天晚上，我被沟通完之后，怡瑄老师对我说，恭喜你，你之前几十年搭建的舞台被你拆掉了，听过后，我很茫然，不知所措，我不知道该如何面对以后的人生，老师说，你全新的舞台即将搭建，你的目标是什么？我的心声是：爱自己。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　　柯老师鼓励我朝着自己的目标努力，首先要设定具体的短，中期，长期目标，越具体越好，每天去发现家人的优点，每周努力改掉自己的一个习气，这些是我全新的人生功课，我会努力去搭建自己新生的人生舞台。感恩几位辅导师。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>8<span>、我最感动的是，可以看见内在黑暗的自己，敢看自己过去所作所为的起心动念，在课程中，不断看见被人照见自己的内在，深刻地体会到学分班修的不是学分而是修自己的过程。而最让我感动的是同学间相互的陪伴和支持，是成长路上最感动的事。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>9<span>、每位老师都会用自己的方式和大爱陪伴。非常感动！第二期学分班虽然没有过分，但看到自己深度的起心动念，一直以来支撑着自己活下，没有倒下来的力量竟然是报复和怨恨，一直不能接纳内在那个不堪的自己，维护正向的自己，不能接纳也不愿看到负面的自己。今天看到报复和怨恨的黑暗面，原来也是一直在滋养自己，成就今天的自己，突然莫名的感动，了解到了自己当下的功课就是修人生黑暗面，接纳内在认为不堪的自己。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>10<span>、刚进入学分班，最让我感动的是老师的态度，林淑娟老师的娓娓道来，史老师的言简意赅，柯老师的慈母情怀，从他们几位老师的点评，从各个角度来看我自己的生活模式及习性，长这么大，这一刻，我对自己才有所清晰，感恩老师们。你们是我心灵之旅的灯塔，照亮我未来蜕变的方向。感恩老师们，最让我受用的是基本步骤没过的挫败感。这一路走来，都比较顺利，我以为我要做的就能做好，我的字典里没有输字，可这一刻我感受到挫败。才能真正同理到工作中弱者的心情，能感同身受。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>11<span>、老师们对技术点评的耐心、精准、深度和高度。尤其老师点评出我要去面对的，还有我的模式，真的很及时、有用、太感恩了！</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　新生分享时，说我们带着拿分的目的而来，会受到很大的打击。我的确是这样，心太急了。而雅斐老师在主持时，又再次强调，已经到业种单元了，要开始转向面对自己，过去都还是受害者角色，现在要看自己加害者的角色。我看到我自己的模式，老师也点出来是依赖，当没有办法依赖的时候，就报复父母，让自己过得不好，让父母不开心，而且对父母发脾气，嫌弃，怨恨那么多业种，还有许许多多不让别人知道的事。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　也在学分班中因为种子被撞出，对爱的需要和匮乏，我拼了命的抓，到处抓，去和现在已经不太理我的男朋友讲话，拼了命的和妈妈讲话，爸爸，同学，每个人，拼了命地抓，还吃得好多好多，把肚子撑得鼓鼓的，对爱绝望地索求，对爸妈的业种，和所有不想被别人知道的事，就是我接下来要面对的了。同学分享把自己最难过最不想让别人知道的事情说出来，分享说“爆业种”躺在那里，直接说出我是贱人就对了，老师也说，种什么因得什么果，你想要什么样的个案，自己就要当什么样的个案。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>12<span>、这次学习业种单元，在黄怡甄老师的带领下认真学习了六天，从不知和为因果关联，重点在哪，一篇混沌状态，逐渐清晰，能在一件与同学互动的事件中看清真像，意识到问题所在，立刻应用到生活中。最让我感动的是怡甄老师，因为感冒所以嗓子不舒服，可还是不厌其烦为我与同学讲解，感恩老师！</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　也非常感恩采蓉老师。非常详细，非常耐心教导，感觉非常温暖！</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　感恩承爱总中心平台！</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><span><span>13<span>、同学们互为镜子，互相陪伴，老师们使出了浑身解数，引导我们看清自己，知道我们提升技术。每一位同学都是勇敢的灵魂，不管我们几分清醒，几分清明，我们互相陪伴，互相帮助。</span></span></span></span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>当灵魂找到了家，当灵魂回到了肉体，我才对身体有感觉，我才知道感觉是怎么回事，对自己有了全新的了解，当把委屈和愤怒释放掉，我才看到自己造了什么业，当感受到母亲的心，那份苦，那份爱，深深震撼了我，我升起无边的悔恨和忏悔，也因此对同理有了深深的体会，生命的眼睛从此打开，眼睛里开始看到更多的东西，我可以发现这个世界了，我重新活了，最后就是感恩了！感恩！感恩！再感恩！</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>&nbsp;</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>学员分享</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '感恩,分享,咨询', '76', 'Y', 'Y', 'uploads/201309/523a540d7a921.jpg', 'uploads/201309/thumb_523a540d7a921.jpg', '31', '12', 'Y', '1458743673', '0', 'Y', '0', '', 'Y', '1379554317');
INSERT INTO `wr_post` VALUES ('13', '1', '', '', '你是否真正认可过自己？', '', '', '', '', '', '', '', '1', '2', '', '', '', '', '', '<p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>1<span>、跟随采蓉老师前三天的学习中，我理顺了前世今生单元关于事件因果的概念，采蓉老师反复叮嘱我，即使做错了也不要自责，做好自己当下该做的事情就可以了。第二组与雅斐老师学习的过程中，老师着重理清事件因果之后如何具体完整展开事件，非常耐心的指导我。她说：“王</span>X<span>，你很聪明。”这句话让我很开心，第一次找到了被认可的感觉，我由此看到自己一直以来都没认可过自己，一直在试图证明自己给别人看，内在是空的，好可悲。在最后的四天学习中，真涵老师非常耐心且细心的纠正我对于无明种的判断及清理深度，我之前曾很不耐烦且无理的表达了我对于老师点评的不满，心里满是不服气，真涵老师都非常认真耐心的回应我，给我讲解。我看到了自己从未认真对待过自己的学习，在生活中沟通个案也是为了沟通而沟通，根本没办法做到帮助个案清理他们的无明种，我是为了逃避责任，逃避面对自己而来上学分班的，消耗时间的。这本身就是我的业种，真涵老师说从我的沟通中可以看出我一直活在自己的内心世界里，老师让我多去关注身边的人，找回自己。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>2<span>、本次课程最让我感动的是老师们非常有耐心的手把手的，一个细节一个细节的教我们学会深层沟通的技术。进学分班之前，我几乎没有沟通过个案，所以第一次上场是怀着忐忑不安的心情，开始沟通的，甚至指令都是照着书念的。后来，在老师们的悉心指导下，一点一点的开窍，一点一点的领悟，最后竟然能非常熟练自如的通过基本步骤，并且能够引导个案进入深层的回溯状态，帮助个案解开心结。在每天的观摩中，透过其他个案的人生故事也照见了自己的生命，让自己更加清明，特别是文玫老师在教技术的同时，还让我们看清自己的人生模式，了解自己的障碍盲点，鼓励我们在生活中穿越。想要解决自己的人生问题，来学分班真的是一个非常智慧的选择，深深的感恩各位老师，同学们还有所有的工作人员。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>3<span>、感动到辅导师的认真尽责，雅斐老师非常细致认知的讲解，很受用，也让我建立起对这项技术的认知与信心。而唐文玫老师的人文关怀，更是让我从来没有过的感动，自然而又真情流露的表达与指导，更加深了我对生命的认知与敬重。让我从另一个层面审视了自己过往的生命历程，令我终生受益。两位辅导师都非常非常棒！课程的内容也是从未有过的新颖别致，升华灵魂，提升生命。也感恩同学们的敞开与分享，共同见证生命的震撼与感动。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>4<span>、本次课程在文玫老师和雅斐老师组，老师们在技术上很细致的点评，告诉我们该如何做得更好，在心性上更是每个人都详细点评，无论是沟通师还是个案，老师都力求让每个人看清自己的习性，想法，并看清它们如何影响到沟通。那种看到学员被卡住，被障碍而心焦，希望我们成长，穿越的心痛，令我们无比感动，觉得老师视每一个学员都像自己的孩子一样，那份慈爱与大爱，深深顶礼！爱每一位老师，感恩承爱总中心的工作人员，非常辛苦，很体贴，谢谢！</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>5<span>、走进学分班拿到</span>4<span>分以后，停了很久，回家去面对生活中的一切，从无明中走出来，开始醒了。醒来以后，就想看清楚自己的本来面目。走进本期学分班，开始了业种单元的面对过程，好像一生中从来没有如此认真的想看到过往的自己，一天一天，从陌生开始熟悉，改进，修正不足的指令，调整自己。不抱怨，看明白，穿越，接受自己不堪的一面又一面，第八天晚上，学分班下课时，老师讲：怎么啦，你一直在果里绕。这句话触动了我，我这么用心去学习，去改善去面对，怎么还是没通过这个人生单元？晚上回到宿舍，“你在果里绕”这句话一直在心里回响，晚上也没想明白就躺下了。突然被蚊子声吵醒，打还是不打？生命中困惑的模式又出来饿了，盖上不理她，装睡，一次又一次的重复着，从半夜</span>12<span>点开始到凌晨</span>2<span>点，就这样不断的打，和不打，装睡。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>6<span>、最让我感动的是同学们面对自己的勇气，辅导老师真诚且充满爱的点评，生活间隙同学间相互帮助互相支持的友谊，前几天的同组家人带给了我快乐和感动，他们的坦诚和爱深深的感动了我，后四天的家人让我感受到了女人柔弱的一面，让我更能同理女性的心理，更能清明的处理与异性的关系。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>7<span>、感恩辅导师的陪伴，奉献，内心无比的感动，在这条成长的路上，我无明，无知，有时不理解，难理解辅导师的用意，有时心理会有点小埋怨，可是辅导师用他们大海一样的耐心，无比的智慧，至上的包容与教导，默默陪伴，感化着我，让我在碰撞中成长，无知无明的照见了自己内心的晦暗，自私，看见了自己总想把错误归结到别人身上的模式。当我第一次照见时，我好痛，好不想面对，好不想承担，好像运用以前的模式对抗自己和世界，可是我知道我不可以，必须要剥去自己的外壳，虽然痛，但通过便会成长。深深的感谢如此大爱的老师，包容如此不懂事的我，我将一生受用。我会用这份光亮去照见自己的生活，丰满自己的生命，用这份光去看到彼此，每一个无差别的彼此。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>8<span>、我学习了唯识深层沟通的课程后，真正看到了我们的导师用尽了千言万语研究这个技术，就是要唤醒我回家，这个技术就是内观自己，面对自己，找回自己，好好的爱自己，只有自己清明了，觉醒了，才能真正的帮助更多的人。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>我其实一直都没有面对自己，一直外求，三位老师耐心的讲解，让我一次又一次的明白，看到了以往看不到的缺点，各位同学相互交流学习，让我找到了自己人生的方向，在生活中更要严格按照“六不原则”去做人，为自己今生的自己加油，完成自己人生的八分。千言万语只有一句：感谢，感谢，再感谢！</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>9<span>、通过十天的学分班课程，不仅提升了我的技术，更提升了心性，江雅斐老师认真地带着我们前三天，让我们更正了许多错误的点，打稳了基础，对于每个问题也回答得十分详细，文玫老师用她的爱让我们看到了技术之下生命的层面，放下分别心，全然陪伴倾听个案，指令自然出来的那种感动。黄丽香老师用心的点评每个人的心性，让我们看到了自己固执的恶习，除了老师的陪伴与点评，还有同学之间的鼓励与支持，让我感受到了真挚的爱。更要感谢那些出现在我生命中的人，是他们唤醒了我们，让我们回看自己，从中有所感悟，获得智慧，而我自己也通过这些天的沟通学习，化解了对奶奶的恨，了解了自己愤怒的原因，明白饿了只有尊重生命，了解生命，才会发现其实一切都是爱。愿我们能在这条路上一直相伴而行，感恩！</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>10<span>、本次学分班真的获益良多，一方面是学到了基本的沟通技能，明白了沟通中需要特别注意的点，另一方面是个人内心的许多收获，而这才是最重要的，我真正明白了什么是自己生命中的“分”，在课程中，老师不仅修正和指点了我们在沟通技术上的问题，更教我们如何做人做事，教我们如何觉察自己，哪怕是一句话，一个心念，都细细提点，春风化雨，铭感于心。而最让我们觉得受用的是我真正理解和体会到什么是“同理心”，并且学习着如何在生活中去同理家人和周边的人，这将大大提高我的家庭幸福指数，还有很重要的是我明白了今后我要自我清理的方向，明白了今后学习的目标，带着学分班的光明和能量，继续前进。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>11<span>、本次学分班，每天都是自我和别人种子碰撞的过程，从最开始的期盼，到中途的难受，到最后的不舍，每天都在成长，都在觉察自己，看到自己的问题，看到自己究竟是怎么了，因什么点而触碰到了自己。在学分班里，每个人都是自己的镜子，都是自己的一个面向，从他人中看到了自己，当沟通师也好，当个案也好，都是要放松自己，放空自己的大脑，你就是我，我就是你，相互配合，心中把爱给了对方，对方收到的就会是爱，心中把恨给了对方，对方收到的就是恨。万法唯识，一切都是自己心识所创化的，感恩这几天大家的陪伴，感恩老师们的付出，感恩承爱创造这样的平台，让我们可以去成长自己。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>12<span>、这次学分班是我最有感觉的一次，进步自我感觉最大，在林幼琴老师身上看到了一个有智慧的人，洒脱，在面对生活时，洞察到别人外壳包裹下的真正内心的想法，所以才能与亲人相处甚好。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>在江雅斐老师的指导下，真正的理解到什么是顺着个案展开，具体经历，我要的都在里面了，不再去控制个案去到我想要的方向，我设定好的框架，更加能静静的听了，而且学会了如何给小朋友讲更动听的故事了，因为老师就像一位导演，更像一位演员，那么生动的展现给我们看。</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>在李真涵老师的超耐心，超平实有爱的教导下，让我明白了，因为不是我原来理解的那样，前世也更有意义，无法一一说出我到底明白了多少正确的观念和要点，只能用一句，噢，原来是这样。来表达，突然感觉，我明白了。</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span>&nbsp;</span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span>13<span>、这次的课程，最让我感动和受用的是，重新对生命有了新的认识，生命的尊严无时不让自己去面对所经历的事件，婴灵的卡壳，让自己看到无视自己的冷漠，对待生命的草率，让自己羞愧无比，看到孩子对我用生命的警醒，用自己的生命和爱推着自己前进，无限感动。但更加自责，感恩自己的守护灵，让自己去醒觉。</span></span></span>\r\n	</p>\r\n	<p class=\"MsoNormal\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n		<span><span><span>(学员分享)</span></span></span>\r\n	</p>\r\n</p>', '', '', '', '认可,自己,自信', '123', 'N', 'Y', 'uploads/201309/523a545da4d37.jpg', 'uploads/201309/thumb_523a545da4d37.jpg', '23', '9', 'N', '1458743193', '0', 'Y', '0', '', 'Y', '1379554397');
INSERT INTO `wr_post` VALUES ('14', '1', '', '', '案例｜友情为何走到尽头？—人际关系咨询案例', '', '', '', '', '', '', '', '1', '1', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:1:\"9\";s:4:\"file\";s:51:\"uploads/201603/a2e73e29b3c3cdb21d9a378a255085ef.jpg\";}}', '', '', '', '<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<span><span style=\"font-size:20px;line-height:35px;color:#FFFFFF;background-color:#00B050;\"><span>导语</span><span>：</span></span><span><span style=\"font-size:15px;color:#00B050;\"><span>除了在两性与亲子关系的处理上比较容易滋生间隙外，在友情方面，同样会出现另人头疼纠结的地方。无论与朋友之间的相处出了什么问题，我们一如既往遵循一个原则：回看自己。到底我们自己身上有哪些“雷区”那么容易被一触即发？</span></span></span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　这次的来访者是在人际关系上出现问题，想咨询清楚。此个案近来越来越明显地觉察到自己在和女性朋友或同事相处时总是不能长久，而且大多数关系都是由亲密走向分裂，越亲近的朋友最后会闹得越僵。为此，个案非常困惑，希望被沟通看到问题根源是什么。\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　沟通开始后，我问个案最近有什么在意的事情，她说自己最近又和一个女性朋友有些矛盾，那个朋友总是在否定自己，让自己很不舒服，但为了不失去这个朋友就没有把自己的感觉说出来，一再迁就对方，以致于现在一想起她就很生气。\r\n</p>\r\n<p style=\"font-size:medium;text-align:center;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　我请她回到与这个朋友相处的具体场景，她说上次在一起聚会时，她跟大家说话，话说了一半就被朋友打断，感觉朋友看自己的眼神很不屑，自己觉得很憋屈又不好说出来。我让她重复自己的感受，重复数遍之后，她说，我突然想起了我妈妈也是这样对我的。我说，妈妈是怎么对你的？\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n&nbsp;\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　她说，我听到有一个声音，是我小时候妈妈在说，你没有你姐姐漂亮！我请她重复这句话，她重复几遍后开始抽泣，妈妈的更多否定的言语涌现出来，我请她一再重复后，她说我好象看到一个画面，是我在妈妈肚子里的时候，妈妈在跟别人说，要不是姐姐生病夭折了，才不会要这个孩子。\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　在不断重复妈妈的这句话后，个案哭着说，我是多余的！我不如姐姐漂亮！我是替代品！我就是要做好给你们看！在我请她不断重复这些话一段时间后，个案说，我发现我跟我的朋友之间的问题都是因为我在向他们证明我是优秀的，所以总是得理不饶人，总是要跟他们分个高低，因此导致跟朋友的分裂。\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　而这个想要证明的心态来自于对妈妈把自己与姐姐的比较，妈妈的那些话让自己认为自己是不如姐姐的，导致自己对素未谋面的姐姐有着一些怨恨，觉得都是因为姐姐的离世带走了妈妈的爱，让自己活在她的阴影之下。我请她在光中与姐姐对话，她面对姐姐真诚地说，姐姐谢谢你把生的机会留给了我，我是一个独立的人，不是替你活的，我尊重你的选择，也请你相信我会做我自己。\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	&nbsp;\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　说完后，我请她去感受姐姐的感觉，她说姐姐对我只有祝福。并说，姐姐，请放心，从今往后我会好好地做自己，不再证明，不再假装强势，我会很幸福的。个案还说，我也理解了妈妈，自己的第一个女儿不到六岁就夭折了，她的心情是多么难受啊，所以有了我之后不免会想到离开的大女儿，压根儿没想到这些思念会对小女儿造成困扰，\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　妈妈并没有觉得我是多余的，只是自己对大女儿的思念之情导致说出那些话，当个案了解到这些的时候对妈妈的怨言完全没有了，同时看到了妈妈对于孩子深深的爱。说完这些，个案在光中和妈妈姐姐拥抱在一起，全然地打开自己去感受亲人的爱，在这个过程中个案有时说话，有时沉默，无论怎样脸上都洋溢着幸福。良久之后，沟通时间已到，我便适时结束了沟通。\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Hiragino Sans GB W3\', \'Hiragino Sans GB\', Arial, Helvetica, simsun, u5b8bu4f53;color:#3E3E3E;background-color:#FBF9FD;\">\r\n	　　结束沟通后，个案回到当下，睁开眼睛却没有说话，我在旁边安静地坐着，大约十分钟后她望着我说，真的很谢谢你！我终于明白了。看着个案的脸部线条比沟通之前柔和很多，我的心里也为她的收获感到由衷地高兴。（学员分享）\r\n</p>', '', '', '', '案例,友情,人际关系,咨询', '1', 'N', 'Y', 'uploads/201309/523a549bd42fe.jpg', 'uploads/201309/thumb_523a549bd42fe.jpg', '0', '0', 'N', '1458743098', '0', 'Y', '0', '', 'Y', '1379554460');
INSERT INTO `wr_post` VALUES ('15', '1', '', '', '个案｜记一次真实的心灵沟通经历', '', '', '', '', '', '', '', '1', '2', '', '', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#FFFFFF;background-color:#7030A0;\"><span><span>感恩自己的存在！感恩正在看这篇文章的您！</span></span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#0C0C0C;\"><span>　　我是一个很普通的32岁的女人，在两个月之前，和大家一样，过着简单而又平凡的生活，有着一些大大小小的烦恼。但幸运的是，由于儿子幼儿园园长的一次好心推荐，我接触到了<span style=\"color:#7030A0;\">《唯识深层沟通》</span>，从看到它的第一张碟片开始，我就被深深震撼了，原来人生是这样的！原来生活是可以改变的！太多太多以前我不知道的，我不明了的答案在我面前揭晓，只要你相信，只要你去尝试！</span></span><span style=\"font-size:15px;line-height:30px;color:#262626;\"><br />\r\n</span><br />\r\n<span>　　接着，我有生以来一次最执着的决定开始了……我希望自己也去学习这样的沟通技术，于是，我开始了对家人的说服工作，但最初的结果太遗憾了，没有人理解我的想法，也没有人支持我，但我明白自己的选择是对的，可又无法向大家证实，所以我连夜做出了一个惊天大决定，只身一人从外地坐火车赶到广州！来到广州核实情况，看看这件事是子虚乌有还是真有其事。我如愿坐上了去广州的火车，也如愿见到了承爱中心。</span> \r\n</p>\r\n<p style=\"font-size:medium;text-align:center;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　　</span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　</span><span><span><span style=\"line-height:30px;color:#00B050;\">　在那边总共四天的时间里，我亲眼见到来自全国各地预约做沟通的人，她们都是之前预约好的，而且来的人都是朋友相传，因为她们看到了朋友的改变，于是自己也来尝试。见此我又临时做出了一个决定，我也要做“深层沟通”！晚上打电话给先生，他很生气我这样的行为，但我人已在了广州，无奈之下，他最后还是支持我了。现在真的很感激先生的开明，如果没有他，最后我也只能带着遗憾回来，也不可能今天有这么多的领悟跟大家分享。<br />\r\n</span><br />\r\n　　<span style=\"line-height:30px;color:#5F497A;\">在沟通的前一晚，心情很是激动，甚至一晚还醒来好几次。那一刻总算来临了，我和老师一起进入了沟通室，她开始承诺沟通师的职责：请我放心，她不会将我们沟通的内容与我的名字一起向外宣说。然后就进入观想光和水的净化，将心打开，完完全全的溶入自己的内心深处。</span></span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　　我感受到了另一个自己的存在，也就是我的心灵……它慢慢的打开我记忆的盒子，一点一点的将内心深处的痛苦找出来，然后宣泄掉。第一天我就是清理情绪垃圾，到了第二天上午再沟通的时候，我就回到了很久远的记忆，我看到跟先生的姻缘，太神奇了，太不可思议了。我们就在命运的安排下，轮回着。</span> \r\n</p>\r\n<p style=\"font-size:medium;text-align:center;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span></span>&nbsp;\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　　<span style=\"line-height:30px;color:#D99694;\">我知道了今生为什么会碰到先生，为什么会有如此这般的遭遇，原来我现在所承受的种种伤害，是来源于自己以前加诸于别人身上的伤害，为什么父母会这样对我，原因是他们通过自己的示现，来让我体验这个过程，从而更能理解别人的感受和立场。</span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<br />\r\n<span>　　<span style=\"line-height:30px;color:#953734;\">人生如果没有经历痛苦，你就不可能有领悟。原来跟先生的痛苦轮回，也缘于我们最初的约定，是我们自己选择要来体验的……我自己亲眼看到轮回，从内心深处明白生命的意义，世间万物都是平等的，不论是动物还是植物，因为我们曾经都成为过它们。生命不分贵贱，我们应该尊重彼此。</span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<br />\r\n<span>　<span style=\"line-height:30px;color:#E36C09;\">　我明白了，以后该如何跟先生相处，跟婆婆相处，对自己的儿子我不会再用暴力，因为那是解决不了问题的。以前我也知道打小孩不好，可自己不知如何去改变，脾气来的时候，真的控制不了自己。现在我完全了解了，因为当沟通师引导我回忆小时候被父母打的时候，那种痛真的不能承受，而这时再进入我儿子的内心，当他被我打骂时，他心里的感受其实跟我小时候被父母打时的感受是完全一模一样的。</span></span> \r\n</p>\r\n<p style=\"font-size:medium;text-align:center;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span></span>&nbsp;\r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　<span style=\"line-height:30px;color:#0F243E;\">　所以，我知道我错了，错得很离谱！以后，我真的不会再打他，自己解脱了，自己的儿子也解脱了！我明白以前的自己总是觉得很不幸，认为错的都是别人，从不会从内心深处想想自己的问题，所以会抱怨生活，抱怨周遭的一切……</span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　　<span style=\"line-height:30px;color:#17365D;\">现在我知道了，一切的原因在于自己，是我自己障碍住了自己，从没有人跟自己过不去，别人只是我的一面镜子，我没必要怪别人。只要现在的我，改变了自己，别人也会得到转换，这就是蝴蝶效应，此端的改变，彼端必定会改变。</span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<br />\r\n<span><span><span style=\"line-height:30px;color:#17365D;\">　　</span><span style=\"line-height:30px;color:#0070C0;\">我看到了自己将来美好的人生，我相信快乐的钥匙就在自己手上。我不再执着周遭的事物，凡事都有姻缘，刻意的强求，只会物及必反。我很爱自己的先生，我们已经分离得太久，误会得太久太久了，我要好好珍惜今生的缘份，幸福的过一辈子。（广州承爱教育喜悦分享）</span></span></span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n</span> \r\n</p>\r\n<p style=\"font-size:medium;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Î¢ÈíÑÅºÚ, Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#FF0000;\"><span style=\"line-height:32px;color:#7030A0;\"><span>分享智慧·功德无量·随喜转载哦～</span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '心灵沟通、分享', '250', 'Y', 'Y', 'uploads/201309/523a54c220262.jpg', 'uploads/201309/thumb_523a54c220262.jpg', '21', '10', 'Y', '1458742991', '0', 'Y', '0', '', 'Y', '1379554498');
INSERT INTO `wr_post` VALUES ('16', '1', '', '', '让爱流动起来，便会无所畏惧！', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:1:\"8\";s:4:\"file\";s:51:\"uploads/201603/a3be5cef97548a7bbb40083413c8f3cb.jpg\";}}', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>1、最后一场沟通是我4期学分班中我做的最感动的一场沟通。是个案的面对、爱心、忏悔心深深第感动了我。从上学分班开始，我的毛病就是贴不到个案，所以深度感动度都出不来。可是个案身上，我看到了原来我是那么的冰冷，她用她的波动柔软和温暖融化了我，我感受到那种暖暖的爱的流动，我突然觉得我的心和她贴了，我也变柔软了。感恩我的个案，是她的敞开，成就了一场感动全场的沟通。</span> \r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　幼琴老师和湘文老师的耐心、慈悲让我非常感动，老师们的陪伴和支持，是我们前进、成长的助力。感恩！</span> \r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	&nbsp;\r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　2、这期学分班中最深刻的就是在不断地拆自己的包装，装好人，装懂，装无所谓，看到这些“装”的背后是自己小心翼翼，是在意别人对自己的看法，是想证明自己，是自己内在深层的恐惧和自卑，这些都源于自己错误的偏执的认知和执着的想法。封闭自己的心，使她成为一个无尽的黑洞，一个永远无法填满的黑洞，只有自己开启她，让那个本来就充满光充满爱的心流动起来，便会无所畏惧！</span> \r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	&nbsp;\r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　3、感恩老师耐心的辅导、支持、指正，也感恩所有同学的陪伴，照见和鼓励，一开始感觉信心满满，想体验一番一期拿2分的心情。可第一场就糊掉，感觉完全翻转了，这个时候我猛然回看我过往的生活中全部都是指向外面向外看，我才惊觉于是对业种又有了全新的认识和理解，以前一直害怕谈及业种话题，现在发现原来那些不敢让人知道的丑事无非面对就好，而真正的业障原来是我一直沉浸在受害者的角色中而循环返复的伤害着身边所有爱我的人，以一颗封闭的心去感知周围的爱，所有前3场把业种单元做成了基本步骤啊！7场下来逐渐清晰，虽然没过分，但收获超大，因为我终于回看生活了，感谢所有相遇，让我走在重逢自己的路上。</span> \r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	&nbsp;\r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　4、本次的课程中，从中我学到了沟通师就是个案的镜子，就是个案的守护灵。如果自己没有被感动就很难带动个案，且从个案的身上我学习到了对生命的尊重。这次学分班冯禹洁老师带我时，看到我自己的不自信，她说请相信自己，你很棒。让我从自卑的状态中回到了自信，看到了我自己一直在否定自己。从周湘雯老师的身上我学习到了如何去柔软的对待个案，如何去同理个案，如何在沟通中放下对个案的主观判断，一切从个案身上出发，对技术有更新的认识。感恩总中心的心灵顾问团队的付出，感恩老师们的辛勤付出。感恩、感恩，在感恩！</span> \r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	&nbsp;\r\n</p>\r\n<p align=\"left\" style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>　　5、本次的课程内容有许多让我非常感动的地方，第一位带课老师是柯怡瑄老师，她教课的方式是耐心、细致，如对待幼稚班的小朋友带我们，让我们同学们在一种温温暖暖的环境中由一个懵懵懂懂的心灵门外人一脚就踏了进来，在这个心灵的课堂上开始一小步一小步缓慢充满好奇和喜悦第迈向自己内心的心灵之旅。第二位任课老师周湘雯老师，她带课的方式偏重于优雅、温馨、大气，让我们在心灵的旅程中加深加速了对我心灵的认识，同时也感受到了来自自身们阻力和压力及困惑，第三位任课老师是游沛旋老师，她的带课风格是犀利、精辟，偏重于心性为主技术为辅的风格，让自己的灵魂受到了很大的真的震动。在这段时间内，我逐步了解了自身的模式，这种模式让我遭受到了巨大的伤害和冲击，一种模式是失落，就是不断地遭受巨大的失落，就是遇到问题就用逃避问题的方法去解决问题。第二个模式就是挣钱不快乐，挣钱只为了还债，挣更多的钱只要制造一个更大的窟窿去还钱，当下要让自己成为爱，觉悟，生活中改变自己旧有的模式，面对问题，在生活中不断地去除自己的人性，提升自己的心性，感恩各位老师，感恩同学！（学员分享）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '课程,分享,感恩', '4', 'Y', 'Y', 'uploads/201309/523a54f7d9591.jpg', 'uploads/201309/thumb_523a54f7d9591.jpg', '0', '0', 'Y', '1458742979', '0', 'Y', '0', '', 'Y', '1379554552');
INSERT INTO `wr_post` VALUES ('17', '1', '', '', '化解了对妈妈的恨，例假与我重归于好', '', '', '', '', '', '', '', '1', '2', '', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:1:\"7\";s:4:\"file\";s:51:\"uploads/201603/7c91b05ebf429acca6f6abb2499cb166.jpg\";}}', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span style=\"font-size:14px;color:#0070C0;\"><span>导读：疾病的心灵成因中，子宫方面的疾病通常与母亲之间的情结有关，对母亲的怨恨，隐瞒，愤怒，背叛等，种种针对母亲的负面情绪，都会因心灵不堪负荷，以疾病的形式呈现在子宫或者其他身体部位（通常以子宫居多）。但疾病并不可怕，重要的是，你是否能看懂这份特殊的礼物？</span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span style=\"font-size:14px;color:#0070C0;\"><br />\r\n<span></span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span><span><span style=\"line-height:30px;color:#5F497A;\"><span>个案背景：</span></span>是一名28岁的女孩，未婚，微胖而苍白，因为例假的原因来沟通的，例假有时几个月不来，来了要么很少，要么很多，也治疗了很多次，中西医也都试过，疗效不大。这一次例假来了一个月，量多还没有停止，家人的介绍下，她来找我沟通。</span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span>　　对于个案的病症，我告诉个案，深层沟通是带领个案经历自己的事件，面对自己，看清事件的真相，从情绪和疾病的果相上找深层的因，清理了一些心灵创伤，负面情绪减少了，正面积极的东西增加了，在一定程度上身体状态就会有改变。但是，不一定能治愈她哦，该有的医院治疗还是要有的。个案表示明白和理解，说道：“家人有和我讲过，今天我就是来面对自己的。”所以，个案的面对意愿还是很强的。</span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n<span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span><span><span><span style=\"line-height:30px;color:#5F497A;\"><span>沟通现场：</span></span><span style=\"line-height:30px;color:#5F497A;\">按照疾病沟通的步骤，个案开始讲述她发病的过程，我引导她仔细地去经历，慢慢地个案的心灵状态就出来了，个案表示非常讨厌妈妈，妈妈不关心我，妈妈和我感情很疏远，她的心里没有我。于是，我问道：那和妈妈发生了什么特别的事呢？</span></span></span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#5F497A;\"><span>　　个案带慢慢地带着怨和恨开始“控诉”自己的妈妈，讲到高中生病在家，妈妈把好吃的东西都给了奶奶，自己在那干瞪眼，在屋里默默地流泪，又讲到初中，小学，她偷吃家里的东西（家里五个孩子，也不富裕）母亲拿着棍子狠狠地打在她身上，个案先是很愤怒，然后又伤心地哭起来，我引导她将积压下来的情绪释放出来，之后又经历了好几件类似的事件，也把对妈妈的怨和恨不断地释放。</span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span><span><span><span style=\"line-height:30px;color:#5F497A;\">　　<span>之后，在不停往前回溯中，不断的往更早之前寻找，</span></span></span><span><span style=\"line-height:2em;color:#5F497A;\"><span>个案突然很气愤地说起婴儿时期的记忆，在五个月的</span><span>时候，妈妈也是把她送到了奶奶家，自己躺在床上，爸爸妈妈往外走，当个案听到妈妈和爸爸对身边的奶奶说</span><span>“那孩子就拜托妈了，我们走了”，个案满脸痛苦，浑身颤抖，快要崩溃了，她吼道：“妈妈一转身，看都不</span><span>看我一眼啊，妈妈不爱我，妈妈不要我了。”于是，个案看到的，听到的，我都让个案不停地重复，个案情绪</span><span>非常大，痛苦流涕，“这二十多年来，我一直感觉妈妈就是不爱我，我是多余的。”个案又委屈又伤心。</span></span></span></span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#5F497A;\"><span>　　等个案逐渐地平复后，我引导个案去理解妈妈的内心和立场，渐渐地，个案的心打开来，越来越能同理到妈妈的内心和立场，之后，让个案和妈妈在光中进行了对话，原来妈妈那么的爱着她，有很多不得已的苦衷才把孩子送走的。</span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#5F497A;\"><span>　　个案和妈妈相互表达了爱和理解，个案的脸色完全开了，充满了温暖。最后，个案领悟到，自己幼时的分离和伤痛，对妈妈有了误会和怨恨，积累到身体里，子宫不胜负荷，就以例假不规律的方式示现，提醒她要面对和妈妈的关系了，要真正的同理到一个母亲的心。个案非常感恩疾病的示现，让她能够看到事情的真相。</span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:30px;color:#5F497A;\"><span>　　沟通完后，个案充满感慨，原来妈妈是爱我的，这些年来我一直觉得她不爱我，回去就和妈妈好好聊聊。</span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><br />\r\n<span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span><span><span style=\"line-height:30px;color:#5F497A;\"><span>案例分析：</span></span>其实人们很多误解都是不沟通造成的，不断地积累，就成了心结，而情绪和心结不断地积累，就压抑到身体里，久而久之，身体自然就会生病。个案就是把这些年来压抑的情绪充分释放，并且去看清，自然就会轻松很多，并且念头转变，疾病自然会减轻甚至消失。</span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span style=\"font-size:15px;line-height:1.75em;\"><br />\r\n<span></span></span> \r\n</p>\r\n<p style=\"font-size:16px;font-family:\'Helvetica Neue\', Helvetica, \'Hiragino Sans GB\', \'Microsoft YaHei\', Arial, sans-serif;color:#3E3E3E;background-color:#FFFFFF;\">\r\n	<span><span><span><span><span style=\"line-height:30px;color:#5F497A;\"><span><span style=\"line-height:1.75em;\">个案回访：</span></span></span><span style=\"line-height:1.75em;\">过了半个月，我接到个案的电话，个案很开心的说，例假在前几天就结束了，现在和妈妈谈过之后，妈妈对她非常好，个案非常幸福。祝福她！如果每个人，尤其是父母能及时地和孩子沟通，同时也适时地表达出自己的爱，那么亲子关系就会和谐很多哦。愿每个人都能了解疾病发生的原因，去除内心深处的挂碍和压抑，预防疾病，疗愈疾病，让我们拥有健康的身体，拥有幸福美好的生活。<span style=\"line-height:1.75em;color:#7030A0;\"><span>（学员分享）</span></span></span></span></span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '化解,妈妈,恨,重归于好', '111', 'Y', 'Y', 'uploads/201309/523a554c026c4.jpg', 'uploads/201309/thumb_523a554c026c4.jpg', '9', '20', 'Y', '1458742970', '0', 'Y', '0', '', 'Y', '1379554636');
INSERT INTO `wr_post` VALUES ('18', '1', '', '', '最快最高效的自我疗愈方式 学员心得分享', '——2015年12月11-14日《心灵基因改造班》学员心得分享', '', 'font-weight:bold;', 'a:1:{s:4:\"bold\";s:1:\"Y\";}', '', '', '', '1', '2', '学员分享', 'a:1:{i:0;a:2:{s:6:\"fileId\";s:1:\"6\";s:4:\"file\";s:51:\"uploads/201603/28dbfbbb616a980ef934f36fea6e0b0a.jpg\";}}', '', '', '', '<p>\r\n	<br />\r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span><b>2015/12/11-14 《</b><b>心灵基因改造班》&nbsp;</b><b>学员心得分享</b></span> \r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<b><span></span></b>&nbsp;\r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>✎ 学员一：心灵基因班的学习，我之前从未真正信过佛，及一切宗教，但我感受到了心的悸动，震撼，灵魂的觉醒，蜕变。宇宙，物质，时间，空间，因缘等，全新的观念，一下子唤醒了我，我想改变过去那个固执，人性，自私，封闭的我，发自内心的去爱我的亲人们，朋友们，以及我生命中经过的每一个人。此时此刻，所有的语言都无力表达出我步入深层沟通，上心灵基因改造班所感悟到的恩惠，并深深的感谢林老师，及带课的田青的老师，从她的身上，我感受到了超凡的魅力，感恩！</span> \r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span></span>&nbsp;\r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>✎ 学员二：通过这三天的课程，首先很感恩林显宗老师，他讲自己发现的宇宙的奥秘用更科学的方式告诉了我们，带领我们走向觉醒。让迷失方向的灵魂找到回家的路，这个技术让我吃惊，我们真的太有福报了。曾经在生命的旅途中，无明的走入痛苦，烦恼之中，自己怎么也走不出来，有时候我也会问老天，为什么我会是这样的命运？觉得老天非常不公平，今天我才真正明白，这都是我自己要的，自己去创化的！从今以后，我再也不愿意这样活着，我要活出力量，做自己生命的主宰。在此之前我有了解过“万法唯识”却不得要领，在课程中，完全清晰的明白了“唯识”的概念，也切身体会到“因果观”，只要做了伤害别人的事情，良心就会不安，接下来就会创化一些事件，让自己更不痛快。更惊喜的是，明白了生与死，不会再那么惶恐害怕。这些课程真的非常有智慧，感恩这一切！</span> \r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span></span>&nbsp;\r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>✎ 学员三：深层沟通真是一项神奇而伟大的技术，在短短的几个小时的沟通里，让个案内观到让自己挂碍的事件，挂碍的因果，从原来的三度空间里，一下子要跑到四度空间，找出事件的前因后果，让个案自己转识成智。这是目前我所接触到的，最快，最好，最有效的自我疗愈的方法，也是帮助众生解脱，自在的最快速有效的方法，深层沟通的事业，真是功德无量。</span> \r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span></span>&nbsp;\r\n</p>\r\n<p style=\"font-size:15px;font-family:宋体;background-color:#FDFEFF;\">\r\n	<span>✎ 学员四：通过学习唯识深层沟通，我真的柔软了自己的心，打开了自己的心。也通过集体忏悔，减轻了一直以来的内疚，这是一种发自内心的真诚的忏悔，以前无法面对自己，看不起自己，讨厌自己，通过学习，知道了种子的作用力，也知道以后在人生道路上不要再去造业，也不给别人种种子。感恩老师们的讲解和陪伴，从你们身上我看到了什么是真正的慈悲，真正的耐心，爱心，也懂得了倾听的重要性，陪伴的重要。现在也能好好的面对生死，珍惜生命，珍惜身边拥有的一切万物。&nbsp;</span><span>（学员分享）</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>', '', '', '', '分享,心灵基因,改造', '353', 'N', 'Y', 'uploads/201603/5a6d9813a29a99474e4e43817195bca7.jpg', 'uploads/201603/thumb_5a6d9813a29a99474e4e43817195bca7.jpg', '20', '10', 'N', '1458741813', '0', 'Y', '0', '', 'Y', '1379554696');

-- ----------------------------
-- Table structure for wr_post_2tags
-- ----------------------------
DROP TABLE IF EXISTS `wr_post_2tags`;
CREATE TABLE `wr_post_2tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题ID',
  `tag_name` char(30) NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='内容关联标签';

-- ----------------------------
-- Records of wr_post_2tags
-- ----------------------------
INSERT INTO `wr_post_2tags` VALUES ('39', '17', '妈妈');
INSERT INTO `wr_post_2tags` VALUES ('38', '17', '化解');
INSERT INTO `wr_post_2tags` VALUES ('66', '8', '教育');
INSERT INTO `wr_post_2tags` VALUES ('65', '8', '亲子');
INSERT INTO `wr_post_2tags` VALUES ('62', '9', '童年');
INSERT INTO `wr_post_2tags` VALUES ('61', '10', '爱');
INSERT INTO `wr_post_2tags` VALUES ('60', '10', '理解');
INSERT INTO `wr_post_2tags` VALUES ('59', '10', '包容');
INSERT INTO `wr_post_2tags` VALUES ('58', '11', '深层沟通');
INSERT INTO `wr_post_2tags` VALUES ('57', '11', '分享');
INSERT INTO `wr_post_2tags` VALUES ('56', '11', '学员');
INSERT INTO `wr_post_2tags` VALUES ('55', '12', '咨询');
INSERT INTO `wr_post_2tags` VALUES ('54', '12', '分享');
INSERT INTO `wr_post_2tags` VALUES ('53', '12', '感恩');
INSERT INTO `wr_post_2tags` VALUES ('63', '9', '至亲');
INSERT INTO `wr_post_2tags` VALUES ('52', '13', '自信');
INSERT INTO `wr_post_2tags` VALUES ('51', '13', '自己');
INSERT INTO `wr_post_2tags` VALUES ('50', '13', '认可');
INSERT INTO `wr_post_2tags` VALUES ('47', '14', '友情');
INSERT INTO `wr_post_2tags` VALUES ('46', '14', '案例');
INSERT INTO `wr_post_2tags` VALUES ('45', '15', '心灵沟通、分享');
INSERT INTO `wr_post_2tags` VALUES ('49', '14', '咨询');
INSERT INTO `wr_post_2tags` VALUES ('48', '14', '人际关系');
INSERT INTO `wr_post_2tags` VALUES ('44', '16', '感恩');
INSERT INTO `wr_post_2tags` VALUES ('43', '16', '分享');
INSERT INTO `wr_post_2tags` VALUES ('42', '16', '课程');
INSERT INTO `wr_post_2tags` VALUES ('64', '9', '分离');
INSERT INTO `wr_post_2tags` VALUES ('41', '17', '重归于好');
INSERT INTO `wr_post_2tags` VALUES ('40', '17', '恨');
INSERT INTO `wr_post_2tags` VALUES ('35', '18', '分享');
INSERT INTO `wr_post_2tags` VALUES ('36', '18', '心灵基因');
INSERT INTO `wr_post_2tags` VALUES ('37', '18', '改造');
INSERT INTO `wr_post_2tags` VALUES ('67', '8', '案例');

-- ----------------------------
-- Table structure for wr_post_album
-- ----------------------------
DROP TABLE IF EXISTS `wr_post_album`;
CREATE TABLE `wr_post_album` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '内容编号',
  `catalog` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`),
  KEY `album` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片相册';

-- ----------------------------
-- Records of wr_post_album
-- ----------------------------

-- ----------------------------
-- Table structure for wr_post_comment
-- ----------------------------
DROP TABLE IF EXISTS `wr_post_comment`;
CREATE TABLE `wr_post_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `post_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '标题id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(60) NOT NULL DEFAULT 'guest' COMMENT '用户名',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `content` text NOT NULL COMMENT '评论内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `status_answer` enum('Y','N') NOT NULL DEFAULT 'N',
  `answer_content` text COMMENT '回复内容',
  `client_ip` char(5) NOT NULL DEFAULT '127' COMMENT '评论ip',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻评论';

-- ----------------------------
-- Records of wr_post_comment
-- ----------------------------

-- ----------------------------
-- Table structure for wr_post_tags
-- ----------------------------
DROP TABLE IF EXISTS `wr_post_tags`;
CREATE TABLE `wr_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分类',
  `tag_name` char(30) NOT NULL COMMENT 'tag名称',
  `data_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数据总数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='新闻标签';

-- ----------------------------
-- Records of wr_post_tags
-- ----------------------------
INSERT INTO `wr_post_tags` VALUES ('1', '5', '贵族养生', '1', '1379546108');
INSERT INTO `wr_post_tags` VALUES ('2', '5', '休闲放松', '1', '1379546108');
INSERT INTO `wr_post_tags` VALUES ('3', '5', '麦乐迪', '1', '1379546248');
INSERT INTO `wr_post_tags` VALUES ('4', '5', 'KTV', '1', '1379546248');
INSERT INTO `wr_post_tags` VALUES ('5', '2', 'iOS7', '1', '1379546869');
INSERT INTO `wr_post_tags` VALUES ('6', '2', '普通用户', '1', '1379546869');
INSERT INTO `wr_post_tags` VALUES ('7', '2', '全新图标设计', '1', '1379546869');
INSERT INTO `wr_post_tags` VALUES ('61', '1', '教育', '1', '1458743809');
INSERT INTO `wr_post_tags` VALUES ('60', '1', '亲子', '1', '1458743809');
INSERT INTO `wr_post_tags` VALUES ('57', '1', '童年', '1', '1458743588');
INSERT INTO `wr_post_tags` VALUES ('56', '1', '爱', '1', '1458743465');
INSERT INTO `wr_post_tags` VALUES ('55', '1', '理解', '1', '1458743464');
INSERT INTO `wr_post_tags` VALUES ('54', '1', '包容', '1', '1458743464');
INSERT INTO `wr_post_tags` VALUES ('58', '1', '至亲', '1', '1458743588');
INSERT INTO `wr_post_tags` VALUES ('53', '1', '深层沟通', '1', '1458743362');
INSERT INTO `wr_post_tags` VALUES ('52', '1', '学员', '1', '1458743362');
INSERT INTO `wr_post_tags` VALUES ('59', '1', '分离', '1', '1458743588');
INSERT INTO `wr_post_tags` VALUES ('51', '1', '自信', '1', '1458743194');
INSERT INTO `wr_post_tags` VALUES ('50', '1', '自己', '1', '1458743193');
INSERT INTO `wr_post_tags` VALUES ('49', '1', '认可', '1', '1458743193');
INSERT INTO `wr_post_tags` VALUES ('46', '1', '友情', '1', '1458743090');
INSERT INTO `wr_post_tags` VALUES ('45', '1', '案例', '2', '1458743090');
INSERT INTO `wr_post_tags` VALUES ('44', '1', '心灵沟通、分享', '1', '1458742943');
INSERT INTO `wr_post_tags` VALUES ('48', '1', '咨询', '2', '1458743090');
INSERT INTO `wr_post_tags` VALUES ('47', '1', '人际关系', '1', '1458743090');
INSERT INTO `wr_post_tags` VALUES ('43', '1', '感恩', '2', '1458742684');
INSERT INTO `wr_post_tags` VALUES ('42', '1', '课程', '1', '1458742684');
INSERT INTO `wr_post_tags` VALUES ('40', '1', '恨', '1', '1458742310');
INSERT INTO `wr_post_tags` VALUES ('39', '1', '妈妈', '1', '1458742310');
INSERT INTO `wr_post_tags` VALUES ('38', '1', '化解', '1', '1458742310');
INSERT INTO `wr_post_tags` VALUES ('35', '1', '分享', '4', '1458741703');
INSERT INTO `wr_post_tags` VALUES ('36', '1', '心灵基因', '1', '1458741703');
INSERT INTO `wr_post_tags` VALUES ('37', '1', '改造', '1', '1458741703');
INSERT INTO `wr_post_tags` VALUES ('41', '1', '重归于好', '1', '1458742310');

-- ----------------------------
-- Table structure for wr_question
-- ----------------------------
DROP TABLE IF EXISTS `wr_question`;
CREATE TABLE `wr_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `scope` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '所属分类',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `realname` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '邮箱',
  `telephone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `question` text NOT NULL COMMENT '内容',
  `contact_other` varchar(100) NOT NULL DEFAULT '' COMMENT '其它联系方式',
  `answer_status` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT '回复状态',
  `answer_content` text COMMENT '回复内容',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客服';

-- ----------------------------
-- Records of wr_question
-- ----------------------------
INSERT INTO `wr_question` VALUES ('1', '0', '0', 'leo', '刘洋', '1960009001@qq.com', '18678825257', '我来了给你留言', '', 'N', '谢谢留言', 'Y', '1379546643');

-- ----------------------------
-- Table structure for wr_special
-- ----------------------------
DROP TABLE IF EXISTS `wr_special`;
CREATE TABLE `wr_special` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `title_alias` varchar(255) NOT NULL DEFAULT '' COMMENT '标题别名',
  `intro` text COMMENT '描述',
  `content` text COMMENT '详细介绍',
  `attach_thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '附件缩略图',
  `attach_file` varchar(255) NOT NULL DEFAULT '' COMMENT '附件名称',
  `seo_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo标题',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo关键字',
  `seo_description` varchar(255) NOT NULL DEFAULT '' COMMENT 'seo描述',
  `template` varchar(50) NOT NULL DEFAULT '' COMMENT '模板',
  `status_is` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '状态',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '入库时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='专题';

-- ----------------------------
-- Records of wr_special
-- ----------------------------
INSERT INTO `wr_special` VALUES ('1', '新闻发布', 'test1', '新闻发布', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	新闻发布\r\n</p>', 'uploads/201309/thumb_523a37e62e9a8.jpg', 'uploads/201309/523a37e62e9a8.jpg', '', '', '', '', 'Y', '0', '4', '1379547110');
INSERT INTO `wr_special` VALUES ('2', '学员分享', 'test2', '学员分享', '<p style=\"font-size:16px;color:#333333;font-family:微软雅黑, Tahoma, Verdana, 宋体;background-color:#FFFFFF;text-indent:2em;\">\r\n	学员分享\r\n</p>', 'uploads/201309/thumb_523a381039dc7.jpg', 'uploads/201309/523a381039dc7.jpg', '', '', '', '', 'Y', '0', '23', '1379547152');

-- ----------------------------
-- Table structure for wr_upload
-- ----------------------------
DROP TABLE IF EXISTS `wr_upload`;
CREATE TABLE `wr_upload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户名',
  `scope` enum('content','image') NOT NULL DEFAULT 'content' COMMENT '范围',
  `folder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '文件夹',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '原始文件名称',
  `file_name` char(100) NOT NULL DEFAULT '' COMMENT '带路径文件名',
  `thumb_name` varbinary(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `save_path` varchar(100) NOT NULL DEFAULT '' COMMENT '保存路径',
  `save_name` varchar(100) NOT NULL DEFAULT '' COMMENT '保存文件名不带路径',
  `hash` char(32) NOT NULL DEFAULT '' COMMENT 'hash',
  `file_ext` char(5) NOT NULL DEFAULT 'jpg' COMMENT '扩展名称',
  `file_mime` varchar(50) NOT NULL DEFAULT '' COMMENT '文件头信息',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `down_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `access` varchar(255) NOT NULL DEFAULT '' COMMENT '权限控制',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='附件';

-- ----------------------------
-- Records of wr_upload
-- ----------------------------
INSERT INTO `wr_upload` VALUES ('1', '0', 'content', '0', '1f178a82b9014a90244a438dab773912b31bee8e.jpg', 'uploads/201309/523a32fdf1f07.jpg', '', 'uploads/201309/', '523a32fdf1f07.jpg', 'd0dcf27f87ec506ee9000740455782b3', 'jpg', 'image/jpeg', '399821', '0', '', '1379545854');
INSERT INTO `wr_upload` VALUES ('2', '0', 'content', '0', 'QQ截图20130919070700.jpg', 'uploads/201309/523a374c27077.jpg', '', 'uploads/201309/', '523a374c27077.jpg', '377780c977f89e6ef9b571eb0cc28925', 'jpg', 'image/jpeg', '45836', '0', '', '1379546956');
INSERT INTO `wr_upload` VALUES ('3', '0', 'content', '0', 'QQ截图20130919070700.jpg', 'uploads/201309/523a3780beb37.jpg', '', 'uploads/201309/', '523a3780beb37.jpg', '3ee5075e0b22e43c779138733c84da76', 'jpg', 'image/jpeg', '74073', '0', '', '1379547008');
INSERT INTO `wr_upload` VALUES ('4', '0', 'content', '0', 'QQ截图20130919070700.jpg', 'uploads/201309/523a380d1d4c0.jpg', '', 'uploads/201309/', '523a380d1d4c0.jpg', 'b5977602ec0d3f902ffec8520f88bbde', 'jpg', 'image/jpeg', '40911', '0', '', '1379547149');
INSERT INTO `wr_upload` VALUES ('5', '0', 'content', '0', 'QQ截图20130919070700.jpg', 'uploads/201309/523a53bd105ee.jpg', '', 'uploads/201309/', '523a53bd105ee.jpg', 'eff9746a7d60f290070df3e30f493d98', 'jpg', 'image/jpeg', '25761', '0', '', '1379554237');
INSERT INTO `wr_upload` VALUES ('6', '0', 'content', '0', '分享1.jpg', 'uploads/201603/28dbfbbb616a980ef934f36fea6e0b0a.jpg', '', 'uploads/201603/', '28dbfbbb616a980ef934f36fea6e0b0a.jpg', '8dee7f854e29013dd77f2f22eb4c6dd4', 'jpg', 'application/octet-stream', '139242', '0', '', '1458741663');
INSERT INTO `wr_upload` VALUES ('7', '0', 'content', '0', '分享2.jpg', 'uploads/201603/7c91b05ebf429acca6f6abb2499cb166.jpg', '', 'uploads/201603/', '7c91b05ebf429acca6f6abb2499cb166.jpg', 'c6c619cbeff0c74a2ca45b84c1f58158', 'jpg', 'application/octet-stream', '164779', '0', '', '1458742245');
INSERT INTO `wr_upload` VALUES ('8', '0', 'content', '0', '分享3.jpg', 'uploads/201603/a3be5cef97548a7bbb40083413c8f3cb.jpg', '', 'uploads/201603/', 'a3be5cef97548a7bbb40083413c8f3cb.jpg', '29e94c5470093940e12d6f66820cad1f', 'jpg', 'application/octet-stream', '156528', '0', '', '1458742673');
INSERT INTO `wr_upload` VALUES ('9', '0', 'content', '0', '分享5.jpg', 'uploads/201603/a2e73e29b3c3cdb21d9a378a255085ef.jpg', '', 'uploads/201603/', 'a2e73e29b3c3cdb21d9a378a255085ef.jpg', 'ed5157d063ea7fd017202b0a2e3c798b', 'jpg', 'application/octet-stream', '93750', '0', '', '1458743070');
INSERT INTO `wr_upload` VALUES ('10', '0', 'content', '0', '分享8.jpg', 'uploads/201603/5f2a279c29f1614a6a5ee15f0428b91a.jpg', '', 'uploads/201603/', '5f2a279c29f1614a6a5ee15f0428b91a.jpg', '4c8a453e8d9ff9ac076bb83cea76263b', 'jpg', 'application/octet-stream', '89260', '0', '', '1458743605');
INSERT INTO `wr_upload` VALUES ('11', '0', 'content', '0', '分享7.jpg', 'uploads/201603/bb32cc90b9b9db137c195db3f8d6dc75.jpg', '', 'uploads/201603/', 'bb32cc90b9b9db137c195db3f8d6dc75.jpg', 'a53c7cd97fde77fd41a7bd3b815bffca', 'jpg', 'application/octet-stream', '97819', '0', '', '1458743624');
INSERT INTO `wr_upload` VALUES ('12', '0', 'content', '0', '分享6.jpg', 'uploads/201603/e1a292e26deb887d7ce76d6e103ea61e.jpg', '', 'uploads/201603/', 'e1a292e26deb887d7ce76d6e103ea61e.jpg', 'c5f9d3cb59b9b317fc90490122d30539', 'jpg', 'application/octet-stream', '74156', '0', '', '1458743650');
INSERT INTO `wr_upload` VALUES ('13', '0', 'content', '0', '分享5.jpg', 'uploads/201603/00619dc7bdd783213b3070da6c7c215b.jpg', '', 'uploads/201603/', '00619dc7bdd783213b3070da6c7c215b.jpg', 'ed5157d063ea7fd017202b0a2e3c798b', 'jpg', 'application/octet-stream', '93750', '0', '', '1458743670');
INSERT INTO `wr_upload` VALUES ('14', '0', 'content', '0', '分享9.jpg', 'uploads/201603/2306dce41fbcccb80c1dd2e5808c2922.jpg', '', 'uploads/201603/', '2306dce41fbcccb80c1dd2e5808c2922.jpg', '6fcf9af364bd315782f0560b1bedd3d8', 'jpg', 'application/octet-stream', '66530', '0', '', '1458743785');
INSERT INTO `wr_upload` VALUES ('15', '0', 'content', '0', '分享9.jpg', 'uploads/201603/18e6604b185c4c2776ee45e020729bc4.jpg', '', 'uploads/201603/', '18e6604b185c4c2776ee45e020729bc4.jpg', '6fcf9af364bd315782f0560b1bedd3d8', 'jpg', 'image/jpeg', '66530', '0', '', '1458745990');
INSERT INTO `wr_upload` VALUES ('16', '0', 'content', '0', 's_logo.png', 'uploads/201603/2de6a9e3de6bd526a5c444bec23aaa41.png', '', 'uploads/201603/', '2de6a9e3de6bd526a5c444bec23aaa41.png', '1f2c610b942371b26d5b2bc6e95fe007', 'png', 'image/png', '2302', '0', '', '1458746044');
INSERT INTO `wr_upload` VALUES ('17', '0', 'content', '0', 's_logo.png', 'uploads/201603/5b0da90f1f08dda6f70f0aaa1960e5b3.png', '', 'uploads/201603/', '5b0da90f1f08dda6f70f0aaa1960e5b3.png', 'e99636a5e26118a3c33dc82165df29f9', 'png', 'image/png', '9219', '0', '', '1458746180');
INSERT INTO `wr_upload` VALUES ('18', '0', 'content', '0', 'contactus.jpg', 'uploads/201603/500bd75ca5fbfaa7857ffd1a2e3976db.jpg', '', 'uploads/201603/', '500bd75ca5fbfaa7857ffd1a2e3976db.jpg', '53d5cbec1305a527766bc7749f4cdb78', 'jpg', 'image/jpeg', '32348', '0', '', '1458746989');
