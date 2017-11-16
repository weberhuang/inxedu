/*
Navicat MySQL Data Transfer

Source Server         : 101.201.78.47
Source Server Version : 50630
Source Host           : 101.201.78.47:3306
Source Database       : demo_inxedu_v2_0

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-11-15 18:32:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for edu_article
-- ----------------------------
DROP TABLE IF EXISTS `edu_article`;
CREATE TABLE `edu_article` (
  `ARTICLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '文章标题',
  `SUMMARY` varchar(200) DEFAULT NULL COMMENT '文章摘要',
  `KEY_WORD` varchar(50) DEFAULT NULL COMMENT '文章关键字',
  `IMAGE_URL` varchar(100) DEFAULT NULL COMMENT '文章图片URL',
  `SOURCE` varchar(50) DEFAULT NULL COMMENT '文章来源',
  `AUTHOR` varchar(10) DEFAULT NULL COMMENT '文章作者',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '文章创建时间',
  `PUBLISH_TIME` timestamp NULL DEFAULT NULL COMMENT '文章发布时间',
  `PUBLISH_STATE` tinyint(1) DEFAULT '0' COMMENT '文章发布状态 1未发布 2已发布',
  `LINK` varchar(100) DEFAULT NULL COMMENT '文章访问链接',
  `ARTICLE_TYPE` tinyint(4) DEFAULT '0' COMMENT '文章类型 2文章',
  `CLICK_NUM` int(11) DEFAULT '0' COMMENT '文章点击量',
  `PRAISE_COUNT` int(11) DEFAULT '0' COMMENT '点赞数量',
  `SORT` varchar(10) DEFAULT NULL,
  `COMMENT_NUM` int(11) DEFAULT '0' COMMENT '评论数',
  PRIMARY KEY (`ARTICLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文章信息表';

-- ----------------------------
-- Records of edu_article
-- ----------------------------
INSERT INTO `edu_article` VALUES ('6', '大唐电信来我司带走定制学员', '大唐电信来我司带走定制学员', '山东兰陵回应副校长致女生怀孕事件：已被刑拘', '/images/upload/article/20171030/1509353115671.jpg', '本站整理', '黄杏波', '2015-03-24 12:54:29', '2017-10-26 10:27:31', '2', '/15/03/25/1427247760572.html', '2', '21', '3', '0', '0');
INSERT INTO `edu_article` VALUES ('16', '职场哲学和职业规划讲座顺利召开', '职场哲学和职业规划讲座顺利召开', null, '/images/upload/article/20171030/1509353134105.jpg', '本站整理', '黄杏波', '2017-10-26 16:29:08', '2017-10-26 00:00:00', '0', null, '2', '3', '0', '0', '0');
INSERT INTO `edu_article` VALUES ('17', '34张史上最全IT架构师技术知识图谱', '34张史上最全IT架构师技术知识图谱', null, '/images/upload/article/20171101/1509505817046.jpg', '本站整理', '黄杏波', '2017-11-01 10:11:00', '2017-11-01 10:09:20', '0', null, '2', '10', '0', '0', '0');

-- ----------------------------
-- Table structure for edu_article_content
-- ----------------------------
DROP TABLE IF EXISTS `edu_article_content`;
CREATE TABLE `edu_article_content` (
  `ARTICLE_ID` int(11) DEFAULT '0' COMMENT '文章ID',
  `CONTENT` text COMMENT '文章内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- ----------------------------
-- Records of edu_article_content
-- ----------------------------
INSERT INTO `edu_article_content` VALUES ('6', '<p class=\"MsoNormal\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;line-height:1.6em;font-family:微软雅黑, 黑体;font-size:13px;white-space:normal;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\"><img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171027/1509095388760.jpg\" alt=\"\" /><img src=\"http://127.0.0.1:8080/inxedu/images/upload/articleContent/20171026/1509006982380.jpg\" alt=\"\" />       <br />\r\n         年初大唐电信定制了</span><span style=\"font-size:16px;\">60</span><span style=\"font-size:16px;\">人大数据工程师，融信在线通过招生筛选，学员</span><span style=\"font-size:16px;\">7</span><span style=\"font-size:16px;\">月份来京开始实训</span><span style=\"font-size:16px;\">,</span><span style=\"font-size:16px;\">通过这段时间的学习，</span><span style=\"font-size:16px;\">64</span><span style=\"font-size:16px;\">期和</span><span style=\"font-size:16px;\">65</span><span style=\"font-size:16px;\">期学员完成了既定的大数据分析师的课程，熟练的掌握了大数据分析工程师的技能，达到了工作岗位的能力。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;line-height:1.6em;font-family:微软雅黑, 黑体;font-size:13px;white-space:normal;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">大数据分析师是大数据时代的产物，是随着大数据产业的发展而发展，随着大数据时代的到来，我们收集整理了很多的数据，但数据本身是不能产生价值的，数据需要经过清洗，分析，挖掘等加工，变成可以被自己使用的信息，乃至变成企业的资源来利用等，大数据分析师已经成为未来热门的职业。</span> \r\n</p>\r\n<p class=\"MsoNormal\" style=\"margin-top:0px;margin-bottom:0px;padding:0px;color:#666666;line-height:1.6em;font-family:微软雅黑, 黑体;font-size:13px;white-space:normal;text-indent:28pt;\">\r\n	<span style=\"font-size:16px;\">大唐电信科技股份有限公司行业事业部的张总，</span><span style=\"font-size:16px;\">2017</span><span style=\"font-size:16px;\">年</span><span style=\"font-size:16px;\">10</span><span style=\"font-size:16px;\">月</span><span style=\"font-size:16px;\">14</span><span style=\"font-size:16px;\">日来到融信在线（北京）教育科技有限公司基地，先给定制学员介绍了公司的背景、发展历程与现状，公司的文化、产品和项目，公司对专业人才的需求、培养和待遇，并说道一个企业最宝贵的资源就是人才，决定公司发展成败的关键也是人才，所以公司特别重视对人才的培养，并热情的为学员进行了答疑等方面的讲座，然后对大唐电信定制学员进行了双向选择，第一次初步确定了</span><span style=\"font-size:16px;\">22</span><span style=\"font-size:16px;\">人，剩下的留待下次再来。<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171027/1509095400832.jpg\" alt=\"\" /></span> \r\n</p>\r\n<p>\r\n	<img src=\"http://127.0.0.1:8080/inxedu/images/upload/articleContent/20171026/1509006991820.jpg\" alt=\"\" /> \r\n</p>');
INSERT INTO `edu_article_content` VALUES ('16', '<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171027/1509095458037.jpg\" alt=\"\" /><img src=\"http://127.0.0.1:8080/inxedu/images/upload/articleContent/20171026/1509006929514.jpg\" alt=\"\" /><br />\r\n111111111<br />\r\n<img src=\"http://127.0.0.1:8080/inxedu/images/upload/articleContent/20171026/1509006945575.jpg\" alt=\"\" /><br />\r\n1111111<br />\r\n<img src=\"http://127.0.0.1:8080/inxedu/images/upload/articleContent/20171026/1509006957189.jpg\" alt=\"\" /><img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171027/1509095466685.jpg\" alt=\"\" />');
INSERT INTO `edu_article_content` VALUES ('17', '1.1 架构师图谱<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503714863.jpg\" /><br />\r\n1.2 Java架构师图谱<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503724841.jpg\" /><br />\r\n1.3 微服务架构秘籍<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503779706.jpg\" /><br />\r\n1.4 一致性图谱<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503854102.jpg\" /><br />\r\n1.5 互联网大流量的方法<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503918357.jpg\" /><br />\r\n1.6 安全秘籍<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503988699.jpg\" /><br />\r\n1.7 阿里巴巴常用小框架<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504143244.jpg\" /><br />\r\n1.8 架构方法论图谱<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504182117.jpg\" /><br />\r\n1.9 设计模式秘籍图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504466785.jpg\" alt=\"\" /><br />\r\n2.1 JVM虚拟机垃圾回收图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504508609.png\" alt=\"\" /><br />\r\n<br />\r\n2.2 Java并发图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504547063.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.3 Java集合图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504582104.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.4 Java集合类图<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504613810.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.5 Java List类图<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504643357.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.6 Java Map类图<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504702857.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.7 Java Set类图<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504729513.jpg\" alt=\"\" /><br />\r\n<br />\r\n2.8 Java TCP IP<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504819490.png\" alt=\"\" /><br />\r\n<br />\r\n3.1 Hadoop技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504861034.jpg\" alt=\"\" /><br />\r\n<br />\r\n3.2 大数据技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504994476.jpg\" alt=\"\" /><br />\r\n<br />\r\n4.1 云计算图谱<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505054784.jpg\" alt=\"\" /><br />\r\n<br />\r\n4.2 云计算技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505095308.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.1 iOS技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505139396.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.2 OpenResty技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505177071.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.3 前端技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505226478.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.4 容器技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505261602.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.5 嵌入式开发技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505307442.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.6 开发语言宝典<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505353786.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.7 移动端测试图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505389643.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.8 运维技能图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505446631.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.9 软件工程图谱<br />\r\n<br />\r\n5.10 DevOps图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505618972.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.11 前端开发图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505645620.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.12 后端开发图谱<br />\r\n<br />\r\n<img src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509505676113.jpg\" alt=\"\" /><br />\r\n<br />\r\n5.13 软件发布流程<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<span id=\"__kindeditor_bookmark_end_9__\" style=\"display:none;\"><br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504221452.jpg\" /><img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504237501.jpg\" /><img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504248950.jpg\" /><img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504260415.jpg\" />1.9 设计模式秘籍图谱<br />\r\n<br />\r\n<br />\r\n<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504168316.jpg\" />1.8 架构方法论图谱<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504014968.jpg\" /><img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504027222.jpg\" /><img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509504040383.jpg\" /><br />\r\n1.7 阿里巴巴常用小框架<br />\r\n<br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503958402.jpg\" /><br />\r\n</span><span id=\"__kindeditor_bookmark_end_9__\" style=\"display:none;\">1.6 安全秘籍<span id=\"__kindeditor_bookmark_end_9__\" style=\"display:none;\"><br />\r\n</span>1.6 安全秘籍<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503881683.jpg\" /><br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503897703.jpg\" />1.5 互联网大流量的方法<br />\r\n1.5 互联网大流量的方法<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503801299.jpg\" /><br />\r\n<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503811508.jpg\" /><br />\r\n1.4 一致性图谱1.4 一致性图谱<img alt=\"\" src=\"http://www.hnrxjy.com/images/upload/articleContent/20171101/1509503759282.jpg\" /></span>');

-- ----------------------------
-- Table structure for edu_comment
-- ----------------------------
DROP TABLE IF EXISTS `edu_comment`;
CREATE TABLE `edu_comment` (
  `COMMENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论表',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户id',
  `P_COMMENT_ID` int(11) DEFAULT NULL COMMENT '父级评论id(为0则是一级评论,不为0则是回复)',
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '评论内容',
  `ADDTIME` datetime DEFAULT NULL COMMENT '创建时间',
  `OTHER_ID` int(11) DEFAULT NULL COMMENT '评论的相关id',
  `PRAISE_COUNT` int(11) DEFAULT '0' COMMENT '点赞数量',
  `REPLY_COUNT` int(11) DEFAULT '0' COMMENT '回复数量',
  `TYPE` int(11) DEFAULT '0' COMMENT '1文章 2课程',
  PRIMARY KEY (`COMMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_comment
-- ----------------------------

-- ----------------------------
-- Table structure for edu_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_course`;
CREATE TABLE `edu_course` (
  `COURSE_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `COURSE_NAME` varchar(300) NOT NULL DEFAULT '' COMMENT '课程名称',
  `IS_AVALIABLE` int(10) NOT NULL DEFAULT '0' COMMENT '1可用(上架)2不可用(下架)',
  `SUBJECT_ID` int(11) DEFAULT '0' COMMENT '课程专业ID',
  `SUBJECT_LINK` varchar(255) DEFAULT NULL COMMENT '课程专业链',
  `ADD_TIME` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `SOURCE_PRICE` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程原价格（只显示）',
  `CURRENT_PRICE` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '课程销售价格（实际支付价格）设置为0则可免费观看',
  `TITLE` varchar(200) NOT NULL DEFAULT '' COMMENT '课程简介',
  `CONTEXT` longtext NOT NULL COMMENT '课程详情',
  `LESSION_NUM` int(11) NOT NULL DEFAULT '0' COMMENT '总课时',
  `LOGO` varchar(200) NOT NULL DEFAULT '' COMMENT '图片路径',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL COMMENT '最后更新时间',
  `PAGE_BUYCOUNT` int(11) DEFAULT '0' COMMENT '销售数量',
  `PAGE_VIEWCOUNT` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数量',
  `END_TIME` timestamp NULL DEFAULT NULL COMMENT '有效结束时间',
  `LOSETYPE` int(2) DEFAULT '0' COMMENT '有效期类型，0：到期时间，1：按天数',
  `LOSE_TIME` varchar(255) DEFAULT NULL COMMENT '有效期:商品订单过期时间点',
  PRIMARY KEY (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='课程表';

-- ----------------------------
-- Records of edu_course
-- ----------------------------
INSERT INTO `edu_course` VALUES ('10', '零基础入门学习Python课程学习', '1', '221', ',221,', '2015-03-26 12:00:28', '0.00', '0.00', 'Python包含的内容很多，加上各种标准库、拓展库，乱花渐欲迷人眼', 'Python包含的内容很多，加上各种标准库、拓展库，乱花渐欲迷人眼。我一直希望写一个快速的、容易上手的Python教程，而且言语简洁，循序渐进，让没有背景的读者也可以从基础开始学习。我将在每一篇中专注于一个小的概念，希望在闲暇时可以很快读完。<br />\r\n<br />\r\n<br />\r\n小提醒<br />\r\n<br />\r\n教程将专注于Python基础，语法基于Python 2.7 (我会提醒Python 3.x中有变化的地方，以方便读者适应3.X的情况)。测试环境为Linux。标准库的一些包不适用于Windows平台。如果文中的程序无法在你的平台上运行，欢迎讨论。<br />\r\n我将专注于Python的主干，以便读者能以最快时间对Python形成概念。<br />\r\nLinux命令行将以$开始，比如 $ls, $python<br />\r\nPython命令行将以>>>开始，比如 >>>print \'Hello World!\'<br />\r\n注释会以#开始<br />\r\n<br />\r\n<br />\r\n建议<br />\r\n<br />\r\n将教程中的命令敲到Python中看看效果。<br />\r\n看过教程之后，可以进行一些练习。<br />\r\n参与文章评论区的讨论，可以更好的积累经验。<br />\r\n<br />\r\n<br />', '10', '/images/upload/course/20150915/1442295455437.jpg', '2017-10-28 18:44:23', '80', '110', '2018-02-08 10:57:32', '0', '');
INSERT INTO `edu_course` VALUES ('11', '影想力摄影小课堂', '2', '213', ',210,213,', '2015-03-30 11:58:40', '0.00', '0.00', '摄影是一门技术，同样也是经验的积累。下面是无数摄影师的经验汇聚而成的十二条最经典、最实用的摄影技巧，将其熟记于心，将帮助你应对很多难以掌控的拍摄场景 ', '<ol class=\"exp-conent-orderlist\">\r\n	<li class=\"exp-content-list list-item-1\">\r\n		<div class=\"content-list-text\">\r\n			1.\r\n阳光十六法则 (Sunny 16 \r\nRule)“阳光十六法则”是在没有测光表时，正确估算日光下曝光数值的方法，所以这条法则只有在阳光充足的情况下适合使用。将光圈设为F/16，快门与\r\nISO同步，或者略快。如，ISO设为100时，快门应该设为1/100秒(1/125秒)。所以，根据这个法则，在海滩上摄影时，应该使用F/22光\r\n圈，在多云时应使用F/11光圈。<br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=1\" target=\"_self\"><br />\r\n<span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-2\">\r\n		<div style=\"visibility:visible;\" class=\"list-icon\">\r\n			2\r\n		</div>\r\n		<div class=\"content-list-text\">\r\n			2.月光11、8和5.6法则 (Moony 11,8and 5.6 Rules)如果你想拍摄月亮，那么这里有一条很好的法则。快门与ISO同步的时候，拍摄满月用F11光圈，弦月的时候用F8光圈，新月则使用F5.6光圈。<br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=2\" target=\"_self\"><br />\r\n<span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-3\">\r\n		<div style=\"visibility:visible;\" class=\"list-icon\">\r\n			3\r\n		</div>\r\n		<div class=\"content-list-text\">\r\n			3.相机抖动法则 (Camera Shake Rule)<br />\r\n当你手持相机拍摄时，快门的速度不能小于镜头焦距的倒数。如果快门速度越慢，那么拍摄抖动时就越可能降低锐度。如果用50mm焦距的话，快门就要达到1/60秒以上为宜，只有当环境实在昏暗时，用闪光灯、脚架或者把相机放在硬物上防止抖动。<br />\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-4\">\r\n		<div class=\"content-list-text\">\r\n			4.灰板法则 (Anatomical Gray Card)<br />\r\n18%中灰版<br />\r\n随身携带18%中灰板是拍摄的利器。可是如果身上没有灰度板怎么办呢?可以将手掌摊开面向阳光，对手掌进行测光，然后加一档曝光。<br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=3\" target=\"_self\"><br />\r\n<span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-5\">\r\n		<div class=\"content-list-text\">\r\n			5.景深法则 (Depth of Field Rules)<br />\r\n后景深是前景深的2倍<br />\r\n当被摄物体比较深的时候，应该对焦点选择在景深的前1/3处，因为这样，对焦点后的景深是之前的2倍。各种光圈和焦段组合都可以使用这个法则。记住，光圈越小，焦距越短，距离被摄物体越远，景深就越大。\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-6\">\r\n		<div class=\"content-list-text\">\r\n			<br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=4\" target=\"_self\"><br />\r\n<span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-7\">\r\n		<div class=\"content-list-text\">\r\n			6.数码冲印尺寸法则 (Largest Digital Print Rule)<br />\r\n如果你想把你的作品打印成大尺寸的照片时，照片的尺寸不能大于数码图片的长宽像素各除以200，如果你对作品要求很高，那么至少得除以250。<br />\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-8\">\r\n		<div class=\"content-list-text\">\r\n			7.曝光法则 (Exposure Rules)<br />\r\n在处理数码照片时，最普遍的法则是保证高光区曝光准确，低光区随他去。可是当处理负片，特别是彩色负片的时候，你最好增曝一档。<br />\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-9\">\r\n		<div class=\"content-list-text\">\r\n			8.快速闪光输出法则 (Quick Flash-fill Rule)<br />\r\n当你的相机不能自动输出控制的闪光灯时，将闪光灯的感光度设为胶卷的二倍。如果对主体测光，机身选择光圈整档，闪光灯设为同样的光圈。这样，照片的阴影区会比主体的亮度低一档。\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-10\">\r\n		<div class=\"content-list-text\">\r\n			9.闪光距离法则 (Flash Range Rule)<br />\r\n这个法则很简单：距离乘以2，感光度乘以4。例如，你的闪光灯在ISO100时，有效距离为20米。如果你想使闪光灯的距离达到40米时，则需要提高感光度到ISO400。<br />\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-11\">\r\n		<div class=\"content-list-text\">\r\n			10.像素翻倍法则 (Megapixel Multiplier Rule)<br />\r\n如果你想使数码相机的分辨率增倍，那么很简单，就是要像素翻两番。<br />\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-12\">\r\n		<div class=\"content-list-text\">\r\n			11.\r\n捕捉动态法则 (Action-stopping \r\nRule)这条法则是根据角度与速度的经验公式而来的。如果物体沿着镜头的轴线运动你能够用1/125的快门捕捉下，那么它追至于镜头轴线的运动能用1\r\n/500秒捕捉下来。也就是说，如果物体沿镜头轴线称45度运动，只需要1/250的快门速度。 <br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=5\" target=\"_self\"><br />\r\n<span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n	<li class=\"exp-content-list list-item-13\">\r\n		<div class=\"content-list-text\">\r\n			12.日落法则 (Sunset Rule)<br />\r\n拍摄落日时，要对落日上部测光，但是不能让太阳出现在你的取景器中。如果想让日落看上去比实际晚一小时，可以在曝光补偿中减1。<br />\r\n		</div>\r\n		<div class=\"content-list-media\">\r\n			<div class=\"content-list-image clearfix\">\r\n				<br />\r\n<a class=\"exp-image-wraper\" href=\"http://jingyan.baidu.com/album/454316abbd9954f7a7c03ad8.html?picindex=6\" target=\"_self\"><span class=\"exp-album-enter-mask\"></span></a> \r\n			</div>\r\n		</div>\r\n	</li>\r\n</ol>', '9', '/images/upload/course/20150915/1442295472860.jpg', '2015-09-16 01:37:55', '12', '30', null, '1', '30');
INSERT INTO `edu_course` VALUES ('12', '数学给宝宝带来的兴趣', '2', '218', ',208,218,', '2015-03-31 07:54:43', '0.00', '0.00', '随着我国幼儿教育课程改革的不断深入，幼教工作者对幼儿园数学教育活动的研究也越来越深化。数学能力将制约一个人的发展潜力。', '游戏在<span style=\"width:auto;height:auto;float:none;\" id=\"1_nwp\"><a style=\"text-decoration:none;\" target=\"_blank\" href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&app_id=0&c=news&cf=1001&ch=0&di=128&fv=11&is_app=0&jk=c0a6c5bfffad0b2&k=%CA%FD%D1%A7%BD%CC%D3%FD&k0=%CA%FD%D1%A7%BD%CC%D3%FD&kdi0=0&luki=5&n=10&p=baidu&q=00046150_cpr&rb=0&rs=1&seller_id=1&sid=b2d0faff5b6c0a0c&ssp2=1&stid=0&t=tpclicked3_hc&td=2113080&tu=u2113080&u=http%3A%2F%2Fwww%2Ejy135%2Ecom%2Fhtml%2Ftesekecheng%2Fzhuxinsuan%2F2010%2F0124%2F24729%2Ehtml&urlid=0\" id=\"1_nwl\"><span style=\"color:#0000ff;font-size:14px;width:auto;height:auto;float:none;\">数学教育</span></a></span>中起着重要的作用，因为幼儿天生就有好奇心，驱使他们去注视、观察、摆弄、发现、探索、了解，去发现、找寻学习的乐趣。把抽象的数学知识与生动活泼的游戏紧密结合起来，能够使幼儿自发地<span style=\"width:auto;height:auto;float:none;\" id=\"2_nwp\"><a style=\"text-decoration:none;\" target=\"_blank\" href=\"http://cpro.baidu.com/cpro/ui/uijs.php?adclass=0&app_id=0&c=news&cf=1001&ch=0&di=128&fv=11&is_app=0&jk=c0a6c5bfffad0b2&k=%D3%A6%D3%C3%CA%FD%D1%A7&k0=%D3%A6%D3%C3%CA%FD%D1%A7&kdi0=0&luki=3&n=10&p=baidu&q=00046150_cpr&rb=0&rs=1&seller_id=1&sid=b2d0faff5b6c0a0c&ssp2=1&stid=0&t=tpclicked3_hc&td=2113080&tu=u2113080&u=http%3A%2F%2Fwww%2Ejy135%2Ecom%2Fhtml%2Ftesekecheng%2Fzhuxinsuan%2F2010%2F0124%2F24729%2Ehtml&urlid=0\" id=\"2_nwl\"><span style=\"color:#0000ff;font-size:14px;width:auto;height:auto;float:none;\">应用数学</span></a></span>，获得有益的经验。所以生动、形象、有趣的游戏，可以使幼儿投入到引人入胜的集体活动中去。在轻松、愉快的环境中获得知识。', '10', '/images/upload/course/20150915/1442302831779.jpg', '2015-09-16 03:40:34', '120', '256', null, '1', '80');
INSERT INTO `edu_course` VALUES ('13', '国家教师资格考试专用', '1', '217', ',208,217,', '2015-03-31 07:57:13', '0.00', '0.00', '在全面研究国家教师资格考试中学科目二的真题内容的基础上，全面总结命题规律，统计分析了教师资格教育知识与能力（中学）试题所包含的考点，最终确定了本书知识体系、结构框架以及核心内容。', '教育基础知识和基本原理、中学课程、中学教学、中学生学习心理、中学生发展心理、中学生心理辅导、中学德育、中学班级管理与教师心理八个模块内容，从最基\r\n本、最重要的考点入手，深入浅出地讲解各个知识点，帮助读者巩固知识要点，查漏补缺，稳步提升。本书做到了理论与实践的完美结合，具有极强的前瞻性和预测\r\n性，帮助广大考生圆三尺讲台之梦。', '6', '/images/upload/course/20150915/1442295506745.jpg', '2015-09-16 01:38:31', '10', '20', '2015-11-12 13:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('14', 'XHTML CSS2 JS整站制作教程课程学习', '1', '221', ',221,', '2015-04-03 06:33:34', '0.00', '0.00', 'XHTML CSS2 JS整站制作教程课程学习', 'XHTML CSS2 JS整站制作教程课程学习', '3', '/images/upload/course/20150915/1442295527931.jpg', '2015-09-16 01:39:05', '3', '14', '2015-09-20 20:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('15', 'HTML5入门课程学习', '1', '251', ',223,251,', '2015-04-03 06:34:32', '0.00', '0.00', 'HTML5草案的前身名为Web Applications 1.0。於2004年被WHATWG提出，於2007年被W3C接纳，并成立了新的HTML工作团队。在2008年1月22日，第一份正式草案已公布,预计将在2010年9月正式向公众推荐。WHATWG表示该规范是目前正在进行的工作，仍须多年的努力。', 'HTML5 吸取了 XHTML 2 一些建议，包括一些用来改善文档结构的功能，比如，新的 HTML 标签 header, footer, dialog, aside, figure 等的使用，将使内容创作者更加语义地创建文档，之前的开发者在这些场合是一律使用 div 的。  <br />\r\n  HTML5 还包含了一些将内容和展示分离的努力，开发者们也许会惊讶，b 和 i 标签依然存在，但它们的意义已经和之前有所不同，这些标签的意义只是为了将一段文字标识出来，而不是为了为它们设置粗体或斜体式样。u，font，center，strike 这些标签则被完全去掉了。  <br />\r\n  新标准适用了一些全新的表单输入对象，包括日期，URL，Email 地址，其它的对象则增加了对非拉丁字符的支持。HTML5 还引入了微数据，一种使用机器可以识别的标签标注内容的方法，使语义 Web 的处理更为简单。总的来说，这些与结构有关的改进使内容创建者可以创建更干净，更容易管理的网页，这样的网页对搜索引擎，对读屏软件等更为友好。', '23', '/images/upload/course/20150915/1442295556203.jpg', '2015-09-16 01:39:18', '0', '23', '2016-05-30 20:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('16', '20世纪西方音乐', '2', '203', ',202,203,', '2015-04-03 06:35:34', '0.00', '0.00', '《20世纪西方音乐》为分1945年以前、1945年以后两个部分，共有十六讲包括表现主义音乐、新古典主义音乐、民族主义音乐、序列音乐等不同的音乐类型。', '《20世纪西方音乐》这本教材与1991年由人民音乐出版社出版的《西方现代音乐概述》内容基本相似，进行了一定能够的整理和修改；而《西方现代音乐概\r\n述》是从1981年起我在中央音乐学院开设的一门课程的讲稿基础上整理而成的。《20世纪西方音乐》是西方音乐通史中的最后一个部分，主要涉及印象派以后\r\n的西方各种不同流派和风格的音乐。', '2', '/images/upload/course/20150915/1442295379715.jpg', '2015-09-16 01:36:23', '3', '34', '2016-04-29 20:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('17', 'MySql从入门到精通', '1', '223', ',223,', '2015-04-03 09:13:58', '0.00', '0.00', '《MySQL数据库应用从入门到精通》中的每个技术点都配备了与此相对应的实例，旨在帮助MySQL数据库初学者快速入门，同时也适合MysQL数据库管理员和想全面学习MysQL数据库技术以提升应用水平的人员使用。', '<div class=\"para\">\r\n	最适合的往往是最实用的，就像我们要讲述的MysQL一样，它的功能不是最全的，架构也不是最完善的。但是其体积小、速度快、总体拥有成本低，尤其是它具备开放源码的优势，迅速成为中小型企业和网站的首选数据库。\r\n</div>\r\n<div class=\"para\">\r\n	崔洋等编著的《MySQL数据库应用从入门到精通》共分为3篇。其中第一篇为<a target=\"_blank\" href=\"http://baike.baidu.com/subview/673475/673475.htm\">MySQL数据库</a>基础篇，内容包括数据库所涉及的基本概念、<a target=\"_blank\" href=\"http://baike.baidu.com/subview/673475/673475.htm\">MysQL数据库</a>的安装与配置。第二篇为MysQL数据库操作和应用篇，内容包括操作<a target=\"_blank\" href=\"http://baike.baidu.com/subview/50913/50913.htm\">数据库对象</a>、操作表对象、操作索引对象、操作视图对象、操作触发器对象和操作数据。第三篇为MySOL数据库管理篇，内容包括MysQL数据库的用户管理和权限管理、MysQL数据库的日志管理、MysQL数据库的性能优化和PowerDesigller数据库设计软件。\r\n</div>', '100', '/images/upload/course/20150915/1442295570359.jpg', '2015-09-16 01:39:32', '34', '125', '2015-10-30 20:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('18', 'Java精品课程', '1', '202', ',202,', '2015-04-03 09:28:46', '0.00', '0.00', 'Java是一种简单的，面象对象的、分布式的、解释的、健壮的、结构中立的、可移植的、性能优异的多线程的动态语言。 ', 'Java的发展历史，可追溯到1990年。当时Sun Microsystem公司为了发展消费性电子产品而进行了一个名为Green的项目计划。该计划\r\n负责人是James Gosling。起初他以C++来写一种内嵌式软件，可以放在烤面包机或PAD等小型电子消费设备里，使得机器更聪明，具有人工智\r\n能。但他发现C++并不适合完成这类任务！因为C++常会有使系统失效的程序错误，尤其是内存管理，需要程序设计师记录并管理内存资源。这给设计师们造成\r\n极大的负担，并可能产生许多bugs。 <br />\r\n为了解决所遇到的问题，Gosling决定要发展一种新的语言，来解决C++的潜在性危险问题，这个语言名叫Oak。Oak是一种可移植性语言，也就是一种平台独立语言，能够在各种芯片上运行。<br />\r\n1994年，Oak技术日趋成熟，这时网络正开始蓬勃发展。Oak研发小组发现Oak很适合作为一种网络程序语言。因此发展了一个能与Oak配合的浏\r\n览器--WebRunner，后更名为HotJava，它证明了Oak是一种能在网络上发展的程序语言。由于Oak商标已被注册，工程师们便想到以自己常\r\n享用的咖啡(Java)来重新命名，并于Sun World 95中被发表出来。', '20', '/images/upload/course/20150915/1442295581911.jpg', '2015-09-16 01:39:43', '150', '500', '2016-01-30 21:00:00', '0', '');
INSERT INTO `edu_course` VALUES ('19', '听力口语', '2', '204', ',202,204,', '2015-04-03 10:00:01', '0.00', '0.00', '四大优势超越期待', '<div class=\"body_content_part1_user_name\">\r\n	全球外教来你家\r\n</div>\r\n<div class=\"body_content_part1_user_job\">\r\n	专业英语任你学\r\n</div>\r\n<div class=\"body_content_part1_user_detail\">\r\n	为您甄选全球具有TESOL、TEFL等教育资格认证同时具有法律、商学、企管等等各种专业背景的资深外教。全球超过60个国家、80座城市的3000多位外籍顾问，带给您全球化语言学习环境。<br />\r\n<br />\r\n	<div class=\"body_content_part1_user_name\">\r\n		24小时随时上课\r\n	</div>\r\n	<div class=\"body_content_part1_user_job\">\r\n		灵活轻松无限制\r\n	</div>\r\n用担心堵车迟到，不用害怕高温暴雨，VIPABC为您节省更多时间。365天、24小时全年无休的授课安排，没有了时间和空间的限制，随时随地轻松学英语<br />\r\n<br />\r\n<br />\r\n	<div class=\"body_content_part1_user_name\">\r\n		专业团队护隐私\r\n	</div>\r\n	<div class=\"body_content_part1_user_job\">\r\n		躺着坐着不尴尬\r\n	</div>\r\n	<div class=\"body_content_part1_user_detail\">\r\n		专为教学设计的单向视频模式，保证了您的个人隐私。与外教自由互动的同时，让学习者无惧尴尬，大胆开口说英语。\r\n	</div>\r\n</div>', '10', '/images/upload/course/20150915/1442295592705.jpg', '2015-09-16 01:39:55', '500', '9632', null, '1', '300');
INSERT INTO `edu_course` VALUES ('20', 'C4D零基础', '2', '250', ',224,250,', '2015-04-13 17:38:12', '0.00', '0.00', 'C4D全称Cinema 4D，是3D的表现软件，以其高的运算速度和强大的渲染插件著称，适合完成大规模的阵列动画。近年来随着C4D越来越突出的表现，它在电影公司，电视包装领域受到了极高的重视。', '<p>\r\n	1.零基础轻松直达C4D中级水平，轻松学会3D；\r\n</p>\r\n<p>\r\n	2.由专业的影视传媒集团的资深从业者授课,简单轻松学会；\r\n</p>\r\n<p>\r\n	3.引用了大量耳熟能详的成功实战案例；\r\n</p>\r\n<p>\r\n	4.有专业人士对学员进行实战式培养；\r\n</p>\r\n<p>\r\n	5.丰富的练习素材分享，练习无忧；\r\n</p>\r\n<p>\r\n	6.名师答疑，为你解开困惑，提供建议；\r\n</p>', '6', '/images/upload/course/20150915/1442295604295.jpg', '2015-09-16 01:40:07', '10', '300', '2015-10-01 09:41:02', '0', '');
INSERT INTO `edu_course` VALUES ('21', '搜索引擎优化技术', '1', '221', ',221,', '2015-09-15 23:38:57', '0.00', '0.00', '学完候学生可以运用seo策略和技术，独立操作网站seo优化，包括前期网站诊断，网站数据分析，网站优化，项目实操，订单转化，团队管理，方案撰写等主流公司需要的工作技能.', '<img src=\"http://p.qpic.cn/qqke_course_info/ajNVdqHZLLB55Mfcl4iaibJ5fzbYwsWFJNTofxUPDPbd8LOsz5YzyJqwib5A3QsKOK7eXgzv7d2MAU/\" height=\"250\" width=\"850\" /><img src=\"http://p.qpic.cn/qqke_course_info/ajNVdqHZLLDw26rXTymgicZmyEBUS5Hib3wmIfVFNiaIYzhhqkxcVTZ6aN3yXIeENCd7rtxaUlMaMM/\" height=\"344\" width=\"850\" /><img src=\"http://p.qpic.cn/qqke_course_info/ajNVdqHZLLDBBDm1tRSibKKW1l7m9xzRnTFXicwMHnHmpdXNFfZAoWBOH929pc9lnUwchKYnibldJ4/\" height=\"466\" width=\"850\" />', '23', '/images/upload/course/20150915/1442302852837.jpg', '2015-09-16 03:40:54', '23', '123', null, '1', '60');

-- ----------------------------
-- Table structure for edu_course_favorites
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_favorites`;
CREATE TABLE `edu_course_favorites` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `COURSE_ID` int(11) DEFAULT '0' COMMENT '课程id',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户ID',
  `ADD_TIME` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`),
  KEY `user_id` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- ----------------------------
-- Records of edu_course_favorites
-- ----------------------------
INSERT INTO `edu_course_favorites` VALUES ('1', '10', '2', '2015-04-07 14:43:45');
INSERT INTO `edu_course_favorites` VALUES ('2', '13', '2', '2015-04-07 14:45:00');
INSERT INTO `edu_course_favorites` VALUES ('3', '12', '2', '2015-04-07 14:45:05');
INSERT INTO `edu_course_favorites` VALUES ('5', '14', '2', '2015-04-09 06:29:37');
INSERT INTO `edu_course_favorites` VALUES ('6', '15', '2', '2015-04-09 06:29:43');
INSERT INTO `edu_course_favorites` VALUES ('7', '16', '2', '2015-04-09 06:39:41');
INSERT INTO `edu_course_favorites` VALUES ('8', '17', '2', '2015-04-09 06:39:48');
INSERT INTO `edu_course_favorites` VALUES ('9', '18', '2', '2015-04-09 06:39:53');
INSERT INTO `edu_course_favorites` VALUES ('11', '10', '13', '2015-04-13 17:49:29');
INSERT INTO `edu_course_favorites` VALUES ('12', '12', '23', '2015-04-13 19:44:47');
INSERT INTO `edu_course_favorites` VALUES ('13', '12', '13', '2015-04-13 19:49:51');
INSERT INTO `edu_course_favorites` VALUES ('14', '16', '13', '2015-04-13 19:50:15');
INSERT INTO `edu_course_favorites` VALUES ('15', '17', '13', '2015-04-13 20:22:11');
INSERT INTO `edu_course_favorites` VALUES ('21', '12', '7', '2015-08-29 23:22:43');
INSERT INTO `edu_course_favorites` VALUES ('22', '10', '7', '2015-08-29 23:24:15');
INSERT INTO `edu_course_favorites` VALUES ('23', '19', '7', '2015-09-02 06:08:13');
INSERT INTO `edu_course_favorites` VALUES ('24', '14', '7', '2015-09-07 03:54:34');
INSERT INTO `edu_course_favorites` VALUES ('25', '10', '11', '2015-09-10 21:50:56');
INSERT INTO `edu_course_favorites` VALUES ('26', '21', '7', '2015-09-17 05:21:04');
INSERT INTO `edu_course_favorites` VALUES ('27', '16', '7', '2015-09-17 05:21:47');

-- ----------------------------
-- Table structure for edu_course_kpoint
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_kpoint`;
CREATE TABLE `edu_course_kpoint` (
  `KPOINT_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) DEFAULT '0' COMMENT '课程id',
  `NAME` varchar(300) DEFAULT NULL COMMENT '节点名称',
  `PARENT_ID` int(11) DEFAULT '0' COMMENT '父级ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `SORT` int(11) DEFAULT '0' COMMENT '显示排序',
  `PLAY_COUNT` int(11) DEFAULT '0' COMMENT '播放次数',
  `IS_FREE` tinyint(1) DEFAULT '0' COMMENT '是否可以试听1免费2收费',
  `VIDEO_URL` varchar(500) DEFAULT NULL COMMENT '视频地址',
  `TEACHER_ID` int(11) DEFAULT '0' COMMENT '讲师id',
  `play_time` varchar(100) DEFAULT '' COMMENT '播放时间',
  `KPOINT_TYPE` int(1) DEFAULT '0' COMMENT '节点类型 0文件目录 1视频',
  `VIDEO_TYPE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`KPOINT_ID`),
  KEY `course_id` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='知识点的基本信息';

-- ----------------------------
-- Records of edu_course_kpoint
-- ----------------------------
INSERT INTO `edu_course_kpoint` VALUES ('1', '10', '第一章', '0', '2015-03-31 17:17:11', '10', '520', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '74', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('2', '10', '第一节', '1', '2015-03-31 17:21:06', '12', '11', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '73', '11:20', '1', '');
INSERT INTO `edu_course_kpoint` VALUES ('3', '10', '第二章', '0', '2015-04-01 10:11:59', '9', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '74', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('4', '10', '1theK', '3', '2015-04-01 10:12:02', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '74', '33:00', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('5', '10', '少年时代', '1', '2015-04-01 10:12:03', '30', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '76', '10:00', '1', 'IFRAME');
INSERT INTO `edu_course_kpoint` VALUES ('13', '19', '第一章节：首先教学搭建开发环境', '0', '2015-04-13 21:31:16', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '83', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('14', '20', '新创建视频', '0', '2015-04-13 21:38:28', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '83', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('15', '14', '第一章', '0', '2015-05-12 15:45:45', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '74', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('16', '14', 'XHTML CSS2 JS整站制作教程课1', '15', '2015-05-12 15:46:14', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '78', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('17', '19', '第一课时：输入与输出和用户交互', '13', '2015-09-01 17:10:19', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '82', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('18', '19', '第二课时：输入出和用户交互', '13', '2015-09-01 17:10:55', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '75', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('19', '19', '第二章节：首先教学搭建开发环境', '0', '2015-09-01 17:21:12', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '73', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('20', '19', '第一课时', '19', '2015-09-01 17:21:47', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '78', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('32', '14', '第二章', '0', '2015-09-10 11:33:58', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '82', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('33', '14', 'XHTML CSS2 JS 第二章 一节', '32', '2015-09-10 11:34:19', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '80', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('34', '14', 'XHTML CSS2 JS整站制作教程课2', '15', '2015-09-10 11:37:49', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '77', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('35', '16', '第一章', '0', '2015-09-10 11:40:32', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '74', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('36', '16', '第二章', '0', '2015-09-10 11:40:48', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '75', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('37', '16', '第一节', '35', '2015-09-10 11:41:05', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '76', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('38', '16', '第一节', '36', '2015-09-10 11:41:44', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '82', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('39', '16', '第二节', '35', '2015-09-10 11:43:02', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '78', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('40', '17', '第一章', '0', '2015-09-10 13:35:14', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '75', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('41', '17', '第一节', '40', '2015-09-10 13:35:41', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '78', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('48', '10', '第四章', '0', '2015-09-19 10:21:43', '8', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '83', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('49', '10', '新创建视频1', '48', '2015-09-19 10:21:47', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '82', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('53', '10', '新创建视频2', '48', '2015-09-19 10:28:26', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '75', '', '1', null);
INSERT INTO `edu_course_kpoint` VALUES ('56', '10', '新创建视频', '0', '2017-09-29 16:37:54', '0', '0', '1', 'http://101.200.204.183:8080/inxedu/images/upload/video/1.mp4', '0', null, '1', null);

-- ----------------------------
-- Table structure for edu_course_note
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_note`;
CREATE TABLE `edu_course_note` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户ID',
  `COURSE_ID` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `KPOINT_ID` int(11) NOT NULL DEFAULT '0' COMMENT '节点ID',
  `CONTENT` longtext NOT NULL COMMENT '笔记信息',
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `STATUS` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0公开1隐藏',
  PRIMARY KEY (`ID`),
  KEY `CUS_ID` (`KPOINT_ID`),
  KEY `POINT_ID` (`COURSE_ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='笔记信息';

-- ----------------------------
-- Records of edu_course_note
-- ----------------------------
INSERT INTO `edu_course_note` VALUES ('1', '7', '19', '17', '我诶哦去我i饿哦那哦哦i哦<img class=\"vam\" alt=\"\" src=\"http://192.168.110.60:8080/kindeditor/plugins/emoticons/images/33.gif\" border=\"0\" />', '2015-09-08 22:24:44', '0');
INSERT INTO `edu_course_note` VALUES ('2', '7', '19', '18', '<img class=\"vam\" src=\"http://127.0.0.1:8080/kindeditor/plugins/emoticons/images/33.gif\" alt=\"\" border=\"0\" />啦啦啦啦啦', '2015-09-08 02:55:45', '0');
INSERT INTO `edu_course_note` VALUES ('3', '7', '10', '5', '<img class=\"vam\" src=\"http://127.0.0.1:8080/kindeditor/plugins/emoticons/images/79.gif\" alt=\"\" border=\"0\" />赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞<br />', '2015-09-11 06:03:49', '0');

-- ----------------------------
-- Table structure for edu_course_studyhistory
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_studyhistory`;
CREATE TABLE `edu_course_studyhistory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL COMMENT '用户id',
  `COURSE_ID` int(11) NOT NULL COMMENT '课程id',
  `KPOINT_ID` int(11) NOT NULL COMMENT '节点id',
  `PLAYERCOUNT` int(11) NOT NULL DEFAULT '0' COMMENT '观看次数,累加',
  `COURSE_NAME` varchar(50) DEFAULT NULL COMMENT '课程名称',
  `KPOINT_NAME` varchar(50) DEFAULT NULL COMMENT '节点名称',
  `DATABACK` text COMMENT 'playercount小于20时记录,备注观看的时间，叠加',
  `UPDATE_TIME` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后观看时间',
  PRIMARY KEY (`ID`),
  KEY `user_course_id` (`USER_ID`,`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='课程播放记录(学习记录)';

-- ----------------------------
-- Records of edu_course_studyhistory
-- ----------------------------
INSERT INTO `edu_course_studyhistory` VALUES ('1', '7', '19', '17', '43', '听力口语', '第一课时：输入与输出和用户交互', '2015-09-08 06:11:56,2015-09-08 06:10:23,2015-09-08 05:35:42,2015-09-08 05:33:20,2015-09-08 03:20:59,2015-09-08 03:18:42,2015-09-08 02:22:56,2015-09-07 07:10:08,2015-09-07 07:09:10,2015-09-07 07:08:14,2015-09-07 07:00:17,2015-09-07 06:57:51,2015-09-07 06:57:12,2015-09-07 06:57:05,2015-09-07 06:56:24,2015-09-07 06:56:17,2015-09-07 06:55:40,2015-09-07 06:54:26,2015-09-07 06:52:53,2015-09-07 06:52:08,2015-09-07 06:47:17,2015-09-07 06:46:44,2015-09-07 06:42:31,2015-09-07 06:40:39,2015-09-07 06:38:23,', '2015-09-08 14:11:56');
INSERT INTO `edu_course_studyhistory` VALUES ('2', '7', '19', '18', '4', '听力口语', '第二课时：输入出和用户交互', '2015-09-07 06:56:20,2015-09-07 06:55:44,2015-09-07 06:54:36,2015-09-06 02:55:27,', '2015-09-07 14:56:20');
INSERT INTO `edu_course_studyhistory` VALUES ('3', '7', '10', '5', '89', '零基础入门学习Python课程学习', '少年时代', '2015-09-19 09:45:35,2015-09-19 09:43:10,2015-09-19 09:43:08,2015-09-19 09:43:02,2015-09-19 09:32:05,2015-09-19 09:28:32,2015-09-19 09:27:16,2015-09-19 09:27:12,2015-09-19 09:27:08,2015-09-19 09:26:28,2015-09-19 09:25:58,2015-09-19 05:40:40,2015-09-19 05:40:06,2015-09-19 05:39:55,2015-09-18 08:37:36,2015-09-18 08:32:24,2015-09-18 08:30:40,2015-09-16 08:04:20,2015-09-16 08:03:08,2015-09-16 08:01:00,2015-09-16 08:00:00,2015-09-16 07:59:21,2015-09-16 07:58:48,2015-09-16 07:55:12,2015-09-16 07:54:54,', '2015-09-19 17:45:35');
INSERT INTO `edu_course_studyhistory` VALUES ('4', '7', '14', '16', '6', 'XHTML CSS2 JS整站制作教程课程学习', '有种你爱我', '2015-09-08 09:35:18,2015-09-08 09:34:34,2015-09-08 09:34:01,2015-09-08 09:32:56,2015-09-08 09:32:07,2015-09-08 09:31:46,', '2015-09-08 17:35:18');
INSERT INTO `edu_course_studyhistory` VALUES ('5', '7', '10', '2', '22', '零基础入门学习Python课程学习', '第一节', '2015-09-19 09:45:36,2015-09-19 09:43:09,2015-09-19 09:43:03,2015-09-19 09:32:07,2015-09-19 09:28:33,2015-09-19 09:27:16,2015-09-19 09:27:13,2015-09-19 09:27:09,2015-09-19 09:26:29,2015-09-19 09:26:17,2015-09-19 05:40:04,2015-09-18 08:34:03,2015-09-10 10:03:07,2015-09-10 08:12:59,2015-09-10 08:12:51,2015-09-10 08:11:05,2015-09-10 08:10:14,2015-09-10 08:08:17,2015-09-10 08:06:45,2015-09-09 19:35:56,2015-09-09 19:09:21,2015-09-09 06:15:08,', '2015-09-19 17:45:36');
INSERT INTO `edu_course_studyhistory` VALUES ('6', '10', '10', '5', '1', '零基础入门学习Python课程学习', '少年时代', '2015-09-09 20:30:57,', '2015-09-09 16:30:57');
INSERT INTO `edu_course_studyhistory` VALUES ('7', '6', '14', '16', '2', 'XHTML CSS2 JS整站制作教程课程学习', 'XHTML CSS2 JS整站制作教程课1', '2015-09-24 02:26:54,2015-09-10 03:39:11,', '2015-09-24 10:26:54');
INSERT INTO `edu_course_studyhistory` VALUES ('8', '6', '14', '34', '2', 'XHTML CSS2 JS整站制作教程课程学习', 'XHTML CSS2 JS整站制作教程课2', '2015-09-10 03:39:24,2015-09-10 03:39:17,', '2015-09-10 11:39:24');
INSERT INTO `edu_course_studyhistory` VALUES ('9', '6', '14', '33', '1', 'XHTML CSS2 JS整站制作教程课程学习', 'XHTML CSS2 JS 第二章 一节', '2015-09-10 03:39:21,', '2015-09-10 11:39:21');
INSERT INTO `edu_course_studyhistory` VALUES ('10', '7', '10', '4', '8', '零基础入门学习Python课程学习', '1theK', '2015-09-19 09:27:18,2015-09-18 08:34:13,2015-09-10 08:12:54,2015-09-10 08:12:47,2015-09-10 08:11:07,2015-09-10 08:10:16,2015-09-10 08:08:20,2015-09-10 08:06:53,', '2015-09-19 17:27:18');
INSERT INTO `edu_course_studyhistory` VALUES ('11', '7', '10', '44', '18', '零基础入门学习Python课程学习', '第三章', '2015-09-19 09:43:11,2015-09-19 09:43:04,2015-09-19 09:42:51,2015-09-19 09:38:14,2015-09-19 09:32:08,2015-09-19 09:32:02,2015-09-19 09:28:34,2015-09-19 09:28:29,2015-09-19 09:27:19,2015-09-19 09:27:14,2015-09-19 09:27:11,2015-09-19 09:27:06,2015-09-19 09:26:31,2015-09-19 09:26:03,2015-09-19 09:25:56,2015-09-19 09:17:07,2015-09-19 05:40:50,2015-09-19 05:40:42,', '2015-09-19 17:43:11');
INSERT INTO `edu_course_studyhistory` VALUES ('12', '7', '10', '54', '2', '零基础入门学习Python课程学习', '新创建视频', '2015-09-19 09:13:58,2015-09-19 05:40:45,', '2015-09-19 17:13:58');

-- ----------------------------
-- Table structure for edu_course_subject
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_subject`;
CREATE TABLE `edu_course_subject` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `SUBJECT_ID` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `course_subject` (`COURSE_ID`,`SUBJECT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of edu_course_subject
-- ----------------------------
INSERT INTO `edu_course_subject` VALUES ('13', '4', '222');
INSERT INTO `edu_course_subject` VALUES ('14', '5', '209');
INSERT INTO `edu_course_subject` VALUES ('15', '6', '209');
INSERT INTO `edu_course_subject` VALUES ('16', '3', '206');
INSERT INTO `edu_course_subject` VALUES ('17', '7', '210');
INSERT INTO `edu_course_subject` VALUES ('18', '8', '217');

-- ----------------------------
-- Table structure for edu_course_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_course_teacher`;
CREATE TABLE `edu_course_teacher` (
  `COURSE_ID` int(11) DEFAULT NULL COMMENT '课程id',
  `TEACHER_ID` int(11) DEFAULT NULL COMMENT '讲师id',
  KEY `course_id` (`COURSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='课程讲师关联';

-- ----------------------------
-- Records of edu_course_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for edu_msg_receive
-- ----------------------------
DROP TABLE IF EXISTS `edu_msg_receive`;
CREATE TABLE `edu_msg_receive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ADD_TIME` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `CUS_ID` int(11) DEFAULT '0' COMMENT '发信人用户id',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `CONTENT` text COMMENT '信内容',
  `TYPE` tinyint(3) DEFAULT '0' COMMENT '类型1系统通知2站内信',
  `STATUS` tinyint(3) DEFAULT '0' COMMENT '0未读1已读2接受3拒绝4黑名单',
  `RECEIVING_CUSID` int(11) DEFAULT '0' COMMENT '收信人id',
  `GROUP_ID` int(11) DEFAULT '0' COMMENT '申请加入群同意之后所需要的字段',
  `SHOWNAME` varchar(50) NOT NULL DEFAULT '' COMMENT '会员名',
  PRIMARY KEY (`ID`),
  KEY `CUS_ID` (`CUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='站内信';

-- ----------------------------
-- Records of edu_msg_receive
-- ----------------------------
INSERT INTO `edu_msg_receive` VALUES ('1', '2015-08-31 22:07:56', '0', '2015-08-31 22:07:56', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('2', '2015-08-31 22:11:53', '0', '2015-08-31 22:11:54', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('3', '2015-08-31 22:13:34', '0', '2015-08-31 22:13:34', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('4', '2015-08-31 22:20:26', '0', '2015-08-31 22:20:26', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('5', '2015-08-31 22:26:40', '0', '2015-08-31 22:26:40', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('6', '2015-08-31 22:28:46', '0', '2015-08-31 22:28:46', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('7', '2015-08-31 22:30:57', '0', '2015-08-31 22:30:57', '欢迎...........', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('30', '2015-09-01 23:37:07', '0', '2015-09-01 19:29:39', '欢迎来到因酷教育网站<br />', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('31', '2015-09-01 23:46:01', '0', '2015-09-01 23:46:01', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '1', null, '');
INSERT INTO `edu_msg_receive` VALUES ('32', '2015-09-01 23:46:09', '0', '2015-09-01 23:46:09', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '2', null, '');
INSERT INTO `edu_msg_receive` VALUES ('33', '2015-09-01 23:46:13', '0', '2017-09-14 20:44:22', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '1', '3', null, '小少爷');
INSERT INTO `edu_msg_receive` VALUES ('34', '2015-09-01 23:46:18', '0', '2015-09-01 23:46:18', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '4', null, '');
INSERT INTO `edu_msg_receive` VALUES ('35', '2015-09-01 23:46:20', '0', '2015-09-01 23:46:20', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '5', null, '');
INSERT INTO `edu_msg_receive` VALUES ('36', '2015-09-01 23:46:23', '0', '2015-09-01 23:46:23', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '6', null, '颦儿');
INSERT INTO `edu_msg_receive` VALUES ('37', '2015-09-01 23:46:25', '0', '2015-09-02 23:44:13', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('38', '2015-09-01 23:46:26', '0', '2015-09-01 23:46:26', '欢迎来到因酷教育,希望你们能愉快的学习<br />', '1', '0', '8', null, '');
INSERT INTO `edu_msg_receive` VALUES ('39', '2015-09-01 23:50:36', '0', '2015-09-02 23:44:13', '<img class=\"vam\" src=\"http://127.0.0.1:8080/kindeditor/plugins/emoticons/images/13.gif\" alt=\"\" border=\"0\" />哈哈哈哈哈哈哈<br />', '1', '1', '7', null, '朗诵');
INSERT INTO `edu_msg_receive` VALUES ('40', '2015-09-02 04:21:54', '0', '2015-09-02 04:21:54', '欢迎来到INXEDU 在线教育平台,希望您能够快乐的学习', '1', '0', '9', null, '');
INSERT INTO `edu_msg_receive` VALUES ('41', '2015-09-10 03:35:12', '0', '2015-09-10 03:36:02', '欢迎来到INXEDU 在线教育平台,希望您能够快乐的学习', '1', '1', '10', null, '');
INSERT INTO `edu_msg_receive` VALUES ('42', '2015-09-10 21:39:14', '0', '2015-09-10 21:39:14', '欢迎来到INXEDU 在线教育平台,希望您能够快乐的学习', '1', '0', '11', null, '');
INSERT INTO `edu_msg_receive` VALUES ('43', '2017-09-14 20:44:22', '0', '2017-09-14 20:44:22', '欢迎...........', '1', '1', '3', null, '小少爷');
INSERT INTO `edu_msg_receive` VALUES ('45', '2017-10-20 09:18:52', '0', '2017-10-20 09:18:52', '欢迎来到中国数据人才唯一培养单位,希望您能够快乐的学习', '1', '0', '13', null, '');

-- ----------------------------
-- Table structure for edu_msg_system
-- ----------------------------
DROP TABLE IF EXISTS `edu_msg_system`;
CREATE TABLE `edu_msg_system` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ADD_TIME` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `UPDATE_TIME` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `CONTENT` text COMMENT '信内容',
  `STATUS` tinyint(3) DEFAULT '0' COMMENT '0正常1删除2过期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统消息';

-- ----------------------------
-- Records of edu_msg_system
-- ----------------------------
INSERT INTO `edu_msg_system` VALUES ('1', '2015-08-31 21:31:27', '2015-08-31 21:31:26', '欢迎...........', '0');

-- ----------------------------
-- Table structure for edu_orders
-- ----------------------------
DROP TABLE IF EXISTS `edu_orders`;
CREATE TABLE `edu_orders` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `COURSE_ID` int(11) DEFAULT '0' COMMENT '课程ID',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户ID',
  `ORDER_NO` varchar(50) DEFAULT NULL COMMENT '订单号',
  `SUM_MONEY` decimal(10,2) DEFAULT '0.00' COMMENT '订单总金额',
  `STATES` varchar(10) DEFAULT NULL COMMENT '订单状态 SUCCESS已支付 INIT未支付  CANCEL已取消',
  `DESCRIBE` varchar(255) DEFAULT NULL COMMENT '订单购买内容简单描述',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `PAY_TIME` timestamp NULL DEFAULT NULL COMMENT '订单支付时间',
  `SYS_USER_ID` int(11) DEFAULT '0' COMMENT '审核用户ID',
  `EXPIRE_TIME` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '课程过期时间',
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='课程订单表';

-- ----------------------------
-- Records of edu_orders
-- ----------------------------
INSERT INTO `edu_orders` VALUES ('1', '19', '7', '1437620157823-7', '0.01', 'SUCCESS', '购买《听力口语》课程', '2015-07-23 18:55:57', '2015-07-27 18:24:18', '2', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('2', '10', '7', '1440810564636-7', '0.01', 'INIT', '购买《零基础入门学习Python课程学习》课程', '2015-08-29 21:09:24', null, '0', '2016-09-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('3', '16', '7', '1440810588717-7', '0.01', 'CANCEL', '购买《20世纪西方音乐》课程', '2015-08-29 21:09:48', null, '0', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('4', '10', '7', '1441071866098-7', '0.01', 'SUCCESS', '购买《零基础入门学习Python课程学习》课程', '2015-09-01 21:44:26', '2015-09-09 01:57:51', '2', '2016-09-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('5', '10', '7', '1441097063936-7', '0.01', 'SUCCESS', '购买《零基础入门学习Python课程学习》课程', '2015-09-02 04:44:23', '2015-09-09 01:57:49', '2', '2016-09-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('6', '10', '7', '1441606531792-7', '0.01', 'SUCCESS', '购买《零基础入门学习Python课程学习》课程', '2015-09-08 02:15:31', '2015-09-09 01:57:47', '2', '2016-09-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('7', '16', '7', '1441678437807-7', '0.01', 'SUCCESS', '购买《20世纪西方音乐》课程', '2015-09-08 22:13:57', '2015-09-09 01:57:45', '2', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('8', '17', '10', '1441828697744-10', '0.01', 'INIT', '购买《MySql从入门到精通》课程', '2015-09-10 03:58:17', null, '0', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('9', '15', '10', '1441829752143-10', '0.01', 'CANCEL', '购买《HTML5入门课程学习》课程', '2015-09-10 04:15:52', null, '0', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('10', '18', '10', '1441829866677-10', '0.01', 'CANCEL', '购买《Java精品课程》课程', '2015-09-10 04:17:46', null, '0', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('11', '16', '10', '1441830088136-10', '0.01', 'CANCEL', '购买《20世纪西方音乐》课程', '2015-09-10 04:21:28', null, '0', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('12', '10', '10', '1441830567357-10', '0.01', 'SUCCESS', '购买《零基础入门学习Python课程学习》课程', '2015-09-10 04:29:27', '2015-09-10 04:29:56', '0', '2016-09-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('13', '12', '7', '1441787446855-7', '0.01', 'SUCCESS', '购买《新创建课程》课程', '2015-09-10 04:30:46', '2017-10-09 16:53:31', '2', '0000-00-00 00:00:00');
INSERT INTO `edu_orders` VALUES ('16', '17', '6', '14419517539406', '0.01', 'SUCCESS', '购买《MySql从入门到精通》课程', '2015-09-12 02:09:13', '2015-09-15 06:35:00', '0', '2015-10-30 08:00:00');
INSERT INTO `edu_orders` VALUES ('17', '16', '7', '14419547932327', '0.01', 'SUCCESS', '购买《20世纪西方音乐》课程', '2015-09-12 02:59:53', '2017-10-19 11:24:41', '2', '2016-04-29 08:00:00');
INSERT INTO `edu_orders` VALUES ('18', '17', '4', '14422000744324', '0.01', 'CANCEL', '购买《MySql从入门到精通》课程', '2015-09-14 23:07:54', null, '0', '2015-10-30 08:00:00');
INSERT INTO `edu_orders` VALUES ('19', '17', '3', '14422094907713', '0.01', 'INIT', '购买《MySql从入门到精通》课程', '2015-09-15 01:44:50', null, '0', '2015-10-30 08:00:00');
INSERT INTO `edu_orders` VALUES ('20', '15', '3', '14422096908333', '116.00', 'INIT', '购买《HTML5入门课程学习》课程', '2015-09-15 01:48:10', null, '0', '2016-05-30 08:00:00');
INSERT INTO `edu_orders` VALUES ('21', '20', '3', '14422099080083', '108.00', 'INIT', '购买《C4D零基础》课程', '2015-09-15 01:51:48', null, '0', '2015-09-30 21:41:02');
INSERT INTO `edu_orders` VALUES ('22', '13', '6', '14430632963236', '18.00', 'SUCCESS', '购买《国家教师资格考试专用》课程', '2015-09-24 22:54:56', '2017-10-09 16:53:41', '2', '2015-11-12 00:00:00');
INSERT INTO `edu_orders` VALUES ('23', '15', '6', '14430647497126', '116.00', 'CANCEL', '购买《HTML5入门课程学习》课程', '2015-09-24 23:19:09', null, '0', '2016-05-30 08:00:00');

-- ----------------------------
-- Table structure for edu_praise
-- ----------------------------
DROP TABLE IF EXISTS `edu_praise`;
CREATE TABLE `edu_praise` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `USER_ID` int(11) DEFAULT NULL COMMENT '用户id',
  `TARGET_ID` int(11) DEFAULT NULL COMMENT '点赞的对象id',
  `TYPE` int(11) DEFAULT NULL COMMENT '点赞类型 1问答点赞 2问答评论点赞 3 文章点赞数4 评论点赞',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='所有的点赞表';

-- ----------------------------
-- Records of edu_praise
-- ----------------------------
INSERT INTO `edu_praise` VALUES ('15', '7', '6', '3', '2015-08-27 15:23:51');
INSERT INTO `edu_praise` VALUES ('33', '7', '12', '4', '2015-08-28 11:49:37');
INSERT INTO `edu_praise` VALUES ('34', '7', '14', '4', '2015-08-28 15:43:17');
INSERT INTO `edu_praise` VALUES ('35', '7', '20', '4', '2015-08-28 16:28:54');
INSERT INTO `edu_praise` VALUES ('36', '7', '22', '4', '2015-08-28 16:52:31');
INSERT INTO `edu_praise` VALUES ('37', '7', '26', '4', '2015-08-29 10:26:23');
INSERT INTO `edu_praise` VALUES ('38', '7', '27', '4', '2015-08-29 10:26:55');
INSERT INTO `edu_praise` VALUES ('39', '7', '32', '4', '2015-08-29 10:41:30');
INSERT INTO `edu_praise` VALUES ('40', '7', '7', '3', '2015-08-29 15:40:23');
INSERT INTO `edu_praise` VALUES ('41', '7', '17', '3', '2015-08-29 15:40:42');
INSERT INTO `edu_praise` VALUES ('43', '7', '52', '4', '2015-09-01 18:42:47');
INSERT INTO `edu_praise` VALUES ('44', '7', '35', '4', '2015-09-08 17:36:45');
INSERT INTO `edu_praise` VALUES ('45', '7', '54', '4', '2015-09-09 11:55:38');
INSERT INTO `edu_praise` VALUES ('46', '7', '8', '3', '2015-09-09 15:54:55');
INSERT INTO `edu_praise` VALUES ('47', '10', '6', '3', '2015-09-09 16:35:17');
INSERT INTO `edu_praise` VALUES ('48', '11', '6', '3', '2015-09-10 09:43:21');
INSERT INTO `edu_praise` VALUES ('49', '7', '6', '1', '2015-09-10 10:20:06');
INSERT INTO `edu_praise` VALUES ('50', '7', '1', '2', '2015-09-10 10:20:22');
INSERT INTO `edu_praise` VALUES ('51', '7', '2', '2', '2015-09-10 10:20:52');
INSERT INTO `edu_praise` VALUES ('52', '3', '6', '1', '2015-09-10 10:22:54');
INSERT INTO `edu_praise` VALUES ('53', '3', '2', '2', '2015-09-10 10:22:57');
INSERT INTO `edu_praise` VALUES ('54', '6', '6', '2', '2015-09-10 10:34:21');
INSERT INTO `edu_praise` VALUES ('55', '6', '9', '1', '2015-09-10 10:35:46');
INSERT INTO `edu_praise` VALUES ('56', '7', '10', '2', '2015-09-15 17:09:46');
INSERT INTO `edu_praise` VALUES ('57', '7', '10', '3', '2015-09-15 17:27:46');
INSERT INTO `edu_praise` VALUES ('58', '7', '5', '1', '2015-09-15 17:29:28');
INSERT INTO `edu_praise` VALUES ('59', '7', '9', '1', '2015-09-19 10:14:36');
INSERT INTO `edu_praise` VALUES ('60', '7', '10', '4', '2015-09-19 16:49:20');
INSERT INTO `edu_praise` VALUES ('61', '7', '20', '2', '2015-09-19 16:51:44');
INSERT INTO `edu_praise` VALUES ('62', '7', '13', '2', '2015-09-19 16:52:09');
INSERT INTO `edu_praise` VALUES ('63', '7', '24', '2', '2015-09-19 17:00:24');
INSERT INTO `edu_praise` VALUES ('64', '7', '25', '2', '2015-09-19 17:00:52');
INSERT INTO `edu_praise` VALUES ('65', '7', '67', '4', '2015-09-19 17:34:49');
INSERT INTO `edu_praise` VALUES ('66', '7', '69', '4', '2015-09-19 17:34:54');
INSERT INTO `edu_praise` VALUES ('67', '7', '30', '2', '2015-09-19 17:36:25');
INSERT INTO `edu_praise` VALUES ('68', '6', '10', '2', '2015-09-21 09:12:20');
INSERT INTO `edu_praise` VALUES ('69', '6', '17', '2', '2015-09-21 09:12:39');
INSERT INTO `edu_praise` VALUES ('70', '6', '15', '2', '2015-09-21 09:13:41');
INSERT INTO `edu_praise` VALUES ('71', '6', '58', '4', '2015-09-24 10:27:03');
INSERT INTO `edu_praise` VALUES ('72', '6', '35', '4', '2015-09-24 10:27:16');

-- ----------------------------
-- Table structure for edu_questions
-- ----------------------------
DROP TABLE IF EXISTS `edu_questions`;
CREATE TABLE `edu_questions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `CUS_ID` int(11) DEFAULT NULL COMMENT '创建人id',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '问答标题',
  `CONTENT` text COMMENT '问答内容',
  `TYPE` int(1) DEFAULT NULL COMMENT '分类 1课程问答 2 学习分享',
  `STATUS` int(1) DEFAULT '0' COMMENT '状态 0可回复1不可回复（采纳最佳答案后改为1 ）',
  `REPLY_COUNT` int(11) DEFAULT '0' COMMENT '问答回复数量',
  `BROWSE_COUNT` int(11) DEFAULT '0' COMMENT '问答浏览次数',
  `PRAISE_COUNT` int(11) DEFAULT '0' COMMENT '问答点赞数量',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='问答';

-- ----------------------------
-- Records of edu_questions
-- ----------------------------
INSERT INTO `edu_questions` VALUES ('1', '7', '视频在播放的时候视频会闪一下，但是视频无法正常播放。', '视频在播放的时候视频会闪一下，但是视频无法正常播放。', '1', '0', '0', '5', '0', '2015-09-10 10:04:58');
INSERT INTO `edu_questions` VALUES ('2', '7', '谁知道支付宝即时到账接口中的有卡就能付没有了怎么回事', '谁知道支付宝即时到账接口中的有卡就能付没有了怎么回事', '1', '0', '0', '12', '0', '2015-09-10 10:07:01');
INSERT INTO `edu_questions` VALUES ('3', '7', 'jbpm5.4 执行TaskClient.start(taskId, userId, responseHandler);', '公文提交的时候 抛出异常 ，提示当前用户不能执行start方法。具体异常如下：\n\norg.jbpm.task.service.PermissionDeniedException: User \'[User:\'admin\']\' was unable to execution operation \'Start\' on task id 2 due to a no \'current status\' match\n\n	at org.jbpm.task.service.TaskServiceSession.evalCommand(TaskServiceSession.java:300)\n\n	at org.jbpm.task.service.TaskServiceSession.taskOperation(TaskServiceSession.java:415)\n\n	at org.jbpm.task.service.TaskServerHandler.messageReceived(TaskServerHandler.java:92)\n\n	at org.jbpm.task.service.hornetq.HornetQTaskServerHandler.messageReceived(HornetQTaskServerHandler.java:44)\n\n	at org.jbpm.task.service.hornetq.BaseHornetQTaskServer.run(BaseHornetQTaskServer.java:85)\n\n	at java.lang.Thread.run(Thread.java:619)', '1', '0', '0', '3', '0', '2015-09-10 10:08:14');
INSERT INTO `edu_questions` VALUES ('4', '7', 'photoshop怎么抠图 ,能详细点吗', '将一个图片中的某一部分单独抠出来，或者更换别的背景，或者用于别的图片当中', '1', '0', '1', '10', '0', '2015-09-10 10:11:43');
INSERT INTO `edu_questions` VALUES ('5', '7', '我的MYSQL日志学习心得,给大家分享', '二进制日志\n\n二进制日志就是我们经常说的binlog，主要记录mysql数据库的变化。\n\n二进制日志以一种有效的格式，并且是事务安全的方式包含更新日志中可用的所有信息。\n\n \n\n二进制日志包含关于每个更新数据库的语句的执行时间信息。他不包含没有修改任何数据的语句，例如select语句\n\n使用二进制日志的最大目的是最大可能地恢复数据库，因为二进制日志包含备份后进行的所有更新\n\n \n\n1、启动和设置二进制日志\n\n默认情况下，二进制日志是关闭的，可以通过修改mysql的配置文件来启动和设置二进制日志\n\nmy.ini中[mysqld]组下面有几个设置是关于二进制日志的：\n\nlog-bin[=PATH/[FILENAME]]\nexpire_logs_days=10\nmax_binlog_size=100M\n\nlog-bin定义开启二进制日志；path表明日志文件所在的目录路径；\n\nfilename指定了日志文件的名称，如文件的全名是filename.0001，filename.0002等\n\n除了上述文件之外，还有一个成为filename.index的文件，文件内容为所有日志的清单，可以使用记事本打开该文件\n\nfilename.index文件的内容，joe是我的计算机名，当前只有一个binlog文件：.\\joe-bin.000001\n\n.\\joe-bin.000001\n\n \n\nexpire_logs_days定义了mysql清除过期日志的时间，即二进制日志自动删除的天数。\n\n默认值为0，表示“没有自动删除”。当mysql启动或刷新二进制日志时可能删除该文件\n\n \n\nmax_binlog_size定义了单个文件的大小限制，如果二进制日志写入的内容大小超出给定值，日志就会发生滚动\n\n（关闭当前文件，重新打开一个新的日志文件）。不能将该变量设置为大于1GB或小于4096字节。默认值是1GB\n\n \n\n如果正在使用大事务 ，二进制日志文件大小还可能超过max_binlog_size的定义大小。\n\n在my.ini配置文件中的[mysqld]组下，添加以下几个参数与参数值\n\n[mysqld]\nlog-bin\nexpire_logs_days=10\nmax_binlog_size=100M\n\n添加完毕之后，关闭并重启mysql服务进程，即可打开二进制日志，然后可以通过SHOW VARIABLES语句来查询日志设置\n\n \n\n使用show VARIABLES  语句查看日志设置\n\nshow VARIABLES  LIKE \'%log_%\';\n\n \n\n可以看到log_bin为ON，max_binlog_size为104857600字节，换算为MB为100MB\n\nMYSQL重新启动之后，就可以看到新产生的文件后缀为.000001和.index的两个文件，文件名称默认为主机名称\n\n如果想改变日志文件的目录位置，可以修改my.ini中log-bin参数\n\n例如：\n\n[mysqld]\nlog-bin=\"D:\\mysql\\log\\binlog\"\n\n关闭并重启mysql服务之后，新的二进制日志将出现在\"D:\\mysql\\log\\binlog\"路径下\n\n \n\n提示：数据库文件最好不要和日志文件放在同一个磁盘上，这样当数据库文件所在磁盘发生损坏的时候，可以使用日志来恢复数据\n\n \n\n2、查看二进制日志\n\nmysql二进制日志是经常用到的。当mysql创建二进制日志文件时，首先创建一个以filename为名称，以index为后缀的文件；\n\n再创建一个以filename为名称，以“.000001”为后缀的文件。当mysql服务重新启动一次，以“.000001”为后缀的文件会增加一个，\n\n并且后缀名加1递增；如果日志长度超过了max_binlog_size的上限（默认是1GB）也会创建一个新的日志文件\n\n \n\nshow binary logs语句可以查看当前二进制日志文件个数和文件名。mysql二进制日志并不能直接查看，如果要查看日志内容，\n\n可以通过mysqlbinlog命令查看\n\n \n\n使用show binary logs语句查看二进制日志文件个数和文件名\n\nSHOW BINARY LOGS;\n\n可以看到，当前有两个二进制日志文件，因为我把mysql服务重启了一次，日志文件的个数和mysql服务启动的次数相同。\n\n每启动一次mysql服务，将会产生一个新的日志文件\n\n \n\n使用mysqlbinlog查看二进制日志\n\nmysqlbinlog是一个单独的exe，需要在命令行里执行我们把binlog文件里面的内容导出到binlog.txt\n\nmysqlbinlog  \"D:\\Program Files (x86)\\MySQL\\MySQL Server5.5\\data\\joe-bin.000002\" >c:\\binlog.txt\n\n/*!40019 SET @@session.max_insert_delayed_threads=0*/;\n/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;\nDELIMITER /*!*/;\n# at 4\n#140731  7:49:30 server id 1  end_log_pos 107     Start: binlog v 4, server v 5.5.20-log created 140731  7:49:30 at startup\n# Warning: this binlog is either in use or was not closed properly.\nROLLBACK/*!*/;\nBINLOG \'\nioTZUw8BAAAAZwAAAGsAAAABAAQANS41LjIwLWxvZwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\nAAAAAAAAAAAAAAAAAACKhNlTEzgNAAgAEgAEBAQEEgAAVAAEGggAAAAICAgCAA==\n\'/*!*/;\nDELIMITER ;\n# End of log file\nROLLBACK /* added by mysqlbinlog */;\n/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;\n\n \n\n3、删除二进制日志\n\nmysql的二进制日志可以配置自动删除，同时mysql也提供了安全的手动删除二进制日志的方法\n\n删除所有的二进制日志文件使用RESET MASTER;\n\nRESET MASTER;\n\n执行该语句，所有二进制日志将被删除，mysql 会重新创建二进制日志，新的日志文件扩展名将重新从000001开始编号\n\n \n\n只删除部分二进制日志文件使用PURGE MASTER LOGS;\n\nPURGE MASTER LOGS;\n\n语法如下\n\nPURGE {MASTER | BINARY} LOGS TO \'log_name\'\nPURGE {MASTER | BINARY} LOGS BEFORE \'date\'\n\n第一种方法指定文件名，执行该命令将删除文件名编号比指定文件名编号小的所有日志文件\n\n第二种方法指定日期，执行该命令将删除指定日期以前的所有日志文件\n\n \n\n \n\n使用PURGE MASTER LOGS;删除创建时间比binlog.000003早的所有日志文件\n\n首先，为了演示语句操作过程，准备多个日志文件，读者可以对mysql服务进行多次重启\n\n例如这里有10个日志文件\n\n执行删除命令\n\n PURGE MASTER LOGS TO \"joe-bin.000003\";\n\n执行完成后，使用 show BINARY logs; 查看二进制日志\n\n可以看到joe-bin.000001和joe-bin.000002两个日志文件被删除了\n\n \n\n使用 PURGE MASTER LOGS 删除2013年3月30日前创建的所有日志文件，执行命令如下\n\nPURGE MASTER LOGS BEFORE \'20130330\'\n\n执行完毕之后，2013年3月30日前的日志文件都被删除，但2013年3月30日的日志会被保留\n\n \n\n4、查看二进制日志里的操作记录\n\nshow binlog events;\n\n比如想查看某一个二进制日志里面的记录，但又不想用mysqlbinlog，可以使用show binlog events\n\n比如我想查看\'joe-bin.000006\'这个binlog文件的内容，执行如下命令\n\nshow binlog events in \'joe-bin.000006\';\n\n内容如下\n\nLog_name: joe-bin.000006\nPos: 202 \nEvent_type: Query \nServer_id: 1 \nEnd_log_pos: 304 \nInfo: use `test`; insert into bin(name) values (\'orange\') \n\n可以看到\'joe-bin.000006\'这个binlog文件记录了哪些SQL命令\n\n \n\n如果想知道binlog文件的创建时间，就需要mysqlbinlog工具来查看\n\nC:\\ProgramData\\MySQL\\MySQL Server 5.5\\data>mysqlbinlog mysql_bin.000001 \n/*!40019 SET @@session.max_insert_delayed_threads=0*/; \n/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/; \nDELIMITER /*!*/; \n# at 4 \n#131015 16:35:56 server id 1  end_log_pos 106   \n\n其中131015为日志创建时间，即2013年10月15日\n\n \n\n5、使用二进制日志还原数据库\n\n如果mysql服务器启用了二进制日志，在数据库出现意外丢失数据时，可以使用mysqlbinlog工具从指定的时间点开始\n\n（例如，最后一次备份）直到现在，或另外一个指定的时间点的日志中恢复数据\n\n \n\n要想从二进制日志恢复数据，需要知道当前二进制日志文件的路径和文件名。一般可以从配置文件（即my.cnf或者my.ini，文件名取决于mysql\n\n服务器的操作系统）中找到路径\n\n \n\nmysqlbinlog恢复数据的语法如下：\n\nmysqlbinlog [option] filename |mysql -uuser -ppass\n\noption是一些可选项，filename是日志文件名\n\n比较重要的两对option参数是\n\n--start-datetime、--stop-datetime\n\n--start-position、--stop--position\n\n--start-date、--stop-date可以指定恢复数据库的起始时间点和结束时间点\n\n--start-position、--stop--position可以指定恢复数据的开始位置和结束位置\n\n \n\n使用mysqlbinlog恢复mysql数据库到2014年7月2日15：27：48时的状态，执行下面命令\n\nmysqlbinlog --stop-datetime=\"2014-7-2 15:27:48 \" D:\\mysql\\log\\binlog\\binlog.000008 |mysql -u user -p password\n\n该命令执行成功后，会根据binlog.000008日志文件恢复2014年7月2日15：27：48前的所有操作。\n\n这种方法对误操作的删除数据比较有效\n\n \n\n6、暂时停止二进制日志\n\n如果在mysql的配置文件配置启动了二进制日志，mysql会一直记录二进制日志，修改配置文件，可以停止二进制日志，\n\n但是需要重启mysql数据库。mysql提供了暂时停止二进制日志的功能。通过 SET SQL_LOG_BIN 语句可以使mysql暂停或者启动二进制日志\n\n语法如下\n\nSET sql_log_bin={0|1}\n\n执行下面语句将暂停二进制日志\n\nSET sql_log_bin=0;\n\n执行下面语句将恢复记录二进制日志\n\nSET sql_log_bin=1;\n\n实际上，binlog文件有点类似于SQLSERVER的ldf文件，大家都保存了数据库的操作日志，都可以根据这个日志来恢复数据库\n\n但是又有不同，mysql的binlog可用不开启，因为mysql的redo日志放在ib_logfile开头的文件里面，而undo日志跟数据文件是放在一起的\n\n所以这一点跟SQLSERVER很不一样\n\n \n\n在复制的时候，MYSQL一定要开启binlog功能，slave读取binlog，而SQLSERVER的订阅端读取发布端的ldf文件\n\n所以刚才说：binlog文件有点类似于SQLSERVER的ldf文件\n\n错误日志\n\n错误日志文件包含了当mysqld启动和停止时，以及服务器在运行过程中发生任何严重错误时的相关信息。\n\n在MYSQL中，错误日志也是非常重要的，mysql将启动和停止数据库信息以及一些错误信息记录到错误日志中\n\n \n\n1、启动和设置错误日志\n\n在默认情况下，错误日志会记录到数据库的数据目录下。如果没有在配置文件中指定文件名，则文件名默认为hostname.err。\n\n例如：mysql所在服务器主机名为mysql-db，记录错误信息的文件名为mysql-db.err。如果执行了FLUSH LOGS，错误日志文件会重新加载\n\n \n\n错误日志的启动和停止以及日志文件名，都可以通过修改my.ini（或者my.cnf）来配置。错误日志的配置项是log-error。\n\n在[mysqld]下配置log-error，在启动错误日志。如果需要指定文件名，则配置项如下：\n\n[mysqld]\n\nlog-error=[path/[file_name]]\n\npath为日志文件所在的目录路径，filename为日志文件名。修改配置项后，需要重启mysql服务才生效\n\n \n\n2、查看错误日志\n\n通过错误日志可以监视系统的运行状态，便于及时发现故障，修复故障。mysql错误日志是以文本文件形式存储的，可以使用文本编辑器直接\n\n查看mysql错误日志\n\n \n\n如果不知道日志文件的存储路径，可以使用 show variables; 语句查看错误日志的存储路径。\n\n语句如下\n\nshow variables LIKE \'log_error\';\n\n \n\n使用记事本查看mysql错误日志\n\n通过上面 show variables LIKE \'log_error\'; 的语句查看到错误日志的路径，然后用记事本打开该文件\n\n我们可以看到错误日志内容如下\nView Code\n\n \n\n3、删除错误日志\n\nmysql的错误日志以文本文件的形式存储在文件系统中，可以直接删除\n\n对于mysql5.5.7以前的版本，flush logs可以将错误日志文件重命名为filename.err_old，\n\n并创建新的日志文件。但是从mysql5.5.7开始，flush logs只是重新打开日志文件，并不做日志备份和创建的操作。\n\n如果日志文件不存在，mysql启动或者执行flush logs时会创建新的日志文件\n\n \n\n在运行状态下删除错误日志文件后，mysql并不会自动创建日志文件。flush logs在重新加载日志的时候，如果文件不存在，\n\n则会自动创建。所以在删除错误日志之后，如果需要重建日志文件需要在服务器端执行以下命令：\n\nmysqladmin -u root -p flush-logs\n\n或者在客户端登录mysql数据库，执行flush logs语句\n\nflush logs;\n\n \n\n删除err文件，并用flush logs语句重建log-error文件\n\n手动删除文件\n\n手动执行 flush logs; ，err文件恢复了\n\n 打开err文件，里面什么都没有\n\n通用查询日志\n\n \n\n通用查询日志记录了mysql的所有用户操作，包括启动和关闭服务、执行查询和更新语句等\n\n \n\n1、启动和设置通用查询日志\n\nmysql服务器默认情况下并没有开启通用查询日志。如果需要通用查询日志，可以通过修改my.ini或my.cnf配置文件来\n\n开启。在my.ini或my.cnf的[mysqld]组下加入log选项\n\n形式如下\n\n[mysqld]\n\nlog[=path/[filename]]\n\npath为日志文件所在目录路径，filename为日志文件名。如果不指定目录和文件名，通用查询日志将默认存储在mysql数据目录中的\n\nhostname.log文件中。hostname是mysql数据库的主机名\n\n这里在[mysqld]下面增加选项log，后面不指定参数值\n\n[mysqld]\nlog\n\n \n\n2、查看通用查询日志\n\n通用查询日志中记录了用的所有操作。通过查看通用查询日志，可以了解用户对mysql进行的操作。通用查询日志是\n\n以文本文件形式存储在文件系统中的，可以使用文本编辑器直接打开通用日志文件进行查看，Windows下可以使用记事本\n\nLinux下可以使用vim、gedit等\n\n使用记事本查看mysql通用查询日志\n\n文件内容如下\n\nE:\\Program Files\\MySQL\\MySQL Server 5.5\\bin\\mysqld, Version: 5.5.19-log (MySQL Community Server (GPL)). started with:\nTCP Port: 3306, Named Pipe: (null)\nTime                 Id Command    Argument\n140801 23:39:33        1 Connect    root@localhost on \n            1 Query    SHOW VARIABLES\n            1 Query    SHOW WARNINGS\n            1 Query    select timediff( curtime(), utc_time() )\n            1 Query    SHOW COLLATION\n            1 Query    SET NAMES utf8\n            1 Query    SET character_set_results=NULL\n            1 Query    SELECT * FROM `emp`\n140801 23:39:44        1 Query    SELECT * FROM `emp`\n            1 Query    SELECT * FROM `emp`\n140801 23:39:55        1 Query    USE test;\n\nSELECT * FROM `emp`\n            1 Init DB    test\n\n可以看到mysql启动信息和用户root连接服务器与执行查询语句的记录\n\n \n\n3、删除通用查询日志\n\n通用查询日志是以文本文件的形式存储在文件系统中的。通用查询日志记录用户的所有操作\n\n因此在用户查询、更新频繁的情况下，通用查询日志会增长得很快。DBA可以定期删除比较早的通用日志，以节省磁盘空间\n\n \n\n可以用直接删除日志文件的方式删除通用查询日志。要重新建立新的日志文件，可使用语句\n\nmysqladmin -flush logs\n\n直接删除log文件\n\n执行 flush logs \n\n \n\n log文件重新生成了\n\n慢查询日志\n\n \n\n慢查询日志是记录查询时长超过指定时间的日。慢查询日志主要用来记录执行时间较长的查询语句\n\n通过慢查询日志，可以找出执行时间较长、执行效率较低的语句，然后进行优化\n\n \n\n1、启动和设置慢查询日志\n\nmysql中慢查询日志默认是关闭的，可以通过配置文件my.ini或my.cnf中的log-slow-queries选项打开，也可以在mysql服务\n\n启动的时候使用--log--slow-queries[=file_name]启动慢查询日志。启动慢查询日志时，需要在my.ini或者my.cnf文件中\n\n配置long_query_time选项指定记录阀值，如果某条查询语句的查询时间超过了这个值，这个查询过程将被记录到慢查询日志\n\n文件中。\n\n \n\n在my.ini或者my.cnf文件中开启慢查询日志的配置如下：\n\n[mysqld]\n\nlog-slow-queries[=path/[filename]]\nlong_query_time=n\n\npath为日志文件所在目录路径，filename为日志文件名。如果不指定目录和文件名称，默认存储在数据目录中\n\n文件名为hostname-slow.log，hostname是mysql服务器的主机名。参数n是时间值，单位是秒。\n\n如果没有设置long-query_time选项，默认时间为10秒\n\n \n\n开启慢查询日志\n\n[mysqld]\nlog-slow-queries\nlong_query_time=1\n\n \n\n2、查看慢查询日志\n\nmysql的慢查询日志是以文本形式存储的，可以直接使用文本编辑器查看。在慢查询日志中，记录着执行时间较长的查询语句，\n\n用户可以从慢查询日志中获取执行效率较低的查询语句，为查询优化提供重要的依据\n\n \n\n查看慢查询日志的一些参数\n\nshow variables like \'%slow%\';\n\n \n\n查看慢查询日志文件里的内容，使用文本编辑器打开数据目录下的WIN7U-20130414Z-slow.log文件\n\nE:\\Program Files\\MySQL\\MySQL Server 5.5\\bin\\mysqld, Version: 5.5.19-log (MySQL Community Server (GPL)). started with:\nTCP Port: 3306, Named Pipe: (null)\nTime                 Id Command    Argument\n# Time: 140802  0:02:29\n# User@Host: root[root] @ localhost [::1]\n# Query_time: 7.578125  Lock_time: 0.000000 Rows_sent: 1  Rows_examined: 0\nuse test;\nSET timestamp=1406908949;\nSELECT BENCHMARK (10000000,PASSWORD (\'newpwd\'));\n\n可以看到这里记录了一条慢查询日志。执行该条语句的帐户是root @ localhost \n\n查询时间是Query_time: 7.578125秒\n\n查询语句是 SELECT BENCHMARK (10000000,PASSWORD (\'newpwd\')); \n\n该语句查询时间大大超过了设置值1秒，因此被记录在慢查询日志文件中\n\nBENCHMARK函数简介：http://database.51cto.com/art/201010/229366.htm \n\n \n\n3、删除慢查询日志\n\n和通用查询日志一样，慢查询日志也可以直接删除。删除后在不重启服务器的情况下，需要执行\n\nmysqladmin -u root -p flush logs\n\n重新生成日志文件，或者在客户端登录到服务器执行 flush logs; 语句重建日志文件\n\n \n\n官方mysql的慢查询日志在这里有一个缺陷，就是查询阀值只能是1秒或以上，如果要设置一秒以下就无能为力了\n\n这时候如果想找出1秒以下的慢查询SQL，可以使用percona提供的microslow-patch来突破限制，将慢查询时间阀值减小到毫秒级别\n\n平时应打开哪些日志\n\n日志既会影响mysql的性能，又会占用大量磁盘空间。因此，如果不必要，应尽可能少地开启日志。\n\n根据不同的使用环境，考虑开启不同的日志。\n\n例如开发环境中优化查询效率低的语句，可以开启慢查询日志，或者生产环境中发现某些SQL执行特别慢也可以开启\n\n如果磁盘空间不是特充足可以在高峰期间开启，在捕获到查询慢的SQL之后再关闭慢查询日志\n\n \n\n如果需要搭建复制环境，那么就一定要开启二进制日志，如果数据特别重要也建议开启二进制日志，以便数据库损坏的时候也可以通过二进制日志\n\n挽救一部分数据\n\n \n\n通用日志无论在哪种情况下，一般不建议开启 \n\n总结\n\n本文简单的阐述了MYSQL的日志面的内容，MYSQL的日志系统还是比较完善的，希望这篇文章对大家有帮助\n\n \n\n如有不对的地方，欢迎大家拍砖o(∩_∩)o ', '2', '1', '1', '14', '1', '2015-09-10 10:14:19');
INSERT INTO `edu_questions` VALUES ('6', '7', '我是如何自学Android，资料分享（2015 版）', 'Android 系列教程\n\n这一段时间，发现了好多学习资源，自己收藏了，不敢独享，所以拿出来和大家分享，如果您发现不错的学习资源，欢迎留言；\n而学习的过程中，也忽略了一些问题，比如自己学习的不系统，如果您也是自学的话，一定要注意这个问题，我觉得，除了看官方文档和大牛的博客之外，最重要就找一本好书，把自己的知识系统化；\n入门指南\n\n    Getting Started | Android Developers\n\n    How to get started programming Android apps | HalfApp\n\n    A step by step guide about how to get started and involved in Android Development - Reddit\n\n    Beginning Android Resources · codepath/android_guides Wiki\n\n    我是如何自学Android，资料分享\n\n    我推荐的 Android 基础学习路线\n\n    Android入门杂谈\n\n书籍推荐\n\n首先自己没有很系统地去看一本书，所以我也是搜索，或者实在知乎上别人推荐的，所以，要根据自己的情况，适合自己的书来看；\n\n    The Busy Coder\'s Guide to Android Development\n    这是大牛CommonsGuy 开源的一本书，它的更新非常及时，基本上就是跟着SDK 更新的，下载PDF 可以在这里（Four-to-Free Guarantee）下载，书籍中源码可以在Github（commonsguy/cw-omnibus） 中查看；\n\n    Best Android Books and Resources 2014\n    这篇文章主要介绍了Android 书籍和开发资源；\n\n公开课\n\n    How to Develop Android Apps Online Course - Udacity\n\n    Programming Mobile Applications for Android (Coursera)\n\n    Android Development For Absolute Beginners - YouTube\n\n系列教程\n\n    Home · codepath/android_guides Wiki - codepath\n    Android 指南，它不仅介绍怎么创建一个最简单的App Demo，循序渐进教你使用各种流行的框架，对于即将工作的同学来说是很用用的；Demo 很有实战意义；\n\n    Android tutorial - TutorialSpoint\n    是不是特别熟悉呀，对上面提到过，教程特别通俗易懂，代码实例也不错；\n\n    Android Development - Vogella\n    教程挺通俗易懂\n\n    AndroidHive | Tutorials, Games, Apps, Tips |\n    博主是印度人，博客主要是以教程为主，质量较高，而且会分享比较新的东西；\n\n    Android Tutorial | Interactive and Step by step tutorial to learn Android\n\n    Android SDK - Tuts+ Code Category\n\n    Android Programming Archives - Learn2Crack\n\n    Android Learning Path | SlideRule\n\n大牛博客推荐\n\n    android-cn/android-dev-cn\n    主要介绍国内Android 开发大牛；\n\n    android-cn/android-dev-com\n    主要介绍国外Android 开发大牛；\n\n    What are must-read Android developer blogs? - Quora\n    Quora 上的回答\n\n    有哪些 Android 大牛的 blog 值得推荐？ - 知乎\n    知乎上的回答\n\n开源App\n\n    F-Droid | Free and Open Source Android App Repository\n    F-Droid 是一个Android 开源App 仓库\n\n    Android优秀开源项目 - 小猪爬爬\n\n    The Android Arsenal - A categorized directory of free libraries and tools for Android\n    在这里，找到最新最流行的Android 开源类库\n\n    Trinea/android-open-project - Trinea\n    大牛Trinea 写的Android 开源项目汇总\n\n开发工具\n\n    Great Code Examples & Snippets | Codota\n    一个Android 代码搜索引擎；前两天发现了这个工具就爱不释手，写了篇文章——《Android 开发工具之Codota——搜索最好的Android 代码 - 简书》，让你参考入门。\n\n    Gradle\n    知乎上我回答的《如何从eclipse转入android studio,感觉Gradle什么的很难理解的。有什么教程吗? - Tikitoo 的回答 - 知乎》，可以参考。\n\n    Android Studio\n    从Google 的态度就可以看出，Android Studio 就是未来，而且在最近发布了正式版，教程在网上也不少。\n\n    Android User Interface | User Experience | Inspiration source for Android Designers and Developers\n\n    Android App Patterns\n\n    Iconfinder - 400,000+ free and premium icons\n    一个Icon 搜索引擎\n\n    google/material-design-icons - github\n    Google 把官方的Material Design 1000+ 的Icon 开源了，不仅仅只有Android 版，而且还有Web 和iOS，真是业界良心呀。\n\n    inferjay/AndroidDevTools\n    inferjay 总结的开发工具，并且提供了国内的镜像。\n\n    Genymotion - A faster Android emulator\n    Genymotion 是Android 的虚拟机，比官方的快了不知多少啊，它是基于Virtual Box，并且提供了插件。\n', '2', '0', '5', '91', '2', '2015-09-10 10:16:31');
INSERT INTO `edu_questions` VALUES ('7', '3', 'JavaScript刷新页面方法大全', '1，reload 方法，该方法强迫浏览器刷新当前页面。\n语法：location.reload([bForceGet])  \n参数： bForceGet， 可选参数， 默认为 false，从客户端缓存里取当前页。true, 则以 GET 方式，从服务端取最新的页面, 相当于客户端点击 F5(\"刷新\")\n\n2，replace 方法，该方法通过指定URL替换当前缓存在历史里（客户端）的项目，因此当使用replace方法之后，你不能通过“前进”和“后退”来访问已经被替换的URL。\n语法： location.replace(URL)  \n通常使用： location.reload() 或者是 history.go(0) 来做。\n此方法类似客户端点F5刷新页面，所以页面method=\"post\"时，会出现\"网页过期\"的提示。\n因为Session的安全保护机制。\n当调用 location.reload() 方法时， aspx页面此时在服务端内存里已经存在， 因此必定是 IsPostback 的。\n如果有这种应用： 需要重新加载该页面，也就是说期望页面能够在服务端重新被创建，期望是 Not IsPostback 的。\n这里，location.replace() 就可以完成此任务。被replace的页面每次都在服务端重新生成。\n代码： location.replace(location.href);\n\n返回并刷新页面：\n\nlocation.replace(document.referrer);\ndocument.referrer //前一个页面的URL\n\n不要用 history.go(-1)，或 history.back();来返回并刷新页面，这两种方法不会刷新页面。', '2', '0', '0', '6', '0', '2015-09-10 10:26:06');
INSERT INTO `edu_questions` VALUES ('8', '3', 'Web App开发教程,有没有分享下', '入门级的,有资料没,有视频没,感谢', '1', '0', '3', '15', '0', '2015-09-10 10:27:58');
INSERT INTO `edu_questions` VALUES ('9', '6', 'Premiere视频教学视频,大神分享下好吗', 'Premiere视频教学视频资料,有哪位大神可以分享下吗,膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜膜拜', '1', '0', '1', '55', '2', '2015-09-10 10:31:40');

