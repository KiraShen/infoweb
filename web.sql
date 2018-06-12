/*
 Navicat Premium Data Transfer

 Source Server         : loacl
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost
 Source Database       : web

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 07/17/2017 10:36:35 AM
*/

-- SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
--  Table structure for `cms_aboutus`
-- ----------------------------
DROP TABLE IF EXISTS `cms_aboutus`;
CREATE TABLE `cms_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '第三方文章地址',
  `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `cms_aboutus_img`
-- ----------------------------
DROP TABLE IF EXISTS `cms_aboutus_img`;
CREATE TABLE `cms_aboutus_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `cms_about_leader`
-- ----------------------------
DROP TABLE IF EXISTS `cms_abouts`;
CREATE TABLE `cms_abouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `cms_about_leader`
-- ----------------------------
DROP TABLE IF EXISTS `cms_about_leader`;
CREATE TABLE `cms_about_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `message` varchar(255) DEFAULT NULL COMMENT '寄语',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `position` varchar(32) NOT NULL COMMENT '职位',
  `content` text NOT NULL COMMENT '内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_about_leader`
-- ----------------------------
BEGIN;
INSERT INTO `cms_about_leader` VALUES ('10', '不错的领导ss', 'localhost/static/upload/34f6398bebe03cab/5ec058e64a3f6d31.jpg', '这是简洁', '这是寄语', '黄老板', '董事长', '<p>这是文章</p>', '1023344131', null, '1'), ('11', '很不错的老板ss', 'localhost/static/upload/ff5c8c7f50eafa69/95d44a8eb074d2ab.jpg', '出生于湖州搜索', '加油大家', '顾老板', '董事长', '<p>问问</p><p>我们</p><p>你好</p>', '1500213104', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_about_team`
-- ----------------------------
DROP TABLE IF EXISTS `cms_about_team`;
CREATE TABLE `cms_about_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `position` varchar(32) NOT NULL COMMENT '职位',
  `email` varchar(32) NOT NULL COMMENT '邮箱',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_about_team`
-- ----------------------------


-- ----------------------------
--  Table structure for `cms_about_word`
-- ----------------------------
DROP TABLE IF EXISTS `cms_about_word`;
CREATE TABLE `cms_about_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `word_id` int(11) NOT NULL COMMENT '分类',
  `word` varchar(512) DEFAULT NULL COMMENT '简介',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_about_word`
-- ----------------------------


-- ----------------------------
--  Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '文章分类',
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '第三方文章地址',
  `content` text NOT NULL COMMENT '文章内容',
  `seo_title` varchar(64) DEFAULT NULL COMMENT 'seo标题',
  `seo_keywords` varchar(128) DEFAULT NULL COMMENT 'seo关键词',
  `seo_description` varchar(255) DEFAULT NULL COMMENT 'seo描述',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_article`
-- ----------------------------
BEGIN;
INSERT INTO `cms_article` VALUES ('17', '1', 'en', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', '我打开回答啊打击哦的哈', '/news-17', '<p>hhhhhh</p>', null, null, null, '1500209689', null, '1'), ('18', '1', '阿斯顿', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', '好不错五男二女啊安康的哈', '/news-18', '<p>嗡嗡嗡</p>', null, null, null, '1500209718', null, '1'), ('19', '1', '可以很好', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', 'qqqqqqqqqqqqqqqqq出差出差出差出差', '', '<p>萨达awda</p><p>as</p>', null, null, null, '1500209752', null, '1'), ('2', '1', '如何选择网站关键词', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">如何选择网站关键词</pre><p><br/></p>', null, null, null, '1497407057', null, '1'), ('13', '2', '解密黑帽SEO蜘蛛池 实现搜索引擎霸屏', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">解密黑帽SEO蜘蛛池&nbsp;实现搜索引擎霸屏</pre><p><br/></p>', null, null, null, '1497407057', null, '1'), ('14', '2', '怎样引导社区的评论氛围', 'localhost/static/upload/623458fddd6ef23d/75b782dcc1fdf01b.jpg', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">怎样引导社区的评论氛围</pre><p><br/></p>', null, null, null, '1497407057', null, '1'), ('16', '1', 'dsads', '', '', '', '<p>dsada</p>', null, null, null, '1497407057', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_cate`;
CREATE TABLE `cms_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '文章分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_article_cate`
-- ----------------------------
BEGIN;
INSERT INTO `cms_article_cate` VALUES ('1', '平台新闻', '0', '1'), ('2', '行业资讯', '0', '1');
COMMIT;


-- ----------------------------
--  Table structure for `cms_config`
-- ----------------------------
DROP TABLE IF EXISTS `cms_config`;
CREATE TABLE `cms_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `title` varchar(100) DEFAULT NULL,
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `cms_config`
-- ----------------------------
BEGIN;
INSERT INTO `cms_config` VALUES ('10', 'web_name', '网址名称', '浙江弗达洲电子商务有限公司', null), ('11', 'number', '电话', '4004008888', null), ('12', 'email', '邮箱', 'fzd@mail.com', null), ('13', 'address', '地址', '湖州市吴兴区区府路创业园区A-1801', null)，('14', 'aboutus', '关于我们', '浙江弗达洲电子商务有限公司是一个公司', null);
COMMIT;

-- ----------------------------
--  Table structure for `cms_joinus`
-- ----------------------------
DROP TABLE IF EXISTS `cms_joinus`;
CREATE TABLE `cms_joinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_joinus`
-- ----------------------------
BEGIN;
INSERT INTO `cms_joinus` VALUES ('10', '前端工程师', null, '<h5 style=\"box-sizing: border-box; margin: 0px 0px 1.6rem; font-size: 16px; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">职位描述：</h5><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">本科及以上，3-5年开发经验；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">熟练掌握JS原生代码开发，对原型编程有深入的理解；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">熟练使用过至少一种前端框架（如:Angularjs/reactjs/backbonejs/emberjs/knockoutjs）；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">熟悉模块化开发思路，实际使用过至少一种框架（如：requirejs/seajs）；</p><h5 style=\"box-sizing: border-box; margin: 2em 0px 1.6rem; font-size: 16px; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">有下列经验者优先：</h5><ul style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; padding-left: 2em; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\" class=\" list-paddingleft-2\"><li><p>计算机相关专业统招本科以上学历；</p></li><li><p>具有Reactjs实际开发经验；</p></li><li><p>具有Nodejs后端开发经验；</p></li><li><p>具有Nodejs后端开发经验；</p></li><li><p>具有较好的UI设计能力；</p></li><li><p>有个人作品可以演示；；</p></li></ul><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">面试时请带个人笔记本或硬盘，在面试过程中向产品负责人展示你的产品，或你写的代码。</p><h5 style=\"box-sizing: border-box; margin: 2em 0px 1.6rem; font-size: 16px; color: rgb(51, 51, 51); font-family: &quot;Segoe UI&quot;, &quot;Lucida Grande&quot;, Helvetica, Arial, &quot;Microsoft YaHei&quot;, FreeSans, Arimo, &quot;Droid Sans&quot;, &quot;wenquanyi micro hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Hiragino Sans GB W3&quot;, FontAwesome, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">请将您的简历发送至：fdz@mail.com</h5><p><br/></p>', '0', null, '1'), ('11', '产品经理', null, '<h5 style=\"box-sizing: border-box; margin: 0px 0px 1.6rem; font-size: 16px; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">职位描述：</h5><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">熟练应用各种市场分析工具及产品原型工具，能够撰写和输出规范的产品白皮书；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">有产品策划和产品管理思维，能够撰写市场调研、市场分析、可行性分析报告等；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">具备良好的沟通协调能力、系统性思维和创新意识；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">具有产品需求、归纳能力、市场敏觉洞察能力；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">经历过完整的企业级应用产品生命周期；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">有TOB企业5年以上产品经理工作经验；</p><p style=\"box-sizing: border-box; margin-top: 1.6rem; margin-bottom: 1.6rem; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">有前端相关技术背景，具有产品架构师能力者优先考虑。</p><h5 style=\"box-sizing: border-box; margin: 2em 0px 1.6rem; font-size: 16px; color: rgb(51, 51, 51); font-family: \" segoe=\"\" lucida=\"\" microsoft=\"\" droid=\"\" wenquanyi=\"\" micro=\"\" hiragino=\"\" sans=\"\" gb=\"\" white-space:=\"\" background-color:=\"\">请将您的简历发送至： fdz@mail.com</h5><p><br/></p>', '1500207802', null, '1'), ('12', '老板', null, '<p>招聘信息</p><p><br/></p><p>老板一位</p><p><br/></p><p>哈哈哈</p>', '1500208633', null, '1');
COMMIT;


-- ----------------------------
-- Table structure for `cms_about`
-- ----------------------------
DROP TABLE IF EXISTS `cms_about`;
CREATE TABLE `cms_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `icon` varchar(128) DEFAULT NULL COMMENT '图标',
  `description` varchar(255) DEFAULT NULL,
  `create_at` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '网站名称',
  `url` varchar(64) DEFAULT NULL COMMENT 'url地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_link`
-- ----------------------------
BEGIN;
INSERT INTO `cms_link` VALUES ('1', '素材网', 'www.93sucai.commmm', null, '1'), ('2', '友情链接1', '#', '1497408214', '1'), ('3', '友情链接2', '#', '1497408223', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cms_nav`;
CREATE TABLE `cms_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '导航名称',
  `controller_name` varchar(16) DEFAULT NULL COMMENT '控制器名称',
  `action_name` varchar(16) DEFAULT NULL COMMENT '方法名称',
  `pid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '父级id',
  `url` varchar(64) DEFAULT NULL COMMENT '跳转地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_nav`
-- ----------------------------
BEGIN;
INSERT INTO `cms_nav` VALUES ('9', '首页', 'Index', 'index', '0', '/index.html', null, '1497434121', '1'), ('10', '服务产品', 'Services', 'index', '0', '/service.html', null, '1497434134', '1'), ('11', '新闻资讯', 'Article', 'index', '0', '/news.html', null, '1497434088', '1'), ('12', '客户案例', 'Cases', 'index', '0', '/cases.html', null, '1497434108', '0'), ('13', '关于我们', 'About', 'index', '0', '/about.html', null, '1497434151', '1'), ('14', '联系我们', 'Contact', 'index', '0', 'http://www.jonnycms.com/contact.html', null, '1497434163', '0'), ('123', '加入我们', 'Joinus', 'index', '0', '/joinus.html', null, '1500197242', '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_product`
-- ----------------------------
DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `brief` varchar(255) NOT NULL COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Records of `cms_product`
-- ----------------------------
BEGIN;
INSERT INTO `cms_product` VALUES ('10', '燕多品', 'localhost/static/upload/b47fb12f847a0699/cab5137a85092c2c.png', '', '', '1023832782', null, '1'), ('11', '乐点APP', 'localhost/static/upload/0ad73f4d121a76ab/08cd0de1736c20a0.png', '乐点app是个app', '<p>事实上</p><p>萨达</p><p>阿斯顿</p><p>啊哒</p>', '1500255930', null, '1'), ('12', '乐点商场', 'localhost/static/upload/3cee7fdacf0dec8d/7616fc32fdb25f45.png', '哈哈哈哈哈哈哈哈我大哥带 u 的哈', '', '1500256244', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_service_msg`
-- ----------------------------
DROP TABLE IF EXISTS `cms_service_msg`;
CREATE TABLE `cms_service_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '第三方文章地址',
  `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_service_msg`
-- ----------------------------
-- ----------------------------
--  Table structure for `cms_shuff`
-- ----------------------------
DROP TABLE IF EXISTS `cms_shuff`;
CREATE TABLE `cms_shuff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `type` char(4) DEFAULT 'text' COMMENT '轮播类型',
  `textcontent` varchar(64) DEFAULT NULL COMMENT '文本内容',
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL COMMENT '跳转地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_shuff`
-- ----------------------------
BEGIN;
INSERT INTO `cms_shuff` VALUES ('1', '轮播图1', 'imag', '说点什么吧', 'localhost/static/upload/b7437fbea25c9fb3/ccf756e09f2c37e2.png', '#', null, '1'), ('2', '打破传统-企业免网站制作费', 'imag', '找jonny做网站价格比淘宝优惠，价格比外包低', 'localhost/static/upload/b7437fbea25c9fb3/ccf756e09f2c37e2.png', '#', null, '1'), ('3', '全能五合一响应式网站', 'imag', '一个网站就能自动适应PC端+平板端+手机端+安卓/苹果APP+微信使用', 'localhost/static/upload/b7437fbea25c9fb3/ccf756e09f2c37e2.png', '#', null, '1');
COMMIT;

-- ----------------------------
--  Table structure for `cms_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_type`;
CREATE TABLE `cms_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `create_at` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_type`
-- ----------------------------
BEGIN;
INSERT INTO `cms_type` VALUES ('1', '燕多品', null), ('2', '乐点APP', null), ('3', '乐点商场', null);
COMMIT;

-- ----------------------------
--  Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
--  Records of `system_auth`
-- ----------------------------
BEGIN;
INSERT INTO `system_auth` VALUES ('1', '客服', '1', '0', 'sada', '0', '1497933664');
COMMIT;

-- ----------------------------
--  Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

-- ----------------------------
--  Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `system_config`
-- ----------------------------
BEGIN;
INSERT INTO `system_config` VALUES ('148', 'site_name', '弗达洲', null), ('149', 'site_copy', '浙江弗达洲电子商务有限公司 © 2014~2017', null), ('164', 'storage_type', 'local', null), ('165', 'storage_qiniu_is_https', '1', null), ('166', 'storage_qiniu_bucket', 'static', null), ('167', 'storage_qiniu_domain', 'static.ctolog.com', null), ('168', 'storage_qiniu_access_key', '', null), ('169', 'storage_qiniu_secret_key', '', null), ('170', 'storage_qiniu_region', '华东', null), ('173', 'app_name', 'admin', null), ('174', 'app_version', 'V1.0', null), ('176', 'browser_icon', 'localhost/static/upload/e650c292c07e956c/85b056074ee95fcf.png', null), ('184', 'wechat_appid', '', null), ('185', 'wechat_appsecret', '', null), ('186', 'wechat_token', '', null), ('187', 'wechat_encodingaeskey', '', null), ('188', 'wechat_mch_id', '', null), ('189', 'wechat_partnerkey', '', null), ('194', 'wechat_cert_key', '', null), ('196', 'wechat_cert_cert', '', null), ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f', null), ('198', 'tongji_cnzz_key', '1261854404', null), ('199', 'storage_oss_bucket', '', null), ('200', 'storage_oss_keyid', '', null), ('201', 'storage_oss_secret', '', null), ('202', 'storage_oss_domain', '', null), ('203', 'storage_oss_is_https', '1', null), ('204', 'web_site_close', '1', null), ('205', 'seo_title', '弗达洲', null), ('206', 'seo_keywords', '11111111111', null), ('207', 'seo_description', '1111', null), ('208', 'web_site_icp', '浙ICP备16094197', null), ('209', 'company_address', '湖州市龙华新区共和花园', null), ('210', 'company_phone', '0572-076412', null), ('211', 'company_fixed_line', '15820452360', null), ('212', 'company_qq', '980218641', null), ('213', 'company_url', 'wwww.93sucai.com', null), ('214', 'company_email', '980218641@qq.com', null), ('215', 'company_headquarters', '93网站建设', null), ('216', 'company_head', 'kirashen', null), ('217', 'company_head_mobile', '', '1497498198'), ('218', 'company_head_mobile', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
--  Records of `system_log`
-- ----------------------------
BEGIN;
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017'), ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017'), ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017'), ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017'), ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('6', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('7', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('8', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('9', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('10', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('11', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('12', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('13', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('14', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('15', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0'), ('16', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('17', '27.38.4.10', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('18', '27.38.4.10', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '0'), ('19', '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('20', '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('21', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0'), ('22', '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
COMMIT;

-- ----------------------------
--  Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
--  Records of `system_menu`
-- ----------------------------
BEGIN;
INSERT INTO `system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '1000', '1', '0', '2015'), ('3', '4', '后台首页', '', 'fa fa-fw fa-tachometer', 'admin/index/main', '', '_self', '10', '1', '0', '2015'), ('4', '2', '系统配置', '', '', '#', '', '_self', '100', '1', '0', '2016'), ('5', '4', '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', '20', '1', '0', '2016'), ('6', '4', '文件存储', '', 'fa fa-hdd-o', 'admin/config/file', '', '_self', '30', '1', '0', '2016'), ('9', '20', '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', '50', '1', '0', '2017'), ('19', '20', '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', '20', '1', '0', '2015'), ('20', '2', '系统权限', '', '', '#', '', '_self', '200', '1', '0', '2016'), ('21', '20', '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', '30', '1', '0', '2015'), ('22', '20', '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', '10', '1', '0', '2015'), ('29', '20', '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', '40', '1', '0', '2016'), ('61', '0', '微信管理', '', '', '#', '', '_self', '2000', '0', '0', '2017'), ('62', '61', '微信对接配置', '', '', '#', '', '_self', '0', '0', '0', '2017'), ('63', '62', '微信接口配置\r\n', '', 'fa fa-usb', 'wechat/config/index', '', '_self', '0', '0', '0', '2017'), ('64', '62', '微信支付配置', '', 'fa fa-paypal', 'wechat/config/pay', '', '_self', '0', '0', '0', '2017'), ('65', '61', '微信粉丝管理', '', '', '#', '', '_self', '0', '0', '0', '2017'), ('66', '65', '粉丝标签', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', '0', '0', '0', '2017'), ('67', '65', '已关注粉丝', '', 'fa fa-wechat', 'wechat/fans/index', '', '_self', '0', '0', '0', '2017'), ('68', '61', '微信订制', '', '', '#', '', '_self', '0', '0', '0', '2017'), ('69', '68', '微信菜单定制', '', 'glyphicon glyphicon-phone', 'wechat/menu/index', '', '_self', '0', '0', '0', '2017'), ('70', '68', '关键字管理', '', 'fa fa-paw', 'wechat/keys/index', '', '_self', '0', '0', '0', '2017'), ('71', '68', '关注自动回复', '', 'fa fa-commenting-o', 'wechat/keys/subscribe', '', '_self', '0', '0', '0', '2017'), ('81', '68', '无配置默认回复', '', 'fa fa-commenting-o', 'wechat/keys/defaults', '', '_self', '0', '0', '0', '2017'), ('82', '61', '素材资源管理', '', '', '#', '', '_self', '0', '0', '0', '2017'), ('83', '82', '添加图文', '', 'fa fa-folder-open-o', 'wechat/news/add?id=1', '', '_self', '0', '0', '0', '2017'), ('85', '82', '图文列表', '', 'fa fa-file-pdf-o', 'wechat/news/index', '', '_self', '0', '0', '0', '2017'), ('86', '65', '粉丝黑名单', '', 'fa fa-reddit-alien', 'wechat/fans/back', '', '_self', '0', '0', '0', '2017'), ('87', '0', '内容管理', '', 'fa fa-credit-card', '#', '', '_self', '1100', '1', '0', '2017'), ('89', '87', '前台管理', '', '', '#', '', '_self', '0', '1', '0', '2017'), ('91', '89', '导航列表', '', 'fa fa-bars', 'cms/nav/index', '', '_self', '0', '1', '0', '2017'), ('92', '89', '轮播列表', '', '', 'cms/shuff/index', '', '_self', '0', '1', '0', '2017'), ('93', '89', '友情链接', '', '', 'cms/link/index', '', '_self', '0', '1', '0', '2017'), ('94', '87', '案例管理', '', '', '#', '', '_self', '2', '0', '0', '2017'), ('95', '94', '案例列表', '', '', 'cms/cases/index', '', '_self', '0', '0', '0', '2017'), ('96', '94', '案例分类', '', '', 'cms/cases/index_cate', '', '_self', '0', '0', '0', '2017'), ('97', '87', '文章管理', '', '', '#', '', '_self', '1', '1', '0', '2017'), ('98', '97', '分类列表', '', '', 'cms/article/index_cate', '', '_self', '0', '1', '0', '2017'), ('99', '97', '文章列表', '', '', 'cms/article/index', '', '_self', '0', '1', '0', '2017'), ('100', '102', '关于我们', '', '', 'cms/about/index', '', '_self', '0', '0', '0', '0'), ('101', '102', '类型列表', '', '', 'cms/types/index', '', '_self', '0', '0', '0', '0'), ('102', '87', '产品服务', '', '', '#', '', '_self', '3', '1', '0', '1497499886'), ('103', '89', '首页设置', '', '', '/cms/config/index', '', '_self', '0', '1', '0', '1500190446'), ('106', '89', '加入我们', '', '', '/cms/joinus/index', '', '_self', '0', '1', '0', '1500207531'), ('107', '87', '关于我们', '', '', '#', '', '_self', '0', '1', '0', '1500210656'), ('108', '107', '内容管理', '', '', '/cms/aboutus/index', '', '_self', '0', '1', '0', '1500210810'), ('109', '107', '领导核心', '', '', '/cms/aboutus/leader', '', '_self', '0', '1', '0', '1500212079'), ('110', '102', '服务内容', '', '', '/cms/services/content', '', '_self', '0', '1', '0', '1500254799'), ('111', '102', '产品列表', '', '', '/cms/services/index', '', '_self', '0', '1', '0', '1500255137');
COMMIT;

-- ----------------------------
--  Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
--  Records of `system_node`
-- ----------------------------
BEGIN;
INSERT INTO `system_node` VALUES ('3', 'admin', '系统管理', '0', '1', '2017'), ('4', 'admin/menu/add', '添加菜单', '0', '1', '2017'), ('5', 'admin/config', '系统配置', '0', '1', '2017'), ('6', 'admin/config/index', '网站配置', '1', '1', '2017'), ('7', 'admin/config/file', '文件配置', '1', '1', '2017'), ('8', 'admin/config/mail', '邮件配置', '0', '0', '2017'), ('9', 'admin/config/sms', '短信配置', '0', '0', '2017'), ('10', 'admin/menu/index', '菜单列表', '1', '1', '2017'), ('11', 'admin/node/index', '节点列表', '1', '1', '2017'), ('12', 'admin/node/save', '节点更新', '0', '1', '2017'), ('13', 'store/menu/index', '菜单列表', '1', '1', '2017'), ('14', 'store/menu/add', '添加菜单', '0', '1', '2017'), ('15', 'store/menu/edit', '编辑菜单', '0', '1', '2017'), ('16', 'store/menu/del', '删除菜单', '0', '1', '2017'), ('17', 'admin/index/index', '', '1', '1', '2017'), ('18', 'admin/index/main', '', '0', '1', '2017'), ('19', 'admin/index/pass', null, '0', '1', '2017'), ('20', 'admin/index/info', null, '0', '1', '2017'), ('21', 'store/menu/tagmove', '移动标签', '0', '1', '2017'), ('22', 'store/menu/tagedit', '编辑标签', '0', '1', '2017'), ('23', 'store/menu/tagdel', '删除标签', '0', '1', '2017'), ('24', 'store/menu/resume', '启用菜单', '0', '1', '2017'), ('25', 'store/menu/forbid', '禁用菜单', '0', '1', '2017'), ('26', 'store/menu/tagadd', '添加标签', '0', '1', '2017'), ('27', 'store/menu/hot', '设置热卖', '0', '1', '2017'), ('28', 'admin/index', '', '0', '1', '2017'), ('29', 'store/order/index', '订单列表', '1', '1', '2017'), ('30', 'store/index/qrcimg', '店铺二维码', '0', '1', '2017'), ('31', 'store/index/edit', '编辑店铺', '0', '1', '2017'), ('32', 'store/index/qrc', '二维码列表', '0', '1', '2017'), ('33', 'store/index/add', '添加店铺', '0', '1', '2017'), ('34', 'store/index/index', '我的店铺', '1', '1', '2017'), ('35', 'store/api/delcache', null, '0', '1', '2017'), ('36', 'store/api/getcache', null, '0', '1', '2017'), ('37', 'store/api/setcache', null, '0', '1', '2017'), ('38', 'store/api/response', null, '0', '1', '2017'), ('39', 'store/api/auth', null, '0', '1', '2017'), ('40', 'admin/user/resume', '启用用户', '1', '1', '2017'), ('41', 'admin/user/forbid', '禁用用户', '1', '1', '2017'), ('42', 'admin/user/del', '删除用户', '0', '1', '2017'), ('43', 'admin/user/pass', '密码修改', '0', '1', '2017'), ('44', 'admin/user/edit', '编辑用户', '1', '1', '2017'), ('45', 'admin/user/index', '用户列表', '1', '1', '2017'), ('46', 'admin/user/auth', '用户授权', '1', '1', '2017'), ('47', 'admin/user/add', '新增用户', '1', '1', '2017'), ('48', 'admin/plugs/icon', null, '0', '1', '2017'), ('49', 'admin/plugs/upload', null, '0', '1', '2017'), ('50', 'admin/plugs/upfile', null, '0', '1', '2017'), ('51', 'admin/plugs/upstate', null, '0', '1', '2017'), ('52', 'admin/menu/resume', '菜单启用', '0', '1', '2017'), ('53', 'admin/menu/forbid', '菜单禁用', '1', '1', '2017'), ('54', 'admin/login/index', null, '0', '1', '2017'), ('55', 'admin/login/out', '', '0', '1', '2017'), ('56', 'admin/menu/edit', '编辑菜单', '0', '0', '2017'), ('57', 'admin/menu/del', '菜单删除', '0', '1', '2017'), ('58', 'store/menu', '菜谱管理', '0', '1', '2017'), ('59', 'store/index', '店铺管理', '0', '1', '2017'), ('60', 'store', '店铺管理', '0', '1', '2017'), ('61', 'store/order', '订单管理', '0', '1', '2017'), ('62', 'admin/user', '用户管理', '0', '1', '2017'), ('63', 'admin/node', '节点管理', '0', '1', '2017'), ('64', 'admin/menu', '菜单管理', '0', '1', '2017'), ('65', 'admin/auth', '权限管理', '0', '1', '2017'), ('66', 'admin/auth/index', '权限列表', '1', '1', '2017'), ('67', 'admin/auth/apply', '权限节点', '1', '1', '2017'), ('68', 'admin/auth/add', '添加权', '0', '1', '2017'), ('69', 'admin/auth/edit', '编辑权限', '0', '1', '2017'), ('70', 'admin/auth/forbid', '禁用权限', '0', '1', '2017'), ('71', 'admin/auth/resume', '启用权限', '0', '1', '2017'), ('72', 'admin/auth/del', '删除权限', '0', '1', '2017'), ('73', 'admin/log/index', '日志列表', '1', '1', '2017'), ('74', 'admin/log/del', '删除日志', '1', '1', '2017'), ('75', 'admin/log', '系统日志', '0', '1', '2017'), ('76', 'wechat', '微信管理', '0', '1', '2017'), ('77', 'wechat/article', '微信文章', '0', '1', '2017'), ('78', 'wechat/article/index', '文章列表', '1', '1', '2017'), ('79', 'wechat/config', '微信配置', '0', '1', '2017'), ('80', 'wechat/config/index', '微信接口配置', '1', '1', '2017'), ('81', 'wechat/config/pay', '微信支付配置', '1', '1', '2017'), ('82', 'wechat/fans', '微信粉丝', '0', '1', '2017'), ('83', 'wechat/fans/index', '粉丝列表', '1', '1', '2017'), ('84', 'wechat/index', '微信主页', '0', '1', '2017'), ('85', 'wechat/index/index', '微信主页', '1', '1', '2017'), ('86', 'wechat/keys', '微信关键字', '0', '1', '2017'), ('87', 'wechat/keys/index', '关键字列表', '1', '1', '2017'), ('88', 'wechat/keys/subscribe', '关键自动回复', '1', '1', '2017'), ('89', 'wechat/keys/defaults', '默认自动回复', '1', '1', '2017'), ('90', 'wechat/menu', '微信菜单管理', '0', '1', '2017'), ('91', 'wechat/menu/index', '微信菜单', '1', '1', '2017'), ('92', 'wechat/news', '微信图文管理', '0', '1', '2017'), ('93', 'wechat/news/index', '图文列表', '1', '1', '2017'), ('94', 'wechat/notify/index', '', '0', '0', '2017'), ('95', 'wechat/api/index', '', '1', '1', '2017'), ('96', 'wechat/api', '', '0', '1', '2017'), ('97', 'wechat/notify', '', '0', '1', '2017'), ('98', 'wechat/fans/sync', '同步粉丝', '0', '1', '2017'), ('99', 'wechat/menu/edit', '编辑微信菜单', '0', '1', '2017'), ('100', 'wechat/menu/cancel', '取消微信菜单', '0', '1', '2017'), ('101', 'wechat/keys/edit', '编辑关键字', '0', '1', '2017'), ('102', 'wechat/keys/add', '添加关键字', '0', '1', '2017'), ('103', 'wechat/review/index', null, '0', '1', '2017'), ('104', 'wechat/review', '', '0', '1', '2017'), ('105', 'wechat/keys/del', '删除关键字', '0', '1', '2017'), ('106', 'wechat/news/add', '添加图文', '0', '1', '2017'), ('107', 'wechat/news/select', '图文选择器', '1', '1', '2017'), ('108', 'wechat/keys/resume', '启用关键字', '0', '1', '2017'), ('109', 'wechat/news/edit', '编辑图文', '0', '1', '2017'), ('110', 'wechat/news/push', '推送图文', '0', '1', '2017'), ('111', 'wechat/news/del', '删除图文', '0', '1', '2017'), ('112', 'wechat/keys/forbid', '禁用关键字', '0', '1', '2017'), ('113', 'wechat/tags/index', '标签列表', '1', '1', '2017'), ('114', 'wechat/tags/add', '添加标签', '0', '1', '2017'), ('115', 'wechat/tags/edit', '编辑标签', '0', '1', '2017'), ('116', 'wechat/tags/sync', '同步标签', '0', '1', '2017'), ('117', 'wechat/tags', '粉丝标签管理', '0', '1', '2017'), ('118', 'wechat/fans/backdel', '移除粉丝黑名单', '0', '1', '2017'), ('119', 'wechat/fans/backadd', '移入粉丝黑名单', '0', '1', '2017'), ('120', 'wechat/fans/back', '粉丝黑名单列表', '1', '1', '2017'), ('121', 'wechat/fans/tagadd', '添加粉丝标签', '0', '1', '2017'), ('122', 'wechat/fans/tagdel', '删除粉丝标签', '0', '1', '2017'), ('123', 'cms', 'cms网站管理', '0', '1', '1497499500'), ('124', 'cms/about', '产品与服务', '0', '1', '1497499508'), ('125', 'cms/article', '文章管理', '0', '1', '1497499526'), ('126', 'cms/about/index', '列表页', '1', '1', '1497499526'), ('127', 'cms/article/index', '文章列表', '1', '1', '1497499550'), ('128', 'cms/article/add', '添加文章', '0', '1', '1497499557'), ('129', 'cms/article/edit', '编辑文章', '0', '1', '1497499560'), ('130', 'cms/article/forbid', '文章禁用', '0', '1', '1497499602'), ('131', 'cms/article/resume', '文章启用', '0', '1', '1497499605'), ('132', 'cms/article/del', '删除文章', '0', '1', '1497499612'), ('133', 'cms/article/index_cate', '文章分类列表', '1', '1', '1497499612'), ('134', 'cms/article/add_cate', '添加分类', '0', '1', '1497499616'), ('135', 'cms/article/edit_cate', '编辑分类', '0', '1', '1497499617'), ('136', 'cms/article/del_cate', '删除分类', '0', '1', '1497499618'), ('137', 'cms/cases', '案例管理', '0', '1', '1497499651'), ('138', 'cms/cases/index', '案例列表', '1', '1', '1497499656'), ('139', 'cms/cases/add', '添加案例', '0', '1', '1497499661'), ('140', 'cms/cases/edit', '编辑案例', '0', '1', '1497499664'), ('141', 'cms/cases/forbid', '禁用案例', '0', '1', '1497499669'), ('142', 'cms/cases/resume', '启用案例', '0', '1', '1497499672'), ('143', 'cms/cases/del', '删除案例', '0', '1', '1497499677'), ('144', 'cms/cases/index_cate', '案例分类列表', '0', '1', '1497499682'), ('145', 'cms/cases/add_cate', '添加案例分类', '0', '1', '1497499686'), ('146', 'cms/cases/edit_cate', '编辑案例分类', '0', '1', '1497499690'), ('147', 'cms/cases/del_cate', '删除案例分类', '0', '1', '1497499705'), ('148', 'cms/about/add', '添加', '0', '1', '1497499714'), ('149', 'cms/about/edit', '编辑', '0', '1', '1497499715'), ('150', 'cms/about/del', '删除', '0', '1', '1497499717'), ('151', 'cms/config/index', '', '0', '1', '1497499742'), ('152', 'cms/link', '友情链接', '0', '1', '1497499755'), ('153', 'cms/link/index', '友情链接列表', '1', '1', '1497499763'), ('154', 'cms/link/add', '添加', '0', '1', '1497499768'), ('155', 'cms/link/edit', '编辑', '0', '1', '1497499774'), ('156', 'cms/link/forbid', '禁用', '0', '1', '1497499780'), ('157', 'cms/link/resume', '启用', '0', '1', '1497499784'), ('158', 'cms/nav', '导航管理', '0', '1', '1497499791'), ('159', 'cms/nav/index', '导航列表', '1', '1', '1497499793'), ('160', 'cms/nav/add', '添加导航', '0', '1', '1497499806'), ('161', 'cms/nav/edit', '编辑导航', '0', '1', '1497499809'), ('162', 'cms/nav/forbid', '禁用导航', '0', '1', '1497499815'), ('163', 'cms/nav/resume', '启用导航', '0', '1', '1497499817'), ('164', 'cms/nav/del', '删除导航', '0', '1', '1497499823'), ('165', 'cms/shuff', '轮播管理', '0', '1', '1497500183'), ('166', 'cms/shuff/index', '轮播列表', '1', '1', '1497500247'), ('167', 'cms/shuff/add', '添加轮播', '0', '1', '1497500254'), ('168', 'cms/shuff/edit', '编辑轮播', '0', '1', '1497500257'), ('169', 'cms/shuff/forbid', '禁用轮播', '0', '1', '1497500266'), ('170', 'cms/shuff/resume', '启用轮播', '0', '1', '1497500273'), ('171', 'cms/types', '类型管理', '0', '1', '1497500281'), ('172', 'cms/types/index', '类型列表', '1', '1', '1497500285'), ('173', 'cms/types/add', '添加', '0', '1', '1497500289'), ('174', 'cms/types/edit', '编辑', '0', '1', '1497500292'), ('175', 'cms/types/del', '删除', '0', '1', '1497500294');
COMMIT;

-- ----------------------------
--  Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
--  Records of `system_sequence`
-- ----------------------------
BEGIN;
INSERT INTO `system_sequence` VALUES ('1', 'WECHAT-PAY-TEST', '1278911425', '0'), ('2', 'WXPAY-OUTER-NO', '943572063331662367', '0');
COMMIT;

-- ----------------------------
--  Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
--  Records of `system_user`
-- ----------------------------
BEGIN;
INSERT INTO `system_user` VALUES ('10000', 'admin', '670b14728ad9902aecba32e22fa4f6bd', '22222222', '11111@qq.com', '13823822233', '<script>alert(\"a\")</script>', '12612', '2017-07-16 09:32:41', '1', '47,49', '0', null, '2015');
COMMIT;

-- ----------------------------
--  Table structure for `wechat_fans`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans`;
CREATE TABLE `wechat_fans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '粉丝表ID',
  `appid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '公众号Appid',
  `groupid` bigint(20) unsigned DEFAULT NULL COMMENT '分组ID',
  `tagid_list` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '标签id',
  `is_back` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户是否订阅该公众号,0：未关注,1：已关注',
  `openid` char(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户的昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在国家',
  `province` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在省份',
  `city` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在城市',
  `language` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户头像',
  `subscribe_time` bigint(20) unsigned DEFAULT NULL COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `unionid` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'unionid',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `expires_in` bigint(20) unsigned DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '刷新token',
  `access_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '访问token',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  KEY `index_wechat_fans_openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=sjis COMMENT='微信粉丝';

-- ----------------------------
--  Table structure for `wechat_fans_tags`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans_tags`;
CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) unsigned NOT NULL COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) unsigned DEFAULT NULL COMMENT '总数',
  `create_at` int(11) DEFAULT '0' COMMENT '创建日期',
  KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信会员标签';

-- ----------------------------
--  Table structure for `wechat_keys`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_keys`;
CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `type` varchar(20) DEFAULT NULL COMMENT '类型,text 文件消息,image 图片消息,news 图文消息',
  `keys` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '文本内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片链接',
  `voice_url` varchar(255) DEFAULT NULL COMMENT '语音链接',
  `music_title` varchar(100) DEFAULT NULL COMMENT '音乐标题',
  `music_url` varchar(255) DEFAULT NULL COMMENT '音乐链接',
  `music_image` varchar(255) DEFAULT NULL COMMENT '音乐缩略图链接',
  `music_desc` varchar(255) DEFAULT NULL COMMENT '音乐描述',
  `video_title` varchar(100) DEFAULT NULL COMMENT '视频标题',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频URL',
  `video_desc` varchar(255) DEFAULT NULL COMMENT '视频描述',
  `news_id` bigint(20) unsigned DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '0 禁用,1 启用',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 微信关键字';

-- ----------------------------
--  Table structure for `wechat_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '文字内容',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `wechat_menu_pid` (`pindex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1507 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `wechat_menu`
-- ----------------------------
BEGIN;
INSERT INTO `wechat_menu` VALUES ('1502', '1', '0', 'text', '关键字', '2234123413', '0', '1', '0', '2017'), ('1503', '11', '1', 'keys', '图片', '图片', '0', '1', '0', '2017'), ('1504', '12', '1', 'keys', '音乐', '音乐', '1', '1', '0', '2017'), ('1505', '2', '0', 'event', '事件类', 'pic_weixin', '1', '1', '0', '2017'), ('1506', '3', '0', 'view', '微信支付', 'index/wap/payjs', '2', '1', '0', '2017');
COMMIT;

-- ----------------------------
--  Table structure for `wechat_news`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news`;
CREATE TABLE `wechat_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT NULL COMMENT '关联图文ID,用,号做分割',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '是否删除',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `index_wechat_new_artcle_id` (`article_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信图文表';

-- ----------------------------
--  Table structure for `wechat_news_article`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_article`;
CREATE TABLE `wechat_news_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) unsigned DEFAULT '0' COMMENT '是否显示封面 0不显示,1 显示',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `digest` varchar(300) DEFAULT NULL COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT NULL COMMENT '图文消息原文地址',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
--  Table structure for `wechat_news_image`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_image`;
CREATE TABLE `wechat_news_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信服务器图片';

-- ----------------------------
--  Table structure for `wechat_news_media`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_media`;
CREATE TABLE `wechat_news_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `type` varchar(20) DEFAULT NULL COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
--  Table structure for `wechat_pay_notify`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_pay_notify`;
CREATE TABLE `wechat_pay_notify` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL COMMENT '公众号Appid',
  `bank_type` varchar(50) DEFAULT NULL COMMENT '银行类型',
  `cash_fee` bigint(20) DEFAULT NULL COMMENT '现金价',
  `fee_type` char(20) DEFAULT NULL COMMENT '币种,1人民币',
  `is_subscribe` char(1) DEFAULT 'N' COMMENT '是否关注,Y为关注,N为未关注',
  `mch_id` varchar(50) DEFAULT NULL COMMENT '商户MCH_ID',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机串',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信用户openid',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '支付平台退款交易号',
  `sign` varchar(100) DEFAULT NULL COMMENT '签名',
  `time_end` int(11) DEFAULT NULL COMMENT '结束时间',
  `result_code` varchar(10) DEFAULT NULL,
  `return_code` varchar(10) DEFAULT NULL,
  `total_fee` varchar(11) DEFAULT NULL COMMENT '支付总金额,单位为分',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '订单号',
  `create_at` int(11) DEFAULT '0' COMMENT '本地系统时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_pay_notify_openid` (`openid`) USING BTREE,
  KEY `index_wechat_pay_notify_out_trade_no` (`out_trade_no`) USING BTREE,
  KEY `index_wechat_pay_notify_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='支付日志表';

-- ----------------------------
--  Table structure for `wechat_pay_prepayid`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_pay_prepayid`;
CREATE TABLE `wechat_pay_prepayid` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `from` char(32) DEFAULT 'shop' COMMENT '支付来源',
  `fee` bigint(20) unsigned DEFAULT NULL COMMENT '支付费用(分)',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `order_no` varchar(50) DEFAULT NULL COMMENT '内部订单号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '外部订单号',
  `prepayid` varchar(500) DEFAULT NULL COMMENT '预支付码',
  `expires_in` bigint(20) unsigned DEFAULT NULL COMMENT '有效时间',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '微信平台订单号',
  `is_pay` tinyint(1) unsigned DEFAULT '0' COMMENT '1已支付,0未支退款',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `is_refund` tinyint(1) unsigned DEFAULT '0' COMMENT '是否退款,退款单号(T+原来订单)',
  `refund_at` int(11) NOT NULL COMMENT '退款时间',
  `create_at` int(11) NOT NULL COMMENT '本地系统时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_pay_prepayid_outer_no` (`out_trade_no`) USING BTREE,
  KEY `index_wechat_pay_prepayid_order_no` (`order_no`) USING BTREE,
  KEY `index_wechat_pay_is_pay` (`is_pay`) USING BTREE,
  KEY `index_wechat_pay_is_refund` (`is_refund`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单号对应表';

SET FOREIGN_KEY_CHECKS = 1;