-- ----------------------------
-- Table structure for edu_questions_comment
-- ----------------------------
DROP TABLE IF EXISTS `edu_questions_comment`;
CREATE TABLE `edu_questions_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `CUS_ID` int(11) DEFAULT NULL COMMENT '评论人id',
  `QUESTION_ID` int(11) DEFAULT NULL COMMENT '问答id',
  `CONTENT` varchar(300) DEFAULT NULL COMMENT '评论内容',
  `IS_BEST` int(1) DEFAULT NULL COMMENT '是否最佳答案 0否1是',
  `REPLY_COUNT` int(11) DEFAULT '0' COMMENT '回复数量',
  `PRAISE_COUNT` int(11) DEFAULT '0' COMMENT '点赞数',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '回复时间',
  `COMMENT_ID` int(11) DEFAULT '0' COMMENT '父级评论id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='问答评论';

-- ----------------------------
-- Records of edu_questions_comment
-- ----------------------------
INSERT INTO `edu_questions_comment` VALUES ('1', '7', '6', '感谢大家支持', '0', '3', '1', '2015-09-10 10:20:20', '0');
INSERT INTO `edu_questions_comment` VALUES ('2', '7', '6', '有什么不对的地方,欢迎指出', '0', '1', '2', '2015-09-10 10:20:49', '0');
INSERT INTO `edu_questions_comment` VALUES ('3', '3', '0', '我来点个赞', '0', '0', '0', '2015-09-10 10:23:15', '1');
INSERT INTO `edu_questions_comment` VALUES ('4', '3', '0', '收藏了......', '0', '0', '0', '2015-09-10 10:23:27', '1');
INSERT INTO `edu_questions_comment` VALUES ('6', '6', '4', '第一步，打开ps，打开你要修改的图片。文件---打开就可以了。\n如果你并不追求完美的效果，而只是想快速一些，就选择快速选择工具，如图所示。用鼠标点击一下这里。\n然后用鼠标左键在图片上想抠出来的区域拖动，直到选择好你想选择的区域之后，点击ctrl+c组合键复制。然后新建一个空白图片。在此空白图片上粘贴，就出现了你刚才抠出来的图片了。\n如果你想得到更完美的抠图效果 ，可以使用铅笔工具 ，如图所示。\n用钢笔工具在图像的边缘定出若二个点，如图所示，确定完成之后按crtl+回车键选择，然后复制，新建空白图片。\n7在空白图片中粘贴，刚才抠出来的图便出现了。由于时间关系 ，我的抠图并不是十分准确。', '0', '0', '1', '2015-09-10 10:34:17', '0');
INSERT INTO `edu_questions_comment` VALUES ('7', '6', '5', '不错', '1', '0', '0', '2015-09-10 10:34:50', '0');
INSERT INTO `edu_questions_comment` VALUES ('8', '7', '0', '赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞赞', '0', '0', '0', '2015-09-10 18:13:58', '1');
INSERT INTO `edu_questions_comment` VALUES ('9', '7', '6', '怎么没人呢,人呢....', '0', '2', '0', '2015-09-10 18:27:46', '0');
INSERT INTO `edu_questions_comment` VALUES ('10', '7', '6', '分享的东西很全', '0', '11', '2', '2015-09-10 18:29:56', '0');
INSERT INTO `edu_questions_comment` VALUES ('11', '7', '0', '很有水平', '0', '0', '0', '2015-09-10 18:31:42', '10');
INSERT INTO `edu_questions_comment` VALUES ('12', '7', '9', 'premiere是一款常用的视频编辑软件，由Adobe公司推出。现在常用的有CS4 CS5 CS6等版本。是一款编辑画面质量比较好的软件，有较好的兼容性，且可以与adobe公司推出的其他软件相互协作。目前这款软件广泛应用于广告制作和电视节目制作中。 其最新版本为Adobe Premiere Pro CC。', '0', '0', '0', '2015-09-19 10:15:27', '0');
INSERT INTO `edu_questions_comment` VALUES ('13', '7', '0', 'wuuwuw', '0', '0', '1', '2015-09-19 16:47:03', '10');
INSERT INTO `edu_questions_comment` VALUES ('14', '7', '0', 'asdf', '0', '0', '0', '2015-09-19 16:47:05', '10');
INSERT INTO `edu_questions_comment` VALUES ('15', '7', '0', 'asdf', '0', '0', '1', '2015-09-19 16:47:07', '10');
INSERT INTO `edu_questions_comment` VALUES ('16', '7', '0', 'asdf', '0', '0', '0', '2015-09-19 16:47:15', '10');
INSERT INTO `edu_questions_comment` VALUES ('17', '7', '0', '12341234', '0', '0', '1', '2015-09-19 16:47:22', '10');
INSERT INTO `edu_questions_comment` VALUES ('18', '7', '0', 'asdfasdf', '0', '0', '0', '2015-09-19 16:47:29', '10');
INSERT INTO `edu_questions_comment` VALUES ('19', '7', '0', 'asdfasdf', '0', '0', '0', '2015-09-19 16:47:34', '10');
INSERT INTO `edu_questions_comment` VALUES ('20', '7', '0', 'asdfasdf', '0', '0', '1', '2015-09-19 16:47:41', '10');
INSERT INTO `edu_questions_comment` VALUES ('21', '7', '0', '呜呜uwuwwu', '0', '0', '0', '2015-09-19 16:54:31', '10');
INSERT INTO `edu_questions_comment` VALUES ('22', '7', '0', '阿斯顿发生地方', '0', '0', '0', '2015-09-19 16:56:39', '9');
INSERT INTO `edu_questions_comment` VALUES ('23', '7', '0', '呜呜呜呜呜呜呜', '0', '0', '0', '2015-09-19 16:59:59', '2');
INSERT INTO `edu_questions_comment` VALUES ('24', '7', '0', '呜呜呜呜呜呜呜', '0', '0', '1', '2015-09-19 17:00:19', '9');
INSERT INTO `edu_questions_comment` VALUES ('25', '7', '0', '呜呜呜呜呜呜', '0', '0', '1', '2015-09-19 17:00:39', '10');
INSERT INTO `edu_questions_comment` VALUES ('26', '7', '6', '来晚了我问我你哦', '0', '0', '0', '2015-09-19 17:01:09', '0');
INSERT INTO `edu_questions_comment` VALUES ('27', '7', '8', '呜呜呜', '0', '0', '0', '2015-09-19 17:35:20', '0');
INSERT INTO `edu_questions_comment` VALUES ('28', '7', '8', '嘻嘻嘻嘻', '0', '0', '0', '2015-09-19 17:35:25', '0');
INSERT INTO `edu_questions_comment` VALUES ('29', '7', '8', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈', '0', '9', '0', '2015-09-19 17:35:30', '0');
INSERT INTO `edu_questions_comment` VALUES ('30', '7', '0', '....................', '0', '0', '1', '2015-09-19 17:35:36', '29');
INSERT INTO `edu_questions_comment` VALUES ('31', '7', '0', '玩儿玩儿', '0', '0', '0', '2015-09-19 17:35:41', '29');
INSERT INTO `edu_questions_comment` VALUES ('32', '7', '0', '玩儿', '0', '0', '0', '2015-09-19 17:35:44', '29');
INSERT INTO `edu_questions_comment` VALUES ('33', '7', '0', '嘎嘎嘎嘎嘎', '0', '0', '0', '2015-09-19 17:35:49', '29');
INSERT INTO `edu_questions_comment` VALUES ('34', '7', '0', '有呀呀呀呀呀呀呀呀呀呀呀呀呀', '0', '0', '0', '2015-09-19 17:35:57', '29');
INSERT INTO `edu_questions_comment` VALUES ('35', '7', '0', '快快快快快快快快快快快快快快快', '0', '0', '0', '2015-09-19 17:36:03', '29');
INSERT INTO `edu_questions_comment` VALUES ('36', '7', '0', '去去去去去去去去去去去去', '0', '0', '0', '2015-09-19 17:36:06', '29');
INSERT INTO `edu_questions_comment` VALUES ('37', '7', '0', '呃呃呃呃呃呃额额', '0', '0', '0', '2015-09-19 17:36:10', '29');
INSERT INTO `edu_questions_comment` VALUES ('38', '7', '0', '哦哦哦哦哦哦哦哦哦哦哦哦', '0', '0', '0', '2015-09-19 17:36:18', '29');

-- ----------------------------
-- Table structure for edu_questions_tag
-- ----------------------------
DROP TABLE IF EXISTS `edu_questions_tag`;
CREATE TABLE `edu_questions_tag` (
  `QUESTIONS_TAG_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `QUESTIONS_TAG_NAME` varchar(45) DEFAULT NULL COMMENT '标签名',
  `STATUS` int(1) DEFAULT NULL COMMENT '状态0默认1删除',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `PARENT_ID` varchar(45) DEFAULT NULL COMMENT '父级id',
  PRIMARY KEY (`QUESTIONS_TAG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='问答标签';

-- ----------------------------
-- Records of edu_questions_tag
-- ----------------------------
INSERT INTO `edu_questions_tag` VALUES ('1', 'JAVA', '0', '2015-08-26 15:30:18', '0');
INSERT INTO `edu_questions_tag` VALUES ('2', 'Maya', '0', '2015-08-26 15:30:51', '0');
INSERT INTO `edu_questions_tag` VALUES ('3', 'MongoDB', '0', '2015-08-26 15:43:23', '0');
INSERT INTO `edu_questions_tag` VALUES ('5', 'Premiere', '0', '2015-08-26 15:50:59', '0');
INSERT INTO `edu_questions_tag` VALUES ('6', 'Photoshop', '0', '2015-08-26 15:52:36', '0');
INSERT INTO `edu_questions_tag` VALUES ('7', 'Mysql', '0', '2015-08-26 15:53:38', '0');
INSERT INTO `edu_questions_tag` VALUES ('8', 'Android', '0', '2015-08-26 15:53:41', '0');
INSERT INTO `edu_questions_tag` VALUES ('9', 'Unity3D', '0', '2015-09-07 16:07:16', '0');
INSERT INTO `edu_questions_tag` VALUES ('10', 'JavaScript', '0', '2015-09-07 16:08:19', '0');
INSERT INTO `edu_questions_tag` VALUES ('11', 'WebApp', '0', '2015-09-08 10:35:10', '0');

-- ----------------------------
-- Table structure for edu_questions_tag_relation
-- ----------------------------
DROP TABLE IF EXISTS `edu_questions_tag_relation`;
CREATE TABLE `edu_questions_tag_relation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `QUESTIONS_ID` int(11) DEFAULT NULL COMMENT '问答id',
  `QUESTIONS_TAG_ID` int(11) DEFAULT NULL COMMENT '问答标签id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_questions_tag_relation
-- ----------------------------
INSERT INTO `edu_questions_tag_relation` VALUES ('1', '1', '1');
INSERT INTO `edu_questions_tag_relation` VALUES ('2', '2', '2');
INSERT INTO `edu_questions_tag_relation` VALUES ('3', '3', '1');
INSERT INTO `edu_questions_tag_relation` VALUES ('4', '4', '6');
INSERT INTO `edu_questions_tag_relation` VALUES ('5', '5', '7');
INSERT INTO `edu_questions_tag_relation` VALUES ('6', '6', '8');
INSERT INTO `edu_questions_tag_relation` VALUES ('7', '7', '10');
INSERT INTO `edu_questions_tag_relation` VALUES ('8', '8', '11');
INSERT INTO `edu_questions_tag_relation` VALUES ('9', '9', '5');

-- ----------------------------
-- Table structure for edu_statistics_day
-- ----------------------------
DROP TABLE IF EXISTS `edu_statistics_day`;
CREATE TABLE `edu_statistics_day` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATISTICS_TIME` datetime NOT NULL COMMENT '统计日期',
  `LOGIN_NUM` int(11) NOT NULL DEFAULT '0' COMMENT '登录人数（活跃人数 ）',
  `CREATE_TIME` datetime NOT NULL COMMENT '生成时间',
  PRIMARY KEY (`ID`),
  KEY `STATISTICS_TIME` (`STATISTICS_TIME`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COMMENT='网站统计日数据';

-- ----------------------------
-- Records of edu_statistics_day
-- ----------------------------
INSERT INTO `edu_statistics_day` VALUES ('45', '2015-08-22 00:00:00', '23', '2015-09-22 13:59:35');
INSERT INTO `edu_statistics_day` VALUES ('46', '2015-08-23 00:00:00', '13', '2015-09-22 13:59:35');
INSERT INTO `edu_statistics_day` VALUES ('113', '2015-08-24 00:00:00', '2', '2015-09-22 14:18:03');
INSERT INTO `edu_statistics_day` VALUES ('117', '2015-08-28 00:00:00', '12', '2015-09-22 14:18:03');
INSERT INTO `edu_statistics_day` VALUES ('147', '2015-08-25 00:00:00', '147', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('148', '2015-08-26 00:00:00', '2', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('149', '2015-08-27 00:00:00', '1', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('151', '2015-08-29 00:00:00', '2', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('152', '2015-08-30 00:00:00', '3', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('153', '2015-08-31 00:00:00', '6', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('154', '2015-09-01 00:00:00', '154', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('155', '2015-09-02 00:00:00', '155', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('156', '2015-09-03 00:00:00', '156', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('157', '2015-09-04 00:00:00', '157', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('158', '2015-09-05 00:00:00', '158', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('159', '2015-09-06 00:00:00', '159', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('160', '2015-09-07 00:00:00', '160', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('161', '2015-09-08 00:00:00', '161', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('162', '2015-09-09 00:00:00', '162', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('163', '2015-09-10 00:00:00', '163', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('164', '2015-09-11 00:00:00', '164', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('165', '2015-09-12 00:00:00', '165', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('166', '2015-09-13 00:00:00', '166', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('167', '2015-09-14 00:00:00', '167', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('168', '2015-09-15 00:00:00', '168', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('169', '2015-09-16 00:00:00', '169', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('170', '2015-09-17 00:00:00', '2', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('171', '2015-09-18 00:00:00', '34', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('172', '2015-09-19 00:00:00', '29', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('173', '2015-09-20 00:00:00', '19', '2015-09-22 14:18:58');
INSERT INTO `edu_statistics_day` VALUES ('179', '2015-09-22 00:00:00', '3', '2015-09-23 06:02:36');
INSERT INTO `edu_statistics_day` VALUES ('180', '2017-09-13 00:00:00', '0', '2017-09-14 01:13:19');
INSERT INTO `edu_statistics_day` VALUES ('181', '2017-09-14 00:00:00', '1', '2017-09-15 08:42:27');
INSERT INTO `edu_statistics_day` VALUES ('182', '2017-09-29 00:00:00', '0', '2017-09-30 01:41:17');
INSERT INTO `edu_statistics_day` VALUES ('183', '2017-09-30 00:00:00', '0', '2017-10-01 09:10:56');
INSERT INTO `edu_statistics_day` VALUES ('184', '2017-10-03 00:00:00', '0', '2017-10-04 20:46:39');
INSERT INTO `edu_statistics_day` VALUES ('185', '2017-10-05 00:00:00', '0', '2017-10-06 22:17:09');
INSERT INTO `edu_statistics_day` VALUES ('186', '2017-10-06 00:00:00', '0', '2017-10-07 06:35:36');
INSERT INTO `edu_statistics_day` VALUES ('187', '2017-10-07 00:00:00', '0', '2017-10-08 08:02:34');
INSERT INTO `edu_statistics_day` VALUES ('188', '2017-10-08 00:00:00', '0', '2017-10-09 08:31:04');
INSERT INTO `edu_statistics_day` VALUES ('189', '2017-10-16 00:00:00', '0', '2017-10-17 00:45:30');
INSERT INTO `edu_statistics_day` VALUES ('190', '2017-10-18 00:00:00', '0', '2017-10-19 08:14:50');
INSERT INTO `edu_statistics_day` VALUES ('191', '2017-10-19 00:00:00', '0', '2017-10-20 08:52:57');
INSERT INTO `edu_statistics_day` VALUES ('192', '2017-10-20 00:00:00', '1', '2017-10-21 09:10:38');
INSERT INTO `edu_statistics_day` VALUES ('193', '2017-10-24 00:00:00', '0', '2017-10-25 08:01:39');
INSERT INTO `edu_statistics_day` VALUES ('194', '2017-10-26 00:00:00', '0', '2017-10-27 08:20:14');
INSERT INTO `edu_statistics_day` VALUES ('195', '2017-10-27 00:00:00', '0', '2017-10-28 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('196', '2017-10-28 00:00:00', '0', '2017-10-29 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('197', '2017-10-29 00:00:00', '0', '2017-10-30 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('198', '2017-10-31 00:00:00', '0', '2017-11-01 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('199', '2017-11-01 00:00:00', '0', '2017-11-02 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('200', '2017-11-02 00:00:00', '0', '2017-11-03 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('201', '2017-11-03 00:00:00', '0', '2017-11-04 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('202', '2017-11-04 00:00:00', '0', '2017-11-05 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('203', '2017-11-05 00:00:00', '0', '2017-11-06 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('204', '2017-11-06 00:00:00', '0', '2017-11-07 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('205', '2017-11-07 00:00:00', '0', '2017-11-08 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('206', '2017-11-08 00:00:00', '0', '2017-11-09 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('207', '2017-11-09 00:00:00', '0', '2017-11-10 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('208', '2017-11-10 00:00:00', '0', '2017-11-11 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('209', '2017-11-11 00:00:00', '0', '2017-11-12 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('210', '2017-11-12 00:00:00', '0', '2017-11-13 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('211', '2017-11-13 00:00:00', '0', '2017-11-14 00:10:00');
INSERT INTO `edu_statistics_day` VALUES ('212', '2017-11-14 00:00:00', '0', '2017-11-15 00:10:00');

-- ----------------------------
-- Table structure for edu_student
-- ----------------------------
DROP TABLE IF EXISTS `edu_student`;
CREATE TABLE `edu_student` (
  `STUDENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员ID',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '学员标题',
  `SUMMARY` varchar(200) DEFAULT NULL COMMENT '学员摘要',
  `KEY_WORD` varchar(50) DEFAULT NULL COMMENT '学员关键字',
  `IMAGE_URL` varchar(100) DEFAULT NULL COMMENT '学员图片URL',
  `SOURCE` varchar(50) DEFAULT NULL COMMENT '学员来源',
  `AUTHOR` varchar(10) DEFAULT NULL COMMENT '学员作者',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '学员创建时间',
  `PUBLISH_TIME` timestamp NULL DEFAULT NULL COMMENT '学员发布时间',
  `PUBLISH_STATE` tinyint(1) DEFAULT '0' COMMENT '学员发布状态 1未发布 2已发布',
  `LINK` varchar(100) DEFAULT NULL COMMENT '学员访问链接',
  `STUDENT_TYPE` tinyint(4) DEFAULT '0' COMMENT '学员类型 2学员',
  `CLICK_NUM` int(11) DEFAULT '0' COMMENT '学员点击量',
  `PRAISE_COUNT` int(11) DEFAULT '0' COMMENT '点赞数量',
  `SORT` varchar(10) DEFAULT NULL,
  `COMMENT_NUM` int(11) DEFAULT '0' COMMENT '评论数',
  PRIMARY KEY (`STUDENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学员信息表';

-- ----------------------------
-- Records of edu_student
-- ----------------------------
INSERT INTO `edu_student` VALUES ('17', '学员陈丹丹', '学员陈丹丹-新媒体班学员', null, '/images/upload/student/20171115/1510737353765.png', '11', '11', '2017-10-27 15:32:44', '2017-10-19 00:00:00', '2', null, '2', '15', '3', '0', '0');
INSERT INTO `edu_student` VALUES ('18', '学员蒋英', '大数据分析班蒋英', null, '/images/upload/student/20171115/1510737343582.png', '111', '111', '2017-10-27 16:02:46', '2017-10-27 16:02:44', '0', null, '2', '19', '0', '0', '0');

-- ----------------------------
-- Table structure for edu_student_content
-- ----------------------------
DROP TABLE IF EXISTS `edu_student_content`;
CREATE TABLE `edu_student_content` (
  `STUDENT_ID` int(11) DEFAULT '0' COMMENT '学员ID',
  `CONTENT` text COMMENT '文章内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- ----------------------------
-- Records of edu_student_content
-- ----------------------------
INSERT INTO `edu_student_content` VALUES ('17', '<img src=\"http://101.200.204.183:8080/inxedu/images/upload/studentContent/20171027/1509095287687.png\" alt=\"\" /><img src=\"http://127.0.0.1:8080/inxedu/images/upload/studentContent/20171027/1509091230386.png\" alt=\"\" />');
INSERT INTO `edu_student_content` VALUES ('18', '<img src=\"http://127.0.0.1:8080/inxedu/images/upload/studentContent/20171027/1509091357537.png\" alt=\"\" /><img src=\"http://101.200.204.183:8080/inxedu/images/upload/studentContent/20171027/1509095266468.png\" alt=\"\" />');

-- ----------------------------
-- Table structure for edu_teacher
-- ----------------------------
DROP TABLE IF EXISTS `edu_teacher`;
CREATE TABLE `edu_teacher` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '教师ID',
  `NAME` varchar(12) NOT NULL DEFAULT '' COMMENT '教师名称',
  `EDUCATION` varchar(200) NOT NULL DEFAULT '' COMMENT '教师资历,一句话说明老师',
  `CAREER` text NOT NULL COMMENT '教师简介',
  `IS_STAR` tinyint(1) NOT NULL DEFAULT '0' COMMENT '头衔 1高级讲师2首席讲师',
  `PIC_PATH` varchar(200) NOT NULL DEFAULT '' COMMENT '图片路径',
  `STATUS` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态:0正常1删除',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `SUBJECT_ID` int(11) DEFAULT '0' COMMENT '专业ID',
  `SORT` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`ID`),
  KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='讲师';

-- ----------------------------
-- Records of edu_teacher
-- ----------------------------
INSERT INTO `edu_teacher` VALUES ('1', '1111111', '1111', '1111', '1', '/images/upload/teacher/20171019/1508380894497.jpg', '1', '2017-10-19 10:34:07', '2017-10-19 10:52:44', '223', '11');
INSERT INTO `edu_teacher` VALUES ('2', '1111111', '111111', '1111111', '1', '/images/upload/teacher/20171020/1508463554555.jpg', '1', '2017-10-19 15:21:47', '2017-10-20 09:39:17', '223', '11');
INSERT INTO `edu_teacher` VALUES ('3', '1111111', '11', '111', '1', '/images/upload/teacher/20171020/1508463593115.jpg', '1', '2017-10-20 09:39:55', '2017-10-20 09:40:49', '223', '11');
INSERT INTO `edu_teacher` VALUES ('4', '1111111', '111', '111', '1', '/images/upload/teacher/20171020/1508463756960.jpg', '1', '2017-10-20 09:42:38', '2017-10-20 09:42:38', '223', '1111111');
INSERT INTO `edu_teacher` VALUES ('5', '1111111', '111', '1111', '1', '/images/upload/teacher/20171020/1508464068425.jpg', '1', '2017-10-20 09:47:50', '2017-10-20 09:47:50', '223', '1');
INSERT INTO `edu_teacher` VALUES ('6', '史老师', '融信在线创始人，北京理工大学MBA，金融电信业\r\n务资深讲师，项目管理专家，北航职业生涯规划特\r\n聘教授，北邮大学项目管理特聘教授，渤海大学客\r\n座教授，吉林工程技术师范学院特聘教授。', '先后在湖南电信、大唐软件、合力金桥软件、东南融通等\r\n企业任职高管，对数据库以及多层架构系统开发有\r\n丰富的经验，在若干大型项目中担任开发、管理等\r\n角色，对国内软件企业和从业人员的需求和发展关\r\n注已久，研发总结了学习方法论，能够帮助学员提\r\n高学习效率，终生受益。', '2', '/images/upload/teacher/20171023/1508740867356.png', '0', '2017-10-20 09:51:59', '2017-11-15 17:12:52', '223', '7');
INSERT INTO `edu_teacher` VALUES ('7', '杨老师', '融信教育湖南分公司负责人，资深职业规划\r\n师，高级人力资源管理师。', '曾任职大型上市公司管理高层，企业资源丰富，对于就业形势有独到的见\r\n解。10余年的大型平台管理经验，能够充分发挥员\r\n工的长处，洞察学生的优势和短板。湖南市场在其\r\n带领下，发展稳健，深受师生拥戴。', '2', '/images/upload/teacher/20171115/1510737201993.png', '0', '2017-10-20 09:53:41', '2017-11-15 17:13:24', '223', '6');
INSERT INTO `edu_teacher` VALUES ('8', '王老师', '毕业于太原理工大学，从事软件研发10年。', '曾就\r\n职东软集团、华为、任职系统架构师、项目经理，\r\n长期参与主持电信行业大型系统设计研发，长期进\r\n行大数据研究，现担任大数据高级讲师。常驻长沙\r\n分校任课，受到学生盛赞', '2', '/images/upload/teacher/20171115/1510737190431.png', '0', '2017-10-20 09:54:34', '2017-11-15 17:13:13', '223', '5');
INSERT INTO `edu_teacher` VALUES ('9', '聂老师', '5年游戏研发，2年Unity3D教学经历', '5年游戏研发，2年Unity3D教学经历，曾在大型教\r\n育机构担任Unity讲师。Unity客户端开发经验丰富。\r\n精通C#等编程语言，扎实的语言功底，精通数据结\r\n构和算法、UI框架设计。\r\n一线大型项目开发经验丰富，曾参与《英雄传\r\n奇》、《兵临城下》等知名网游开发，开发技术与成果\r\n备受业界好评。', '1', '/images/upload/teacher/20171115/1510737225567.png', '0', '2017-10-20 09:55:23', '2017-11-15 17:13:48', '223', '4');
INSERT INTO `edu_teacher` VALUES ('10', '黄老师', '曾在大型知名上市软件企业北京神州泰岳软件、\r\n亚信科技、金蝶国际软件等单位从事J2EE开发工作\r\n近7年，对电信行业的各类型项目的技术框架和相关\r\n业务有深入的了解。', '在神州泰岳期间负责中国移动4A平台的技术开\r\n发，主要负责省公司客户定制化功能的开发、主机和\r\n应用安全加固、工信部和移动集团的各类型考核、移\r\n动集团数据上报等工作。在亚信科技期间参与中国电\r\n信上海软件中心转售和4G项目，主要负责能力开放\r\n平台的业务流程梳理、定制化功能开发、以及部分运\r\n维工作3、个人擅长并熟悉J2EE的开发流程，熟悉\r\n各类型主机和数据库技术，对信息安全技术及业务有\r\n深入了解，视野宽阔，对新兴技术非常敏感', '1', '/images/upload/teacher/20171115/1510737238489.png', '0', '2017-10-20 09:56:07', '2017-11-15 17:14:00', '223', '3');
INSERT INTO `edu_teacher` VALUES ('11', '蒋老师', '金牌讲师。毕业于湘潭大学，从事教育行业2\r\n年。', '精通Oracle，MySQL等关系型数据库。熟练掌\r\n握JDBC,Struts2.0、Hibernate、Spring，熟悉\r\n表现层技术，熟悉HTML/JavaScript/AJAX技\r\n术,对BI应用有自己深刻的理解，精通liunx操作系\r\n统，对\r\ninformatica,datastage,cognos,python,hadoo\r\np等技术运用熟练。', '1', '/images/upload/teacher/20171115/1510737260783.png', '0', '2017-10-20 09:57:12', '2017-11-15 17:14:22', '223', '2');
INSERT INTO `edu_teacher` VALUES ('12', '陈老师', '多年运营推广经验，擅长企业战略规划，品牌战略规\r\n划，运营推广。熟练掌握', 'CorelDRAW 、Adobe Photoshop 等平面设计软件。\r\n先后从事过食品类、印刷类、教育类、SEO/SEM运营推广工作。运营过多家创业型公司公众号，\r\n淘宝店，微店，阿里巴巴平台、以及头条号、百家号、微博等各种自媒体平台的策划活动方案等。', '1', '/images/upload/teacher/20171115/1510737273336.png', '0', '2017-10-20 09:58:17', '2017-11-15 17:14:36', '208', '1');

-- ----------------------------
-- Table structure for edu_user
-- ----------------------------
DROP TABLE IF EXISTS `edu_user`;
CREATE TABLE `edu_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员ID',
  `MOBILE` varchar(11) DEFAULT NULL COMMENT '手机号',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮箱号',
  `PASSWORD` varchar(64) DEFAULT NULL COMMENT '密码',
  `USER_NAME` varchar(50) DEFAULT NULL COMMENT '用户名',
  `SHOW_NAME` varchar(50) DEFAULT NULL COMMENT '显示名 （昵称）',
  `SEX` tinyint(1) DEFAULT '0' COMMENT '性别  1男  2女',
  `AGE` tinyint(3) DEFAULT '0' COMMENT '年龄',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `IS_AVALIBLE` tinyint(1) DEFAULT '1' COMMENT '是否可用 1正常  2冻结',
  `PIC_IMG` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `BANNER_URL` varchar(200) DEFAULT NULL COMMENT '个人中心用户背景图片',
  `MSG_NUM` int(11) DEFAULT '0' COMMENT '站内信未读消息数',
  `SYS_MSG_NUM` int(11) DEFAULT '0',
  `LAST_SYSTEM_TIME` datetime DEFAULT '0000-00-00 00:00:00' COMMENT '上传统计系统消息时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='学员表';

-- ----------------------------
-- Records of edu_user
-- ----------------------------
INSERT INTO `edu_user` VALUES ('1', '18911893513', 'lmx193@163.com', '3c5ef8ed366124eb3dd39b79b5ecdc6f', null, null, '0', '0', '2015-05-15 13:20:52', '1', null, null, '0', '1', null);
INSERT INTO `edu_user` VALUES ('2', '13661164223', 'lmx193@162.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-05-15 13:24:41', '1', null, null, '0', '1', null);
INSERT INTO `edu_user` VALUES ('3', '13661164224', 'lmx1943@163.com', '96e79218965eb72c92a549dd5a330112', '小星星', '小少爷', '1', '24', '2015-05-15 13:26:41', '1', '/images/upload/customer/20150910/1441866820099.jpg', null, '0', '0', '2017-09-14 20:44:25');
INSERT INTO `edu_user` VALUES ('4', '18911893512', 'lmingxing@inxedu.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-05-15 14:41:11', '1', null, null, '0', '1', null);
INSERT INTO `edu_user` VALUES ('5', '13661164225', 'limingxing@inxedu.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-05-15 14:42:34', '1', null, '/images/upload/image/20150512/1431402426251.jpg', '0', '1', null);
INSERT INTO `edu_user` VALUES ('6', '18201604788', '916033995@qq.com', '96e79218965eb72c92a549dd5a330112', 'lucky', 'goddess', '0', '0', '2015-05-22 18:28:42', '1', '', null, '0', '1', null);
INSERT INTO `edu_user` VALUES ('7', '13161090129', 'demo@test.com', '96e79218965eb72c92a549dd5a330112', '笑笑', '朗诵', '2', '12', '2015-05-25 21:55:48', '1', '/images/upload/customer/20150910/1441527777887.jpg', null, '0', '0', '2015-09-22 14:23:40');
INSERT INTO `edu_user` VALUES ('8', '13300009999', '23@test.com', 'bbb8aae57c104cda40c93843ad5e6db8', null, null, '0', '0', '2015-08-10 06:15:25', '1', '/images/upload/customer/20150512/6818.jpg', null, '0', '1', '0000-00-00 00:00:00');
INSERT INTO `edu_user` VALUES ('9', '15612348458', '9162321458@qq.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-09-02 04:21:54', '1', null, null, '0', '1', '2015-09-01 16:21:54');
INSERT INTO `edu_user` VALUES ('10', '15940037813', 'exmail@qq.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-09-10 03:35:12', '1', null, null, '0', '0', '2015-09-09 16:38:28');
INSERT INTO `edu_user` VALUES ('11', '13161090128', '609682727@qq.com', '96e79218965eb72c92a549dd5a330112', null, null, '0', '0', '2015-09-10 21:39:14', '1', null, null, '0', '1', '2015-09-10 09:39:14');
INSERT INTO `edu_user` VALUES ('12', '15802534180', '505794144@qq.com', '4f4683ebab160b00fcb29f6a8e8d9fcd', null, null, '0', '0', '2017-10-18 17:40:50', '1', null, null, '0', '0', '2017-10-18 17:41:02');
INSERT INTO `edu_user` VALUES ('13', '15802534181', '15802534180@139.com', 'f75f6a6684a02b3dd32799466ff88434', null, null, '0', '0', '2017-10-20 09:18:51', '1', '/images/upload/customer/20171020/1508463465519.jpg', null, '0', '1', '2017-10-20 09:18:51');

-- ----------------------------
-- Table structure for edu_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `edu_user_login_log`;
CREATE TABLE `edu_user_login_log` (
  `LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `IP` varchar(20) DEFAULT NULL COMMENT '登录IP',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户ID',
  `OS_NAME` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `USER_AGENT` varchar(50) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of edu_user_login_log
-- ----------------------------
INSERT INTO `edu_user_login_log` VALUES ('1', '2015-09-22 06:58:38', '127.0.1.1', '7', 'linux', 'firefox 3');
INSERT INTO `edu_user_login_log` VALUES ('2', '2015-09-22 06:59:00', '127.0.1.1', '6', 'linux', 'firefox 3');
INSERT INTO `edu_user_login_log` VALUES ('3', '2015-09-22 22:10:49', '127.0.1.1', '6', 'linux', 'firefox 3');
INSERT INTO `edu_user_login_log` VALUES ('4', '2015-09-22 22:11:02', '127.0.1.1', '7', 'linux', 'firefox 3');
INSERT INTO `edu_user_login_log` VALUES ('5', '2015-09-22 22:11:28', '127.0.1.1', '3', 'linux', 'firefox 3');
INSERT INTO `edu_user_login_log` VALUES ('6', '2015-09-24 22:26:37', '127.0.1.1', '6', 'linux', 'firefox 4');
INSERT INTO `edu_user_login_log` VALUES ('7', '2015-09-24 22:47:16', '127.0.1.1', '6', 'linux', 'firefox 4');
INSERT INTO `edu_user_login_log` VALUES ('8', '2015-09-24 22:54:52', '127.0.1.1', '6', 'linux', 'firefox 4');
INSERT INTO `edu_user_login_log` VALUES ('9', '2015-09-24 23:19:07', '127.0.1.1', '6', 'linux', 'firefox 4');
INSERT INTO `edu_user_login_log` VALUES ('10', '2015-09-24 23:45:25', '127.0.1.1', '6', 'linux', 'firefox 4');
INSERT INTO `edu_user_login_log` VALUES ('11', '2017-09-14 20:44:07', '192.168.100.224', '3', 'windows', 'chrome');
INSERT INTO `edu_user_login_log` VALUES ('12', '2017-09-15 09:51:02', '192.168.100.224', '3', 'windows', 'chrome');
INSERT INTO `edu_user_login_log` VALUES ('13', '2017-10-20 09:28:33', '192.168.100.224', '13', 'windows', 'chrome');
INSERT INTO `edu_user_login_log` VALUES ('14', '2017-10-20 09:37:22', '192.168.100.224', '13', 'windows', 'chrome');

-- ----------------------------
-- Table structure for edu_website_course
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_course`;
CREATE TABLE `edu_website_course` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT '' COMMENT '推荐模块名称',
  `LINK` varchar(255) DEFAULT '' COMMENT '点击更多链接',
  `DESCRIPTION` varchar(255) DEFAULT '' COMMENT '说明',
  `COURSENUM` int(11) DEFAULT '0' COMMENT '推荐课程限制数量',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站课程推荐分类';

-- ----------------------------
-- Records of edu_website_course
-- ----------------------------
INSERT INTO `edu_website_course` VALUES ('2', '首页-为你推荐课程', '/front/showcoulist', '首页-推荐课程（第一屏，导航图下面的位置）', '6');

-- ----------------------------
-- Table structure for edu_website_course_detail
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_course_detail`;
CREATE TABLE `edu_website_course_detail` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `RECOMMEND_ID` int(11) DEFAULT '0' COMMENT '推荐分类的id',
  `COURSE_ID` int(11) DEFAULT '0' COMMENT '课程id',
  `ORDER_NUM` int(11) DEFAULT '0' COMMENT '课程显示排序',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='推荐课程表';

-- ----------------------------
-- Records of edu_website_course_detail
-- ----------------------------
INSERT INTO `edu_website_course_detail` VALUES ('59', '2', '14', '5');
INSERT INTO `edu_website_course_detail` VALUES ('60', '2', '15', '4');
INSERT INTO `edu_website_course_detail` VALUES ('61', '2', '16', '3');
INSERT INTO `edu_website_course_detail` VALUES ('63', '2', '18', '7');
INSERT INTO `edu_website_course_detail` VALUES ('64', '2', '19', '6');

-- ----------------------------
-- Table structure for edu_website_images
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_images`;
CREATE TABLE `edu_website_images` (
  `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMAGE_URL` varchar(200) NOT NULL DEFAULT '' COMMENT '图片地址',
  `LINK_ADDRESS` varchar(255) DEFAULT NULL COMMENT '图链接地址',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '图标题',
  `TYPE_ID` int(11) DEFAULT '0' COMMENT '图片类型',
  `SERIES_NUMBER` int(11) DEFAULT '0' COMMENT '序列号',
  `PREVIEW_URL` varchar(255) DEFAULT NULL COMMENT '略缩图片地址',
  `COLOR` varchar(255) DEFAULT '' COMMENT '背景色',
  `describe` varchar(600) DEFAULT '' COMMENT '图片描述',
  PRIMARY KEY (`IMAGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='banner图管理';

-- ----------------------------
-- Records of edu_website_images
-- ----------------------------
INSERT INTO `edu_website_images` VALUES ('274', '/images/upload/image/20150915/1442313365861.jpg', '/front/showcoulist', '首页banner图片01', '1', '1', '/images/upload/image/20150915/1442313365861.png', '#FFFFFF', '');
INSERT INTO `edu_website_images` VALUES ('275', '/images/upload/image/20150915/1442313365863.png', '/front/showcoulist', '首页banner图片03', '1', '1', '/images/upload/image/20150915/1442313365861.png', '#FFFFFF', '');
INSERT INTO `edu_website_images` VALUES ('284', '/images/upload/image/20150915/1442313365862.png', '/front/showcoulist', '首页banner图片02', '1', '2', '/images/upload/image/20150915/1442313577205.jpg', '#FFFFFF', '');
INSERT INTO `edu_website_images` VALUES ('310', '/images/upload/image/20171025/1508895799570.jpg', '/', '底部微薄二维码', '11', '0', '/images/upload/image/20171025/1508895805084.jpg', '', '底部微薄二维码');
INSERT INTO `edu_website_images` VALUES ('311', '/images/upload/image/20150908/1442225242188.jpg', '/', '文章列表', '12', '0', '', '', '文章列表右下角广告图');
INSERT INTO `edu_website_images` VALUES ('312', '/images/upload/image/20171025/1508895831080.jpg', 'http://www.rxzxedu.com/', '底部微信二维码', '11', '0', '/images/upload/image/20171025/1508895833905.jpg', '', '底部微信二维码');
INSERT INTO `edu_website_images` VALUES ('313', '/images/upload/image/20171020/1508470841242.png', '111', '合作企业', '17', '0', '/images/upload/image/20171020/1508470846208.png', '', '合作企业');
INSERT INTO `edu_website_images` VALUES ('314', '/images/upload/image/20171115/1510737469179.jpg', '/', '校园环境1', '18', '0', '/images/upload/image/20171115/1510737577513.jpg', '', '校园环境1');
INSERT INTO `edu_website_images` VALUES ('315', '/images/upload/image/20171115/1510739613442.jpg', '/', '校园环境2', '18', '0', '/images/upload/image/20171115/1510739867956.jpg', '', '校园环境2');
INSERT INTO `edu_website_images` VALUES ('316', '/images/upload/image/20171115/1510739902105.jpg', '/', '校园环境3', '18', '0', '/images/upload/image/20171115/1510739916722.jpg', '', '校园环境2');
INSERT INTO `edu_website_images` VALUES ('317', '/images/upload/image/20171115/1510739958007.jpg', '/', '校园环境4', '18', '0', '/images/upload/image/20171115/1510739973603.jpg', '', '校园环境4');
INSERT INTO `edu_website_images` VALUES ('318', '/images/upload/image/20171115/1510740006532.jpg', '/', '校园环境5', '18', '0', '/images/upload/image/20171115/1510740038320.jpg', '', '校园环境5');

-- ----------------------------
-- Table structure for edu_website_images_type
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_images_type`;
CREATE TABLE `edu_website_images_type` (
  `TYPE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `TYPE_NAME` varchar(50) DEFAULT NULL COMMENT '类型名',
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='图片类型表';

-- ----------------------------
-- Records of edu_website_images_type
-- ----------------------------
INSERT INTO `edu_website_images_type` VALUES ('1', '首页Banner图片');
INSERT INTO `edu_website_images_type` VALUES ('10', '课程互动');
INSERT INTO `edu_website_images_type` VALUES ('11', '底部二维码');
INSERT INTO `edu_website_images_type` VALUES ('12', '文章列表');
INSERT INTO `edu_website_images_type` VALUES ('17', '首页图片');
INSERT INTO `edu_website_images_type` VALUES ('18', '校园环境');

-- ----------------------------
-- Table structure for edu_website_navigate
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_navigate`;
CREATE TABLE `edu_website_navigate` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `NAME` varchar(100) NOT NULL DEFAULT '' COMMENT '导航显示名称',
  `URL` varchar(100) NOT NULL DEFAULT '' COMMENT '导航显示位置',
  `NEWPAGE` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否在新页面打开0是1否',
  `TYPE` varchar(50) NOT NULL DEFAULT '' COMMENT '类型：INDEX首页、USER个人中心、FRIENDLINK尾部友链、TAB尾部标签',
  `ORDERNUM` int(11) NOT NULL DEFAULT '0' COMMENT '显示排序',
  `STATUS` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0正常1冻结',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='导航表';

-- ----------------------------
-- Records of edu_website_navigate
-- ----------------------------
INSERT INTO `edu_website_navigate` VALUES ('1', '首页', '/', '1', 'INDEX', '100', '0');
INSERT INTO `edu_website_navigate` VALUES ('2', '特色课程', '/front/showcoulist', '1', 'INDEX', '96', '0');
INSERT INTO `edu_website_navigate` VALUES ('3', '大数据', '/front/showcoulist_bigdata', '1', 'INDEX', '99', '0');
INSERT INTO `edu_website_navigate` VALUES ('4', 'Unity3D', '/front/showcoulist_unity3d', '1', 'INDEX', '98', '0');
INSERT INTO `edu_website_navigate` VALUES ('5', '关于我们', '/front/teacherlist', '1', 'INDEX', '95', '0');
INSERT INTO `edu_website_navigate` VALUES ('6', '新媒体', '/front/showcoulist_newmedia', '1', 'INDEX', '97', '0');
INSERT INTO `edu_website_navigate` VALUES ('7', '资讯', '/front/articlelist', '1', 'INDEX', '94', '0');
INSERT INTO `edu_website_navigate` VALUES ('14', '学员案例', '/student/studentlist', '1', 'INDEX', '93', '0');
INSERT INTO `edu_website_navigate` VALUES ('16', '成功案例', '#', '0', 'TAB', '97', '0');
INSERT INTO `edu_website_navigate` VALUES ('17', '产品介绍', '/help', '0', 'TAB', '98', '0');
INSERT INTO `edu_website_navigate` VALUES ('18', '联系我们', '#', '1', 'TAB', '99', '0');
INSERT INTO `edu_website_navigate` VALUES ('37', '问题咨询', '/questions/list', '1', 'INDEX', '0', '0');

-- ----------------------------
-- Table structure for edu_website_profile
-- ----------------------------
DROP TABLE IF EXISTS `edu_website_profile`;
CREATE TABLE `edu_website_profile` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) NOT NULL DEFAULT '' COMMENT '类型',
  `DESCIPTION` text COMMENT '内容JSON格式',
  `EXPLAIN` varchar(50) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of edu_website_profile
-- ----------------------------
INSERT INTO `edu_website_profile` VALUES ('1', 'web', '{\"author\":\"RXEDU(http://www.rxzxedu.com)\",\"title\":\"中国数据人才唯一培养单位\",\"phone\":\"18627552868 13319535818\",\"keywords\":\"RXEDU 融信教育\",\"email\":\"1413138340@qq.com\",\"description\":\"融信在线（北京）教育科技有限公司（以下简称融信教育）主要致力于以金融电信电商行业业务企业，培养大数据工程师，web安全工程师，手游工程师 ,AR/VR,新媒体运营师，Java开发工程师，高级测试工程师，移动互联网开发工程等人才提供实训就业服务工作\",\"company\":\"中国数据人才唯一培养单位\",\"workTime\":\"9:00-18:00\",\"copyright\":\"融信在线(北京)教育科技有限公司湖南分公司\"}', '基本信息的维护');
INSERT INTO `edu_website_profile` VALUES ('6', 'logo2', '{\"url\":\"/images/upload/websiteLogo/20150820/1440035056373.png\"}', 'logo2');
INSERT INTO `edu_website_profile` VALUES ('2', 'alipay', '{\"sellerEmail\":\"\",\"alipaykey\":\"\",\"alipaypartnerID\":\"\",\"status\":\"0\"}', '支付宝配置');
INSERT INTO `edu_website_profile` VALUES ('3', 'logo', '{\"url\":\"/images/upload/websiteLogo/20150820/1440035056371.png\"}', 'logo');
INSERT INTO `edu_website_profile` VALUES ('4', 'censusCode', '{\"censusCodeString\":\"<script type=\\\"text/javascript\\\">\\r\\nvar _bdhmProtocol = ((\\\"https:\\\" == document.location.protocol) ? \\\" https://\\\" : \\\" http://\\\");\\r\\ndocument.write(unescape(\\\"%3Cscript src=\'\\\" + _bdhmProtocol + \\\"hm.baidu.com/h.js%3Ff9174a438ce90af0345a8e670f502461\' type=\'text/javascript\'%3E%3C/script%3E\\\"));\\r\\n</script>\\r\\n\"}', '统计代码');
INSERT INTO `edu_website_profile` VALUES ('5', 'online', '{\"onlineImageUrl\":\"/images/upload/online/20171026/1509008864571.jpg\",\"onlineUrl\":\"http://rxzxedu.com\"}', '在线咨询');
INSERT INTO `edu_website_profile` VALUES ('7', 'logo3', '{\"url\":\"/images/upload/websiteLogo/20150820/1440035056374.png\"}', 'logo3');

-- ----------------------------
-- Table structure for sys_function
-- ----------------------------
DROP TABLE IF EXISTS `sys_function`;
CREATE TABLE `sys_function` (
  `FUNCTION_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `PARENT_ID` int(11) DEFAULT '0' COMMENT '权限父ID',
  `FUNCTION_NAME` varchar(100) DEFAULT NULL COMMENT '权限名',
  `FUNCTION_URL` varchar(255) DEFAULT NULL COMMENT '权限URL',
  `FUNCTION_TYPE` tinyint(1) DEFAULT '0' COMMENT '权限类型 1菜单 2功能',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `SORT` int(11) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`FUNCTION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of sys_function
-- ----------------------------
INSERT INTO `sys_function` VALUES ('18', '45', '权限树', '/admin/sysfunctioin/showfunctionztree', '1', '2015-03-18 09:46:16', '0');
INSERT INTO `sys_function` VALUES ('19', '45', '角色管理', '/admin/sysrole/showroleList', '1', '2015-03-18 09:46:17', '0');
INSERT INTO `sys_function` VALUES ('20', '18', '修改权限', '/admin/sysfunctioin/updatefunction', '2', '2015-03-18 09:47:21', '0');
INSERT INTO `sys_function` VALUES ('21', '18', '添加权限', '/admin/sysfunctioin/addfunction', '2', '2015-03-18 09:47:23', '0');
INSERT INTO `sys_function` VALUES ('22', '18', '拖拽权限', '/admin/sysfunctioin/updateparentid', '2', '2015-03-18 09:48:44', '0');
INSERT INTO `sys_function` VALUES ('23', '18', '删除权限', '/admin/sysfunctioin/deletefunction', '2', '2015-03-18 09:50:30', '0');
INSERT INTO `sys_function` VALUES ('24', '0', '用户管理', '', '1', '2015-03-18 09:50:30', '9');
INSERT INTO `sys_function` VALUES ('25', '24', '用户列表', '/admin/sysuser/userlist', '1', '2015-03-18 09:50:30', '0');
INSERT INTO `sys_function` VALUES ('26', '19', '保存角色权限', '/admin/sysrole/saveroelfunction/', '2', '2015-03-20 06:56:09', '0');
INSERT INTO `sys_function` VALUES ('30', '0', '媒体广告图片', '', '1', '2015-03-23 13:40:44', '0');
INSERT INTO `sys_function` VALUES ('31', '24', '添加用户', '/admin/sysuser/createuser', '2', '2015-03-23 13:46:17', '0');
INSERT INTO `sys_function` VALUES ('32', '30', '广告图', '/admin/website/imagesPage', '1', '2015-03-23 13:41:47', '0');
INSERT INTO `sys_function` VALUES ('33', '24', '修改用户密码', '/admin/sysuser/updatepwd/', '2', '2015-03-23 13:48:55', '0');
INSERT INTO `sys_function` VALUES ('34', '24', '修改用户', '/admin/sysuser/updateuser', '2', '2015-03-23 13:48:55', '0');
INSERT INTO `sys_function` VALUES ('35', '24', '禁用或启用用户', '/admin/sysuser/disableOrstart/', '2', '2015-03-23 13:50:14', '0');
INSERT INTO `sys_function` VALUES ('36', '0', '课程管理', '', '1', '2015-03-24 05:58:20', '8');
INSERT INTO `sys_function` VALUES ('37', '36', '专业管理', '/admin/subj/toSubjectList', '1', '2015-03-24 05:58:34', '0');
INSERT INTO `sys_function` VALUES ('38', '36', '课程管理', '/admin/cou/list', '1', '2015-03-24 06:01:46', '0');
INSERT INTO `sys_function` VALUES ('39', '36', '推荐课程', '/admin/detail/list', '1', '2015-03-24 06:03:00', '0');
INSERT INTO `sys_function` VALUES ('40', '36', '推荐课程分类', '/admin/website/websiteCoursePage', '1', '2015-03-24 06:03:34', '0');
INSERT INTO `sys_function` VALUES ('42', '0', '教师管理', '', '1', '2015-03-24 06:04:17', '0');
INSERT INTO `sys_function` VALUES ('43', '42', '教师列表', '/admin/teacher/list', '1', '2015-03-24 06:04:37', '0');
INSERT INTO `sys_function` VALUES ('44', '42', '添加讲师', '/admin/teacher/toadd', '1', '2015-03-24 06:05:18', '0');
INSERT INTO `sys_function` VALUES ('45', '0', '系统管理', '', '1', '2015-03-24 07:47:53', '10');
INSERT INTO `sys_function` VALUES ('46', '0', '文章资讯管理', '', '1', '2015-03-24 07:58:35', '7');
INSERT INTO `sys_function` VALUES ('47', '46', '添加文章', '/admin/article/initcreate', '1', '2015-03-24 07:58:49', '0');
INSERT INTO `sys_function` VALUES ('49', '82', '基本配置', '/admin/websiteProfile/find/web', '1', '2015-03-24 12:08:44', '0');
INSERT INTO `sys_function` VALUES ('50', '46', '文章列表', '/admin/article/showlist', '1', '2015-03-24 12:30:48', '0');
INSERT INTO `sys_function` VALUES ('51', '82', '导航管理', '/admin/website/navigates', '1', '2015-03-24 12:36:45', '0');
INSERT INTO `sys_function` VALUES ('55', '50', '删除资讯', '/admin/article/publishOrDelete/2', '2', '2015-03-25 11:41:06', '0');
INSERT INTO `sys_function` VALUES ('56', '50', '发布文章', '/admin/article/publishOrDelete/1', '2', '2015-03-25 11:41:09', '0');
INSERT INTO `sys_function` VALUES ('57', '50', '修改并发布文章', '/admin/article/updatearticle/2', '2', '2015-03-25 11:41:10', '0');
INSERT INTO `sys_function` VALUES ('58', '50', '修改文章', '/admin/article/updatearticle/1', '2', '2015-03-25 11:44:02', '0');
INSERT INTO `sys_function` VALUES ('59', '47', '保存文章', '/admin/article/addarticle/1', '2', '2015-03-25 11:44:42', '0');
INSERT INTO `sys_function` VALUES ('60', '47', '保存并发布文章', '/admin/article/addarticle/2', '2', '2015-03-25 11:44:44', '0');
INSERT INTO `sys_function` VALUES ('61', '0', '学员管理', '', '1', '2015-03-26 13:31:10', '5');
INSERT INTO `sys_function` VALUES ('62', '61', '学员列表', '/admin/user/getuserList', '1', '2015-03-26 13:31:28', '0');
INSERT INTO `sys_function` VALUES ('63', '0', '订单管理', '', '1', '2015-03-27 13:43:58', '6');
INSERT INTO `sys_function` VALUES ('64', '63', '订单列表', '/admin/order/showorderlist', '1', '2015-03-27 13:44:14', '0');
INSERT INTO `sys_function` VALUES ('65', '64', '取消或恢复订单', '/admin/order/cancelOrRegain', '2', '2015-03-27 14:57:28', '0');
INSERT INTO `sys_function` VALUES ('66', '64', '审核订单', '/admin/order/auditing/', '2', '2015-03-27 14:58:02', '0');
INSERT INTO `sys_function` VALUES ('68', '82', '在线咨询', '/admin/websiteProfile/online', '1', '2015-03-28 09:33:56', '0');
INSERT INTO `sys_function` VALUES ('69', '37', '创建专业', '/admin/subj/createSubject', '2', '2015-03-30 07:47:32', '0');
INSERT INTO `sys_function` VALUES ('70', '37', '修改专业父ID', '/admin/subj/updateparentid/', '2', '2015-03-30 07:47:32', '0');
INSERT INTO `sys_function` VALUES ('71', '37', '修改专业名', '/admin/subj/updatesubjectName', '2', '2015-03-30 07:47:34', '0');
INSERT INTO `sys_function` VALUES ('72', '37', '删除专业', '/admin/subj/deleteSubject/', '2', '2015-03-30 07:49:09', '0');
INSERT INTO `sys_function` VALUES ('73', '38', '章节管理', '/admin/kpoint/list/', '2', '2015-04-01 06:13:35', '0');
INSERT INTO `sys_function` VALUES ('74', '38', '修改课程', '/admin/cou/updateCourse', '2', '2015-04-01 06:14:27', '0');
INSERT INTO `sys_function` VALUES ('75', '38', '上架或下架课程', '/admin/cou/avaliable/', '2', '2015-04-01 06:15:04', '0');
INSERT INTO `sys_function` VALUES ('76', '73', '创建视频', '/admin/kpoint/addkpoint', '2', '2015-04-01 06:16:14', '0');
INSERT INTO `sys_function` VALUES ('77', '73', '修改视频节点', '/admin/kpoint/updateKpoint', '2', '2015-04-01 06:16:52', '0');
INSERT INTO `sys_function` VALUES ('78', '73', '删除视频节点', '/admin/kpoint/deletekpoint/', '2', '2015-04-01 06:17:20', '0');
INSERT INTO `sys_function` VALUES ('79', '30', '图片类型', '/admin/imagetype/getlist', '1', '2015-04-01 14:25:06', '0');
INSERT INTO `sys_function` VALUES ('80', '62', '修改学员密码', '/admin/user/updateUserPwd', '2', '2015-04-02 14:00:46', '0');
INSERT INTO `sys_function` VALUES ('81', '62', '禁用或启用学员', '/admin/user/updateuserstate', '2', '2015-04-02 14:00:47', '0');
INSERT INTO `sys_function` VALUES ('82', '0', '网站信息', '', '1', '2015-04-10 09:39:37', '0');
INSERT INTO `sys_function` VALUES ('83', '43', '修改讲师', '/admin/teacher/update', '2', '2015-05-15 14:33:19', '0');
INSERT INTO `sys_function` VALUES ('84', '43', '删除讲师', '/admin/teacher/delete/', '2', '2015-05-15 14:34:07', '0');
INSERT INTO `sys_function` VALUES ('91', '0', '问答', '', '1', '2015-08-27 02:31:07', '0');
INSERT INTO `sys_function` VALUES ('92', '91', '问答标签', '/admin/questions/toQuestionsTagList', '1', '2015-08-27 02:31:23', '0');
INSERT INTO `sys_function` VALUES ('93', '91', '问答列表', '/admin/questions/list', '1', '2015-08-27 06:46:39', '0');
INSERT INTO `sys_function` VALUES ('94', '91', '问答回复列表', '/admin/questionscomment/list', '1', '2015-08-27 21:44:43', '0');
INSERT INTO `sys_function` VALUES ('95', '0', '系统消息', '', '1', '2015-08-30 06:33:06', '0');
INSERT INTO `sys_function` VALUES ('96', '95', '全站系统消息', '/admin/user/letter/toSendSystemMessages', '1', '2015-08-30 06:33:20', '0');
INSERT INTO `sys_function` VALUES ('97', '0', '评论管理', '', '1', '2015-08-31 21:11:44', '0');
INSERT INTO `sys_function` VALUES ('98', '97', '评论列表', '/admin/comment/query', '1', '2015-08-31 21:12:18', '0');
INSERT INTO `sys_function` VALUES ('99', '95', '批量发送', '/admin/user/letter/toSendSystemMessagesBatch', '1', '2015-09-01 06:18:18', '0');
INSERT INTO `sys_function` VALUES ('100', '82', '前台主题色', '/admin/theme/toupdate', '1', '2015-09-23 02:25:32', '0');
INSERT INTO `sys_function` VALUES ('101', '0', '学员展示管理', '', '1', '2015-03-24 07:58:35', '7');
INSERT INTO `sys_function` VALUES ('102', '101', '添加学员展示', '/admin/student/initcreate', '1', '2015-03-24 07:58:49', '0');
INSERT INTO `sys_function` VALUES ('103', '101', '学员展示列表', '/admin/student/showlist', '1', '2015-03-24 12:30:48', '0');
INSERT INTO `sys_function` VALUES ('104', '103', '发布学员展示', '/admin/student/publishOrDelete/1', '2', '2015-03-25 11:41:09', '0');
INSERT INTO `sys_function` VALUES ('105', '103', '修改并发布学员展示', '/admin/student/updatestudent/2', '2', '2015-03-25 11:41:10', '0');
INSERT INTO `sys_function` VALUES ('106', '103', '修改学员展示', '/admin/student/updatestudent/1', '2', '2015-03-25 11:44:02', '0');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `IP` varchar(20) DEFAULT NULL COMMENT '登录IP',
  `USER_ID` int(11) DEFAULT '0' COMMENT '用户ID',
  `OS_NAME` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `USER_AGENT` varchar(50) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('1', '2015-03-18 14:18:31', '192.168.1.119', '1', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('2', '2015-03-19 12:13:41', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('3', '2015-03-19 12:17:44', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('4', '2015-03-19 12:27:09', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('5', '2015-03-20 05:21:10', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('6', '2015-03-20 09:19:46', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('7', '2015-03-20 09:35:00', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('8', '2015-03-20 10:35:29', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('9', '2015-03-20 10:46:54', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('10', '2015-03-20 14:00:49', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('11', '2015-03-23 06:21:46', '192.168.1.166', '14', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('12', '2015-03-23 06:47:19', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('13', '2015-03-23 07:50:09', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('14', '2015-03-23 08:11:45', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('15', '2015-03-23 08:12:54', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('16', '2015-03-23 08:26:12', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('17', '2015-03-23 10:41:53', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('18', '2015-03-23 11:50:33', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('19', '2015-03-23 11:57:31', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('20', '2015-03-23 12:26:08', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('21', '2015-03-23 12:26:33', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('22', '2015-03-23 12:29:49', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('23', '2015-03-23 12:31:02', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('24', '2015-03-23 13:03:37', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('25', '2015-03-23 13:04:09', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('26', '2015-03-23 13:04:40', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('27', '2015-03-23 13:06:10', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('28', '2015-03-23 13:18:14', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('29', '2015-03-23 13:20:03', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('30', '2015-03-23 13:38:05', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('31', '2015-03-23 13:43:12', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('32', '2015-03-23 13:50:53', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('33', '2015-03-23 14:02:28', '192.168.1.119', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('34', '2015-03-23 14:02:40', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('35', '2015-03-23 14:25:31', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('36', '2015-03-23 14:27:40', '192.168.1.119', '8', 'windows 7', 'mozilla');
INSERT INTO `sys_login_log` VALUES ('37', '2015-03-23 14:32:08', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('38', '2015-03-23 14:47:42', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('39', '2015-03-24 05:07:07', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('40', '2015-03-24 05:18:46', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('41', '2015-03-24 05:21:43', '192.168.1.160', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('42', '2015-03-24 06:06:23', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('43', '2015-03-24 06:10:02', '192.168.1.160', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('44', '2015-03-24 06:27:16', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('45', '2015-03-24 06:29:07', '192.168.1.166', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('46', '2015-03-24 06:30:12', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('47', '2015-03-24 06:33:25', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('48', '2015-03-24 06:42:41', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('49', '2015-03-24 07:59:43', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('50', '2015-03-24 11:30:53', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('51', '2015-03-24 11:27:03', '192.168.1.160', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('52', '2015-03-24 11:27:17', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('53', '2015-03-24 11:34:23', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('54', '2015-03-24 12:12:31', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('55', '2015-03-24 12:31:37', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('56', '2015-03-24 12:57:16', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('57', '2015-03-24 12:59:10', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('58', '2015-03-24 14:49:31', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('59', '2015-03-24 14:50:02', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('60', '2015-03-25 05:08:22', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('61', '2015-03-25 05:06:15', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('62', '2015-03-25 05:27:06', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('63', '2015-03-25 11:15:27', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('64', '2015-03-25 12:24:01', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('65', '2015-03-25 12:30:26', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('66', '2015-03-25 12:32:19', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('67', '2015-03-25 12:27:55', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('68', '2015-03-26 05:03:34', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('69', '2015-03-26 07:33:26', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('70', '2015-03-26 07:48:13', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('71', '2015-03-26 11:19:09', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('72', '2015-03-26 11:19:16', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('73', '2015-03-26 13:00:45', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('74', '2015-03-26 13:39:09', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('75', '2015-03-26 13:45:09', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('76', '2015-03-26 13:45:45', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('77', '2015-03-27 05:18:01', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('78', '2015-03-27 05:47:23', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('79', '2015-03-27 05:56:24', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('80', '2015-03-27 06:09:26', '192.168.1.119', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('81', '2015-03-27 06:10:14', '192.168.1.119', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('82', '2015-03-27 06:10:59', '192.168.1.119', '8', 'windows 7', 'mozilla');
INSERT INTO `sys_login_log` VALUES ('83', '2015-03-27 06:44:25', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('84', '2015-03-27 06:52:53', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('85', '2015-03-27 09:37:05', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('86', '2015-03-27 09:51:18', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('87', '2015-03-27 11:45:01', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('88', '2015-03-27 12:13:02', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('89', '2015-03-27 13:38:07', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('90', '2015-03-27 13:44:43', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('91', '2015-03-27 13:45:07', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('92', '2015-03-27 13:58:36', '192.168.1.160', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('93', '2015-03-27 14:27:59', '192.168.1.160', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('94', '2015-03-27 14:43:34', '192.168.1.160', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('95', '2015-03-27 14:58:25', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('96', '2015-03-27 14:53:23', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('97', '2015-03-28 04:56:03', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('98', '2015-03-28 05:02:29', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('99', '2015-03-28 05:10:46', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('100', '2015-03-28 09:35:05', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('101', '2015-03-28 09:56:26', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('102', '2015-03-28 11:58:58', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('103', '2015-03-28 12:22:17', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('104', '2015-03-30 05:07:35', '192.168.1.166', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('105', '2015-03-30 05:14:21', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('106', '2015-03-30 06:22:58', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('107', '2015-03-30 07:49:33', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('108', '2015-03-30 07:54:49', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('109', '2015-03-30 07:52:04', '192.168.1.160', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('110', '2015-03-31 05:15:37', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('111', '2015-04-01 05:18:53', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('112', '2015-04-01 06:17:46', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('113', '2015-04-01 06:18:48', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('114', '2015-04-01 06:21:10', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('115', '2015-04-01 06:23:00', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('116', '2015-04-01 09:11:16', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('117', '2015-04-01 14:25:43', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('118', '2015-04-02 05:11:37', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('119', '2015-04-02 14:29:10', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('120', '2015-04-03 05:07:28', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('121', '2015-04-03 09:56:44', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('122', '2015-04-03 11:15:22', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('123', '2015-04-07 10:41:42', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('124', '2015-04-07 15:07:03', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('125', '2015-04-08 05:50:28', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('126', '2015-04-08 11:34:01', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('127', '2015-04-08 12:31:18', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('128', '2015-04-08 14:07:00', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('129', '2015-04-08 15:33:29', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('130', '2015-04-09 07:20:28', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('131', '2015-04-09 10:43:47', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('132', '2015-04-10 07:57:01', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('133', '2015-04-10 08:01:44', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('134', '2015-04-10 08:04:22', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('135', '2015-04-10 09:23:34', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('136', '2015-04-10 09:40:37', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('137', '2015-04-10 10:10:52', '192.168.1.119', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('138', '2015-04-10 10:11:28', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('139', '2015-04-10 10:37:14', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('140', '2015-04-10 11:09:03', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('141', '2015-04-10 12:36:11', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('142', '2015-04-11 20:54:42', '192.168.1.119', '8', 'windows 7', 'mozilla');
INSERT INTO `sys_login_log` VALUES ('143', '2015-04-13 15:27:49', '192.168.1.158', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('144', '2015-04-13 15:37:02', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('145', '2015-04-13 18:03:26', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('146', '2015-04-13 19:51:24', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('147', '2015-04-13 20:04:23', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('148', '2015-04-13 20:09:46', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('149', '2015-04-13 20:11:35', '192.168.1.158', '8', 'windows 7', 'internet explorer');
INSERT INTO `sys_login_log` VALUES ('150', '2015-04-18 14:02:59', '192.168.1.119', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('151', '2015-05-12 17:41:08', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('152', '2015-05-12 23:44:22', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('153', '2015-05-12 20:33:08', '192.168.1.165', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('154', '2015-05-12 20:46:12', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('155', '2015-05-12 20:48:06', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('156', '2015-05-15 13:07:22', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('157', '2015-05-15 13:51:07', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('158', '2015-05-15 14:30:22', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('159', '2015-05-15 14:34:59', '192.168.1.157', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('160', '2015-05-19 21:32:47', '192.168.1.158', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('161', '2015-05-19 21:38:42', '192.168.1.158', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('162', '2015-05-19 21:38:56', '192.168.1.158', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('163', '2015-05-19 21:39:52', '192.168.1.158', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('164', '2015-05-19 21:40:48', '192.168.1.158', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('165', '2015-05-19 21:40:56', '192.168.1.158', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('166', '2015-05-19 21:41:26', '192.168.1.158', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('167', '2015-05-19 21:42:09', '192.168.1.158', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('168', '2015-05-19 21:44:02', '192.168.1.158', '8', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('169', '2015-05-19 18:43:30', '192.168.1.164', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('170', '2015-05-19 18:46:16', '192.168.1.164', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('171', '2015-05-19 18:47:36', '192.168.1.164', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('172', '2015-05-19 18:48:31', '192.168.1.164', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('173', '2015-05-19 18:49:18', '192.168.1.164', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('174', '2015-05-21 23:05:22', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('175', '2015-05-22 00:35:21', '123.151.136.214', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('176', '2015-05-22 01:28:10', '123.151.136.214', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('177', '2015-05-22 01:28:28', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('178', '2015-05-22 02:16:08', '123.151.136.214', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('179', '2015-05-22 02:19:41', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('180', '2015-05-22 02:31:12', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('181', '2015-05-22 18:17:24', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('182', '2015-05-22 19:38:52', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('183', '2015-05-25 21:27:10', '123.151.136.214', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('184', '2015-05-25 21:27:21', '123.151.136.214', '8', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('185', '2015-05-25 21:42:31', '123.151.136.214', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('186', '2015-05-25 21:57:45', '123.151.136.214', '2', 'windows 7', 'internet explorer 7');
INSERT INTO `sys_login_log` VALUES ('187', '2015-05-25 22:09:02', '123.151.136.214', '2', 'mac os x', 'firefox');
INSERT INTO `sys_login_log` VALUES ('188', '2015-05-28 19:49:14', '219.143.143.179', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('189', '2015-05-28 20:59:03', '123.151.136.214', '2', 'windows 7', 'internet explorer 9');
INSERT INTO `sys_login_log` VALUES ('190', '2015-07-15 19:28:15', '123.150.202.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('191', '2015-07-15 19:45:50', '123.150.202.1', '2', 'windows 7', 'internet explorer 7');
INSERT INTO `sys_login_log` VALUES ('192', '2015-07-15 19:47:39', '123.151.136.83', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('193', '2015-07-24 18:26:45', '123.151.136.82', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('194', '2015-07-27 18:23:38', '123.151.136.82', '2', 'windows 7', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('195', '2015-08-12 00:00:02', '123.151.136.214', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('196', '2015-08-13 01:17:48', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('197', '2015-08-13 01:27:55', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('198', '2015-08-13 01:57:24', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('199', '2015-08-13 07:15:32', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('200', '2015-08-13 07:59:44', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('201', '2015-08-20 21:26:55', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('202', '2015-08-21 02:01:14', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('203', '2015-08-21 04:09:42', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('204', '2015-08-21 04:36:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('205', '2015-08-25 04:31:53', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('206', '2015-08-25 05:36:04', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('207', '2015-08-25 05:52:25', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('208', '2015-08-25 05:58:51', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('209', '2015-08-25 06:37:33', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('210', '2015-08-25 06:41:31', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('211', '2015-08-25 06:44:39', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('212', '2015-08-25 06:48:12', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('213', '2015-08-25 06:55:13', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('214', '2015-08-25 21:08:42', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('215', '2015-08-25 21:29:18', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('216', '2015-08-25 21:32:42', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('217', '2015-08-25 22:22:47', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('218', '2015-08-25 22:31:42', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('219', '2015-08-25 22:36:48', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('220', '2015-08-25 22:54:16', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('221', '2015-08-25 22:54:25', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('222', '2015-08-25 23:03:14', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('223', '2015-08-25 23:06:41', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('224', '2015-08-25 23:19:53', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('225', '2015-08-25 23:22:49', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('226', '2015-08-25 23:27:18', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('227', '2015-08-25 23:29:16', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('228', '2015-08-25 23:40:06', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('229', '2015-08-25 23:49:14', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('230', '2015-08-26 01:58:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('231', '2015-08-26 02:17:56', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('232', '2015-08-26 02:25:51', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('233', '2015-08-26 02:27:27', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('234', '2015-08-26 02:30:34', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('235', '2015-08-26 02:43:29', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('236', '2015-08-26 02:59:30', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('237', '2015-08-26 04:07:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('238', '2015-08-26 04:51:19', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('239', '2015-08-27 01:46:35', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('240', '2015-08-27 02:29:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('241', '2015-08-27 02:37:58', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('242', '2015-08-27 03:25:44', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('243', '2015-08-27 03:26:06', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('244', '2015-08-27 03:42:30', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('245', '2015-08-27 03:49:59', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('246', '2015-08-27 03:51:24', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('247', '2015-08-27 05:25:04', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('248', '2015-08-27 06:46:26', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('249', '2015-08-27 06:49:39', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('250', '2015-08-27 07:34:33', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('251', '2015-08-27 07:36:26', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('252', '2015-08-27 07:40:43', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('253', '2015-08-27 08:03:57', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('254', '2015-08-27 08:16:59', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('255', '2015-08-27 08:20:28', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('256', '2015-08-27 08:22:30', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('257', '2015-08-27 08:24:09', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('258', '2015-08-27 09:04:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('259', '2015-08-27 20:30:45', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('260', '2015-08-27 21:08:46', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('261', '2015-08-27 21:25:15', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('262', '2015-08-27 21:33:05', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('263', '2015-08-27 21:44:36', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('264', '2015-08-27 21:45:17', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('265', '2015-08-27 22:00:28', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('266', '2015-08-27 22:20:00', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('267', '2015-08-27 22:35:00', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('268', '2015-08-27 22:58:17', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('269', '2015-08-27 23:10:28', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('270', '2015-08-27 23:11:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('271', '2015-08-27 23:36:44', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('272', '2015-08-27 23:47:21', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('273', '2015-08-27 23:50:36', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('274', '2015-08-28 01:48:40', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('275', '2015-08-28 02:33:22', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('276', '2015-08-28 03:14:31', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('277', '2015-08-28 03:47:50', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('278', '2015-08-28 05:01:56', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('279', '2015-08-28 07:51:30', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('280', '2015-08-28 08:26:45', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('281', '2015-08-28 21:02:59', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('282', '2015-08-28 21:48:43', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('283', '2015-08-29 04:47:36', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('284', '2015-08-29 04:55:07', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('285', '2015-08-29 22:08:59', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('286', '2015-08-29 22:12:15', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('287', '2015-08-29 22:45:19', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('288', '2015-08-30 02:58:33', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('289', '2015-08-30 03:33:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('290', '2015-08-30 06:32:49', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('291', '2015-08-30 06:34:24', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('292', '2015-08-30 06:35:14', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('293', '2015-08-31 21:11:36', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('294', '2015-08-31 21:21:25', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('295', '2015-08-31 21:29:15', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('296', '2015-08-31 21:30:02', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('297', '2015-08-31 21:50:59', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('298', '2015-08-31 21:51:46', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('299', '2015-08-31 21:53:09', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('300', '2015-08-31 22:07:28', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('301', '2015-08-31 22:45:45', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('302', '2015-08-31 22:53:51', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('303', '2015-08-31 23:48:33', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('304', '2015-09-01 01:55:09', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('305', '2015-09-01 02:50:09', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('306', '2015-09-01 03:43:33', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('307', '2015-09-01 04:41:31', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('308', '2015-09-01 05:12:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('309', '2015-09-01 05:36:19', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('310', '2015-09-01 05:40:34', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('311', '2015-09-01 06:18:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('312', '2015-09-01 06:19:38', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('313', '2015-09-01 06:22:12', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('314', '2015-09-01 06:30:23', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('315', '2015-09-01 23:14:12', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('316', '2015-09-01 23:35:58', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('317', '2015-09-01 23:49:10', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('318', '2015-09-02 01:45:13', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('319', '2015-09-02 03:07:00', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('320', '2015-09-02 03:08:55', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('321', '2015-09-02 05:09:33', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('322', '2015-09-02 05:45:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('323', '2015-09-03 02:09:27', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('324', '2015-09-03 03:40:46', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('325', '2015-09-03 05:03:20', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('326', '2015-09-07 23:35:40', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('327', '2015-09-08 00:01:25', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('328', '2015-09-08 01:33:19', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('329', '2015-09-08 01:36:26', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('330', '2015-09-08 01:48:39', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('331', '2015-09-08 04:00:30', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('332', '2015-09-08 04:26:12', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('333', '2015-09-08 04:29:30', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('334', '2015-09-08 04:36:24', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('335', '2015-09-08 04:42:45', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('336', '2015-09-08 06:09:26', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('337', '2015-09-08 06:30:37', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('338', '2015-09-08 21:14:48', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('339', '2015-09-08 21:36:07', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('340', '2015-09-08 22:01:53', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('341', '2015-09-08 22:06:11', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('342', '2015-09-08 22:25:26', '192.168.110.50', '2', 'windows vista', 'internet explorer 7');
INSERT INTO `sys_login_log` VALUES ('343', '2015-09-08 23:16:19', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('344', '2015-09-08 23:42:11', '192.168.110.60', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('345', '2015-09-08 23:48:10', '192.168.110.60', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('346', '2015-09-09 01:50:57', '192.168.110.60', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('347', '2015-09-09 02:23:57', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('348', '2015-09-09 05:20:21', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('349', '2015-09-09 06:16:19', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('350', '2015-09-09 07:16:27', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('351', '2015-09-09 08:18:43', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('352', '2015-09-09 20:58:42', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('353', '2015-09-09 21:09:45', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('354', '2015-09-09 21:57:16', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('355', '2015-09-09 22:13:31', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('356', '2015-09-09 22:14:28', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('357', '2015-09-09 22:15:32', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('358', '2015-09-09 22:18:40', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('359', '2015-09-09 22:57:31', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('360', '2015-09-09 23:04:55', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('361', '2015-09-10 02:18:36', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('362', '2015-09-10 02:29:02', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('363', '2015-09-10 02:51:52', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('364', '2015-09-10 02:54:58', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('365', '2015-09-10 02:57:39', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('366', '2015-09-10 03:30:05', '192.168.1.6', '2', 'windows vista', 'chrome');
INSERT INTO `sys_login_log` VALUES ('367', '2015-09-10 03:32:49', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('368', '2015-09-10 03:55:18', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('369', '2015-09-10 04:13:55', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('370', '2015-09-10 04:16:34', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('371', '2015-09-10 04:22:48', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('372', '2015-09-10 04:47:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('373', '2015-09-10 04:57:53', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('374', '2015-09-10 04:59:26', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('375', '2015-09-10 05:13:44', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('376', '2015-09-10 05:36:45', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('377', '2015-09-10 05:36:52', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('378', '2015-09-10 05:42:09', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('379', '2015-09-10 05:47:05', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('380', '2015-09-10 06:40:28', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('381', '2015-09-10 06:47:50', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('382', '2015-09-10 07:02:41', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('383', '2015-09-10 07:21:00', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('384', '2015-09-10 08:02:28', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('385', '2015-09-10 22:09:05', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('386', '2015-09-10 22:17:22', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('387', '2015-09-10 22:36:12', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('388', '2015-09-10 23:36:40', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('389', '2015-09-10 23:39:52', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('390', '2015-09-11 01:32:54', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('391', '2015-09-11 01:48:35', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('392', '2015-09-11 02:08:07', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('393', '2015-09-11 02:17:33', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('394', '2015-09-11 02:23:57', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('395', '2015-09-11 02:46:46', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('396', '2015-09-11 02:54:33', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('397', '2015-09-11 04:44:10', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('398', '2015-09-11 04:54:40', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('399', '2015-09-11 04:56:29', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('400', '2015-09-11 04:58:26', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('401', '2015-09-11 05:00:52', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('402', '2015-09-11 08:30:03', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('403', '2015-09-11 21:23:23', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('404', '2015-09-11 21:55:23', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('405', '2015-09-11 22:07:24', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('406', '2015-09-12 02:00:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('407', '2015-09-14 21:23:41', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('408', '2015-09-14 22:18:19', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('409', '2015-09-14 22:39:07', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('410', '2015-09-14 23:34:00', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('411', '2015-09-15 04:04:06', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('412', '2015-09-15 04:06:43', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('413', '2015-09-15 06:01:10', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('414', '2015-09-15 06:22:32', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('415', '2015-09-15 22:10:55', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('416', '2015-09-15 22:11:31', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('417', '2015-09-15 22:12:14', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('418', '2015-09-15 22:12:53', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('419', '2015-09-15 22:25:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('420', '2015-09-15 22:52:00', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('421', '2015-09-15 23:35:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('422', '2015-09-16 01:35:42', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('423', '2015-09-16 02:17:15', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('424', '2015-09-16 03:20:22', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('425', '2015-09-16 04:20:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('426', '2015-09-16 04:57:25', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('427', '2015-09-16 05:52:10', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('428', '2015-09-16 06:00:32', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('429', '2015-09-16 06:01:07', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('430', '2015-09-16 06:02:18', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('431', '2015-09-16 06:04:15', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('432', '2015-09-16 06:21:06', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('433', '2015-09-16 06:24:33', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('434', '2015-09-16 06:26:05', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('435', '2015-09-16 06:34:06', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('436', '2015-09-16 08:38:04', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('437', '2015-09-16 22:26:10', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('438', '2015-09-16 22:53:34', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('439', '2015-09-16 23:06:15', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('440', '2015-09-16 23:18:56', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('441', '2015-09-16 23:27:35', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('442', '2015-09-16 23:48:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('443', '2015-09-16 23:54:08', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('444', '2015-09-16 23:59:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('445', '2015-09-17 01:33:44', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('446', '2015-09-17 01:37:09', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('447', '2015-09-17 01:39:51', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('448', '2015-09-17 02:53:22', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('449', '2015-09-17 03:09:45', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('450', '2015-09-17 03:11:39', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('451', '2015-09-17 03:24:15', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('452', '2015-09-17 05:44:26', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('453', '2015-09-17 06:45:49', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('454', '2015-09-17 06:57:52', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('455', '2015-09-17 21:02:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('456', '2015-09-17 21:40:55', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('457', '2015-09-17 21:44:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('458', '2015-09-17 22:03:17', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('459', '2015-09-17 22:18:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('460', '2015-09-17 22:31:43', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('461', '2015-09-18 03:19:52', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('462', '2015-09-18 03:40:34', '172.30.52.1', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('463', '2015-09-18 04:16:19', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('464', '2015-09-18 04:19:38', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('465', '2015-09-18 22:38:27', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('466', '2015-09-19 07:49:54', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('467', '2015-09-19 07:59:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('468', '2015-09-19 20:58:02', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('469', '2015-09-19 21:42:08', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('470', '2015-09-19 22:40:42', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('471', '2015-09-20 01:42:04', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('472', '2015-09-20 03:25:47', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('473', '2015-09-20 05:56:06', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('474', '2015-09-22 06:41:47', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('475', '2015-09-22 21:15:25', '127.0.1.1', '2', 'linux', 'chrome');
INSERT INTO `sys_login_log` VALUES ('476', '2015-09-22 21:37:52', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('477', '2015-09-22 21:56:54', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('478', '2015-09-22 23:10:40', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('479', '2015-09-22 23:48:43', '192.168.1.123', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('480', '2015-09-22 23:49:36', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('481', '2015-09-22 23:56:47', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('482', '2015-09-22 23:58:13', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('483', '2015-09-22 23:59:54', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('484', '2015-09-23 02:00:17', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('485', '2015-09-23 02:01:46', '192.168.1.123', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('486', '2015-09-23 02:14:59', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('487', '2015-09-23 02:17:02', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('488', '2015-09-23 02:26:32', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('489', '2015-09-23 02:27:21', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('490', '2015-09-23 02:41:24', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('491', '2015-09-23 02:47:07', '192.168.1.123', '2', 'windows 7', 'chrome');
INSERT INTO `sys_login_log` VALUES ('492', '2015-09-23 05:36:37', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('493', '2015-09-23 05:58:12', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('494', '2015-09-23 06:04:42', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('495', '2015-09-23 06:06:32', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('496', '2015-09-23 06:09:08', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('497', '2015-09-23 06:27:36', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('498', '2015-09-23 06:33:54', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('499', '2015-09-23 06:38:01', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('500', '2015-09-23 06:56:38', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('501', '2015-09-23 07:00:40', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('502', '2015-09-23 07:04:32', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('503', '2015-09-23 21:46:17', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('504', '2015-09-23 22:03:55', '127.0.1.1', '2', 'linux', 'firefox 3');
INSERT INTO `sys_login_log` VALUES ('505', '2015-09-24 22:42:59', '127.0.1.1', '2', 'linux', 'firefox 4');
INSERT INTO `sys_login_log` VALUES ('506', '2017-09-14 20:52:49', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('507', '2017-09-15 08:46:12', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('508', '2017-09-15 09:51:49', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('509', '2017-09-29 16:34:19', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('510', '2017-10-09 16:52:42', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('511', '2017-10-18 17:06:24', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('512', '2017-10-18 19:34:12', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('513', '2017-10-18 19:36:15', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('514', '2017-10-19 08:19:45', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('515', '2017-10-19 08:57:54', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('516', '2017-10-19 09:20:58', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('517', '2017-10-19 10:22:19', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('518', '2017-10-19 11:23:31', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('519', '2017-10-19 14:12:08', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('520', '2017-10-19 15:00:15', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('521', '2017-10-19 15:13:23', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('522', '2017-10-19 15:20:33', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('523', '2017-10-19 15:25:28', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('524', '2017-10-19 15:42:48', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('525', '2017-10-19 16:06:33', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('526', '2017-10-19 16:19:26', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('527', '2017-10-19 16:28:04', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('528', '2017-10-19 16:30:00', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('529', '2017-10-19 16:49:08', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('530', '2017-10-19 16:54:55', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('531', '2017-10-19 17:04:40', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('532', '2017-10-20 08:54:21', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('533', '2017-10-20 09:03:43', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('534', '2017-10-20 09:37:05', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('535', '2017-10-20 09:47:29', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('536', '2017-10-20 10:19:09', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('537', '2017-10-20 10:26:51', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('538', '2017-10-20 10:38:49', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('539', '2017-10-20 11:40:17', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('540', '2017-10-20 13:58:11', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('541', '2017-10-20 14:16:47', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('542', '2017-10-20 14:59:02', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('543', '2017-10-20 15:01:58', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('544', '2017-10-20 15:05:14', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('545', '2017-10-20 15:05:58', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('546', '2017-10-20 15:09:05', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('547', '2017-10-20 15:09:30', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('548', '2017-10-20 15:13:26', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('549', '2017-10-20 15:28:15', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('550', '2017-10-20 15:29:07', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('551', '2017-10-20 15:29:41', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('552', '2017-10-20 15:33:45', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('553', '2017-10-20 15:45:39', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('554', '2017-10-20 15:54:17', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('555', '2017-10-20 17:20:55', '127.0.0.1', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('556', '2017-10-20 17:35:17', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('557', '2017-10-21 10:23:05', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('558', '2017-10-21 10:30:21', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('559', '2017-10-21 10:31:59', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('560', '2017-10-21 10:32:24', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('561', '2017-10-23 08:26:17', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('562', '2017-10-23 08:27:41', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('563', '2017-10-23 08:55:28', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('564', '2017-10-23 09:04:26', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('565', '2017-10-23 09:29:53', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('566', '2017-10-23 10:53:25', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('567', '2017-10-23 14:09:14', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('568', '2017-10-23 14:36:12', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('569', '2017-10-23 14:40:07', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('570', '2017-10-24 15:48:58', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('571', '2017-10-24 16:45:37', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('572', '2017-10-24 17:00:05', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('573', '2017-10-24 17:13:52', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('574', '2017-10-24 18:48:20', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('575', '2017-10-25 08:55:05', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('576', '2017-10-25 09:42:42', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('577', '2017-10-25 11:03:03', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('578', '2017-10-26 09:56:43', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('579', '2017-10-26 09:56:43', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('580', '2017-10-26 11:48:43', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('581', '2017-10-26 14:52:42', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('582', '2017-10-26 15:46:29', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('583', '2017-10-26 15:49:09', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('584', '2017-10-26 16:26:25', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('585', '2017-10-26 16:34:07', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('586', '2017-10-26 16:34:40', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('587', '2017-10-26 17:06:38', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('588', '2017-10-27 14:33:28', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('589', '2017-10-27 15:25:23', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('590', '2017-10-27 15:32:09', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('591', '2017-10-27 15:33:32', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('592', '2017-10-27 15:38:06', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('593', '2017-10-27 16:00:03', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('594', '2017-10-27 16:14:48', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('595', '2017-10-27 16:41:42', '192.168.100.224', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('596', '2017-10-27 17:07:17', '175.11.153.204', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('597', '2017-10-28 18:43:41', '175.11.153.204', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('598', '2017-10-29 12:54:33', '222.240.86.216', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('599', '2017-10-29 14:24:30', '222.240.86.216', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('600', '2017-10-30 08:54:52', '222.240.86.216', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('601', '2017-10-30 16:33:55', '222.240.86.216', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('602', '2017-10-30 16:37:55', '222.240.86.216', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('603', '2017-11-01 10:05:15', '175.0.220.93', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('604', '2017-11-01 10:32:18', '175.0.220.93', '2', 'windows', 'mozilla');
INSERT INTO `sys_login_log` VALUES ('605', '2017-11-15 17:12:30', '175.11.88.92', '2', 'windows', 'chrome');
INSERT INTO `sys_login_log` VALUES ('606', '2017-11-15 17:33:23', '175.11.88.92', '2', 'windows', 'chrome');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) DEFAULT NULL COMMENT '角色名',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '2015-03-18 20:00:00');
INSERT INTO `sys_role` VALUES ('2', '老师', '2015-03-19 05:53:32');
INSERT INTO `sys_role` VALUES ('3', '普通管理员', '2015-03-19 06:13:16');

-- ----------------------------
-- Table structure for sys_role_function
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_function`;
CREATE TABLE `sys_role_function` (
  `ROLE_ID` int(11) DEFAULT '0' COMMENT '角色ID',
  `FUNCTION_ID` int(11) DEFAULT '0' COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of sys_role_function
-- ----------------------------
INSERT INTO `sys_role_function` VALUES ('8', '17');
INSERT INTO `sys_role_function` VALUES ('8', '18');
INSERT INTO `sys_role_function` VALUES ('8', '20');
INSERT INTO `sys_role_function` VALUES ('8', '21');
INSERT INTO `sys_role_function` VALUES ('2', '63');
INSERT INTO `sys_role_function` VALUES ('2', '64');
INSERT INTO `sys_role_function` VALUES ('2', '65');
INSERT INTO `sys_role_function` VALUES ('2', '66');
INSERT INTO `sys_role_function` VALUES ('2', '61');
INSERT INTO `sys_role_function` VALUES ('2', '62');
INSERT INTO `sys_role_function` VALUES ('2', '80');
INSERT INTO `sys_role_function` VALUES ('2', '81');
INSERT INTO `sys_role_function` VALUES ('1', '45');
INSERT INTO `sys_role_function` VALUES ('1', '18');
INSERT INTO `sys_role_function` VALUES ('1', '20');
INSERT INTO `sys_role_function` VALUES ('1', '21');
INSERT INTO `sys_role_function` VALUES ('1', '22');
INSERT INTO `sys_role_function` VALUES ('1', '23');
INSERT INTO `sys_role_function` VALUES ('1', '19');
INSERT INTO `sys_role_function` VALUES ('1', '26');
INSERT INTO `sys_role_function` VALUES ('1', '24');
INSERT INTO `sys_role_function` VALUES ('1', '25');
INSERT INTO `sys_role_function` VALUES ('1', '31');
INSERT INTO `sys_role_function` VALUES ('1', '33');
INSERT INTO `sys_role_function` VALUES ('1', '34');
INSERT INTO `sys_role_function` VALUES ('1', '35');
INSERT INTO `sys_role_function` VALUES ('1', '36');
INSERT INTO `sys_role_function` VALUES ('1', '37');
INSERT INTO `sys_role_function` VALUES ('1', '69');
INSERT INTO `sys_role_function` VALUES ('1', '70');
INSERT INTO `sys_role_function` VALUES ('1', '71');
INSERT INTO `sys_role_function` VALUES ('1', '72');
INSERT INTO `sys_role_function` VALUES ('1', '38');
INSERT INTO `sys_role_function` VALUES ('1', '73');
INSERT INTO `sys_role_function` VALUES ('1', '76');
INSERT INTO `sys_role_function` VALUES ('1', '77');
INSERT INTO `sys_role_function` VALUES ('1', '78');
INSERT INTO `sys_role_function` VALUES ('1', '74');
INSERT INTO `sys_role_function` VALUES ('1', '75');
INSERT INTO `sys_role_function` VALUES ('1', '39');
INSERT INTO `sys_role_function` VALUES ('1', '40');
INSERT INTO `sys_role_function` VALUES ('1', '46');
INSERT INTO `sys_role_function` VALUES ('1', '47');
INSERT INTO `sys_role_function` VALUES ('1', '59');
INSERT INTO `sys_role_function` VALUES ('1', '60');
INSERT INTO `sys_role_function` VALUES ('1', '50');
INSERT INTO `sys_role_function` VALUES ('1', '55');
INSERT INTO `sys_role_function` VALUES ('1', '56');
INSERT INTO `sys_role_function` VALUES ('1', '57');
INSERT INTO `sys_role_function` VALUES ('1', '58');
INSERT INTO `sys_role_function` VALUES ('1', '63');
INSERT INTO `sys_role_function` VALUES ('1', '64');
INSERT INTO `sys_role_function` VALUES ('1', '65');
INSERT INTO `sys_role_function` VALUES ('1', '66');
INSERT INTO `sys_role_function` VALUES ('1', '61');
INSERT INTO `sys_role_function` VALUES ('1', '62');
INSERT INTO `sys_role_function` VALUES ('1', '80');
INSERT INTO `sys_role_function` VALUES ('1', '81');
INSERT INTO `sys_role_function` VALUES ('1', '30');
INSERT INTO `sys_role_function` VALUES ('1', '32');
INSERT INTO `sys_role_function` VALUES ('1', '79');
INSERT INTO `sys_role_function` VALUES ('1', '42');
INSERT INTO `sys_role_function` VALUES ('1', '43');
INSERT INTO `sys_role_function` VALUES ('1', '83');
INSERT INTO `sys_role_function` VALUES ('1', '84');
INSERT INTO `sys_role_function` VALUES ('1', '44');
INSERT INTO `sys_role_function` VALUES ('1', '82');
INSERT INTO `sys_role_function` VALUES ('1', '49');
INSERT INTO `sys_role_function` VALUES ('1', '51');
INSERT INTO `sys_role_function` VALUES ('1', '68');
INSERT INTO `sys_role_function` VALUES ('1', '100');
INSERT INTO `sys_role_function` VALUES ('1', '91');
INSERT INTO `sys_role_function` VALUES ('1', '92');
INSERT INTO `sys_role_function` VALUES ('1', '93');
INSERT INTO `sys_role_function` VALUES ('1', '94');
INSERT INTO `sys_role_function` VALUES ('1', '95');
INSERT INTO `sys_role_function` VALUES ('1', '96');
INSERT INTO `sys_role_function` VALUES ('1', '99');
INSERT INTO `sys_role_function` VALUES ('1', '97');
INSERT INTO `sys_role_function` VALUES ('1', '98');
INSERT INTO `sys_role_function` VALUES ('3', '45');
INSERT INTO `sys_role_function` VALUES ('3', '18');
INSERT INTO `sys_role_function` VALUES ('3', '21');
INSERT INTO `sys_role_function` VALUES ('3', '24');
INSERT INTO `sys_role_function` VALUES ('3', '25');
INSERT INTO `sys_role_function` VALUES ('3', '31');
INSERT INTO `sys_role_function` VALUES ('3', '33');
INSERT INTO `sys_role_function` VALUES ('3', '34');
INSERT INTO `sys_role_function` VALUES ('3', '35');
INSERT INTO `sys_role_function` VALUES ('3', '36');
INSERT INTO `sys_role_function` VALUES ('3', '38');
INSERT INTO `sys_role_function` VALUES ('3', '73');
INSERT INTO `sys_role_function` VALUES ('3', '76');
INSERT INTO `sys_role_function` VALUES ('3', '77');
INSERT INTO `sys_role_function` VALUES ('3', '74');
INSERT INTO `sys_role_function` VALUES ('3', '75');
INSERT INTO `sys_role_function` VALUES ('3', '39');
INSERT INTO `sys_role_function` VALUES ('3', '40');
INSERT INTO `sys_role_function` VALUES ('3', '46');
INSERT INTO `sys_role_function` VALUES ('3', '47');
INSERT INTO `sys_role_function` VALUES ('3', '59');
INSERT INTO `sys_role_function` VALUES ('3', '60');
INSERT INTO `sys_role_function` VALUES ('3', '50');
INSERT INTO `sys_role_function` VALUES ('3', '56');
INSERT INTO `sys_role_function` VALUES ('3', '57');
INSERT INTO `sys_role_function` VALUES ('3', '58');
INSERT INTO `sys_role_function` VALUES ('1', '101');
INSERT INTO `sys_role_function` VALUES ('1', '102');
INSERT INTO `sys_role_function` VALUES ('1', '103');
INSERT INTO `sys_role_function` VALUES ('1', '104');
INSERT INTO `sys_role_function` VALUES ('1', '105');
INSERT INTO `sys_role_function` VALUES ('1', '106');
INSERT INTO `sys_role_function` VALUES ('1', '107');
INSERT INTO `sys_role_function` VALUES ('1', '108');

-- ----------------------------
-- Table structure for sys_subject
-- ----------------------------
DROP TABLE IF EXISTS `sys_subject`;
CREATE TABLE `sys_subject` (
  `SUBJECT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `SUBJECT_NAME` varchar(50) NOT NULL DEFAULT '' COMMENT '专业名称',
  `STATUS` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0:默认 1:删除',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `PARENT_ID` int(11) DEFAULT '0' COMMENT '父ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`SUBJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='专业信息';

-- ----------------------------
-- Records of sys_subject
-- ----------------------------
INSERT INTO `sys_subject` VALUES ('202', 'Unity3D游戏开发', '0', '2014-03-04 09:53:03', '0', '2');
INSERT INTO `sys_subject` VALUES ('203', '职称英语', '1', '2014-03-04 09:53:24', '202', '6');
INSERT INTO `sys_subject` VALUES ('204', 'C#基础', '0', '2014-03-04 09:53:38', '202', '3');
INSERT INTO `sys_subject` VALUES ('206', '英语六级', '1', '2014-03-04 09:54:10', '202', '7');
INSERT INTO `sys_subject` VALUES ('208', '新媒体运营', '0', '2014-06-15 23:33:33', '0', '0');
INSERT INTO `sys_subject` VALUES ('209', '教师', '1', '2014-06-16 14:00:10', '208', '0');
INSERT INTO `sys_subject` VALUES ('210', '大数据开发', '0', '2014-06-26 09:37:33', '0', '0');
INSERT INTO `sys_subject` VALUES ('211', '数据库', '0', '2014-06-26 09:37:59', '210', '0');
INSERT INTO `sys_subject` VALUES ('213', 'Java基础', '0', '2014-06-26 09:38:21', '210', '0');
INSERT INTO `sys_subject` VALUES ('214', '大数据开发工具', '0', '2014-06-26 09:38:29', '210', '0');
INSERT INTO `sys_subject` VALUES ('215', '幼儿', '1', '2014-06-26 09:39:36', '209', '0');
INSERT INTO `sys_subject` VALUES ('216', '小学', '1', '2014-06-26 09:39:47', '208', '0');
INSERT INTO `sys_subject` VALUES ('217', '微信公众号运营', '0', '2014-06-26 09:39:55', '208', '5');
INSERT INTO `sys_subject` VALUES ('218', 'SEO、SEM', '0', '2014-06-26 09:40:05', '208', '6');
INSERT INTO `sys_subject` VALUES ('221', '移动开发', '0', '2014-06-26 09:41:21', '0', '0');
INSERT INTO `sys_subject` VALUES ('222', '游戏开发', '0', '2014-06-26 09:41:32', '221', '0');
INSERT INTO `sys_subject` VALUES ('223', '项目管理', '0', '2014-06-26 09:41:41', '0', '3');
INSERT INTO `sys_subject` VALUES ('224', '操作系统', '0', '2014-06-26 09:41:51', '0', '0');
INSERT INTO `sys_subject` VALUES ('247', '新建专业', '1', '2015-09-10 10:32:19', '224', '0');
INSERT INTO `sys_subject` VALUES ('248', '新建专业', '1', '2015-09-10 10:34:50', '247', '0');
INSERT INTO `sys_subject` VALUES ('249', '新建专业', '1', '2015-09-10 10:34:56', '247', '0');
INSERT INTO `sys_subject` VALUES ('250', 'window', '0', '2015-09-10 10:35:07', '224', '0');
INSERT INTO `sys_subject` VALUES ('251', 'project', '0', '2015-09-10 10:35:56', '223', '0');
INSERT INTO `sys_subject` VALUES ('252', 'Linux操作系统', '0', '2017-10-26 10:01:40', '224', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `LOGIN_NAME` varchar(20) NOT NULL DEFAULT '' COMMENT '登录名',
  `LOGIN_PWD` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `USER_NAME` varchar(50) DEFAULT NULL COMMENT '用户真实姓名名',
  `STATUS` tinyint(1) DEFAULT '0' COMMENT '状态.0: 正常,1:冻结,2：删除',
  `LAST_LOGIN_TIME` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `LAST_LOGIN_IP` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  `CREATE_TIME` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '邮件地址',
  `TEL` varchar(12) DEFAULT NULL COMMENT '手机号码',
  `ROLE_ID` int(11) DEFAULT '0' COMMENT '所属角色ID',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('2', 'admin888', '96e79218965eb72c92a549dd5a330112', 'inxedu', '0', '2017-11-15 17:33:23', '175.11.88.92', '2015-03-17 13:45:46', 'lmx183@163.com', '12345678900', '1');
INSERT INTO `sys_user` VALUES ('8', 'adminlmx', '96e79218965eb72c92a549dd5a330112', '因酷教育', '1', '2015-05-25 21:27:21', '123.151.136.214', '2015-03-19 11:43:42', 'LMX113@163.COM', '12345678910', '1');
INSERT INTO `sys_user` VALUES ('15', 'aaaaa123', '96e79218965eb72c92a549dd5a330112', '因酷', '0', null, null, '2015-03-23 08:04:22', 'inxedu@inxedu.com', '12345678910', '3');
