-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 05 月 28 日 16:43
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `q1008`
--

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_duilian`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_duilian` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `src2` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  `url2` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pwn_advs_duilian`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lb`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lb` (
  `id` int(20) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '1',
  `title` char(100) NOT NULL default '',
  `src` char(100) NOT NULL default '',
  `src1` char(255) NOT NULL,
  `url` char(100) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `pwn_advs_lb`
--

INSERT INTO `pwn_advs_lb` (`id`, `groupid`, `title`, `src`, `src1`, `url`, `xuhao`) VALUES
(39, 1, '广告标题', 'advs/pics/20090414/1239643974.jpg', '', 'http://', 1),
(45, 1, '广告标题', 'advs/pics/20090414/1239644248.jpg', '', 'http://', 3),
(41, 1, '广告标题', 'advs/pics/20090414/1239643978.jpg', '', 'http://', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_lbgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_lbgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `pwn_advs_lbgroup`
--

INSERT INTO `pwn_advs_lbgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认轮播广告组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_link`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_link` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `src` varchar(100) NOT NULL default '',
  `cl` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `pwn_advs_link`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_linkgroup`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_linkgroup` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pwn_advs_linkgroup`
--

INSERT INTO `pwn_advs_linkgroup` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '默认友情链接组', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_logo`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_logo` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_advs_logo`
--

INSERT INTO `pwn_advs_logo` (`id`, `groupname`, `src`, `url`) VALUES
(1, '网站标志一', 'advs/pics/20090412/1239514090.gif', '#');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_movi`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_movi` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_advs_movi`
--

INSERT INTO `pwn_advs_movi` (`id`, `groupname`, `src`) VALUES
(1, '视频广告测试一', 'http://vhead.blog.sina.com.cn/player/outer_player.swf?auto=1&vid=16205152&uid=1504617052');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pic`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pic` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `src` char(100) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_pic`
--

INSERT INTO `pwn_advs_pic` (`id`, `groupname`, `src`, `url`) VALUES
(1, '测试图片广告', 'advs/pics/20090215/1234667308.jpg', 'http://www.try.com');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_pop`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_pop` (
  `id` int(12) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `body` text,
  `ifpop` int(1) NOT NULL default '0',
  `popwidth` int(10) default NULL,
  `popheight` int(10) default NULL,
  `popleft` int(10) default NULL,
  `poptop` int(10) default NULL,
  `poptoolbar` int(1) default NULL,
  `popmenubar` int(1) default NULL,
  `popstatus` int(1) default NULL,
  `poplocation` int(1) default NULL,
  `popscrollbars` varchar(50) default NULL,
  `popresizable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_advs_pop`
--

INSERT INTO `pwn_advs_pop` (`id`, `title`, `body`, `ifpop`, `popwidth`, `popheight`, `popleft`, `poptop`, `poptoolbar`, `popmenubar`, `popstatus`, `poplocation`, `popscrollbars`, `popresizable`) VALUES
(1, '弹出窗口', '窗口内容 ', 0, 400, 300, 0, 0, 0, 0, 0, 0, 'auto', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_advs_text`
--

CREATE TABLE IF NOT EXISTS `pwn_advs_text` (
  `id` int(4) NOT NULL auto_increment,
  `groupname` char(200) NOT NULL,
  `text` char(200) NOT NULL default '',
  `url` char(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pwn_advs_text`
--

INSERT INTO `pwn_advs_text` (`id`, `groupname`, `text`, `url`) VALUES
(1, '促销广告一', '本季特大优惠活动开始啦qq', 'http://www.com');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_admin`
--

CREATE TABLE IF NOT EXISTS `pwn_base_admin` (
  `id` int(6) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `job` varchar(50) NOT NULL,
  `jobid` varchar(20) NOT NULL,
  `moveable` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `pwn_base_admin`
--

INSERT INTO `pwn_base_admin` (`id`, `user`, `password`, `name`, `job`, `jobid`, `moveable`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '管理员', 'A001', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminauth`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminauth` (
  `id` int(6) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `auth` int(5) NOT NULL default '0',
  `name` char(50) NOT NULL default '',
  `intro` char(255) NOT NULL default '',
  `xuhao` int(10) NOT NULL default '0',
  `pid` int(10) NOT NULL default '0',
  `pname` char(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- 转存表中的数据 `pwn_base_adminauth`
--

INSERT INTO `pwn_base_adminauth` (`id`, `coltype`, `auth`, `name`, `intro`, `xuhao`, `pid`, `pname`) VALUES
(69, 'advs', 91, '网站标志管理', '', 1, 2, ''),
(17, 'advs', 95, '网站广告管理', '', 5, 2, ''),
(30, 'advs', 96, '友情链接管理', '', 4, 7, ''),
(1, 'base', 1, '网站参数设置', '', 1, 0, ''),
(2, 'base', 2, '修改管理密码', '', 2, 0, ''),
(3, 'base', 3, '管理账户维护', '', 3, 0, ''),
(5, 'base', 5, '网站排版设置', '', 5, 0, ''),
(66, 'base', 6, '模块插件管理', '', 6, 0, ''),
(67, 'base', 7, '软件升级更新', '', 7, 0, ''),
(37, 'comment', 130, '点评模块参数设置', '', 0, 13, ''),
(11, 'comment', 131, '点评分类', '', 1, 13, ''),
(26, 'comment', 132, '点评管理', '', 2, 13, ''),
(4, 'member', 50, '会员类型设置', '', 1, 5, ''),
(42, 'member', 51, '会员模块参数设置', '', 11, 6, ''),
(19, 'member', 52, '会员查询管理', '', 2, 5, ''),
(20, 'member', 53, '会员资料查询', '', 3, 5, ''),
(21, 'member', 54, '会员资料修改', '', 4, 5, ''),
(22, 'member', 55, '会员邮件发送', '', 5, 5, ''),
(23, 'member', 56, '会员权限管理', '', 6, 5, ''),
(24, 'member', 57, '会员公告管理', '', 7, 5, ''),
(32, 'member', 58, '模拟会员登录', '', 8, 5, ''),
(33, 'member', 59, '会员实名认证', '', 9, 5, ''),
(34, 'member', 60, '会员删除权限', '', 10, 5, ''),
(63, 'member', 61, '会员区域设置', '', 11, 6, ''),
(64, 'member', 62, '会员行业分类', '', 12, 0, ''),
(65, 'member', 63, '积分规则设置', '', 13, 6, ''),
(35, 'member', 64, '会员转移类型', '', 11, 5, ''),
(36, 'member', 65, '重设会员密码', '', 12, 5, ''),
(68, 'member', 66, '积分录入权限', '', 16, 6, ''),
(6, 'menu', 11, '导航菜单设置', '', 1, 1, ''),
(38, 'news', 120, '文章模块参数设置', '', 0, 12, ''),
(39, 'news', 121, '文章分类', '', 1, 12, ''),
(13, 'news', 122, '文章管理', '', 2, 12, ''),
(12, 'news', 123, '文章专题设置', '', 3, 12, ''),
(40, 'news', 125, '文章发布', '', 5, 12, ''),
(41, 'news', 126, '文章修改', '', 6, 12, ''),
(43, 'page', 301, '网页分组和管理', '', 1, 30, ''),
(27, 'tools', 81, '访问统计系统', '', 1, 7, ''),
(29, 'tools', 82, '投票调查系统', '', 3, 7, ''),
(72, 'base', 8, '管理菜单设置', '', 8, 0, ''),
(113, 'down', 166, '下载修改', '', 6, 16, ''),
(112, 'down', 165, '下载发布', '', 5, 16, ''),
(87, 'base', 9, '模块安装卸载', '', 9, 0, ''),
(88, 'photo', 150, '图片模块参数设置', '', 0, 15, ''),
(89, 'photo', 151, '图片分类', '', 1, 15, ''),
(90, 'photo', 152, '图片管理', '', 2, 15, ''),
(91, 'photo', 153, '图片专题设置', '', 3, 15, ''),
(92, 'photo', 155, '图片发布', '', 5, 15, ''),
(93, 'photo', 156, '图片修改', '', 6, 15, ''),
(111, 'down', 163, '下载专题设置', '', 3, 16, ''),
(110, 'down', 162, '下载管理', '', 2, 16, ''),
(109, 'down', 161, '下载分类', '', 1, 16, ''),
(108, 'down', 160, '下载模块参数设置', '', 0, 16, ''),
(100, 'service', 101, '客服分组设置', '', 1, 10, ''),
(101, 'service', 102, '客服表单设置', '', 2, 10, ''),
(102, 'service', 103, '客服工单处理', '', 3, 10, ''),
(103, 'service', 104, '存档工单查询', '', 4, 10, ''),
(104, 'service', 105, '客服工单删除', '', 5, 10, ''),
(105, 'service', 106, '工单人工存档权限', '', 6, 10, ''),
(106, 'service', 107, '全部工单监控', '', 7, 10, ''),
(107, 'service', 108, '快捷回复设置', '', 8, 10, ''),
(114, 'tools', 83, '图片投票系统', '', 3, 7, ''),
(115, 'tools', 84, 'QQ客服系统', '', 4, 7, ''),
(116, 'tools', 85, '51客服系统', '', 5, 7, ''),
(117, 'tools', 86, '51la统计系统', '', 6, 7, ''),
(118, 'tools', 87, '移动短信留言', '', 7, 7, ''),
(119, 'member', 67, '财务收款入账', '', 16, 6, ''),
(120, 'member', 68, '会员帐务查询', '', 16, 6, ''),
(121, 'member', 69, '支付方法设置', '', 16, 6, ''),
(122, 'member', 70, '帐务查询统计', '', 16, 6, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminmenu`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminmenu` (
  `id` int(6) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `pwn_base_adminmenu`
--

INSERT INTO `pwn_base_adminmenu` (`id`, `pid`, `menu`, `url`, `xuhao`) VALUES
(1, 0, '栏目菜单设置', 'menu/admin/menu.php?groupid=1', 1),
(2, 0, '企业介绍修改', 'page/admin/page.php?groupid=1', 3),
(19, 0, '公司新闻管理', 'news/admin/news_con.php?pid=1', 12),
(6, 0, '加盟资料修改', 'page/admin/page.php?groupid=2', 6),
(17, 0, '店面展示管理', 'photo/admin/photo_con.php?pid=1', 10),
(20, 0, '行业动态管理', 'news/admin/news_con.php?pid=2', 13),
(15, 0, '上传网站标志', 'advs/admin/advs_logo_modi.php?id=1', 2),
(18, 0, '菜品展示管理', 'photo/admin/photo_con.php?pid=2', 11),
(21, 0, '加盟问答管理', 'news/admin/news_con.php?pid=73', 14),
(22, 0, '成功案例管理', 'news/admin/news_con.php?pid=75', 15);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_adminrights`
--

CREATE TABLE IF NOT EXISTS `pwn_base_adminrights` (
  `id` int(50) NOT NULL auto_increment,
  `auth` char(20) default NULL,
  `user` char(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3079 ;

--
-- 转存表中的数据 `pwn_base_adminrights`
--

INSERT INTO `pwn_base_adminrights` (`id`, `auth`, `user`) VALUES
(3078, '108', 'admin'),
(3077, '107', 'admin'),
(3076, '106', 'admin'),
(3075, '105', 'admin'),
(3074, '104', 'admin'),
(3073, '103', 'admin'),
(3072, '102', 'admin'),
(3071, '101', 'admin'),
(3070, '166', 'admin'),
(3069, '165', 'admin'),
(3068, '163', 'admin'),
(3067, '162', 'admin'),
(3066, '161', 'admin'),
(3065, '160', 'admin'),
(3064, '156', 'admin'),
(3063, '155', 'admin'),
(3062, '153', 'admin'),
(3061, '152', 'admin'),
(3060, '151', 'admin'),
(3059, '150', 'admin'),
(3058, '9', 'admin'),
(3057, '186', 'admin'),
(3056, '185', 'admin'),
(3055, '183', 'admin'),
(3054, '182', 'admin'),
(3053, '181', 'admin'),
(3052, '180', 'admin'),
(3051, '8', 'admin'),
(3050, '82', 'admin'),
(3049, '81', 'admin'),
(3048, '301', 'admin'),
(3047, '126', 'admin'),
(3046, '125', 'admin'),
(3045, '123', 'admin'),
(3044, '122', 'admin'),
(3043, '121', 'admin'),
(3042, '120', 'admin'),
(3041, '11', 'admin'),
(3040, '66', 'admin'),
(3039, '65', 'admin'),
(3038, '64', 'admin'),
(3037, '63', 'admin'),
(3036, '62', 'admin'),
(3035, '61', 'admin'),
(3034, '60', 'admin'),
(3033, '59', 'admin'),
(3032, '58', 'admin'),
(3031, '57', 'admin'),
(3030, '56', 'admin'),
(3029, '55', 'admin'),
(3028, '54', 'admin'),
(3027, '53', 'admin'),
(3026, '52', 'admin'),
(3025, '51', 'admin'),
(3024, '50', 'admin'),
(3023, '132', 'admin'),
(3022, '131', 'admin'),
(3021, '130', 'admin'),
(3020, '7', 'admin'),
(3019, '6', 'admin'),
(3018, '5', 'admin'),
(3017, '3', 'admin'),
(3016, '2', 'admin'),
(3015, '1', 'admin'),
(3014, '96', 'admin'),
(3013, '95', 'admin'),
(3012, '91', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_border`
--

CREATE TABLE IF NOT EXISTS `pwn_base_border` (
  `id` int(12) NOT NULL auto_increment,
  `bordertype` varchar(10) NOT NULL default 'border',
  `tempid` char(8) NOT NULL default '',
  `tempname` varchar(50) NOT NULL default '边框模板',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- 转存表中的数据 `pwn_base_border`
--

INSERT INTO `pwn_base_border` (`id`, `bordertype`, `tempid`, `tempname`) VALUES
(1, 'border', '001', '可选颜色边框模板'),
(2, 'border', '002', '可选颜色边框模板'),
(3, 'border', '003', '可选颜色边框模板'),
(4, 'border', '004', '可选颜色边框模板'),
(5, 'border', '005', '可选颜色边框模板'),
(6, 'border', '006', '可选颜色边框模板'),
(66, 'lable', '212', '竖排菜单式标签切换边框模板,无外框线'),
(8, 'border', '008', '可选颜色边框模板(浅色调)'),
(9, 'border', '009', '可选颜色边框模板'),
(10, 'border', '010', '可选颜色边框模板'),
(11, 'border', '011', '可选颜色边框模板'),
(12, 'border', '012', '可选颜色边框模板(浅色调)'),
(13, 'border', '013', '可选颜色边框模板'),
(14, 'border', '014', '可选颜色边框模板'),
(15, 'border', '015', '可选颜色边框模板'),
(16, 'border', '016', '可选颜色边框模板'),
(17, 'border', '017', '可选颜色边框模板'),
(18, 'border', '018', '可选颜色边框模板'),
(19, 'border', '501', '浅色调创意边框模板'),
(20, 'border', '502', '边框模板'),
(22, 'border', '504', '边框模板'),
(23, 'border', '505', '边框模板'),
(34, 'border', '020', '可选颜色边框模板(浅色调)'),
(25, 'border', '507', '边框模板'),
(35, 'border', '503', '无框线简约边框模版'),
(27, 'border', '509', '边框模板'),
(37, 'border', '506', '浅色调无框线边框模版'),
(31, 'border', '513', '浅灰色圆角边框模板'),
(33, 'border', '019', '可选颜色边框模板(浅色调)'),
(38, 'border', '508', '浅色调边框模版'),
(39, 'border', '510', '左侧标题栏浅色调模版'),
(40, 'border', '511', '无标题栏圆角边框模版'),
(41, 'border', '512', '无标题栏圆角边框模版'),
(42, 'border', '514', '边框模板'),
(43, 'border', '021', '左侧标题栏可变色边框模板'),
(44, 'border', '515', '灰色外背景边框模板'),
(45, 'border', '516', '无标题栏圆角灰色背景边框模版'),
(46, 'border', '517', '无标题栏圆角浅色背景边框模板'),
(47, 'lable', '201', '标签切换边框模板,浅蓝简约型'),
(48, 'lable', '051', '可选颜色,标签切换边框模板,带总标题'),
(49, 'lable', '202', '标签切换边框模板,红黑标签，无框线'),
(50, 'lable', '203', '标签切换边框模板'),
(51, 'lable', '204', '标签切换边框模板,浅灰简约,带总标题栏'),
(52, 'lable', '052', '可选颜色,标签切换边框模板,带总标题'),
(53, 'lable', '205', '标签切换边框模板,圆角,深色'),
(54, 'lable', '053', '可选颜色,标签切换边框模板,圆角'),
(55, 'lable', '206', '标签切换边框模板,圆角,浅黄色调'),
(56, 'lable', '207', '标签切换边框模板,圆角,浅蓝淡雅风格'),
(57, 'lable', '208', '标签切换边框模板,内圆角,浅蓝淡雅风格'),
(58, 'lable', '209', '标签切换边框模板,内圆角,灰白渐变'),
(59, 'lable', '210', '标签切换边框模板,圆角,浅色渐变'),
(60, 'lable', '054', '可选颜色,标签切换边框模板,圆角'),
(61, 'lable', '055', '可选颜色,标签切换边框模板'),
(62, 'lable', '211', '标签切换边框模板,圆角,橙色+灰色'),
(63, 'border', '500', '条幅边框,无标题栏，搜索条登录框等专用'),
(64, 'border', '022', '可选颜色边框模板'),
(67, 'lable', '056', '可选颜色,竖排菜单式标签切换边框,无框线'),
(75, 'border', '519', '无标题栏边框模版(圆角，粗边线)'),
(77, 'border', '521', '绿色小圆角边框'),
(78, 'border', '522', '绿色标题栏边框'),
(79, 'border', '523', '会员登录边框'),
(85, 'border', '526', '条状背景边框(搜索、当前位置提示条专用)'),
(82, 'border', '525', '绿色创意边框'),
(86, 'border', '527', '不可选颜色创意边框'),
(87, 'border', '528', '不可选颜色创意边框'),
(89, 'border', '529', '红色标题栏无边线浅灰背景'),
(90, 'border', '601', '红褐标题栏无边线浅灰背景'),
(91, 'border', '602', '红色标题栏无边线白色背景');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_coltype`
--

CREATE TABLE IF NOT EXISTS `pwn_base_coltype` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL default '',
  `colname` varchar(50) NOT NULL default '',
  `sname` varchar(30) NOT NULL,
  `ifadmin` int(1) NOT NULL default '1',
  `ifchannel` int(1) NOT NULL default '0',
  `ifpubplus` int(1) NOT NULL default '1',
  `moveable` int(1) NOT NULL default '0',
  `installed` int(1) NOT NULL default '1',
  `classtbl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- 转存表中的数据 `pwn_base_coltype`
--

INSERT INTO `pwn_base_coltype` (`id`, `coltype`, `colname`, `sname`, `ifadmin`, `ifchannel`, `ifpubplus`, `moveable`, `installed`, `classtbl`) VALUES
(1, 'base', '基础模块', '基础', 0, 0, 0, 0, 1, ''),
(2, 'diy', '自定内容', '自定义', 0, 0, 1, 0, 1, ''),
(3, 'menu', '导航菜单', '菜单', 1, 0, 1, 0, 1, ''),
(5, 'index', '首页模块', '首页', 0, 1, 0, 0, 1, ''),
(20, 'page', '网页模块', '网页', 1, 0, 1, 0, 1, ''),
(21, 'news', '文章模块', '文章', 1, 1, 1, 1, 1, '_news_cat'),
(26, 'photo', '图片模块', '图片', 1, 1, 1, 1, 1, '_photo_cat'),
(108, 'down', '下载模块', '下载', 1, 1, 1, 1, 1, '_down_cat'),
(28, 'comment', '留言点评', '点评', 1, 1, 1, 1, 1, '_comment_cat'),
(29, 'service', '客户服务', '客服', 1, 1, 1, 1, 1, ''),
(30, 'member', '会员模块', '会员', 1, 1, 1, 1, 1, ''),
(97, 'search', '全站搜索', '搜索', 0, 0, 1, 0, 1, ''),
(98, 'advs', '网站广告', '广告', 1, 0, 1, 0, 1, ''),
(99, 'tools', '辅助工具', '工具', 1, 0, 1, 0, 1, ''),
(100, 'effect', '素材特效', '特效', 0, 0, 1, 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_config`
--

CREATE TABLE IF NOT EXISTS `pwn_base_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_config`
--

INSERT INTO `pwn_base_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '网站名称', 'input', '30', 'SiteName', 'www.0912rm.com', '用于在网页标题、导航栏处显示'),
(2, '网站网址', 'input', '30', 'SiteHttp', 'www.0912rm.com', '网站的实际访问网址,末尾加“/”'),
(4, '服务邮箱', 'input', '30', 'SiteEmail', 'service@mydomain.com', '在发送系统邮件时作为发件人邮件'),
(5, '邮件转发方式', 'ownersys', '1', 'ownersys', '0', 'LINUX/UNIX服务器一般可使用内置邮件系统转发邮件；WINDOWS服务器建议使用外部SMTP邮箱转发，并设置以下SMTP邮箱参数'),
(6, 'SMTP服务器', 'input', '30', 'owner_m_smtp', 'mail.mydomain.com', ''),
(7, 'SMTP邮箱用户', 'input', '30', 'owner_m_user', 'alex@mydomain.com', ''),
(8, 'SMTP邮箱密码', 'input', '30', 'owner_m_pass', '123456', ''),
(5, 'SMTP转发邮箱', 'input', '30', 'owner_m_mail', 'alex@mydomain.com', ''),
(9, 'SMTP身份验证', 'YN', '10', 'owner_m_check', '1', ''),
(10, '是否生成并使用静态HTML网页', 'YN', '10', 'CatchOpen', '0', ''),
(11, 'HTML静态网页更新时间(秒)', 'input', '8', 'CatchTime', '3600', '超过此时间访问静态页面时，重新生成静态页并刷新页面'),
(3, '软件授权用户账号', 'input', '30', 'phpwebUser', 'qq390339146', '在本软件安装、升级或使用其他服务时所采用的软件授权用户登录帐号'),
(99, '安全校验码', 'code', '30', 'safecode', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pageset`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pageset` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `coltype` varchar(50) NOT NULL default '',
  `pagename` varchar(50) NOT NULL default '',
  `th` int(5) NOT NULL default '200',
  `ch` int(5) NOT NULL default '500',
  `bh` int(5) NOT NULL default '200',
  `pagetitle` varchar(255) NOT NULL default '',
  `metakey` varchar(255) NOT NULL default '',
  `metacon` text NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  `buildhtml` varchar(12) NOT NULL default '0',
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=325 ;

--
-- 转存表中的数据 `pwn_base_pageset`
--

INSERT INTO `pwn_base_pageset` (`id`, `name`, `coltype`, `pagename`, `th`, `ch`, `bh`, `pagetitle`, `metakey`, `metacon`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`, `buildhtml`, `xuhao`) VALUES
(126, '友情链接', 'advs', 'link', 302, 324, 42, '', '友情链接', '友情链接', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 0),
(92, '点评检索', 'comment', 'query', 300, 835, 40, '', '0', '0', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'catid', 12),
(88, '点评详情', 'comment', 'detail', 302, 832, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 17),
(123, '点评频道首页', 'comment', 'main', 292, 380, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'index', 11),
(1, '首页', 'index', 'index', 302, 807, 39, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'index', 1),
(241, '会员主页', 'member', 'homepage', 130, 441, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 15),
(5, '会员登录', 'member', 'login', 302, 335, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', '#ffffff', '900', 0, '#6e0000', '900', '0', 1),
(6, '重设密码', 'member', 'lostpass', 302, 279, 40, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', '#ffffff', '900', 0, '#6e0000', '900', '0', 2),
(12, '会员注册', 'member', 'reg', 302, 438, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', '#ffffff', '900', 0, '#6e0000', '900', '0', 0),
(202, '会员中心首页', 'member', 'main', 300, 483, 38, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 1),
(203, '登录帐号设置', 'member', 'account', 302, 272, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 2),
(204, '头像签名设置', 'member', 'person', 302, 361, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 3),
(205, '详细资料修改', 'member', 'detail', 302, 472, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 5),
(206, '联系信息设置', 'member', 'contact', 302, 351, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 6),
(207, '会员公告详情', 'member', 'notice', 176, 350, 152, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 7),
(208, '文章发布', 'member', 'newsfabu', 302, 530, 39, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 8),
(209, '文章管理', 'member', 'newsgl', 292, 216, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 9),
(210, '文章修改', 'member', 'newsmodify', 130, 785, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 10),
(231, '我的收藏夹', 'member', 'fav', 302, 214, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 12),
(232, '我的好友', 'member', 'friends', 130, 368, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 12),
(233, '我的留言', 'member', 'comment', 302, 214, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 13),
(228, '文章分类', 'member', 'newscat', 292, 216, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 9),
(234, '我的站内短信', 'member', 'msn', 302, 214, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 15),
(2, '文章检索', 'news', 'query', 302, 459, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'catid', 2),
(3, '文章正文', 'news', 'detail', 302, 702, 42, '', '0', '0', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 3),
(33, '频道首页', 'news', 'main', 302, 601, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'index', 0),
(129, '内容页', 'page', 'html', 300, 577, 38, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 1),
(16, '全站搜索', 'search', 'search', 302, 868, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', '#ffffff', '900', 0, '#6e0000', '900', '0', 2),
(246, '我的积分', 'member', 'membercent', 130, 498, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 19),
(247, '会员文章', 'news', 'membernews', 130, 420, 33, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 12),
(289, '图文频道首页', 'photo', 'main', 302, 772, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'index', 1),
(290, '图片查询', 'photo', 'query', 302, 736, 39, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'catid', 2),
(291, '图片详情', 'photo', 'detail', 302, 822, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 3),
(292, '会员图片', 'photo', 'memberphoto', 164, 290, 152, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 12),
(293, '图片管理', 'member', 'photogl', 162, 267, 150, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 1),
(294, '图片发布', 'member', 'photofabu', 164, 435, 152, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 0),
(295, '图片修改', 'member', 'photomodify', 164, 493, 152, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 0),
(296, '图片分类', 'member', 'photocat', 147, 267, 150, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 9),
(305, '客户服务', 'service', 'main', 300, 1029, 40, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 1),
(306, '客服问题提交', 'member', 'service', 300, 628, 40, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 15),
(307, '客服工单查询', 'member', 'feedback', 302, 394, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 16),
(308, '工单详情', 'member', 'feedbacklook', 302, 997, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 16),
(309, '存档工单查询', 'member', 'feedbackhis', 302, 243, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', '0', 19),
(310, '特许加盟', 'page', 'league', 300, 300, 40, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 0),
(311, '加盟问答', 'page', 'faq', 302, 441, 42, '加盟问答', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 0),
(312, '成功案例', 'page', 'case', 302, 316, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 0),
(313, '下载首页', 'down', 'main', 302, 364, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'index', 1),
(314, '下载检索页', 'down', 'query', 302, 542, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'catid', 2),
(315, '下载详情', 'down', 'detail', 302, 829, 42, '', '', '', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900', 'id', 3),
(316, '会员资源下载', 'down', 'memberdown', 164, 177, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12),
(317, '下载管理', 'member', 'downgl', 147, 440, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 5),
(318, '下载发布', 'member', 'downfabu', 164, 393, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 6),
(319, '下载修改', 'member', 'downmodify', 164, 422, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 7),
(320, '下载分类', 'member', 'downcat', 147, 275, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9),
(321, '分组首页', 'page', 'html_main', 200, 500, 200, '', '', '', '', '', '', 'repeat', 'scroll', 900, '#ffffff', '', 0, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 0),
(322, '会员付款记录', 'member', 'paylist', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(323, '会员消费记录', 'member', 'buylist', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19),
(324, '帐户在线充值', 'member', 'onlinepay', 164, 327, 152, '', '', '', '', '', '0% 0%', 'repeat', 'scroll', 900, '', '', 10, 10, 'auto', '', '900', 'none transparent scroll repeat 0% 0%', '900', 10, 'none transparent scroll repeat 0% 0%', '900', '0', 19);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_pagetemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_pagetemp` (
  `id` int(12) NOT NULL auto_increment,
  `tempname` varchar(50) NOT NULL,
  `bgcolor` varchar(100) NOT NULL,
  `bgimage` varchar(100) NOT NULL,
  `bgposition` varchar(20) NOT NULL,
  `bgrepeat` varchar(20) NOT NULL default 'repeat',
  `bgatt` varchar(10) NOT NULL default 'scroll',
  `containwidth` int(5) NOT NULL default '900',
  `containbg` varchar(100) NOT NULL default '#ffffff',
  `containimg` varchar(100) NOT NULL,
  `containmargin` int(2) NOT NULL default '0',
  `containpadding` int(2) NOT NULL default '10',
  `containcenter` char(10) NOT NULL default 'auto',
  `topbg` varchar(100) NOT NULL default 'transparent',
  `topwidth` char(10) NOT NULL default '900',
  `contentbg` varchar(100) NOT NULL default 'transparent',
  `contentwidth` char(10) NOT NULL default '900',
  `contentmargin` int(2) NOT NULL default '10',
  `bottombg` varchar(100) NOT NULL default 'transparent',
  `bottomwidth` char(10) NOT NULL default '900',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `pwn_base_pagetemp`
--

INSERT INTO `pwn_base_pagetemp` (`id`, `tempname`, `bgcolor`, `bgimage`, `bgposition`, `bgrepeat`, `bgatt`, `containwidth`, `containbg`, `containimg`, `containmargin`, `containpadding`, `containcenter`, `topbg`, `topwidth`, `contentbg`, `contentwidth`, `contentmargin`, `bottombg`, `bottomwidth`) VALUES
(46, '通栏页背景', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', '#ffffff', '900', 0, '#6e0000', '900'),
(45, '1008背景', '#800000', 'url(effect/source/bg/242.gif)', '0% 0%', 'repeat', 'fixed', 900, 'url(effect/source/bg/c30.gif) #000000', '', 0, 10, 'auto', '#ffffff', '900', 'url(effect/source/bg/1008bg.gif) #ffffff', '900', 0, '#6e0000', '900');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plus`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plus` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5004 ;

--
-- 转存表中的数据 `pwn_base_plus`
--

INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4041, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 718, 164, 41, 182, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章管理', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4208, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 7, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4976, 'advs', 'modLogo', '网站标志', 'page', 'html', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4501, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 677, 145, 39, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的点评', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4500, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'comment', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4040, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsgl', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(627, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'notice', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3953, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'E602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 683, 192, 291, 217, 4, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, -1, -1, 'fill', '通知公告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3942, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A529', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 498, 229, 48, 218, 3, 30, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '重设密码', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3943, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'lostpass', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 35, 0, 0, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4975, 'advs', 'modLogo', '网站标志', 'news', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3526, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}news/class/?1.html', 308, 172, 278, 216, 3, 12, 5, 'id', 'desc', 0, 18, '_self', 1, 0, -1, -1, 'fill', '公司新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4977, 'advs', 'modLogo', '网站标志', 'search', 'search', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4833, 'photo', 'modPhotoPic', '图片+名称', 'index', 'index', 'tpl_photopic.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?1.html', 369, 171, 278, 531, 13, 15, 3, 'id', 'desc', 0, 12, '_self', 1, -1, 100, 80, 'fill', '店面展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4492, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 121, 39, 217, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的站内短信', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4823, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'detail', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4001, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 604, 336, 30, 176, 90, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的好友', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3951, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 684, 246, 40, 216, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3950, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4420, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 184, 42, 217, 8, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '登录帐号设置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4429, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 677, 320, 39, 216, 8, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '头像签名设置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4288, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'detail', 'tpl_navpath.htm', '-1', 'A526', '#eeeeee', 3, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#f5f5f5', '-1', 683, 35, 0, 217, 3, 7, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3928, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 780, 371, 65, 62, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员注册', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3936, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'reg', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 35, 0, 0, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4821, 'member', 'modLoginForm', '会员登录表单', 'down', 'detail', 'tpl_loginform.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 5, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4438, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 432, 38, 216, 8, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '个人资料修改', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4437, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4447, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 309, 40, 216, 8, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '联系信息设置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4446, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'contact', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4000, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'friends', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4491, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'msn', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4033, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 677, 488, 40, 217, 4, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章发布', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4032, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsfabu', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 5, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4039, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsgl', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4226, 'menu', 'modBottomMenu', '底部菜单（一级）', 'advs', 'link', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4049, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 719, 122, 43, 181, 9, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章分类管理', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4048, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newscat', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(565, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '', 'A001', '#4682b4', 1, 'solid', '', '', 'block', '#4682b4', '#fff', '#fff', '-1', 700, 318, 30, 200, 6, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, 100, 100, 'fill', '会员公告', '-1 ', '-1', '-1', '', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', ''),
(566, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'notice', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4229, 'advs', 'modLinkPic', '图片友情链接', 'advs', 'link', 'tpl_linkpic.htm', '-1', 'A602', '#dddddd', 0, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 671, 285, 37, 221, 6, 20, 6, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '友情链接', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4770, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 679, 29, 0, 221, 7, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4771, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'advs', 'link', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 214, 299, 0, 0, 90, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '内容标题菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4822, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'detail', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4025, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 601, 466, 30, 175, 90, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的积分', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4757, 'news', 'modNewsHot', '文章人气榜', 'news', 'detail', 'tpl_newshot2.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 177, 5, 9, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '热门新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4754, 'search', 'modSearchForm', '全站搜索表单', 'search', 'search', 'tpl_searchform.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 30, 0, 0, 6, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4755, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 831, 35, 0, 7, 20, -1, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '全站搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4756, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'detail', 'tpl_news_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 178, 0, 5, 10, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新闻搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4816, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'query', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4287, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'detail', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4960, 'advs', 'modLogo', '网站标志', 'member', 'account', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4961, 'advs', 'modLogo', '网站标志', 'member', 'person', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4974, 'advs', 'modLogo', '网站标志', 'news', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4827, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4614, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'league', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4615, 'page', 'modPageContent', '网页内容详情', 'page', 'league', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 62, 40, 218, 3, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3910, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query_pw.htm', '-1', 'K602', '#dcdcdc', 1, 'solid', '', 'click', 'none', '#e6e6fa', '#fff', '#fff', '-1', 679, 797, 38, 221, 3, 20, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '加盟留言', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3909, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'query', 'tpl_comment_searchform.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 679, 35, 0, 221, 4, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4047, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newscat', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4973, 'advs', 'modLogo', '网站标志', 'news', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4613, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'league', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4024, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'membercent', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3999, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'friends', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3993, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 119, 39, 216, 4, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '我的收藏夹', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4428, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'person', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3960, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'account', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3949, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(5003, 'advs', 'modLogo', '网站标志', 'member', 'downcat', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3992, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'fav', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4801, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4611, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'league', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4065, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'K001', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 308, 408, 31, 472, 6, 10, 20, 'id', 'desc', 0, 20, '_self', 0, -1, -1, -1, 'fill', '我的文章', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4604, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedbackhis', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3919, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4284, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4787, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'query', 'tpl_newsquery.htm', '-1', 'K602', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 673, 283, 42, 218, 9, 10, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '新闻动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4969, 'advs', 'modLogo', '网站标志', 'member', 'friends', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5002, 'advs', 'modLogo', '网站标志', 'member', 'downmodify', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4601, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'service', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4602, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedback', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4603, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'feedbacklook', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5001, 'advs', 'modLogo', '网站标志', 'member', 'downfabu', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3991, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'fav', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4598, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photomodify', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4599, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photocat', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4600, 'menu', 'modChannelMenu', '二级导航菜单', 'service', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(5000, 'advs', 'modLogo', '网站标志', 'member', 'downgl', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4597, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photofabu', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4031, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsfabu', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 6, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4595, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'memberphoto', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4596, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'photogl', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4064, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'K001', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 465, 207, 27, 0, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4063, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'K001', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 465, 196, 237, 0, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员简介', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4999, 'advs', 'modLogo', '网站标志', 'down', 'memberdown', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4734, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'query', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?1.html', 200, 284, 450, 5, 7, 10, 4, 'id', 'desc', 0, 8, '_self', 1, -1, 76, 76, 'fill', '店面展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4747, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'photo', 'main', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 303, 183, 0, 10, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '内容标题菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4746, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'main', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?1.html', 675, 360, 39, 217, 9, 10, 8, 'id', 'desc', 0, 8, '_self', 1, -1, 150, 120, 'fill', '店面展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4436, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'detail', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4972, 'advs', 'modLogo', '网站标志', 'member', 'msn', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3938, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'lostpass', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4403, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4402, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'detail', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4073, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'homepage', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4072, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'K001', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 780, 383, 35, 0, 90, 10, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '会员文章', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4071, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'membernews', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 0, 90, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4998, 'advs', 'modLogo', '网站标志', 'down', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4591, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'membernews', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4752, 'menu', 'modChannelMenu', '二级导航菜单', 'search', 'search', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4023, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'membercent', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4590, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'membercent', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4782, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'query', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4970, 'advs', 'modLogo', '网站标志', 'member', 'comment', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4971, 'advs', 'modLogo', '网站标志', 'member', 'newscat', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4057, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 606, 745, 38, 174, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章修改', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4056, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'newsmodify', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4055, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'newsmodify', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4027, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsfabu', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4997, 'advs', 'modLogo', '网站标志', 'down', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4035, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsgl', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4996, 'advs', 'modLogo', '网站标志', 'down', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3924, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'reg', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3945, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3959, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'account', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4427, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'person', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4966, 'advs', 'modLogo', '网站标志', 'member', 'newsgl', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4967, 'advs', 'modLogo', '网站标志', 'member', 'newsmodify', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4968, 'advs', 'modLogo', '网站标志', 'member', 'fav', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4965, 'advs', 'modLogo', '网站标志', 'member', 'newsfabu', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4964, 'advs', 'modLogo', '网站标志', 'member', 'notice', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4588, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'html', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4963, 'advs', 'modLogo', '网站标志', 'member', 'contact', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4773, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?2.html', 672, 171, 222, 218, 9, 10, 5, 'id', 'desc', 0, 25, '_self', 2, 0, -1, -1, 'fill', '行业动态', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4774, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?74.html', 672, 199, 400, 218, 10, 10, 5, 'id', 'desc', 0, 25, '_self', 74, 0, -1, -1, 'fill', '品牌文化', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(4962, 'advs', 'modLogo', '网站标志', 'member', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4802, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4781, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4586, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'detail', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4995, 'advs', 'modLogo', '网站标志', 'page', 'case', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4141, 'diy', 'modWordText', '标题+介绍', 'index', 'index', 'tpl_wordtext.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 304, 188, 67, 557, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '插件标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '北京某某餐饮连锁管理有限公司', '-1', '-1', '-1', '-1', '　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。公司荣获某某省餐饮10强企业荣誉，企业通过了ISO9001国际质量管理体系认证。面对已经取得的成功和荣誉，公司仍在不断求索。公司宗旨-让消费者满意，让加盟商赚钱！让我们一起携手走向全国、走向世界...', '-1', '-1', 'page/html/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4619, 'menu', 'modVMenu', '竖式导航菜单', 'page', 'league', 'tpl_vmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 209, 300, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4959, 'advs', 'modLogo', '网站标志', 'member', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4622, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'faq', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4623, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'faq', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4624, 'page', 'modPageContent', '网页内容详情', 'page', 'faq', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 682, 20, 419, 216, 9, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4994, 'advs', 'modLogo', '网站标志', 'page', 'faq', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4628, 'menu', 'modVMenu', '竖式导航菜单', 'page', 'faq', 'tpl_vmenu_1008.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 211, 303, 0, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4627, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'faq', 'tpl_navpath.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#eeeeee', '-1', 683, 35, 0, 217, 4, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4584, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'msn', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4780, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'query', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4583, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newscat', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3905, 'menu', 'modBottomMenu', '底部菜单（一级）', 'comment', 'query', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4958, 'advs', 'modLogo', '网站标志', 'member', 'reg', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4398, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'detail', 'tpl_comment_searchform.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 679, 35, 0, 221, 3, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4991, 'advs', 'modLogo', '网站标志', 'member', 'feedbacklook', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4992, 'advs', 'modLogo', '网站标志', 'member', 'feedbackhis', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4993, 'advs', 'modLogo', '网站标志', 'page', 'league', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4889, 'tools', 'modShowCount', '访问统计', 'member', 'downfabu', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4890, 'tools', 'modShowCount', '访问统计', 'member', 'downmodify', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4891, 'tools', 'modShowCount', '访问统计', 'member', 'downcat', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4203, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4885, 'tools', 'modShowCount', '访问统计', 'down', 'query', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4886, 'tools', 'modShowCount', '访问统计', 'down', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4887, 'tools', 'modShowCount', '访问统计', 'down', 'memberdown', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4888, 'tools', 'modShowCount', '访问统计', 'member', 'downgl', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3144, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 7, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4811, 'down', 'modDownList', '下载列表', 'down', 'main', 'tpl_downlist.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/', 676, 301, 40, 216, 9, 20, 10, 'id', 'desc', 0, 25, '_self', 0, -1, -1, -1, 'fill', '最新下载', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4581, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'friends', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4582, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'comment', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4606, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', 'http://', 690, 271, 0, 210, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '公司简介', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4825, 'menu', 'modChannelMenu', '二级导航菜单', 'down', 'detail', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3904, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4139, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 220, 41, 226, 5, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090403/1238748817.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4136, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?2.html', 308, 172, 449, 216, 4, 12, 5, 'id', 'desc', 0, 18, '_self', 2, 50, -1, -1, 'fill', '行业资讯', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4832, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}page/faq/', 308, 173, 620, 216, 12, 12, 5, 'id', 'desc', 0, 18, '_self', 73, 0, -1, -1, 'fill', '加盟问答', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(4978, 'advs', 'modLogo', '网站标志', 'member', 'membercent', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4979, 'advs', 'modLogo', '网站标志', 'news', 'membernews', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(3918, 'diy', 'modButtomInfo', '底部信息编辑区', 'comment', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4884, 'tools', 'modShowCount', '访问统计', 'down', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4574, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'detail', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4059, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'homepage', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4058, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'homepage', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3930, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'login', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(3929, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'login', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3937, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'lostpass', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 5, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3923, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'reg', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3944, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3954, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'account', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3955, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'account', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4772, 'news', 'modNewsList', '文章列表', 'news', 'main', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?1.html', 672, 176, 39, 218, 8, 15, 5, 'id', 'desc', 0, 25, '_self', 1, 0, -1, -1, 'fill', '公司新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4423, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'person', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4883, 'tools', 'modShowCount', '访问统计', 'page', 'case', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4432, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'detail', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4882, 'tools', 'modShowCount', '访问统计', 'page', 'faq', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4990, 'advs', 'modLogo', '网站标志', 'member', 'feedback', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4441, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'contact', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4881, 'tools', 'modShowCount', '访问统计', 'page', 'league', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4026, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsfabu', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4034, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsgl', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4572, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'account', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4573, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'person', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4989, 'advs', 'modLogo', '网站标志', 'member', 'service', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4050, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newsmodify', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4051, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newsmodify', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3986, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'fav', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3987, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'fav', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 212, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(3994, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'friends', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(3995, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'friends', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4494, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'comment', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 212, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4440, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'contact', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4988, 'advs', 'modLogo', '网站标志', 'service', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4042, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'newscat', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4043, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'newscat', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4485, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'msn', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 212, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4779, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'query', 'tpl_news_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 178, 0, 5, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新闻搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4956, 'advs', 'modLogo', '网站标志', 'member', 'login', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4957, 'advs', 'modLogo', '网站标志', 'member', 'lostpass', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4777, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'query', 'tpl_navpath.htm', '-1', 'A526', '#eeeeee', 3, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#f5f5f5', '-1', 683, 35, 0, 217, 3, 7, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4778, 'news', 'modNewsHot', '文章人气榜', 'news', 'query', 'tpl_newshot2.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 177, 5, 7, 10, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '热门新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4955, 'advs', 'modLogo', '网站标志', 'member', 'homepage', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4807, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'main', 'tpl_down_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 183, 179, 5, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4800, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4750, 'diy', 'modButtomInfo', '底部信息编辑区', 'search', 'search', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4018, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'membercent', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4019, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'membercent', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4067, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'membernews', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4066, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'membernews', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4880, 'tools', 'modShowCount', '访问统计', 'member', 'feedbackhis', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4879, 'tools', 'modShowCount', '访问统计', 'member', 'feedbacklook', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4407, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content_pw.htm', '-1', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#def', '#fff', '#fff', '-1', 678, 790, 40, 222, 7, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '加盟留言', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4219, 'diy', 'modButtomInfo', '底部信息编辑区', 'advs', 'link', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4875, 'tools', 'modShowCount', '访问统计', 'member', 'photocat', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4876, 'tools', 'modShowCount', '访问统计', 'service', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4877, 'tools', 'modShowCount', '访问统计', 'member', 'service', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4878, 'tools', 'modShowCount', '访问统计', 'member', 'feedback', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(3532, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4953, 'advs', 'modLogo', '网站标志', 'comment', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4954, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4952, 'advs', 'modLogo', '网站标志', 'comment', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4951, 'advs', 'modLogo', '网站标志', 'comment', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4950, 'advs', 'modLogo', '网站标志', 'advs', 'link', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4948, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'downcat', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4947, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'downmodify', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4422, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'person', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4431, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'detail', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4946, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'downfabu', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4945, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'downgl', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4944, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'down', 'memberdown', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4943, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'down', 'detail', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4942, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'down', 'query', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4941, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'down', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4940, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'page', 'case', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4939, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'page', 'faq', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4938, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'page', 'league', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4936, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'feedbacklook', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4937, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'feedbackhis', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4763, 'menu', 'modChannelMenu', '二级导航菜单', 'news', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4218, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 537, 40, 218, 2, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4749, 'menu', 'modBottomMenu', '底部菜单（一级）', 'search', 'search', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4935, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'feedback', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4924, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'news', 'membernews', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4925, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'photo', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4926, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'photo', 'query', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4927, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'photo', 'detail', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4928, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'photo', 'memberphoto', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4929, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'photogl', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4930, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'photofabu', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4931, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'photomodify', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4932, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'photocat', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4933, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'service', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4934, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'service', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4743, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'main', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?2.html', 675, 363, 407, 217, 8, 10, 8, 'id', 'desc', 0, 12, '_self', 2, -1, 150, 120, 'fill', '菜品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4834, 'member', 'modLoginForm', '会员登录表单', 'index', 'index', 'tpl_loginform.htm', '-1', 'K529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 205, 176, 441, 0, 15, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '加盟商登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4824, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'detail', 'tpl_down_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 183, 179, 5, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4923, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'membercent', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4922, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'search', 'search', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4921, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'page', 'html', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4920, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'news', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4910, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'newsfabu', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4911, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'newsgl', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4912, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'newsmodify', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4913, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'fav', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4914, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'friends', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4915, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'comment', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4916, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'newscat', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4917, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'msn', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4918, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'news', 'query', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4919, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'news', 'detail', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4418, 'service', 'modForm', '客户服务表单', 'service', 'main', 'tpl_form.htm', '-1', '1000', '#dddddd', 0, 'dotted', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 666, 989, 40, 225, 5, 10, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '客户服务', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(4449, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'service', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 212, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4458, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedback', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 241, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4467, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedbacklook', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 241, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4476, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'feedbackhis', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 241, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4605, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'index', 'index', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 212, 274, 0, 0, 10, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4608, 'photo', 'modPhotoPic', '图片+名称', 'index', 'index', 'tpl_photopic.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?2.html', 369, 344, 449, 531, 14, 15, 6, 'id', 'desc', 0, 12, '_self', 2, -1, 100, 100, 'fill', '菜品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4838, 'tools', 'modShowCount', '访问统计', 'advs', 'link', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4909, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'notice', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4134, 'search', 'modSearchForm', '全站搜索表单', 'index', 'index', 'tpl_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 169, 272, 0, 11, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '站内搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4895, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'advs', 'link', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4896, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'comment', 'query', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4408, 'diy', 'modButtomInfo', '底部信息编辑区', 'service', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4908, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'contact', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4907, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'detail', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4906, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'person', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4905, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'account', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4762, 'diy', 'modButtomInfo', '底部信息编辑区', 'news', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4761, 'menu', 'modBottomMenu', '底部菜单（一级）', 'news', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4987, 'advs', 'modLogo', '网站标志', 'member', 'photocat', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4874, 'tools', 'modShowCount', '访问统计', 'member', 'photomodify', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4760, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'main', 'tpl_news_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 178, 0, 5, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '新闻搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4217, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 212, 302, 0, 0, 4, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4216, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#eeeeee', '-1', 683, 35, 0, 217, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4758, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'main', 'tpl_navpath.htm', '-1', 'A526', '#eeeeee', 3, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#f5f5f5', '-1', 683, 35, 0, 217, 3, 7, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4776, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'news', 'main', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 213, 300, 182, 0, 11, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '内容标题菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(4571, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4289, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 675, 326, 41, 216, 7, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '文章正文', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4689, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 675, 321, 379, 216, 8, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '文章评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4810, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4570, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'reg', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4904, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4740, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'main', 'tpl_photo_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 0, 5, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4739, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4738, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 683, 33, 0, 217, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4768, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '#fff', '-1', 655, 272, 61, 130, 6, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4569, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'lostpass', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4735, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'query', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 424, 38, 220, 9, 20, 20, 'id', 'desc', 0, 12, '_self', 0, -1, 140, 110, 'fill', '图片检索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4902, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'lostpass', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4731, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'query', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?2.html', 200, 270, 180, 5, 5, 10, 4, 'id', 'desc', 0, 12, '_self', 2, -1, 76, 76, 'fill', '菜品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4727, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'query', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4728, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'query', 'tpl_photo_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 0, 5, 4, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4903, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'reg', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4567, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'homepage', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4568, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'login', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4769, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'login', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 34, 0, 0, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4809, 'member', 'modLoginForm', '会员登录表单', 'down', 'main', 'tpl_loginform.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 5, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4712, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'detail', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4713, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'detail', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4714, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'detail', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 678, 31, 0, 222, 3, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4715, 'menu', 'modBottomMenu', '底部菜单（一级）', 'photo', 'detail', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4716, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'detail', 'tpl_photo_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 179, 0, 5, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4900, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'homepage', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4901, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'member', 'login', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4722, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?2.html', 200, 270, 180, 5, 10, 10, 4, 'id', 'desc', 0, 12, '_self', 2, -1, 76, 76, 'fill', '菜品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(4720, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 663, 447, 39, 222, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4721, 'photo', 'modPhotoComment', '图片点评', 'photo', 'detail', 'tpl_photo_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 664, 324, 496, 222, 9, 1, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '图片评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4723, 'photo', 'modPhotoPic', '图片+名称', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?1.html', 200, 284, 450, 5, 11, 10, 4, 'id', 'desc', 0, 8, '_self', 1, -1, 76, 76, 'fill', '店面展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(4986, 'advs', 'modLogo', '网站标志', 'member', 'photomodify', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4829, 'down', 'modDownContent', '下载详情', 'down', 'detail', 'tpl_down_content.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 675, 426, 41, 216, 9, 25, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4830, 'down', 'modDownComment', '下载点评', 'down', 'detail', 'tpl_down_comment.htm', '-1', 'A602', '#dddddd', 0, 'solid', '', 'click', 'none', '', '', '#fff', 'http://', 675, 348, 479, 216, 10, 0, 5, 'id', 'desc', 0, 20, '_self', 0, 120, -1, -1, 'fill', '下载评论', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4831, 'down', 'modDownSameTagList', '相关下载(同标签)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 362, 5, 11, 12, 10, 'id', 'desc', 0, 10, '_self', 0, -1, -1, -1, 'fill', '相关下载', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4837, 'diy', 'modText', '多行文字', 'index', 'index', 'tpl_text.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 205, 188, 617, 0, 16, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '联系我们', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '公司地址：北京东直门横街235号\r\n订座热线：400 810 8888\r\n加盟热线：010-87654321\r\n传真号码：010-12345678\r\n联 系 人：张先生 刘小姐\r\n电子邮件：demo@demo.com', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4839, 'tools', 'modShowCount', '访问统计', 'comment', 'query', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4392, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'main', 'tpl_comment_searchform.htm', '-1', 'A522', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 210, 179, 0, 0, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '点评搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4393, 'comment', 'modCommentClass', '点评分类', 'comment', 'main', 'tpl_comment_class.htm', '-1', 'A522', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 210, 201, 177, 0, 8, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '分类查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4394, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 35, 0, 224, 9, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4818, 'diy', 'modButtomInfo', '底部信息编辑区', 'down', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4686, 'menu', 'modVMenu', '竖式导航菜单', 'comment', 'query', 'tpl_vmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 211, 300, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4899, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'index', 'index', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4687, 'menu', 'modVMenu', '竖式导航菜单', 'comment', 'detail', 'tpl_vmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 212, 318, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4490, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'msn', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4499, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'comment', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4445, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'contact', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4685, 'menu', 'modVMenu', '竖式导航菜单', 'service', 'main', 'tpl_vmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 209, 302, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4985, 'advs', 'modLogo', '网站标志', 'member', 'photofabu', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4566, 'menu', 'modChannelMenu', '二级导航菜单', 'index', 'index', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4417, 'service', 'modServiceNavPath', '当前位置提示条', 'service', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 675, 35, 0, 225, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4873, 'tools', 'modShowCount', '访问统计', 'member', 'photofabu', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4415, 'menu', 'modBottomMenu', '底部菜单（一级）', 'service', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4898, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'comment', 'main', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4495, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'comment', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4486, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'msn', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4450, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'service', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4872, 'tools', 'modShowCount', '访问统计', 'member', 'photogl', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4984, 'advs', 'modLogo', '网站标志', 'member', 'photogl', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4565, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4454, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'service', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4455, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'service', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4456, 'service', 'modServiceForm', '客户服务表单', 'member', 'service', 'tpl_serviceform.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 588, 40, 217, 8, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '有问必答', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'visible', 'content', 'block'),
(4459, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedback', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4871, 'tools', 'modShowCount', '访问统计', 'photo', 'memberphoto', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4983, 'advs', 'modLogo', '网站标志', 'photo', 'memberphoto', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4564, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'detail', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4463, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedback', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4464, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedback', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4465, 'service', 'modServiceTaskList', '客服工单查询', 'member', 'feedback', 'tpl_tasklist.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 355, 37, 217, 7, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '客服工单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4468, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedbacklook', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4870, 'tools', 'modShowCount', '访问统计', 'photo', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4982, 'advs', 'modLogo', '网站标志', 'photo', 'detail', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4563, 'menu', 'modChannelMenu', '二级导航菜单', 'comment', 'query', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4472, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedbacklook', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4473, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedbacklook', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4474, 'service', 'modServiceTaskDetail', '客服工单详情', 'member', 'feedbacklook', 'tpl_taskdetail.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 676, 954, 41, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '工单详情', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4477, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'feedbackhis', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 7, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4869, 'tools', 'modShowCount', '访问统计', 'photo', 'query', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4981, 'advs', 'modLogo', '网站标志', 'photo', 'query', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4562, 'menu', 'modChannelMenu', '二级导航菜单', 'advs', 'link', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4481, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'feedbackhis', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4482, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'feedbackhis', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4483, 'service', 'modServiceTaskHis', '存档工单查询', 'member', 'feedbackhis', 'tpl_taskhis.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 677, 121, 39, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '存档工单查询', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4868, 'tools', 'modShowCount', '访问统计', 'photo', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4867, 'tools', 'modShowCount', '访问统计', 'news', 'membernews', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4866, 'tools', 'modShowCount', '访问统计', 'member', 'membercent', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4865, 'tools', 'modShowCount', '访问统计', 'search', 'search', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4864, 'tools', 'modShowCount', '访问统计', 'page', 'html', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4863, 'tools', 'modShowCount', '访问统计', 'news', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4862, 'tools', 'modShowCount', '访问统计', 'news', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4861, 'tools', 'modShowCount', '访问统计', 'news', 'query', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4860, 'tools', 'modShowCount', '访问统计', 'member', 'msn', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4859, 'tools', 'modShowCount', '访问统计', 'member', 'newscat', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4858, 'tools', 'modShowCount', '访问统计', 'member', 'comment', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4857, 'tools', 'modShowCount', '访问统计', 'member', 'friends', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4856, 'tools', 'modShowCount', '访问统计', 'member', 'fav', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4855, 'tools', 'modShowCount', '访问统计', 'member', 'newsmodify', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4854, 'tools', 'modShowCount', '访问统计', 'member', 'newsgl', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4853, 'tools', 'modShowCount', '访问统计', 'member', 'newsfabu', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4852, 'tools', 'modShowCount', '访问统计', 'member', 'notice', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4851, 'tools', 'modShowCount', '访问统计', 'member', 'contact', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4850, 'tools', 'modShowCount', '访问统计', 'member', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4849, 'tools', 'modShowCount', '访问统计', 'member', 'person', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4848, 'tools', 'modShowCount', '访问统计', 'member', 'account', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4847, 'tools', 'modShowCount', '访问统计', 'member', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4846, 'tools', 'modShowCount', '访问统计', 'member', 'reg', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4845, 'tools', 'modShowCount', '访问统计', 'member', 'lostpass', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4844, 'tools', 'modShowCount', '访问统计', 'member', 'login', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4843, 'tools', 'modShowCount', '访问统计', 'member', 'homepage', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4842, 'tools', 'modShowCount', '访问统计', 'index', 'index', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 17, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4841, 'tools', 'modShowCount', '访问统计', 'comment', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4815, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'query', 'tpl_down_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 200, 183, 179, 5, 6, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '下载搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4814, 'menu', 'modBottomMenu', '底部菜单（一级）', 'down', 'query', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4813, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'query', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4812, 'member', 'modLoginForm', '会员登录表单', 'down', 'query', 'tpl_loginform.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 5, 7, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4736, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4737, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4724, 'menu', 'modChannelMenu', '二级导航菜单', 'photo', 'query', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4725, 'diy', 'modButtomInfo', '底部信息编辑区', 'photo', 'query', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4726, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'query', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 681, 33, 0, 219, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4820, 'down', 'modDownQuery', '下载检索搜索', 'down', 'query', 'tpl_down_query.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 676, 500, 40, 217, 90, 12, 20, 'id', 'desc', 0, 30, '_self', 0, -1, -1, -1, 'fill', '下载专区', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(4840, 'tools', 'modShowCount', '访问统计', 'comment', 'detail', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4638, 'news', 'modNewsList', '文章列表', 'page', 'case', 'tpl_newslist_time_big.htm', '-1', 'A602', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?75.html', 676, 243, 41, 218, 9, 20, 30, 'id', 'desc', 0, 25, '_self', 75, 0, -1, -1, 'fill', '成功案例', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'visible', 'content', 'block'),
(4637, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'case', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4636, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'case', 'tpl_navpath.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#eeeeee', '-1', 683, 35, 0, 217, 5, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block');
INSERT INTO `pwn_base_plus` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(4980, 'advs', 'modLogo', '网站标志', 'photo', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 68, 36, 11, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '网站标志', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4635, 'menu', 'modVMenu', '竖式导航菜单', 'page', 'case', 'tpl_vmenu_1008.htm', 'A', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 211, 303, 0, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '57', '', 1, 0, 'hidden', 'content', 'block'),
(4620, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'faq', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(4618, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'league', 'tpl_navpath.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#eeeeee', '-1', 683, 35, 0, 217, 5, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4629, 'news', 'modNewsList', '文章列表', 'page', 'faq', 'tpl_newslist_time_big.htm', '-1', 'A602', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?73.html', 676, 368, 41, 218, 8, 20, 30, 'id', 'asc', 0, 25, '_self', 73, 0, -1, -1, 'fill', '加盟问答', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'visible', 'content', 'block'),
(4897, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'comment', 'detail', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 230, 0, 0, 1, 0, 5, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4631, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'case', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 4, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4632, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'case', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 33, 4, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(4633, 'page', 'modPageContent', '网页内容详情', 'page', 'case', 'tpl_page_content.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 682, 20, 294, 218, 3, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(4575, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'contact', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4576, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'notice', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4577, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsfabu', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4578, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsgl', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4579, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'newsmodify', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(4580, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'fav', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 8, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusdefault`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusdefault` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` char(100) NOT NULL default '',
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL default '-1',
  `showborder` char(20) NOT NULL default '1000',
  `bordercolor` varchar(7) NOT NULL default '#4682b4',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#4682b4',
  `barcolor` varchar(10) NOT NULL default '#fff',
  `backgroundcolor` varchar(7) NOT NULL default '#fff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '-1',
  `ord` varchar(100) NOT NULL default '-1',
  `sc` varchar(10) NOT NULL default '-1',
  `showtj` int(5) NOT NULL default '-1',
  `cutword` int(20) NOT NULL default '-1',
  `target` varchar(30) NOT NULL default '-1',
  `catid` int(10) NOT NULL default '-1',
  `cutbody` int(5) NOT NULL default '-1',
  `picw` int(3) NOT NULL default '-1',
  `pich` int(3) NOT NULL default '-1',
  `fittype` varchar(10) NOT NULL default '-1',
  `title` varchar(100) NOT NULL default '',
  `body` text,
  `pic` varchar(255) NOT NULL default '-1',
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL default '-1',
  `movi` varchar(255) NOT NULL default '-1',
  `sourceurl` varchar(20) NOT NULL default '-1',
  `word` varchar(255) NOT NULL default '-1',
  `word1` varchar(255) NOT NULL default '-1',
  `word2` varchar(255) NOT NULL default '-1',
  `word3` char(255) NOT NULL default '-1',
  `word4` char(255) NOT NULL default '-1',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL default '-1',
  `link1` char(255) NOT NULL default '-1',
  `link2` char(255) NOT NULL default '-1',
  `link3` char(255) NOT NULL default '-1',
  `link4` char(255) NOT NULL default '-1',
  `tags` varchar(30) NOT NULL default '-1',
  `groupid` varchar(20) NOT NULL default '-1',
  `projid` varchar(20) NOT NULL default '-1',
  `moveable` int(1) NOT NULL default '1',
  `classtbl` varchar(30) NOT NULL default '',
  `grouptbl` varchar(50) NOT NULL,
  `projtbl` varchar(50) NOT NULL,
  `setglobal` int(5) NOT NULL default '-1',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` varchar(10) NOT NULL default 'block',
  `ifmul` int(1) NOT NULL default '1',
  `ifrefresh` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=348 ;

--
-- 转存表中的数据 `pwn_base_plusdefault`
--

INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(17, 'advs', 'modLogo', '网站标志', 'all', 'all', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 150, 60, 20, 20, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '网站标志', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_logo', '', 1, 'hidden', 'top', 'block', 0, 0),
(25, 'advs', 'modLinkPic', '图片友情链接', 'all', 'all', 'tpl_linkpic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 6, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(26, 'advs', 'modLinkText', '文字友情链接', 'all', 'all', 'tpl_link.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 650, 100, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(31, 'advs', 'modAdvsLb', '图片轮播广告', 'all', 'all', 'tpl_advslb.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 320, 280, 200, 200, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '轮播广告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', -1, 'hidden', 'content', 'block', 0, 1),
(32, 'advs', 'modAdvsPic', '页内图片广告', 'all', 'all', 'tpl_advspic.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 565, 95, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'content', 'block', 1, 0),
(199, 'effect', 'modHeadBgSource', '头部效果图素材', 'all', 'all', 'tpl_headbg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部效果图', '-1', '-1', '-1', '-1', '-1', 'head/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(34, 'advs', 'modAdvsText', '文字广告（静态）', 'all', 'all', 'tpl_advstext.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(35, 'advs', 'modAdvsMovi', 'FLASH视频广告', 'all', 'all', 'tpl_movi.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频播放', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_movi', '', -1, 'hidden', 'content', 'block', 1, 0),
(48, 'advs', 'modAdvsFloat', '图片广告（飘动）', 'all', 'all', 'tpl_advs_float.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(49, 'advs', 'modAdvsDuilian', '对联广告', 'all', 'all', 'tpl_advs_duilian.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 220, 130, 6, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_duilian', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(50, 'advs', 'modAdvsZimu', '文字广告（字幕）', 'all', 'all', 'tpl_advszimu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 30, 200, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_text', '', -1, 'hidden', 'content', 'block', 1, 0),
(51, 'advs', 'modAdvsFixed', '图片广告（悬浮）', 'all', 'all', 'tpl_advs_fixed.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 100, 100, 350, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_advs_pic', '', -1, 'hidden', 'bodyex', 'block', 0, 0),
(61, 'advs', 'modLinkNavPath', '当前位置提示条', 'advs', 'link', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(89, 'advs', 'modAdvsCode', '广告代码', 'all', 'all', 'tpl_advscode.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 250, 250, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '广告位', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请在此插入广告代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(18, 'comment', 'modCommentSearchForm', '点评搜索表单', 'comment', 'all', 'tpl_comment_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(21, 'comment', 'modCommentList', '最新点评（列表）', 'all', 'all', 'tpl_commentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php', 300, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(22, 'comment', 'modCommentQuery', '点评检索', 'comment', 'query', 'tpl_comment_query.htm', '-1', '1000', '#def', 1, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 300, 35, 0, 90, 0, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '点评检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(23, 'comment', 'modCommentClass', '点评分类', 'all', 'all', 'tpl_comment_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '点评分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(24, 'comment', 'modCommentContent', '点评详情', 'comment', 'detail', 'tpl_comment_content.htm', '-1', '1000', '#def', 0, 'solid', '', '', 'none', '#def', '#fff', '#fff', '-1', 750, 500, 35, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '点评详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(56, 'comment', 'modCommentNavPath', '当前位置提示条', 'comment', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(151, 'comment', 'modMemberCommentList', '会员最新点评', 'member', 'homepage', 'tpl_membercommentlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?mid={#mid#}', 380, 170, 0, 0, 90, 12, 5, '-1', '-1', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(164, 'comment', 'modCommentHot30', '本月点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(165, 'comment', 'modCommentHot7', '本周点评点击榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=cl', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周点击榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(166, 'comment', 'modCommentRq30', '本月点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(167, 'comment', 'modCommentRq7', '本周点评人气榜', 'all', 'all', 'tpl_comment_hotlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}comment/class/index.php?myord=backcount', 300, 200, 0, 0, 90, 12, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本周人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_comment_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(9, 'diy', 'modEdit', 'HTML编辑区', 'all', 'all', 'tpl_edit.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定内容', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(27, 'diy', 'modButtomInfo', '底部信息编辑区', 'all', 'all', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 900, 120, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注信息', '请输入内容', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(47, 'diy', 'modText', '多行文字', 'all', 'all', 'tpl_text.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '多行文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '请输入自定义文字', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(53, 'diy', 'modPic', '图片/FLASH', 'all', 'all', 'tpl_pic.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(74, 'diy', 'modWords', '单行文字', 'all', 'all', 'tpl_words.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '单行文字', '-1', '-1', '-1', '-1', '-1', '-1', '请输入文字', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(75, 'diy', 'modPicWordText', '图片+标题+介绍', 'all', 'all', 'tpl_picwordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 250, 90, 30, 300, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(76, 'diy', 'modPicWord', '图片+标题', 'all', 'all', 'tpl_picword.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 250, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(184, 'news', 'modNewsPicMemo', '文章图片+标题+摘要', 'all', 'all', 'tpl_newspicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 300, 320, 0, 0, 99, 5, 3, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 35, 80, 80, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(86, 'diy', 'modPlusBorder', '空白边框', 'all', 'all', 'tpl_plusborder.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 300, 0, 0, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '空白边框', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(87, 'diy', 'modColorZone', '空白色块', 'all', 'all', 'tpl_colorzone.htm', '-1', '1000', '#e10000', 1, 'solid', '', '', 'none', '', '', '#e10000', '-1', 200, 200, 30, 30, 1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(63, 'effect', 'modJIanFan', '动态简繁转换', 'all', 'all', 'tpl_jianfan.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '', '-1', 150, 50, 30, 700, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '简繁转换', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(64, 'effect', 'modNowDate', '当前日期时间', 'all', 'all', 'tpl_nowdate.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 30, 10, 600, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前日期时间', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(65, 'effect', 'modMouseClock', '鼠标时钟特效', 'all', 'all', 'tpl_mouseclock.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 150, 300, 10, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(90, 'effect', 'modTraFlash', '透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 500, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(6, 'index', 'modIndexNavPath', '当前位置提示条', 'index', 'index', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(30, 'member', 'modLoginForm', '会员登录表单', 'all', 'all', 'tpl_loginform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 90, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(37, 'member', 'modMemberReg', '会员注册', 'member', 'reg', 'tpl_reg.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 750, 390, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员注册', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(43, 'member', 'modMemberLogin', '会员登录表单(大)', 'member', 'login', 'tpl_member_login.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 650, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(45, 'member', 'modResetPass', '重设密码向导', 'member', 'lostpass', 'tpl_resetpass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 250, 0, 0, 90, 30, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '重设密码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(57, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 700, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(103, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 250, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员登录信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(104, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 12, 5, '-1', '-1', -1, 25, '_self', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(106, 'member', 'modMemberAccount', '登录账号设置表单', 'member', 'account', 'tpl_member_account.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 200, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '登录帐号设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(107, 'member', 'modMemberPerson', '头像签名设置表单', 'member', 'person', 'tpl_member_person.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头像签名设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(108, 'member', 'modMemberDetail', '个人资料修改表单', 'member', 'detail', 'tpl_member_detail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '个人资料修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(109, 'member', 'modMemberContact', '联系信息设置表单', 'member', 'contact', 'tpl_member_contact.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 390, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '联系信息设置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(110, 'member', 'modMemberNoticeContent', '会员公告详情', 'member', 'notice', 'tpl_member_notice_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员公告', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(139, 'member', 'modMemberFav', '我的收藏夹', 'member', 'fav', 'tpl_member_fav.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的收藏夹', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(140, 'member', 'modMemberFriends', '我的好友', 'member', 'friends', 'tpl_member_friends.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的好友', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(141, 'member', 'modMemberComment', '我的点评', 'member', 'comment', 'tpl_member_comment.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的点评', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(142, 'member', 'modMemberMsn', '我的站内短信', 'member', 'msn', 'tpl_member_msn.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 350, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的站内短信', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(147, 'member', 'modMemberCentInfo', '会员积分信息', 'member', 'main', 'tpl_centinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 300, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(148, 'member', 'modMemberCentLog', '会员积分查询', 'member', 'membercent', 'tpl_member_centlog.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '我的积分', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(153, 'member', 'modMemberIntro', '会员简介', 'member', 'homepage', 'tpl_member_intro.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员简介', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(154, 'member', 'modMemberHomeInfo', '会员信息', 'member', 'homepage', 'tpl_member_homeinfo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 500, 210, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员信息', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(14, 'menu', 'modChannelMenu', '二级导航菜单', 'all', 'all', 'tpl_channelmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 65, 120, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(16, 'menu', 'modBottomMenu', '底部菜单（一级）', 'all', 'all', 'tpl_bottommenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 0, 0, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '脚注栏目', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(67, 'menu', 'modDropDownMenu', '二级下拉菜单', 'all', 'all', 'tpl_dropdownmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 28, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(66, 'menu', 'modTopMenu', '顶部菜单(一级)', 'all', 'all', 'tpl_topmenu.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 350, 30, 5, 500, 90, 0, 10, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '顶部菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '2', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(68, 'menu', 'modMainMenu', '一级导航菜单', 'all', 'all', 'tpl_mainmenu.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 30, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'top', 'block', 0, 0),
(115, 'menu', 'modTreeMenu', '树形导航菜单', 'all', 'all', 'tpl_treemenu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'visible', 'content', 'block', 0, 1),
(116, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'all', 'tpl_qqmenu.htm', 'A', '1000', '#def', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 190, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '会员中心', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(1, 'news', 'modNewsQuery', '文章翻页检索', 'news', 'all', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 600, 500, 30, 200, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '文章检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(2, 'news', 'modNewsClass', '文章一级分类', 'all', 'all', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(3, 'news', 'modNewsTreeClass', '文章分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 1),
(4, 'news', 'modNewsProjList', '相关文章(同专题)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(5, 'news', 'modNewsAuthorList', '相关文章(同发布人)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(7, 'news', 'modNewsClassFc', '文章逐级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(8, 'news', 'modNewsList', '文章列表', 'all', 'all', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/', 200, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 12, '_self', 0, 50, -1, -1, '-1', '最新文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(12, 'news', 'modNewsContent', '文章正文', 'news', 'detail', 'tpl_newscontent.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 630, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章正文', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(13, 'news', 'modNewsSearchForm', '文章搜索表单', 'news', 'all', 'tpl_news_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(20, 'news', 'modNewsComment', '文章点评', 'news', 'detail', 'tpl_news_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 630, 300, 300, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '文章评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(55, 'news', 'modNewsNavPath', '当前位置提示条', 'news', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(72, 'news', 'modNewsProject', '文章专题名称列表', 'all', 'all', 'tpl_newsproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(82, 'news', 'modNewsPic', '文章图片+标题', 'all', 'all', 'tpl_newspic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 99, 5, 4, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 6, '_self', 0, -1, 160, 120, 'fill', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(88, 'news', 'modNewsHot', '文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '文章人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(112, 'news', 'modNewsFabu', '文章发布表单', 'member', 'newsfabu', 'tpl_news_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(113, 'news', 'modNewsGl', '文章管理', 'member', 'newsgl', 'tpl_news_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(114, 'news', 'modNewsModify', '文章修改表单', 'member', 'newsmodify', 'tpl_news_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(136, 'news', 'modNewsMyCat', '文章分类管理', 'member', 'newscat', 'tpl_news_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(149, 'news', 'modMemberNewsList', '会员最新文章', 'member', 'homepage', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/membernews.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '我的文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(155, 'news', 'modMemberNewsClass', '会员文章分类', 'news', 'membernews', 'tpl_membernews_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(156, 'news', 'modMemberNewsQuery', '会员文章检索', 'news', 'membernews', 'tpl_newsquery.htm', '-1', 'A010', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 300, 30, 220, 90, 10, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '会员文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(157, 'news', 'modMemberNewsSearchForm', '会员文章搜索', 'news', 'membernews', 'tpl_membernews_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '文章搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(58, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(62, 'page', 'modPageContent', '网页内容详情', 'page', 'all', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '内容标题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(70, 'page', 'modPageTitleList', '网页标题(列表)', 'all', 'all', 'tpl_pagelist.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题列表', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(71, 'page', 'modPageContentFy', '网页内容翻页', 'page', 'all', 'tpl_page_fy.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 50, 30, 220, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '翻页', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(73, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'all', 'all', 'tpl_page_titlemenu.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '内容标题菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(29, 'search', 'modSearch', '全站搜索结果', 'search', 'search', 'tpl_search.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 900, 600, 30, 0, 90, 0, -1, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(46, 'search', 'modSearchForm', '全站搜索表单', 'all', 'all', 'tpl_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 30, 0, 0, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '全站搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(59, 'search', 'modSearchNavPath', '当前位置提示条', 'search', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(28, 'tools', 'modShowCount', '访问统计', 'all', 'all', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 150, 30, 100, 300, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '访问统计', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', 1, 'hidden', 'bottom', 'block', 0, 0),
(54, 'tools', 'modVote', '投票调查', 'all', 'all', 'tpl_vote.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 250, 200, 200, 90, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '投票调查', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_tools_pollindex', '', -1, 'hidden', 'content', 'block', 0, 0),
(169, 'news', 'modNewsHot30', '本月文章人气榜', 'all', 'all', 'tpl_newshot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 0),
(172, 'news', 'modNewsSameTagList', '相关文章(同标签)', 'news', 'detail', 'tpl_newslist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关文章', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(176, 'diy', 'modDiyMovi', 'FLASH视频', 'all', 'all', 'tpl_diymovi.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '视频', '-1', '-1', '-1', '-1', '请输入FLASH视频来源网址', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(175, 'advs', 'modLinkOpt', '下拉式友情链接', 'all', 'all', 'tpl_linkopt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '{#RP#}advs/link/', 200, 50, 0, 0, 90, 10, 12, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '友情链接', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_linkgroup', '', -1, 'hidden', 'content', 'block', 1, 0),
(204, 'member', 'modMemberRank3', '会员悬赏榜(积分三)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员悬赏榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(205, 'member', 'modMemberRank4', '会员金币榜(积分四)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员金币榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `pwn_base_plusdefault` (`id`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `moveable`, `classtbl`, `grouptbl`, `projtbl`, `setglobal`, `overflow`, `bodyzone`, `display`, `ifmul`, `ifrefresh`) VALUES
(206, 'member', 'modMemberRank5', '消费积分榜(积分五)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '消费积分榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(207, 'member', 'modMemberTags', '会员推荐(标签)', 'all', 'all', 'tpl_membertags.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 2, '-1', '-1', -1, -1, '_self', -1, -1, 70, 70, '-1', '会员推荐', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(203, 'member', 'modMemberRank2', '会员人气榜(积分二)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(202, 'member', 'modMemberRank1', '会员经验榜(积分一)', 'all', 'all', 'tpl_memberrank.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 250, 0, 0, 99, 12, 10, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '会员经验榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(182, 'diy', 'modWordTT', '标题+链接组', 'all', 'all', 'tpl_wordtt.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 70, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '今日头条', '-1', '-1', '-1', '-1', '-1', '-1', '请输入头条标题文字', '自定义链接文字一', '自定义链接文字二', '自定义链接文字三', '自定义链接文字四', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(183, 'diy', 'modWordText', '标题+介绍', 'all', 'all', 'tpl_wordtext.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 100, 0, 0, 99, 10, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '插件标题', '-1', '-1', '-1', '-1', '-1', '-1', '请输入标题文字', '-1', '-1', '-1', '-1', '请输入介绍文字', '-1', '-1', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(187, 'news', 'modNewsPicRollx3', '三图轮播特效', 'all', 'all', 'tpl_newspicrollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 0, 1),
(189, 'diy', 'modPicWords', '图片+标题组', 'all', 'all', 'tpl_picwordx5.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', 'http://', 300, 120, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, 100, '-1', '自定图文', '-1', '', 'http://', '-1', '-1', '-1', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '请输入标题', '-1', '-1', '-1', 'http://', 'http://', 'http://', 'http://', 'http://', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(190, 'effect', 'modButtonSource', '按钮素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 80, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '按钮素材', '-1', '-1', '-1', '-1', '-1', 'button/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(191, 'effect', 'modIconSource', '图标素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'icon/01.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(193, 'effect', 'modSmallIcon', '小图标素材', 'all', 'all', 'tpl_smallicon.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 50, 50, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图标素材', '-1', '-1', '-1', '-1', '-1', 'smallicon/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(198, 'effect', 'modBgSource', '背景图片素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(195, 'effect', 'modSourceCoolLine', '分割线装饰素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 100, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '分割线素材', '-1', '-1', '-1', '-1', '-1', 'coolline/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(196, 'effect', 'modCartonSource', '其他图片素材', 'all', 'all', 'tpl_picsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '卡通图片', '-1', '-1', '-1', '-1', '-1', 'carton/1.png', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(200, 'diy', 'modGroupLable', '标签切换边框', 'all', 'all', 'tpl_plusborder.htm', '-1', 'A201', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', 'http://', 300, 300, 0, 0, 0, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自动标签', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(208, 'effect', 'modHeaderBg', '头部背景图素材', 'all', 'all', 'tpl_bgsource.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '头部背景素材', '-1', '-1', '-1', '-1', '-1', 'bg/1.gif', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(209, 'effect', 'modHeadTraFlash', '头部透明flash特效', 'all', 'all', 'tpl_flash1.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(210, 'diy', 'modBgSound', '网页背景音乐(mid)', 'all', 'all', 'tpl_bgsound.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 100, 50, 350, 0, -1, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '背景音乐', '-1', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bodyex', 'block', 0, 1),
(211, 'news', 'modNewsSameClass', '文章同级分类', 'news', 'query', 'tpl_newsclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(214, 'diy', 'modHeadPic', '头部自定义效果图', 'all', 'all', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 150, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片', '-1', '', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'top', 'block', 0, 0),
(219, 'diy', 'modDiyTemp', '自定义模版', 'all', 'all', 'tpl_diy.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 300, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '自定模版', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(220, 'news', 'modNewsTwoClass', '文章二级分类', 'all', 'all', 'tpl_newstwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '文章分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_news_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(338, 'advs', 'modAdvsHeadLb', '头部图片轮播', 'all', 'all', 'tpl_advsheadlb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 900, 200, 0, 0, 90, 0, 5, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_advs_lbgroup', '', 1, 'hidden', 'top', 'block', 0, 1),
(337, 'down', 'modDownSameClass', '下载同级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(246, 'menu', 'modVMenu', '竖式导航菜单', 'all', 'all', 'tpl_vmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 200, 300, 0, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', 1, 'hidden', 'content', 'block', 0, 0),
(247, 'menu', 'modMVMenu', '手风琴式二级菜单', 'all', 'all', 'tpl_mvmenu.htm', 'A', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 180, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '导航菜单', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_menu_group', '', -1, 'visible', 'content', 'block', 0, 1),
(255, 'news', 'modNewsPicLb', '文章图片轮播', 'all', 'all', 'tpl_newspic_lb.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 280, 0, 0, 99, 1, 5, 'id|dtime|uptime|prop1|prop2|cl|xuhao', 'desc', 0, 15, '-1', 0, -1, -1, -1, '-1', '图片新闻', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '-1', 1, '_news_cat', '', '_news_proj', -1, 'hidden', 'content', 'block', 1, 1),
(256, 'photo', 'modPhotoQuery', '图片检索搜索', 'photo', 'all', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 1),
(257, 'photo', 'modPhotoContent', '图片详情', 'photo', 'detail', 'tpl_photo_content.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 30, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(258, 'photo', 'modPhotoClass', '图片分类（列表）', 'all', 'all', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(259, 'photo', 'modPhotoPic', '图片+名称', 'all', 'all', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 620, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, 100, 100, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(260, 'photo', 'modPhotoSearchForm', '图片搜索表单', 'photo', 'all', 'tpl_photo_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(261, 'photo', 'modPhotoNavPath', '当前位置提示条', 'photo', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(262, 'photo', 'modPhotoProject', '图片专题（列表）', 'all', 'all', 'tpl_photoproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(263, 'photo', 'modPhotoProjList', '相关图片(同专题)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(264, 'photo', 'modPhotoClassFc', '图片逐级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(265, 'photo', 'modPhotoHot', '图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '图片人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(266, 'photo', 'modPhotoComment', '图片点评', 'photo', 'detail', 'tpl_photo_comment.htm', '-1', '1000', '#dddddd', 1, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 350, 0, 90, 1, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '图片评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(267, 'photo', 'modPhotoFabu', '图片发布表单', 'member', 'photofabu', 'tpl_photo_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(268, 'photo', 'modPhotoGl', '图片管理', 'member', 'photogl', 'tpl_photo_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(269, 'photo', 'modPhotoModify', '图片修改表单', 'member', 'photomodify', 'tpl_photo_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(270, 'photo', 'modPhotoMyCat', '图片分类管理', 'member', 'photocat', 'tpl_photo_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(271, 'photo', 'modMemberPhotoPic', '会员最新图片', 'member', 'homepage', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/memberphoto.php?mid={#mid#}', 500, 200, 0, 0, 90, 10, 10, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 7, '_self', -1, -1, 120, 120, 'fill', '我的图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(272, 'photo', 'modMemberPhotoClass', '会员图片分类', 'photo', 'memberphoto', 'tpl_memberphoto_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(273, 'photo', 'modMemberPhotoQuery', '会员图片检索', 'photo', 'memberphoto', 'tpl_photo_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 350, 0, 220, 99, 0, 20, '-1', '-1', -1, -1, '-1', -1, -1, 120, 120, 'fill', '图片检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 1),
(274, 'photo', 'modMemberPhotoSearchForm', '会员图片搜索', 'photo', 'memberphoto', 'tpl_memberphoto_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '图片搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(275, 'photo', 'modPhotoHot30', '本月图片人气榜', 'all', 'all', 'tpl_photohot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/index.php?myord=cl', 200, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月人气榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(276, 'photo', 'modPhotoAuthorList', '相关图片(同发布人)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(277, 'photo', 'modPhotoSameTagList', '相关图片(同标签)', 'photo', 'detail', 'tpl_photopic.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 300, 0, 0, 90, 10, 6, '-1', '-1', 0, 12, '_self', 0, -1, 100, 100, 'fill', '相关图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(278, 'photo', 'modPhotoPicMemo', '图片+名称+介绍', 'all', 'all', 'tpl_photopicmemo.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/', 300, 350, 0, 0, 90, 10, 3, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, 30, 80, 80, 'fill', '最新图片', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 1, 0),
(279, 'photo', 'modPhotoRollx3', '三图轮播特效', 'all', 'all', 'tpl_photorollx3.htm', 'A', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 700, 270, 0, 200, 99, 0, -1, '-1', '-1', 0, 12, '_self', 0, 25, -1, -1, '-1', '图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 0, 1),
(280, 'photo', 'modPhotoSameClass', '图片同级分类', 'photo', 'query', 'tpl_photoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(281, 'photo', 'modPhotoCarousel', '图片旋转显示特效', 'all', 'all', 'tpl_photocarousel_cyrano.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#dddddd', '#fff', '#fff', '-1', 140, 225, 0, 200, 99, 0, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片特效', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_photo_cat', '', '_photo_proj', -1, 'hidden', 'content', 'block', 0, 1),
(282, 'photo', 'modPhotoTwoClass', '图片二级分类', 'all', 'all', 'tpl_phototwoclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 300, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '图片分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_photo_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(336, 'down', 'modDownSameTagList', '相关下载(同标签)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(335, 'down', 'modDownHot30', '本月下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月下载榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(334, 'down', 'modMemberDownSearchForm', '会员下载搜索', 'down', 'memberdown', 'tpl_memberdown_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(333, 'down', 'modMemberDownQuery', '会员下载检索', 'down', 'memberdown', 'tpl_memberdown_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 300, 0, 0, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(332, 'down', 'modMemberDownClass', '会员下载分类', 'down', 'memberdown', 'tpl_memberdown_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(331, 'down', 'modMemberDownList', '会员下载列表', 'member', 'homepage', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/memberdown.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '资源下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(330, 'down', 'modDownMyCat', '下载分类管理', 'member', 'downcat', 'tpl_down_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(329, 'down', 'modDownModify', '下载修改表单', 'member', 'downmodify', 'tpl_down_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(328, 'down', 'modDownGl', '下载管理', 'member', 'downgl', 'tpl_down_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(327, 'down', 'modDownFabu', '下载发布表单', 'member', 'downfabu', 'tpl_down_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(326, 'down', 'modDownHot', '下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '下载排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(325, 'down', 'modDownProject', '下载专题（列表）', 'all', 'all', 'tpl_downproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(324, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(323, 'down', 'modDownComment', '下载点评', 'down', 'detail', 'tpl_down_comment.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 300, 0, 90, 0, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '下载评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(322, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'all', 'tpl_down_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(321, 'down', 'modDownContent', '下载详情', 'down', 'detail', 'tpl_down_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 300, 30, 0, 90, 25, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(320, 'down', 'modDownList', '下载列表', 'all', 'all', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/', 250, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0),
(319, 'down', 'modDownClassFc', '下载逐级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(318, 'down', 'modDownAuthorList', '相关下载(同发布人)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(317, 'down', 'modDownProjList', '相关下载(同专题)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(316, 'down', 'modDownTreeClass', '下载分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 1),
(315, 'down', 'modDownClass', '下载分类（列表）', 'all', 'all', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0),
(314, 'down', 'modDownQuery', '下载检索搜索', 'down', 'all', 'tpl_down_query.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 30, 200, 90, 12, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0),
(307, 'service', 'modForm', '客户服务表单', 'service', 'all', 'tpl_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客户服务', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0),
(308, 'service', 'modServiceNavPath', '当前位置提示条', 'service', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0),
(309, 'service', 'modFormGroup', '客服分组菜单', 'service', 'all', 'tpl_formgroup.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '客服分组', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(310, 'service', 'modServiceForm', '客户服务表单', 'member', 'service', 'tpl_serviceform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '有问必答', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0),
(311, 'service', 'modServiceTaskList', '客服工单查询', 'member', 'feedback', 'tpl_tasklist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客服工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(312, 'service', 'modServiceTaskDetail', '客服工单详情', 'member', 'feedbacklook', 'tpl_taskdetail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '工单详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(313, 'service', 'modServiceTaskHis', '存档工单查询', 'member', 'feedbackhis', 'tpl_taskhis.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '存档工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(339, 'page', 'modPagePicList', '标题+摘要+主题图', 'all', 'all', 'tpl_page_piclist.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 300, 0, 0, 90, 0, 10, '-1', '-1', -1, 15, '_self', -1, 50, 120, 90, 'fill', '', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_page_group', '', -1, 'hidden', 'content', 'block', 0, 0),
(340, 'tools', 'modToolsPhotoPollQuery', '图片投票翻页检索', 'all', 'all', 'tpl_tools_photopoll_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 680, 500, 30, 200, 90, 5, 20, 'id|uptime|votes', '-1', -1, 30, '-1', 0, -1, 80, 80, 'fill', '图片投票检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_tools_photopollindex', '', '', -1, 'visible', 'content', 'block', 0, 1),
(341, 'tools', 'modToolsQqCs', 'QQ客服', 'all', 'all', 'tpl_tools_qqcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 120, 300, 100, 20, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', 'QQ客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(342, 'tools', 'modToolsWyCs', '51客服', 'all', 'all', 'tpl_tools_wycs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 300, 120, 100, 0, 90, 0, -1, '-1', '-1', 0, -1, '-1', -1, -1, -1, -1, '-1', '51客服', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(343, 'tools', 'modToolsStatistics', '统计代码插件', 'all', 'all', 'tpl_tools_statistics.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 30, 30, 50, 400, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '统计代码', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'bottom', 'block', 0, 0),
(344, 'tools', 'modToolsYdCs', '移动短信留言', 'all', 'all', 'tpl_tools_ydcs.htm', '-1', '1000', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 400, 350, 100, 0, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '移动短信留言板', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', 1, 'hidden', 'content', 'block', 0, 0),
(345, 'member', 'modMemberPayList', '会员付款记录', 'member', 'paylist', 'tpl_member_paylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '付款记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(346, 'member', 'modMemberBuyList', '会员消费记录', 'member', 'buylist', 'tpl_member_buylist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '消费记录', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0),
(347, 'member', 'modMemberOnlinePay', '帐户在线充值', 'member', 'onlinepay', 'tpl_member_onlinepay.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '帐户在线充值', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplan`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplan` (
  `id` int(12) NOT NULL auto_increment,
  `planid` int(6) NOT NULL default '0',
  `coltype` varchar(30) NOT NULL,
  `pluslable` varchar(100) default '0',
  `plusname` varchar(50) NOT NULL,
  `plustype` varchar(50) default '0',
  `pluslocat` varchar(50) default '0',
  `tempname` varchar(100) NOT NULL default '0',
  `tempcolor` varchar(2) NOT NULL,
  `showborder` char(20) NOT NULL default '0',
  `bordercolor` varchar(7) NOT NULL default '#dddddd',
  `borderwidth` int(2) NOT NULL default '1',
  `borderstyle` varchar(10) NOT NULL default 'solid',
  `borderlable` varchar(150) NOT NULL,
  `borderroll` varchar(10) NOT NULL,
  `showbar` varchar(10) NOT NULL default 'none',
  `barbg` varchar(10) NOT NULL default '#cccccc',
  `barcolor` varchar(10) NOT NULL default '#ffffff',
  `backgroundcolor` varchar(7) NOT NULL default '#ffffff',
  `morelink` varchar(100) NOT NULL default 'http://',
  `width` int(5) NOT NULL default '100',
  `height` int(5) NOT NULL default '100',
  `top` int(5) NOT NULL default '0',
  `left` int(5) NOT NULL default '0',
  `zindex` int(2) NOT NULL default '99',
  `padding` int(11) NOT NULL default '0',
  `shownums` int(10) NOT NULL default '0',
  `ord` varchar(100) NOT NULL default 'id',
  `sc` varchar(10) NOT NULL default 'desc',
  `showtj` int(5) NOT NULL default '0',
  `cutword` int(20) default '0',
  `target` varchar(30) default '0',
  `catid` int(100) NOT NULL default '0',
  `cutbody` int(5) NOT NULL default '0',
  `picw` int(3) NOT NULL default '100',
  `pich` int(3) NOT NULL default '100',
  `fittype` char(10) NOT NULL default 'fill',
  `title` varchar(100) NOT NULL,
  `body` text,
  `pic` varchar(255) NOT NULL,
  `piclink` char(255) NOT NULL default '-1',
  `attach` varchar(255) NOT NULL,
  `movi` varchar(255) NOT NULL,
  `sourceurl` varchar(30) NOT NULL,
  `word` char(255) NOT NULL,
  `word1` char(255) NOT NULL,
  `word2` char(255) NOT NULL,
  `word3` char(255) NOT NULL default '',
  `word4` char(255) NOT NULL default '',
  `text` text NOT NULL,
  `text1` text NOT NULL,
  `code` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `link1` char(255) NOT NULL default '',
  `link2` char(255) NOT NULL default '',
  `link3` char(255) NOT NULL,
  `link4` char(255) NOT NULL,
  `tags` char(30) NOT NULL,
  `groupid` varchar(20) NOT NULL default '',
  `projid` varchar(20) NOT NULL default '',
  `modno` int(3) NOT NULL default '0',
  `setglobal` int(5) NOT NULL default '0',
  `overflow` varchar(20) NOT NULL default 'hidden',
  `bodyzone` varchar(10) NOT NULL default 'content',
  `display` char(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=565 ;

--
-- 转存表中的数据 `pwn_base_plusplan`
--

INSERT INTO `pwn_base_plusplan` (`id`, `planid`, `coltype`, `pluslable`, `plusname`, `plustype`, `pluslocat`, `tempname`, `tempcolor`, `showborder`, `bordercolor`, `borderwidth`, `borderstyle`, `borderlable`, `borderroll`, `showbar`, `barbg`, `barcolor`, `backgroundcolor`, `morelink`, `width`, `height`, `top`, `left`, `zindex`, `padding`, `shownums`, `ord`, `sc`, `showtj`, `cutword`, `target`, `catid`, `cutbody`, `picw`, `pich`, `fittype`, `title`, `body`, `pic`, `piclink`, `attach`, `movi`, `sourceurl`, `word`, `word1`, `word2`, `word3`, `word4`, `text`, `text1`, `code`, `link`, `link1`, `link2`, `link3`, `link4`, `tags`, `groupid`, `projid`, `modno`, `setglobal`, `overflow`, `bodyzone`, `display`) VALUES
(554, 58, 'tools', 'modShowCount', '访问统计', 'index', 'index', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 18, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(553, 58, 'menu', 'modChannelMenu', '二级导航菜单', 'index', 'index', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(552, 58, 'diy', 'modText', '多行文字', 'index', 'index', 'tpl_text.htm', '-1', 'A529', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 205, 188, 617, 0, 17, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '联系我们', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '公司地址：北京东直门横街235号\r\n订座热线：400 810 8888\r\n加盟热线：010-87654321\r\n传真号码：010-12345678\r\n联 系 人：张先生 刘小姐\r\n电子邮件：demo@demo.com', '-1', '-1', '', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(551, 58, 'search', 'modSearchForm', '全站搜索表单', 'index', 'index', 'tpl_searchform.htm', '-1', 'A529', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 205, 169, 272, 0, 12, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '站内搜索', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(549, 58, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'index', 'index', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 212, 274, 0, 0, 11, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(550, 58, 'photo', 'modPhotoPic', '图片+名称', 'index', 'index', 'tpl_photopic.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?2.html', 369, 344, 449, 531, 15, 15, 6, 'id', 'desc', 0, 12, '_self', 2, -1, 100, 100, 'fill', '菜品展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(543, 58, 'diy', 'modPic', '图片/FLASH', 'index', 'index', 'tpl_pic.htm', '-1', '1000', '#eeeeee', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 300, 220, 41, 226, 6, 3, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '图片', '-1 ', 'diy/pics/20090403/1238748817.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(544, 58, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}news/class/?2.html', 308, 172, 449, 216, 5, 12, 5, 'id', 'desc', 0, 18, '_self', 2, 50, -1, -1, 'fill', '行业资讯', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(545, 58, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}page/faq/', 308, 173, 620, 216, 13, 12, 5, 'id', 'desc', 0, 18, '_self', 73, 0, -1, -1, 'fill', '加盟问答', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 3, 0, 'hidden', 'content', 'block'),
(546, 58, 'advs', 'modLogo', '网站标志', 'index', 'index', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 74, 36, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(547, 58, 'menu', 'modBottomMenu', '底部菜单（一级）', 'index', 'index', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 31, 7, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(548, 58, 'member', 'modLoginForm', '会员登录表单', 'index', 'index', 'tpl_loginform.htm', '-1', 'K529', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 205, 176, 441, 0, 16, 15, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '加盟商登录', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(542, 58, 'diy', 'modPlusBorder', '空白边框', 'index', 'index', 'tpl_plusborder.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', 'http://', 690, 271, 0, 210, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '公司简介', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(541, 58, 'diy', 'modButtomInfo', '底部信息编辑区', 'index', 'index', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 8, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(539, 58, 'diy', 'modHeadPic', '头部自定义效果图', 'index', 'index', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 250, 0, 0, 2, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090402/1238687380.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(540, 58, 'diy', 'modWordText', '标题+介绍', 'index', 'index', 'tpl_wordtext.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', 'http://', 304, 188, 67, 557, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '插件标题', '-1 ', '-1', '-1', '-1', '-1', '-1', '北京某某餐饮连锁管理有限公司', '-1', '-1', '-1', '-1', '　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。公司荣获某某省餐饮10强企业荣誉，企业通过了ISO9001国际质量管理体系认证。面对已经取得的成功和荣誉，公司仍在不断求索。公司宗旨-让消费者满意，让加盟商赚钱！让我们一起携手走向全国、走向世界...', '-1', '-1', 'page/html/', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(538, 58, 'photo', 'modPhotoPic', '图片+名称', 'index', 'index', 'tpl_photopic.htm', '-1', 'A602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '{#RP#}photo/class/?1.html', 369, 171, 278, 531, 14, 15, 3, 'id', 'desc', 0, 12, '_self', 1, -1, 100, 80, 'fill', '店面展示', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 2, 0, 'hidden', 'content', 'block'),
(537, 58, 'news', 'modNewsList', '文章列表', 'index', 'index', 'tpl_newslist_time.htm', '-1', 'A602', '', 0, 'solid', '', 'click', 'none', '', '', '', '{#RP#}news/class/?1.html', 308, 172, 278, 216, 4, 12, 5, 'id', 'desc', 0, 18, '_self', 1, 0, -1, -1, 'fill', '公司新闻', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', '0', 1, 0, 'hidden', 'content', 'block'),
(528, 57, 'diy', 'modButtomInfo', '底部信息编辑区', 'page', 'html', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 7, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(529, 57, 'diy', 'modHeadPic', '头部自定义效果图', 'page', 'html', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 250, 0, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090402/1238687380.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(530, 57, 'menu', 'modChannelMenu', '二级导航菜单', 'page', 'html', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 5, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(531, 57, 'menu', 'modBottomMenu', '底部菜单（一级）', 'page', 'html', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 31, 7, 0, 8, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(532, 57, 'page', 'modPageContent', '网页内容详情', 'page', 'html', 'tpl_page_content.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 674, 537, 40, 218, 2, 20, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(533, 57, 'advs', 'modLogo', '网站标志', 'page', 'html', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 74, 36, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(534, 57, 'page', 'modPageTitleMenu', '网页标题(菜单)', 'page', 'html', 'tpl_page_titlemenu_1008.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 212, 302, 0, 0, 4, 0, 10, 'id', 'desc', 0, 12, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'content', 'block'),
(535, 57, 'page', 'modPageNavPath', '当前位置提示条', 'page', 'html', 'tpl_navpath.htm', '-1', 'A526', '', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#eeeeee', '-1', 683, 35, 0, 217, 6, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(536, 57, 'tools', 'modShowCount', '访问统计', 'page', 'html', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 9, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(555, 59, 'member', 'modMemberNotice', '会员公告(列表)', 'member', 'main', 'tpl_member_notice.htm', '-1', 'E602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 683, 192, 291, 217, 4, 12, 5, 'id', 'desc', 0, 25, '_self', 0, -1, -1, -1, 'fill', '通知公告', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(556, 59, 'member', 'modMemberInfo', '会员登录信息', 'member', 'main', 'tpl_memberinfo.htm', '-1', 'K602', '#dddddd', 1, 'solid', '', 'click', 'block', '#cccccc', '#fff', '#fff', '-1', 684, 246, 40, 216, 5, 12, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员登录信息', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(557, 59, 'member', 'modMemberNavPath', '当前位置提示条', 'member', 'main', 'tpl_navpath.htm', '-1', 'A526', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 684, 35, 0, 216, 8, 8, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '当前位置', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'content', 'block'),
(558, 59, 'menu', 'modMemberMenu', '会员功能菜单', 'member', 'main', 'tpl_qqmenu.htm', 'K', 'A602', '#def', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 270, 0, 5, 2, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '会员中心', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'visible', 'content', 'block'),
(559, 59, 'advs', 'modLogo', '网站标志', 'member', 'main', 'tpl_logo.htm', '-1', '1000', '#dddddd', 0, 'solid', '', 'click', 'none', '#cccccc', '#fff', '#fff', '-1', 250, 90, 74, 36, 3, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(560, 59, 'menu', 'modBottomMenu', '底部菜单（一级）', 'member', 'main', 'tpl_bottommenu_1.htm', 'E', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 343, 31, 7, 0, 9, 0, 10, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注栏目', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '3', '', 1, 0, 'hidden', 'bottom', 'block'),
(561, 59, 'diy', 'modButtomInfo', '底部信息编辑区', 'member', 'main', 'tpl_bottominfo.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 347, 33, 1, 553, 6, 5, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '脚注信息', '<span style="FONT: 12px/28px Verdana, Arial, Helvetica, sans-serif; COLOR: #ffffff">餐饮加盟公司网站 Copyright(C)2009-2010<br /></span> ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block'),
(562, 59, 'diy', 'modHeadPic', '头部自定义效果图', 'member', 'main', 'tpl_headpic.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 250, 0, 0, 1, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '', '-1 ', 'diy/pics/20090402/1238687380.jpg', 'http://', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'top', 'block'),
(563, 59, 'menu', 'modChannelMenu', '二级导航菜单', 'member', 'main', 'tpl_channelmenu_1008.htm', 'K', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 900, 70, 230, 0, 7, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '导航菜单', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '', 1, 0, 'hidden', 'top', 'block'),
(564, 59, 'tools', 'modShowCount', '访问统计', 'member', 'main', 'tpl_showcount.htm', '-1', '1000', '', 0, 'solid', '', 'click', 'none', '', '', '', '-1', 140, 23, 10, 379, 10, 0, -1, 'id', 'desc', 0, -1, '_self', 0, -1, -1, -1, 'fill', '访问统计', '-1 ', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '', 1, 0, 'hidden', 'bottom', 'block');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plusplanid`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plusplanid` (
  `id` int(6) NOT NULL auto_increment,
  `planname` varchar(50) NOT NULL default '',
  `plustype` varchar(50) NOT NULL default '',
  `pluslocat` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- 转存表中的数据 `pwn_base_plusplanid`
--

INSERT INTO `pwn_base_plusplanid` (`id`, `planname`, `plustype`, `pluslocat`) VALUES
(58, '1008首页排版', 'index', 'index'),
(57, '1008公司介绍', 'page', 'html'),
(59, '1008会员中心', 'member', 'main');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_plustemp`
--

CREATE TABLE IF NOT EXISTS `pwn_base_plustemp` (
  `id` int(12) NOT NULL auto_increment,
  `pluslable` char(30) NOT NULL default '',
  `cname` char(30) NOT NULL,
  `tempname` char(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=312 ;

--
-- 转存表中的数据 `pwn_base_plustemp`
--

INSERT INTO `pwn_base_plustemp` (`id`, `pluslable`, `cname`, `tempname`) VALUES
(201, 'modLoginForm', '横式会员登录表单，请选用专用边框(如500号边框)', 'tpl_loginform_h.htm'),
(67, 'modMemberNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(68, 'modMemberNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(87, 'modMemberNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(88, 'modMemberNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(89, 'modNewsAuthorList', '标题+时间', 'tpl_newslist_time.htm'),
(90, 'modNewsAuthorList', '类别+标题', 'tpl_newslist_cat.htm'),
(91, 'modNewsAuthorList', '标题+摘要', 'tpl_newslist_memo.htm'),
(92, 'modNewsAuthorList', '标题+作者', 'tpl_newslist_author.htm'),
(103, 'modNewsContent', '仿新闻门户正文风格', 'tpl_newscontent_portal.htm'),
(16, 'modNewsHot', '标题+图标风格2', 'tpl_newshot2.htm'),
(58, 'modNewsHot', '标题+时间', 'tpl_newshot_time.htm'),
(59, 'modNewsHot', '标题+作者', 'tpl_newshot_author.htm'),
(60, 'modNewsHot', '标题+图标风格3', 'tpl_newshot3.htm'),
(61, 'modNewsHot', '标题+图标风格4', 'tpl_newshot4.htm'),
(102, 'modNewsHot', '标题+点击数', 'tpl_newshot_cl.htm'),
(62, 'modNewsHot30', '标题+图标风格2', 'tpl_newshot2.htm'),
(63, 'modNewsHot30', '标题+时间', 'tpl_newshot_time.htm'),
(64, 'modNewsHot30', '标题+作者', 'tpl_newshot_author.htm'),
(65, 'modNewsHot30', '标题+图标风格3', 'tpl_newshot3.htm'),
(66, 'modNewsHot30', '标题+图标风格4', 'tpl_newshot4.htm'),
(101, 'modNewsHot30', '标题+点击数', 'tpl_newshot_cl.htm'),
(2, 'modNewsList', '标题+时间', 'tpl_newslist_time.htm'),
(3, 'modNewsList', '类别+标题', 'tpl_newslist_cat.htm'),
(57, 'modNewsList', '标题+参数列1,2,3', 'tpl_newslist_prop3.htm'),
(56, 'modNewsList', '标题+参数列1,2', 'tpl_newslist_prop2.htm'),
(55, 'modNewsList', '标题+参数列1', 'tpl_newslist_prop1.htm'),
(42, 'modNewsList', '标题+摘要', 'tpl_newslist_memo.htm'),
(41, 'modNewsList', '标题+作者', 'tpl_newslist_author.htm'),
(198, 'modNewsPicMemo', '图片+标题+两个参数列', 'tpl_newspicprop_2.htm'),
(84, 'modNewsPicMemo', '图片+标题+三个参数列', 'tpl_newspicprop.htm'),
(93, 'modNewsProjList', '标题+时间', 'tpl_newslist_time.htm'),
(94, 'modNewsProjList', '类别+标题', 'tpl_newslist_cat.htm'),
(95, 'modNewsProjList', '标题+摘要', 'tpl_newslist_memo.htm'),
(96, 'modNewsProjList', '标题+作者', 'tpl_newslist_author.htm'),
(10, 'modNewsQuery', '文章翻页检索,标题+摘要', 'tpl_newsquery_memo.htm'),
(86, 'modNewsQuery', '文章翻页检索,标题+时间,带表头', 'tpl_newsquery_cap.htm'),
(97, 'modNewsSameTagList', '标题+时间', 'tpl_newslist_time.htm'),
(98, 'modNewsSameTagList', '类别+标题', 'tpl_newslist_cat.htm'),
(99, 'modNewsSameTagList', '标题+摘要', 'tpl_newslist_memo.htm'),
(100, 'modNewsSameTagList', '标题+作者', 'tpl_newslist_author.htm'),
(277, 'modText', '白色文字', 'tpl_text_2.htm'),
(48, 'modPicWords', '图片+四行标题', 'tpl_picwordx4.htm'),
(46, 'modPicWords', '图片+两行标题', 'tpl_picwordx2.htm'),
(49, 'modPicWords', '图片+三行标题', 'tpl_picwordx3.htm'),
(18, 'modText', '从右到左竖写', 'tpl_text_1.htm'),
(20, 'modTraFlash', '移动竖条', 'tpl_flash2.htm'),
(21, 'modTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(22, 'modTraFlash', '米字星光', 'tpl_flash4.htm'),
(45, 'modWordTT', '标题+4组链接', 'tpl_wordttx4.htm'),
(44, 'modWordTT', '标题+3组链接', 'tpl_wordttx3.htm'),
(43, 'modWordTT', '标题+2组链接', 'tpl_wordttx2.htm'),
(202, 'modNewsSearchForm', '竖式搜索表单', 'tpl_news_searchform_h.htm'),
(276, 'modVMenu', '纯色背景按钮导航菜单', 'tpl_vmenu_1.htm'),
(205, 'modCommentSearchForm', '竖式搜索表单', 'tpl_comment_searchform_h.htm'),
(206, 'modSearchForm', '竖式搜索表单', 'tpl_searchform_h.htm'),
(207, 'modButtomInfo', '灰色渐变背景', 'tpl_bottominfo_1.htm'),
(208, 'modMemberTags', '头像+三组积分+推荐标签3', 'tpl_membertags_1.htm'),
(209, 'modMemberTags', '头像+推荐标签3', 'tpl_membertags_2.htm'),
(210, 'modMemberRank1', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(211, 'modMemberRank2', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(212, 'modMemberRank3', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(213, 'modMemberRank4', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(214, 'modMemberRank5', '小头像+昵称+积分', 'tpl_memberrank_head.htm'),
(215, 'modHeadTraFlash', '移动竖条', 'tpl_flash2.htm'),
(216, 'modHeadTraFlash', '光球光芒时隐时现', 'tpl_flash3.htm'),
(217, 'modHeadTraFlash', '米字星光', 'tpl_flash4.htm'),
(218, 'modHeadBgSource', '头部效果图片+圆角遮罩(5px)', 'tpl_headbg_circle.htm'),
(219, 'modHeadBgSource', '头部效果图片+圆角遮罩(9px)', 'tpl_headbg_circle9.htm'),
(220, 'modTopMenu', '白色文字', 'tpl_topmenu_white.htm'),
(221, 'modBgSound', '显示播放器', 'tpl_bgsound_show.htm'),
(222, 'modFormGroup', '列表式', 'tpl_formgroup_list.htm'),
(223, 'modNewsList', '标题+时间(微软雅黑,14px)', 'tpl_newslist_time_big.htm'),
(310, 'modDownQuery', '下载检索(标题 分类 发布人)', 'tpl_down_query_auth_cat.htm'),
(309, 'modDownQuery', '下载检索,标题 时间 简介', 'tpl_down_query_memo.htm'),
(261, 'modDropDownMenu', '圆角标签二级下拉菜单模板', 'tpl_dropdownmenu_6.htm'),
(302, 'modPageTitleMenu', '双色按钮菜单', 'tpl_page_titlemenu_1008.htm'),
(264, 'modMainMenu', '水晶按钮一级导航菜单模板', 'tpl_mainmenu_5.htm'),
(265, 'modMainMenu', '透明背景纯文字菜单模板', 'tpl_mainmenu_4.htm'),
(266, 'modBottomMenu', '底部菜单之纯文字菜单模板', 'tpl_bottommenu_1.htm'),
(267, 'modNewsList', '双列文章标题模板', 'tpl_newslist_mul.htm'),
(268, 'modPageTitleMenu', '圆角按钮型网页标题菜单', 'tpl_page_titlemenu_b1.htm'),
(271, 'modCommentContent', '留言问答风格', 'tpl_comment_content_pw.htm'),
(272, 'modMemberMenu', '圆角按钮仿QQ菜单模板', 'tpl_qqmenu_1.htm'),
(273, 'modNewsList', '标题 时间（反白）', 'tpl_newslist_time_white.htm'),
(275, 'modWordText', '标题和介绍白色文字模板', 'tpl_wordtext_1_cr.htm'),
(304, 'modVMenu', '双色竖式导航菜单(不可选配色)', 'tpl_vmenu_1008.htm'),
(279, 'modPicWordText', '图片标题文字环绕', 'tpl_picwordtext_2.htm'),
(281, 'modPhotoHot', '排行榜样式二', 'tpl_photohot2.htm'),
(282, 'modPhotoContent', '浅蓝淡雅风格', 'tpl_photo_content_blue.htm'),
(283, 'modPhotoHot', '标题+时间', 'tpl_photohot_time.htm'),
(284, 'modPhotoHot', '标题+作者', 'tpl_photohot_author.htm'),
(285, 'modPhotoHot', '标题+点击数', 'tpl_photohot_cl.htm'),
(286, 'modPhotoHot30', '排行榜样式二', 'tpl_photohot2.htm'),
(287, 'modPhotoHot30', '标题+时间', 'tpl_photohot_time.htm'),
(288, 'modPhotoHot30', '标题+作者', 'tpl_photohot_author.htm'),
(289, 'modPhotoHot30', '标题+点击数', 'tpl_photohot_cl.htm'),
(290, 'modPhotoPicMemo', '图片+名称+三个参数列', 'tpl_photopicprop.htm'),
(291, 'modPhotoPicMemo', '图片+名称+两个参数列', 'tpl_photopicprop_2.htm'),
(292, 'modPhotoSearchForm', '竖式搜索表单', 'tpl_photo_searchform_h.htm'),
(293, 'modPhotoTwoClass', '图片二级分类紧凑型风格', 'tpl_phototwoclass_1.htm'),
(308, 'modDownSearchForm', '竖式搜索表单', 'tpl_down_searchform_h.htm'),
(307, 'modDownHot', '排行榜样式二', 'tpl_downhot2.htm'),
(306, 'modCommentQuery', '留言问答风格', 'tpl_comment_query_pw.htm'),
(301, 'modChannelMenu', '方形按钮二级菜单浅色背景', 'tpl_channelmenu_1008.htm'),
(305, 'modHeadTraFlash', '阳光', 'tpl_flash58.htm'),
(311, 'modPagePicList', '图片 标题 摘要,每行两个', 'tpl_page_piclist_2.htm');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_base_version`
--

CREATE TABLE IF NOT EXISTS `pwn_base_version` (
  `version` varchar(30) NOT NULL default '',
  `release` int(8) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_base_version`
--

INSERT INTO `pwn_base_version` (`version`, `release`) VALUES
('1.0.0', 20090215),
('1.1.0', 20090320),
('1.1.1', 20090326),
('1.1.2', 20090327),
('1.1.3', 20090328),
('1.1.4', 20090401),
('1.1.5', 20090402),
('1.1.6', 20090412),
('1.1.8', 20090419),
('1.1.9', 20090420),
('1.1.10', 20090421),
('1.2.0', 20090428),
('1.2.1', 20090504),
('1.2.2', 20090508),
('1.2.3', 20090514),
('1.2.4', 20090612),
('1.2.5', 20090615),
('1.2.6', 20090624),
('1.2.7', 20090728),
('1.2.8', 20090801),
('1.2.9', 20090802),
('1.2.11', 20090804),
('1.2.12', 20090820),
('1.3.0', 20090828),
('1.3.1', 20090829),
('1.3.2', 20090830),
('1.3.3', 20090831),
('1.3.5', 20090902),
('1.3.6', 20090903),
('1.3.7', 20090904),
('1.3.15', 20090912),
('1.3.16', 20091009),
('1.3.17', 20091010),
('1.3.18', 20091112),
('1.3.19', 20100623),
('1.4.0', 20100830),
('1.4.1', 20100920),
('1.4.2', 20100921),
('1.4.3', 20100925),
('1.5.0', 20111209),
('', 20120407),
('', 20120407),
('', 20120408),
('', 20120408),
('', 20120409),
('', 20120409),
('', 20120410),
('', 20120410),
('', 20120411),
('', 20120411);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment`
--

CREATE TABLE IF NOT EXISTS `pwn_comment` (
  `id` int(20) NOT NULL auto_increment,
  `pid` int(20) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `rid` int(20) NOT NULL default '0',
  `contype` varchar(30) NOT NULL default 'comment',
  `pname` varchar(100) NOT NULL default '',
  `title` varchar(200) NOT NULL default '',
  `body` text,
  `pj1` int(1) NOT NULL default '3',
  `pj2` int(1) NOT NULL default '3',
  `pj3` int(1) NOT NULL default '3',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `ip` varchar(16) NOT NULL default '',
  `iffb` int(1) NOT NULL default '0',
  `tuijian` int(1) NOT NULL default '0',
  `cl` int(10) NOT NULL default '0',
  `lastname` varchar(50) NOT NULL default '',
  `lastmemberid` int(12) NOT NULL default '0',
  `backcount` int(12) NOT NULL default '0',
  `picsrc` varchar(255) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `memberid` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=519 ;

--
-- 转存表中的数据 `pwn_comment`
--

INSERT INTO `pwn_comment` (`id`, `pid`, `catid`, `rid`, `contype`, `pname`, `title`, `body`, `pj1`, `pj2`, `pj3`, `dtime`, `uptime`, `ip`, `iffb`, `tuijian`, `cl`, `lastname`, `lastmemberid`, `backcount`, `picsrc`, `xuhao`, `memberid`) VALUES
(516, 0, 109, 0, 'comment', '游客', '请问贵公司加盟费多少,开店共需要多少投资', '请问贵公司加盟费多少,开店共需要多少投资', 3, 3, 3, 1239553126, 1239553609, '127.0.0.1', 1, 0, 28, '游客', -1, 1, '', 1, -1),
(518, 516, 109, 0, 'comment', '游客', '回复：请问贵公司加盟费多少,开店共需要多少投资', 'test', 3, 3, 3, 1239553609, 1239553609, '127.0.0.1', 1, 0, 0, '游客', -1, 0, '', 1, -1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(6) NOT NULL default '0',
  `cat` varchar(50) NOT NULL default '',
  `catpath` varchar(255) NOT NULL,
  `coltype` varchar(30) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `ifbbs` int(1) NOT NULL default '1',
  `ifshow` int(1) NOT NULL default '1',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `pwn_comment_cat`
--

INSERT INTO `pwn_comment_cat` (`catid`, `pid`, `cat`, `catpath`, `coltype`, `xuhao`, `moveable`, `ifbbs`, `ifshow`) VALUES
(1, 0, '文章评论', '0001:', 'news', 3, 0, 0, 0),
(109, 0, '加盟咨询', '0109:', 'comment', 1, 1, 1, 1),
(3, 0, '下载点评', '1003:', 'down', 6, 0, 0, 0),
(2, 0, '图片点评', '0002:', 'photo', 5, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_comment_config`
--

CREATE TABLE IF NOT EXISTS `pwn_comment_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_comment_config`
--

INSERT INTO `pwn_comment_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '匿名点评是否审核', 'YN', '30', 'noMembercheck', '0', '匿名发表、回复点评时是否审核'),
(7, '点评图片上传尺寸限制(Byte)', 'input', '30', 'EditPicLimit', '204800', '发表点评时，编辑器内上传图片大小的限制'),
(6, '未登录时是否允许上传图片', 'YN', '30', 'NoMemberUpPic', '0', '未登录会员时,是否允许在编辑器内上传图片(备注:会员登录后发表点评是否可以上传图片，在会员权限中设置)'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '网友留言', '本模块对应的频道名称，如“网友点评”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(8, '点评关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂,妈的,操你,日你', '点评禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_down_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_down_cat`
--

INSERT INTO `pwn_down_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '加盟资料', 1, '0001:', 0, 0, 0),
(2, 0, '内部资料', 2, '0002:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_con`
--

CREATE TABLE IF NOT EXISTS `pwn_down_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'down',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  `centincome` int(6) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_down_con`
--

INSERT INTO `pwn_down_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`, `centincome`) VALUES
(1, 1, '0001:', 0, 'down', '特许加盟协议范本', '特许加盟协议范本', 1239628786, 0, 4, 0, 1, 0, '0', 'gif', '', 1239628786, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', 0, '', 0, 0, '', 1, 0, 0),
(2, 2, '0002:', 0, 'down', '加盟商内部资料一（限加盟商下载）', '加盟商内部资料一（限加盟商下载）', 1239628815, 0, 9, 0, 1, 0, '0', 'gif', '', 1239628815, '管理员', '', '0', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', 1, '', 0, 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_config`
--

CREATE TABLE IF NOT EXISTS `pwn_down_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_down_config`
--

INSERT INTO `pwn_down_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '资源下载', '本模块对应的频道名称，如“资源下载”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '文件上传大小限制(Byte)', 'input', '30', 'FileSizeLimit', '1024000', '会员上传文件时,单个文件大小的限制;但最高设置不能超过2M'),
(7, '下载介绍编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布下载资源时,在编辑器内上传图片,单个图片的尺寸限制'),
(8, '下载交易积分类型', 'centlist', '30', 'DefaultCentId', '3', '会员资源下载交易所采用的积分类型'),
(9, '下载交易积分佣金', 'centyj', '30', 'CentYj', '0.2', '资源下载积分交易中网站方收取的佣金比例，如果计算后不足1个积分单位，以1个积分单位计算');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_downlog`
--

CREATE TABLE IF NOT EXISTS `pwn_down_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_down_downlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_down_pages` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_down_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_pcat`
--

CREATE TABLE IF NOT EXISTS `pwn_down_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_down_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_proj`
--

CREATE TABLE IF NOT EXISTS `pwn_down_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_down_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_down_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_down_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_down_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member`
--

CREATE TABLE IF NOT EXISTS `pwn_member` (
  `memberid` int(12) NOT NULL auto_increment,
  `membertypeid` int(3) NOT NULL default '0',
  `membergroupid` int(3) NOT NULL default '0',
  `user` varchar(30) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `company` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL default '',
  `birthday` int(8) NOT NULL default '0',
  `zoneid` int(10) NOT NULL default '0',
  `catid` int(10) NOT NULL default '0',
  `addr` varchar(255) NOT NULL default '',
  `tel` varchar(255) NOT NULL default '',
  `mov` varchar(255) NOT NULL default '',
  `postcode` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default 'http://',
  `passtype` varchar(255) NOT NULL default '',
  `passcode` varchar(255) NOT NULL default '',
  `qq` varchar(100) NOT NULL default '',
  `msn` varchar(100) NOT NULL default '',
  `maillist` int(1) NOT NULL default '0',
  `bz` text,
  `pname` varchar(30) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `memberface` varchar(100) NOT NULL,
  `nowface` varchar(50) NOT NULL,
  `checked` int(1) NOT NULL default '0',
  `rz` int(1) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `regtime` int(11) NOT NULL default '0',
  `exptime` int(11) NOT NULL default '0',
  `account` decimal(12,2) NOT NULL default '0.00',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `buytotal` decimal(12,2) NOT NULL default '0.00',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `ip` varchar(26) NOT NULL default '',
  `logincount` int(20) NOT NULL default '0',
  `logintime` int(11) NOT NULL default '0',
  `loginip` varchar(50) NOT NULL default '',
  `salesname` varchar(30) NOT NULL,
  PRIMARY KEY  (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- 转存表中的数据 `pwn_member`
--

INSERT INTO `pwn_member` (`memberid`, `membertypeid`, `membergroupid`, `user`, `password`, `name`, `company`, `sex`, `birthday`, `zoneid`, `catid`, `addr`, `tel`, `mov`, `postcode`, `email`, `url`, `passtype`, `passcode`, `qq`, `msn`, `maillist`, `bz`, `pname`, `signature`, `memberface`, `nowface`, `checked`, `rz`, `tags`, `regtime`, `exptime`, `account`, `paytotal`, `buytotal`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `ip`, `logincount`, `logintime`, `loginip`, `salesname`) VALUES
(150, 26, 1, 'aaaaa', '594f803b380a41396ed63dca39503542', '小张', '', '1', 19750101, 1, 0, '', '', '', '', 'aaaaa@www.cn', 'http://', '身份证', '', '', '', 0, '', '测试会员', 'sssss', '', '1', 1, 0, '', 1232813523, 0, 0.00, 0.00, 0.00, 230, 0, 0, 3, 0, '127.0.0.1', 23, 1239634448, '127.0.0.1', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_buylist`
--

CREATE TABLE IF NOT EXISTS `pwn_member_buylist` (
  `id` int(12) NOT NULL auto_increment,
  `buyfrom` varchar(50) NOT NULL default '',
  `memberid` int(12) NOT NULL default '0',
  `orderid` int(12) NOT NULL default '0',
  `payid` int(12) NOT NULL default '0',
  `paytype` varchar(50) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `paytotal` decimal(12,2) NOT NULL default '0.00',
  `daytime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `OrderNo` varchar(30) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_buylist`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_member_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(4) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_cat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centlog`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centlog` (
  `id` int(8) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `event` int(5) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  `memo` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `pwn_member_centlog`
--

INSERT INTO `pwn_member_centlog` (`id`, `memberid`, `event`, `dtime`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`, `memo`) VALUES
(1, 153, 111, 1237648810, 10, 0, 0, 0, 0, ''),
(2, 153, 131, 1237648965, 5, 0, 0, 0, 0, ''),
(3, 153, 181, 1237650958, 10, 0, 0, 0, 0, ''),
(4, 150, 114, 1237711955, 1, 0, 0, 0, 0, ''),
(5, 150, 114, 1237781183, 1, 0, 0, 0, 0, ''),
(6, 150, 114, 1238228910, 1, 0, 0, 0, 0, ''),
(7, 150, 121, 1238230484, 10, 0, 0, 0, 0, ''),
(8, 150, 114, 1238260989, 1, 0, 0, 0, 0, ''),
(9, 154, 111, 1238290627, 10, 0, 0, 0, 0, ''),
(10, 150, 114, 1238424185, 1, 0, 0, 0, 0, ''),
(11, 150, 114, 1238426835, 1, 0, 0, 0, 0, ''),
(12, 150, 114, 1238427138, 1, 0, 0, 0, 0, ''),
(13, 150, 114, 1238896776, 1, 0, 0, 0, 0, ''),
(14, 150, 114, 1238897444, 1, 0, 0, 0, 0, ''),
(15, 150, 131, 1238898529, 5, 0, 0, 0, 0, ''),
(16, 150, 114, 1239595764, 1, 0, 0, 0, 0, ''),
(17, 150, 114, 1239622948, 1, 0, 0, 0, 0, ''),
(18, 150, 114, 1239624701, 1, 0, 0, 0, 0, ''),
(19, 150, 114, 1239633646, 1, 0, 0, 0, 0, ''),
(20, 150, 114, 1239634448, 1, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centrule`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centrule` (
  `id` int(8) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `name` char(100) NOT NULL default '',
  `event` int(5) NOT NULL default '0',
  `cent1` int(10) NOT NULL default '0',
  `cent2` int(10) NOT NULL default '0',
  `cent3` int(10) NOT NULL default '0',
  `cent4` int(10) NOT NULL default '0',
  `cent5` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `pwn_member_centrule`
--

INSERT INTO `pwn_member_centrule` (`id`, `coltype`, `name`, `event`, `cent1`, `cent2`, `cent3`, `cent4`, `cent5`) VALUES
(1, 'member', '新会员注册', 111, 10, 0, 0, 0, 0),
(6, 'member', '加好友', 112, 1, 0, 0, 0, 0),
(7, 'member', '发站内短信', 113, 1, 0, 0, 0, 0),
(21, 'member', '会员登录', 114, 1, 0, 0, 0, 0),
(2, 'news', '发布文章', 121, 10, 0, 0, 0, 0),
(9, 'news', '文章被支持', 122, 0, 1, 0, 0, 0),
(10, 'news', '文章被反对', 123, 0, -1, 0, 0, 0),
(22, 'news', '文章被版主推荐', 124, 20, 0, 0, 0, 0),
(23, 'news', '文章被版主删除并扣分', 125, -20, 0, 0, 0, 0),
(5, 'comment', '发表点评', 131, 5, 0, 0, 0, 0),
(8, 'comment', '回复点评', 132, 1, 0, 0, 0, 0),
(28, 'comment', '点评被版主推荐', 134, 20, 0, 0, 0, 0),
(29, 'comment', '点评被版主删除并扣分', 135, -20, 0, 0, 0, 0),
(49, 'down', '下载被版主删除并扣分', 165, -20, 0, 0, 0, 0),
(35, 'photo', '发布图片', 151, 10, 0, 0, 0, 0),
(36, 'photo', '图片被支持', 152, 0, 1, 0, 0, 0),
(37, 'photo', '图片被反对', 153, 0, -1, 0, 0, 0),
(38, 'photo', '图片被版主推荐', 154, 20, 0, 0, 0, 0),
(39, 'photo', '图片被版主删除并扣分', 155, -20, 0, 0, 0, 0),
(48, 'down', '下载资源被版主推荐', 164, 20, 0, 0, 0, 0),
(47, 'down', '下载资源被反对', 163, 0, -1, 0, 0, 0),
(46, 'down', '下载资源被支持', 162, 0, 1, 0, 0, 0),
(45, 'down', '发布资源下载', 161, 10, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_centset`
--

CREATE TABLE IF NOT EXISTS `pwn_member_centset` (
  `id` int(8) NOT NULL auto_increment,
  `centname1` char(50) NOT NULL,
  `centname2` char(50) NOT NULL,
  `centname3` char(50) NOT NULL,
  `centname4` char(50) NOT NULL,
  `centname5` char(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_member_centset`
--

INSERT INTO `pwn_member_centset` (`id`, `centname1`, `centname2`, `centname3`, `centname4`, `centname5`) VALUES
(1, '经验', '人气', '悬赏', '金币', '消费');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_config`
--

CREATE TABLE IF NOT EXISTS `pwn_member_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_member_config`
--

INSERT INTO `pwn_member_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '会员中心', '本模块对应的频道名称；用于显示在当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(3, '会员网名昵称是否允许重复', 'YN', '1', 'DblPname', '1', '会员注册和修改资料时校验网名昵称是否允许重复'),
(4, 'UCenter 会员接口是否启用', 'YN', '1', 'UC_OPEN', '0', 'UCenter会员接口包括会员注册、会员登录接口；启用本接口前请先上传UCenter会员接口程序'),
(5, 'UCenter 应用 ID', 'input', '30', 'UC_APPID', '2', '该值为PHPWEB在 UCenter 的应用 ID，请填写你在UCenter将PHPWEB添加应用后实际获得的应用ID'),
(6, 'UCenter 通信密钥', 'input', '30', 'UC_KEY', 'PWUC2009', '通信密钥用于在 UCenter 和 PHPWEB 之间传输信息的加密，可包含任何字母及数字，请在 UCenter 与 PHPWEB 设置完全相同的通讯密钥，以确保两套系统能够正常通信'),
(7, 'UCenter 访问地址', 'input', '30', 'UC_API', 'http://discuz.phpweb.net/uc_server', '您的 UCenter 访问地址，不正确的设置可能导致网站功能异常，请小心修改。格式: http://www.sitename.com/uc_server (最后不要加''/'')'),
(7, 'UCenter IP 地址', 'input', '30', 'UC_IP', '', '如果您的服务器无法通过域名访问 UCenter，可以输入 UCenter 服务器的 IP 地址'),
(8, 'UCenter 数据库服务器', 'input', '30', 'UC_DBHOST', 'localhost', '可以是本地也可以是远程数据库服务器，如果 MySQL 端口不是默认的 3306，请填写如下形式：127.0.0.1:6033'),
(9, 'UCenter 数据库用户名', 'input', '30', 'UC_DBUSER', 'root', ''),
(10, 'UCenter 数据库密码', 'input', '30', 'UC_DBPW', '123456', ''),
(12, 'UCenter 数据库名', 'input', '30', 'UC_DBNAME', 'dbdiscuz', ''),
(13, 'UCenter 数据表前缀', 'input', '30', 'UC_DBTABLEPRE', 'cdb_uc_', '请填入您的UCenter数据表前缀，注意格式正确；如果是直接安装UCENTER，表前缀是一个“_”，如果是和discuz!一起安装的，则是带两个“_”的完整前缀'),
(14, 'UCenter 数据库编码', 'input', '30', 'UC_DBCHARSET', 'utf8', 'UCenter的数据库编码'),
(15, 'UCenter 的字符集', 'input', '30', 'UC_CHARSET', 'utf-8', ''),
(17, 'UCenter 用户自动激活时对应的会员类型', 'MTYPE', '30', 'UC_MEMBERTYPEID', '26', '用户登录时，在UCenter通过验证的用户（来自其他应用的用户），如果本系统没有该会员，自动增加会员时对应的会员类型');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_defaultrights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_defaultrights` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL default '',
  `secureset` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=541 ;

--
-- 转存表中的数据 `pwn_member_defaultrights`
--

INSERT INTO `pwn_member_defaultrights` (`id`, `membertypeid`, `secureid`, `securetype`, `secureset`) VALUES
(540, 26, 114, 'func', '0'),
(539, 26, 113, 'func', '0'),
(538, 26, 112, 'func', '0'),
(537, 26, 111, 'func', '0'),
(506, 35, 101, 'con', '1'),
(507, 35, 111, 'func', '0'),
(508, 35, 112, 'func', '0'),
(509, 35, 113, 'func', '0'),
(510, 35, 114, 'func', '0'),
(511, 35, 121, 'func', '0'),
(512, 35, 122, 'func', '0'),
(513, 35, 123, 'func', '0'),
(514, 35, 124, 'func', '0'),
(515, 35, 125, 'func', '0'),
(516, 35, 126, 'class', ''),
(517, 35, 127, 'func', '0'),
(518, 35, 129, 'banzhu', ''),
(519, 35, 131, 'func', '0'),
(520, 35, 132, 'func', '0'),
(521, 35, 133, 'func', '0'),
(522, 35, 134, 'func', '0'),
(523, 35, 139, 'banzhu', ''),
(524, 35, 169, 'banzhu', ''),
(525, 35, 167, 'func', '0'),
(526, 35, 151, 'func', '0'),
(527, 35, 152, 'func', '0'),
(528, 35, 153, 'func', '0'),
(529, 35, 156, 'class', ''),
(530, 35, 157, 'func', '0'),
(531, 35, 159, 'banzhu', ''),
(532, 35, 166, 'class', ''),
(533, 35, 164, 'func', '0'),
(534, 35, 163, 'func', '0'),
(535, 35, 162, 'func', '0'),
(536, 35, 161, 'func', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_fav`
--

CREATE TABLE IF NOT EXISTS `pwn_member_fav` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `title` varchar(200) NOT NULL default '',
  `url` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `pwn_member_fav`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_friends`
--

CREATE TABLE IF NOT EXISTS `pwn_member_friends` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `fid` int(12) NOT NULL default '0',
  `fgroup` char(30) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_friends`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_group`
--

CREATE TABLE IF NOT EXISTS `pwn_member_group` (
  `id` int(6) NOT NULL auto_increment,
  `membergroup` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_member_group`
--

INSERT INTO `pwn_member_group` (`id`, `membergroup`) VALUES
(1, '个人'),
(2, '企业');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_msn`
--

CREATE TABLE IF NOT EXISTS `pwn_member_msn` (
  `id` int(12) NOT NULL auto_increment,
  `tomemberid` int(12) NOT NULL default '0',
  `frommemberid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `iflook` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_member_msn`
--

INSERT INTO `pwn_member_msn` (`id`, `tomemberid`, `frommemberid`, `body`, `dtime`, `iflook`) VALUES
(2, 154, 0, 'sssssss,您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: sssssss\r\n密码: sssss\r\n\r\n网址:http://', 1238290626, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_notice`
--

CREATE TABLE IF NOT EXISTS `pwn_member_notice` (
  `id` int(12) NOT NULL auto_increment,
  `membertypeid` int(20) default NULL,
  `title` varchar(255) default NULL,
  `body` text,
  `dtime` int(11) default NULL,
  `xuhao` int(5) default NULL,
  `cl` int(20) default NULL,
  `ifnew` int(1) default NULL,
  `ifred` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `pwn_member_notice`
--

INSERT INTO `pwn_member_notice` (`id`, `membertypeid`, `title`, `body`, `dtime`, `xuhao`, `cl`, `ifnew`, `ifred`) VALUES
(1, 0, '这是测试的一条会员公告', '这是测试的一条会员公告', 1220596305, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_nums`
--

CREATE TABLE IF NOT EXISTS `pwn_member_nums` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(50) default NULL,
  `secureid` int(50) default NULL,
  `nums` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_nums`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_onlinepay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_onlinepay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `paytype` char(30) NOT NULL default '',
  `paytotal` decimal(10,2) NOT NULL default '0.00',
  `ifpay` int(1) NOT NULL default '0',
  `addtime` int(11) NOT NULL default '0',
  `backtime` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_onlinepay`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_pay`
--

CREATE TABLE IF NOT EXISTS `pwn_member_pay` (
  `id` int(11) NOT NULL auto_increment,
  `memberid` int(20) NOT NULL default '0',
  `payid` int(11) NOT NULL default '0',
  `payhb` varchar(30) NOT NULL default '',
  `payhl` decimal(12,4) NOT NULL default '0.0000',
  `oof` decimal(12,2) NOT NULL default '0.00',
  `method` varchar(200) NOT NULL default '',
  `type` varchar(50) NOT NULL default '',
  `addtime` int(11) NOT NULL default '0',
  `fpnum` varchar(100) NOT NULL default '',
  `memo` varchar(255) NOT NULL default '',
  `ip` varchar(20) NOT NULL default '',
  `logname` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_pay`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_paycenter`
--

CREATE TABLE IF NOT EXISTS `pwn_member_paycenter` (
  `id` int(11) NOT NULL auto_increment,
  `pcenter` varchar(100) NOT NULL default '',
  `pcentertype` int(2) NOT NULL default '0',
  `pcenteruser` varchar(100) NOT NULL default '',
  `pcenterkey` text,
  `key1` text,
  `key2` text,
  `hbtype` varchar(255) NOT NULL default '',
  `postfile` varchar(100) NOT NULL default '',
  `recfile` varchar(100) NOT NULL default '',
  `ifuse` int(1) NOT NULL default '0',
  `ifback` int(1) NOT NULL default '0',
  `intro` text,
  `xuhao` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_member_paycenter`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_regstep`
--

CREATE TABLE IF NOT EXISTS `pwn_member_regstep` (
  `id` int(8) NOT NULL auto_increment,
  `membertypeid` int(5) NOT NULL default '0',
  `regstep` varchar(30) NOT NULL,
  `stepname` varchar(50) NOT NULL,
  `xuhao` int(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- 转存表中的数据 `pwn_member_regstep`
--

INSERT INTO `pwn_member_regstep` (`id`, `membertypeid`, `regstep`, `stepname`, `xuhao`) VALUES
(1, 0, 'person', '头像签名设置', 1),
(2, 0, 'detail', '会员资料设置', 2),
(3, 0, 'contact', '填写联系信息', 3),
(82, 35, 'contact', '填写联系信息', 3),
(81, 35, 'detail', '会员资料设置', 2),
(77, 26, 'person', '头像签名设置', 1),
(80, 35, 'person', '头像签名设置', 1),
(79, 26, 'contact', '填写联系信息', 3),
(78, 26, 'detail', '会员资料设置', 2);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_rights`
--

CREATE TABLE IF NOT EXISTS `pwn_member_rights` (
  `id` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `secureid` int(12) NOT NULL default '0',
  `securetype` char(100) NOT NULL,
  `secureset` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4653 ;

--
-- 转存表中的数据 `pwn_member_rights`
--

INSERT INTO `pwn_member_rights` (`id`, `memberid`, `secureid`, `securetype`, `secureset`) VALUES
(4583, 150, 164, 'func', '0'),
(4582, 150, 163, 'func', '0'),
(4581, 150, 162, 'func', '0'),
(4580, 150, 161, 'func', '0'),
(4579, 150, 157, 'func', '0'),
(4578, 150, 156, 'class', ':5:'),
(4577, 150, 153, 'func', '0'),
(4576, 150, 152, 'func', '0'),
(4575, 150, 151, 'func', '0'),
(4574, 150, 134, 'func', '0'),
(4573, 150, 133, 'func', '0'),
(4572, 150, 132, 'func', '0'),
(4571, 150, 131, 'func', '0'),
(4570, 150, 129, 'banzhu', ''),
(4569, 150, 127, 'func', '0'),
(4568, 150, 126, 'class', ':1:2:'),
(4567, 150, 125, 'func', '0'),
(4566, 150, 124, 'func', '0'),
(4565, 150, 123, 'func', '0'),
(4564, 150, 122, 'func', '0'),
(4563, 150, 121, 'func', '0'),
(4562, 150, 114, 'func', '0'),
(4561, 150, 113, 'func', '0'),
(4560, 150, 112, 'func', '0'),
(4559, 150, 111, 'func', '0'),
(4558, 150, 101, 'con', '1'),
(4588, 150, 169, 'banzhu', ''),
(4587, 150, 139, 'banzhu', ''),
(4586, 150, 159, 'banzhu', ''),
(4585, 150, 167, 'func', '0'),
(4584, 150, 166, 'class', ':1:');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_secure`
--

CREATE TABLE IF NOT EXISTS `pwn_member_secure` (
  `id` int(12) NOT NULL auto_increment,
  `coltype` varchar(30) NOT NULL,
  `securename` char(100) NOT NULL default '',
  `securetype` char(30) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=190 ;

--
-- 转存表中的数据 `pwn_member_secure`
--

INSERT INTO `pwn_member_secure` (`id`, `coltype`, `securename`, `securetype`, `xuhao`) VALUES
(101, 'base', '内容阅读权限级别', 'con', 1),
(111, 'member', '会员登录帐号设置', 'func', 2),
(112, 'member', '会员头像签名设置', 'func', 3),
(113, 'member', '会员个人资料修改', 'func', 4),
(114, 'member', '会员联系信息修改', 'func', 5),
(121, 'news', '文章发布权限', 'func', 6),
(122, 'news', '文章修改权限', 'func', 7),
(123, 'news', '文章发布/修改免审核权限', 'func', 8),
(124, 'news', '文章图片上传权限', 'func', 5),
(125, 'news', '文章附件上传权限', 'func', 8),
(126, 'news', '文章公共分类投稿授权', 'class', 12),
(127, 'news', '文章自定义分类权限', 'func', 9),
(129, 'news', '文章版主权限(推荐/删除)', 'banzhu', 9),
(131, 'comment', '点评发表权限', 'func', 10),
(132, 'comment', '点评回复权限', 'func', 11),
(133, 'comment', '点评免审核权限', 'func', 12),
(134, 'comment', '点评图片上传权限', 'func', 4),
(139, 'comment', '点评版主权限(推荐/删除)', 'banzhu', 9),
(169, 'down', '下载版主权限(推荐/删除)', 'banzhu', 9),
(167, 'down', '下载自定义分类权限', 'func', 9),
(151, 'photo', '图片发布权限', 'func', 6),
(152, 'photo', '图片修改权限', 'func', 7),
(153, 'photo', '图片发布/修改免审核权限', 'func', 8),
(156, 'photo', '图片公共分类投稿授权', 'class', 11),
(157, 'photo', '图片自定义分类权限', 'func', 9),
(159, 'photo', '图片版主权限(推荐/删除)', 'banzhu', 9),
(166, 'down', '下载公共分类投稿授权', 'class', 11),
(164, 'down', '编辑器图片上传权限', 'func', 5),
(163, 'down', '下载发布/修改免审核权限', 'func', 3),
(162, 'down', '下载修改权限', 'func', 2),
(161, 'down', '下载发布权限', 'func', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_type`
--

CREATE TABLE IF NOT EXISTS `pwn_member_type` (
  `membertypeid` int(6) NOT NULL auto_increment,
  `membertype` varchar(100) default NULL,
  `membergroupid` int(3) NOT NULL default '0',
  `ifcanreg` int(1) default NULL,
  `ifchecked` int(1) default NULL,
  `regxy` text,
  `regmail` text,
  `expday` int(8) default NULL,
  `startcent` int(20) default NULL,
  `endcent` int(20) default NULL,
  `menugroupid` int(5) NOT NULL default '4',
  PRIMARY KEY  (`membertypeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `pwn_member_type`
--

INSERT INTO `pwn_member_type` (`membertypeid`, `membertype`, `membergroupid`, `ifcanreg`, `ifchecked`, `regxy`, `regmail`, `expday`, `startcent`, `endcent`, `menugroupid`) VALUES
(26, '普通会员', 1, 1, 1, '会员注册协议\r\n\r\n1.\r\n2.\r\n3.\r\n4.\r\n5.\r\n', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n会员名: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4),
(35, '加盟商会员', 2, 0, 1, '', '{#user#},您好!\r\n\r\n感谢您在本站注册!\r\n\r\n登录账号: {#user#}\r\n密码: {#password#}\r\n\r\n网址:http://', 0, 0, 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_member_zone`
--

CREATE TABLE IF NOT EXISTS `pwn_member_zone` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(50) default NULL,
  `xuhao` int(4) default NULL,
  `catpath` char(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `pwn_member_zone`
--

INSERT INTO `pwn_member_zone` (`catid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(1, 0, '北京', 1, '0001:'),
(2, 0, '上海', 2, '0002:'),
(3, 0, '天津', 3, '0003:'),
(4, 0, '重庆', 4, '0004:'),
(5, 0, '浙江', 5, '0005:'),
(6, 0, '江苏', 6, '0006:'),
(7, 0, '广东', 7, '0007:'),
(8, 5, '杭州', 1, '0005:0008:'),
(9, 5, '嘉兴', 2, '0005:0009:'),
(10, 6, '南京', 1, '0006:0010:'),
(11, 6, '苏州', 2, '0006:0011:'),
(12, 7, '广州', 1, '0007:0012:'),
(13, 7, '深圳', 2, '0007:0013:'),
(21, 5, '宁波', 3, '0005:0021:'),
(26, 5, '舟山', 8, '0005:0026:'),
(25, 5, '金华', 7, '0005:0025:'),
(23, 5, '温州', 5, '0005:0023:'),
(22, 5, '湖州', 4, '0005:0022:'),
(24, 5, '台州', 6, '0005:0024:');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu`
--

CREATE TABLE IF NOT EXISTS `pwn_menu` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `pid` int(6) NOT NULL default '0',
  `menu` varchar(50) NOT NULL default '',
  `linktype` int(1) NOT NULL default '1',
  `coltype` varchar(30) NOT NULL default '',
  `folder` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL default '',
  `ifshow` int(1) NOT NULL default '0',
  `xuhao` int(4) NOT NULL default '0',
  `target` varchar(10) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=337 ;

--
-- 转存表中的数据 `pwn_menu`
--

INSERT INTO `pwn_menu` (`id`, `groupid`, `pid`, `menu`, `linktype`, `coltype`, `folder`, `url`, `ifshow`, `xuhao`, `target`) VALUES
(3, 1, 0, '新闻动态', 0, 'news', 'news/class/', 'http://ssss.com', 1, 3, '_self'),
(80, 1, 0, '公司简介', 1, '', 'page/html/', 'http://', 1, 2, '_self'),
(83, 1, 0, '网站首页', 0, 'index', '', 'http://', 1, 1, '_self'),
(215, 4, 0, '会员资料设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(216, 4, 215, '登录账号设置', 1, '', 'member/member_account.php', 'http://', 1, 1, '_self'),
(152, 3, 0, '关于我们', 1, '', 'page/html/?1.html', 'http://', 1, 1, '_self'),
(294, 4, 293, '在线订货', 1, '', 'service/service.php?groupid=18', 'http://', 1, 1, '_self'),
(153, 3, 0, '联系方法', 1, '', 'page/html/?2.html', 'http://', 1, 2, '_self'),
(155, 3, 0, '友情链接', 1, '', 'advs/link/', 'http://', 1, 4, '_self'),
(166, 2, 0, '会员中心', 0, 'member', '', 'http://', 1, 27, '_self'),
(165, 2, 0, '会员注册', 1, '', 'member/reg.php', 'http://', 1, 26, '_self'),
(218, 4, 215, '个人资料修改', 1, '', 'member/member_detail.php', 'http://', 1, 3, '_self'),
(217, 4, 215, '头像签名设置', 1, '', 'member/member_person.php', 'http://', 1, 2, '_self'),
(298, 2, 0, '在线加盟', 1, '', 'service/service.php', 'http://', 1, 45, '_self'),
(276, 1, 0, '加盟留言', 1, '', 'comment/class/', 'http://', 1, 9, '_self'),
(219, 4, 215, '联系信息修改', 1, '', 'member/member_contact.php', 'http://', 1, 4, '_self'),
(293, 4, 0, '加盟商服务区', 1, '', 'service/service.php', 'http://', 1, 2, '_self'),
(237, 4, 235, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 4, '_self'),
(295, 4, 293, '工单查询', 1, '', 'service/feedback.php', 'http://', 1, 5, '_self'),
(235, 4, 0, '会员个人专区', 1, '', 'member/member_fav.php', 'http://', 1, 3, '_self'),
(236, 4, 235, '我的收藏', 1, '', 'member/member_fav.php', 'http://', 1, 1, '_self'),
(297, 4, 235, '我的留言', 1, '', 'member/member_comment.php', 'http://', 1, 5, '_self'),
(243, 4, 215, '安全退出登录', 1, '', 'logout.php', 'http://', 1, 5, '_self'),
(251, 2, 0, '站内短信', 1, '', 'member/member_msn.php', 'http://', 1, 42, '_self'),
(253, 3, 0, '加盟商专区', 1, '', 'member/', 'http://', 1, 3, '_self'),
(305, 57, 0, '市场分析', 1, '', 'page/league/?14.html', 'http://', 1, 47, '_self'),
(256, 1, 0, '特许加盟', 1, '', 'page/league/', 'http://', 1, 2, '_self'),
(278, 1, 0, '下载专区', 1, '', 'down/class/', 'http://', 1, 7, '_self'),
(279, 1, 0, '形象展示', 1, '', 'photo/class/?1.html', 'http://', 1, 5, '_self'),
(280, 1, 0, '加盟商专区', 0, 'member', '', 'http://', 1, 6, '_self'),
(281, 1, 0, '我要加盟', 1, '', 'service/', 'http://', 1, 8, '_self'),
(282, 1, 80, '企业文化', 1, '', 'page/html/?11.html', 'http://', 1, 1, '_self'),
(283, 1, 80, '发展历程', 1, '', 'page/html/?12.html', 'http://', 1, 2, '_self'),
(284, 1, 3, '公司新闻', 1, '', 'news/class/?1.html', 'http://', 1, 1, '_self'),
(285, 1, 3, '行业动态', 1, '', 'news/class/?2.html', 'http://', 1, 2, '_self'),
(299, 1, 80, '组织机构', 1, '', 'page/html/?4.html', 'http://', 1, 3, '_self'),
(287, 1, 80, '企业荣誉', 1, '', 'page/html/?10.html', 'http://', 1, 4, '_self'),
(288, 1, 80, '人才招聘', 1, '', 'page/html/?9.html', 'http://', 1, 5, '_self'),
(289, 1, 80, '联系我们', 1, '', 'page/html/?2.html', 'http://', 1, 6, '_self'),
(304, 57, 0, '品牌优势', 1, '', 'page/league/?13.html', 'http://', 1, 46, '_self'),
(303, 1, 256, '品牌优势', 1, '', 'page/league/?13.html', 'http://', 1, 1, '_self'),
(296, 4, 293, '历史工单', 1, '', 'service/feedbackhis.php', 'http://', 1, 6, '_self'),
(333, 1, 280, '意见建议', 1, '', 'service/service.php?groupid=20', 'http://', 1, 3, '_self'),
(301, 1, 3, '品牌文化', 1, '', 'news/class/?74.html', 'http://', 1, 4, '_self'),
(306, 57, 0, '投资分析', 1, '', 'page/league/?15.html', 'http://', 1, 48, '_self'),
(307, 57, 0, '加盟流程', 1, '', 'page/league/?16.html', 'http://', 1, 50, '_self'),
(308, 57, 0, '加盟问答', 1, '', 'page/faq/', 'http://', 1, 52, '_self'),
(309, 57, 0, '我要加盟', 1, '', 'service/', 'http://', 1, 53, '_self'),
(310, 57, 0, '加盟留言', 1, '', 'comment/class/', 'http://', 1, 55, '_self'),
(311, 57, 0, '成功案例', 1, '', 'page/case/', 'http://', 1, 49, '_self'),
(331, 1, 280, '在线订货', 1, '', 'service/service.php?groupid=18', 'http://', 1, 1, '_self'),
(312, 1, 256, '市场分析', 1, '', 'page/league/?14.html', 'http://', 1, 2, '_self'),
(313, 1, 256, '投资分析', 1, '', 'page/league/?15.html', 'http://', 1, 3, '_self'),
(314, 1, 256, '成功案例', 1, '', 'page/case/', 'http://', 1, 4, '_self'),
(315, 1, 256, '加盟流程', 1, '', 'page/league/?16.html', 'http://', 1, 5, '_self'),
(316, 1, 256, '加盟问答', 1, '', 'page/faq/', 'http://', 1, 6, '_self'),
(317, 1, 256, '在线加盟', 1, '', 'service/', 'http://', 1, 7, '_self'),
(318, 1, 256, '加盟留言', 1, '', 'comment/class/', 'http://', 1, 8, '_self'),
(332, 1, 280, '管理咨询', 1, '', 'service/service.php?groupid=19', 'http://', 1, 2, '_self'),
(329, 1, 279, '店面展示', 1, '', 'photo/class/?1.html', 'http://', 1, 1, '_self'),
(330, 1, 279, '菜品展示', 1, '', 'photo/class/?2.html', 'http://', 1, 2, '_self'),
(328, 4, 293, '意见建议', 1, '', 'service/service.php?groupid=20', 'http://', 1, 3, '_self'),
(327, 4, 293, '管理咨询', 1, '', 'service/service.php?groupid=19', 'http://', 1, 2, '_self'),
(334, 1, 280, '资料修改', 1, '', 'member/member_contact.php', 'http://', 1, 0, '_self'),
(336, 1, 280, '我的留言', 1, '', 'member/member_comment.php', 'http://', 1, 5, '_self');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_menu_group`
--

CREATE TABLE IF NOT EXISTS `pwn_menu_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `pwn_menu_group`
--

INSERT INTO `pwn_menu_group` (`id`, `groupname`, `xuhao`, `moveable`) VALUES
(1, '频道导航菜单', 1, 0),
(2, '顶部导航菜单', 2, 0),
(3, '底部导航菜单', 3, 0),
(4, '会员功能菜单', 4, 0),
(57, '特许加盟导航', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  `nums` int(20) NOT NULL default '0',
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `pwn_news_cat`
--

INSERT INTO `pwn_news_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '公司新闻', 1, '0001:', 36, 0, 0),
(2, 0, '行业动态', 2, '0002:', 5, 0, 0),
(73, 0, '加盟问答', 3, '0073:', 0, 0, 0),
(74, 0, '品牌文化', 8, '0074:', 0, 0, 0),
(75, 0, '成功案例', 5, '0075:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_con`
--

CREATE TABLE IF NOT EXISTS `pwn_news_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'news',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `fileurl` varchar(100) NOT NULL,
  `tourl` varchar(255) NOT NULL,
  `downcount` int(10) NOT NULL default '0',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  `downcentid` int(1) NOT NULL default '1',
  `downcent` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=334 ;

--
-- 转存表中的数据 `pwn_news_con`
--

INSERT INTO `pwn_news_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `fileurl`, `tourl`, `downcount`, `tags`, `zhichi`, `fandui`, `tplog`, `downcentid`, `downcent`) VALUES
(317, 73, '0073:', 0, 'news', '如何进行加盟店选址', '如何进行加盟店选址', 1239548621, 0, 2, 0, 1, 0, '0', 'gif', '', 1239548621, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(318, 73, '0073:', 0, 'news', '如果加盟，总部提供什么支持？', '如果加盟，总部提供什么支持？', 1239548645, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548645, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(304, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 7, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(305, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(306, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(307, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(308, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 1, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(309, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 1, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(310, 75, '0075:', 0, 'news', '杭州中国红连锁店一年开出三家店', '<p><img alt="" src="[ROOTPATH]news/pics/20090412/200904121239548044576.jpg" border=0 /></p>\r\n<p>杭州中国红连锁店一年开出三家店</p>\r\n<p>&nbsp;</p>', 1239548063, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548063, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(311, 73, '0073:', 0, 'news', '开一家中国红火锅分店必须具备哪些条件 ', '<p>开一家中国红火锅分店必须具备哪些条件 </p>\r\n<p>开一家中国红火锅分店必须具备哪些条件 </p>\r\n<p>开一家中国红火锅分店必须具备哪些条件 </p>', 1239548464, 0, 6, 0, 1, 0, '0', 'gif', '', 1239548464, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(312, 73, '0073:', 0, 'news', '开办中国红火锅分店需要多少资金 ', '开办中国红火锅分店需要多少资金 ', 1239548494, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548494, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(313, 73, '0073:', 0, 'news', '没有从事过餐饮业的加盟商可以加盟吗 ', '<p>没有从事过餐饮业的加盟商可以加盟吗 </p>\r\n<p>没有从事过餐饮业的加盟商可以加盟吗 </p>', 1239548521, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548521, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(314, 73, '0073:', 0, 'news', '加盟费需多少？合同期未到而终止合同退还加盟费吗', '加盟费需多少？合同期未到而终止合同退还加盟费吗', 1239548542, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548542, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(315, 73, '0073:', 0, 'news', '收取加盟费和保证金后，还需要什么费用吗 ', '收取加盟费和保证金后，还需要什么费用吗 ', 1239548561, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548561, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(316, 73, '0073:', 0, 'news', '加盟店至少需要多少面积 ', '加盟店至少需要多少面积 ', 1239548601, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548601, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(319, 73, '0073:', 0, 'news', '中国红火锅有哪些特色味型？能否适应各加盟地的口味', '中国红火锅有哪些特色味型？能否适应各加盟地的口味', 1239548679, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548679, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(320, 73, '0073:', 0, 'news', '加盟中国红火锅店面规格要统一，装修如何解决', '加盟中国红火锅店面规格要统一，装修如何解决', 1239548734, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548734, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(321, 73, '0073:', 0, 'news', '全国各地的菜品与价格是否统一 ', '全国各地的菜品与价格是否统一 ', 1239548751, 0, 0, 0, 1, 0, '0', 'gif', '', 1239548751, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(322, 73, '0073:', 0, 'news', '总部人员协助加盟店工作产生的费用由加盟商承担吗 ', '总部人员协助加盟店工作产生的费用由加盟商承担吗 ', 1239548871, 0, 23, 0, 1, 0, '0', 'gif', '', 1239548871, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(323, 1, '0001:', 0, 'news', '中国红火锅特许加盟荣获得省优秀品牌称号', '中国红火锅特许加盟荣获得省优秀品牌称号', 1239626680, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626680, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(324, 1, '0001:', 0, 'news', '中国红火锅特许加盟荣获得省优秀品牌称号', '中国红火锅特许加盟荣获得省优秀品牌称号', 1239626687, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626687, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(325, 1, '0001:', 0, 'news', '庆祝中国红火锅全国加盟店超过100家', '庆祝中国红火锅全国加盟店超过100家', 1239626713, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626713, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(326, 1, '0001:', 0, 'news', '庆祝中国红火锅全国加盟店超过120家', '庆祝中国红火锅全国加盟店超过120家', 1239626727, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626727, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(327, 1, '0001:', 0, 'news', '总部巡回指导组，帮助加盟店完善管理', '总部巡回指导组，帮助加盟店完善管理', 1239626764, 0, 2, 0, 1, 0, '0', 'gif', '', 1239626764, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(328, 2, '0002:', 0, 'news', '全国火锅行业迎来特许加盟高潮', '全国火锅行业迎来特许加盟高潮', 1239626839, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626839, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(329, 2, '0002:', 0, 'news', '全国火锅行业再次迎来特许加盟高潮', '全国火锅行业再次迎来特许加盟高潮', 1239626855, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626855, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(330, 2, '0002:', 0, 'news', '全国卫生大检查，本公司加盟店全部合格', '全国卫生大检查，本公司加盟店全部合格', 1239626887, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626887, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(331, 2, '0002:', 0, 'news', '看行业十年巨变 特许加盟红火开展', '看行业十年巨变 特许加盟红火开展', 1239626982, 0, 0, 0, 1, 0, '0', 'gif', '', 1239626982, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(332, 2, '0002:', 0, 'news', '行业动态的测试文章，行业动态的测试文章', '行业动态的测试文章，行业动态的测试文章', 1239627008, 0, 0, 0, 1, 0, '0', 'gif', '', 1239627008, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0),
(333, 74, '0074:', 0, 'news', '中国红火锅，品牌文化测试新闻', '中国红火锅，品牌文化测试新闻', 1239627134, 0, 0, 0, 1, 0, '0', 'gif', '', 1239627134, '管理员', '', '0', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'http://', '', 0, '', 0, 0, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_config`
--

CREATE TABLE IF NOT EXISTS `pwn_news_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_news_config`
--

INSERT INTO `pwn_news_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(5, '文章主题图片上传尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员发布文章上传主题图片时,单个图片尺寸的限制'),
(6, '文章编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布文章时,在编辑器内上传图片,单个图片的尺寸限制'),
(1, '模块频道名称', 'input', '30', 'ChannelName', '新闻动态', '本模块对应的频道名称，如“新闻中心”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称'),
(7, '附件上传大小限制', 'input', '30', 'FileSizeLimit', '1024000', '会员发布文章上传附件时,允许上传附件的文件大小;但最高设置不能超过2M '),
(8, '会员发布文章关键词过滤', 'textarea', '30', 'KeywordDeny', '法轮功,麻醉,兴奋剂', '会员发布文章时禁止的词语，多个以逗号分割');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_downlog`
--

CREATE TABLE IF NOT EXISTS `pwn_news_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_downlog`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pages` (
  `id` int(12) NOT NULL auto_increment,
  `newsid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `pwn_news_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_pcat`
--

CREATE TABLE IF NOT EXISTS `pwn_news_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pwn_news_pcat`
--

INSERT INTO `pwn_news_pcat` (`catid`, `memberid`, `pid`, `cat`, `xuhao`, `catpath`) VALUES
(2, 150, 0, '新增分类', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_proj`
--

CREATE TABLE IF NOT EXISTS `pwn_news_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `pwn_news_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_news_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_news_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_news_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_page`
--

CREATE TABLE IF NOT EXISTS `pwn_page` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(6) NOT NULL default '1',
  `title` varchar(200) NOT NULL default '',
  `body` text NOT NULL,
  `xuhao` int(4) NOT NULL default '0',
  `src` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `memo` text NOT NULL,
  `pagefolder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `pwn_page`
--

INSERT INTO `pwn_page` (`id`, `groupid`, `title`, `body`, `xuhao`, `src`, `url`, `memo`, `pagefolder`) VALUES
(1, 1, '公司简介', '<p><img style="FLOAT: left" alt="" src="[ROOTPATH]page/pics/20090412/200904121239543807492.jpg" border=0 />&nbsp;　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。公司荣获某某省餐饮10强企业荣誉，企业通过了ISO9001国际质量管理体系认证。面对已经取得的成功和荣誉，公司仍在不断求索。公司宗旨-让消费者满意，让加盟商赚钱！让我们一起携手走向全国、走向世界。 </p>\r\n<p>　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。　　某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。<br /></p>', 1, '', '', '', ''),
(2, 1, '联系我们', '联系我们', 10, '', '', '', ''),
(4, 1, '组织机构', '组织构架 ', 3, '', '', '', ''),
(12, 1, '发展历程', '发展历程 ', 3, '', '', '', ''),
(11, 1, '企业文化', '企业文化 ', 2, '', '', '', ''),
(13, 2, '品牌优势', '<p>&nbsp;&nbsp;&nbsp; 某某餐饮连锁管理有限公司是集经营火锅餐饮、火锅连锁、原料生产为一体的专业化公司，拥有在册员工壹千多名、5家直营店、200多家连锁店和多个原料生产基地，是年销售额超过亿元的餐饮企业。公司荣获某某省餐饮10强企业荣誉，企业通过了ISO9001国际质量管理体系认证。面对已经取得的成功和荣誉，公司仍在不断求索。公司宗旨-让消费者满意，让加盟商赚钱！中国红具有以下品牌优势： </p>\r\n<p>一、连锁体系庞大覆盖面广<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 连锁体系庞大覆盖面广连锁体系庞大覆盖面广连锁体系庞大覆盖面广连锁体系庞大覆盖面广连锁体系庞大覆盖面广<br /><br />二、强大的物资配送体系<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 强大的物资配送体系强大的物资配送体系强大的物资配送体系强大的物资配送体系强大的物资配送体系强大的物资配送体系强大的物资配送体系强大的物资配送体系<br /><br />三、经验丰富的管理咨询团队<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 经验丰富的管理咨询团队经验丰富的管理咨询团队经验丰富的管理咨询团队经验丰富的管理咨询团队经验丰富的管理咨询团队经验丰富的管理咨询团队</p>\r\n<p>&nbsp;</p>', 1, '', '', '', ''),
(14, 2, '市场分析', '市场分析', 2, '', '', '', ''),
(9, 1, '人才招聘', '人才招聘 ', 7, '', '', '', ''),
(10, 1, '企业荣誉', '企业荣誉 ', 5, '', '', '', ''),
(15, 2, '投资分析', '投资分析', 3, '', '', '', ''),
(16, 2, '加盟流程', '加盟流程', 4, '', '', '', ''),
(19, 3, '加盟问答', '<p>&nbsp;</p>', 1, '', '', '', ''),
(20, 4, '成功案例', '', 1, '', '', '', ''),
(22, 1, '总裁致词', '总裁致词 ', 6, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_page_group`
--

CREATE TABLE IF NOT EXISTS `pwn_page_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `folder` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 PACK_KEYS=0 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_page_group`
--

INSERT INTO `pwn_page_group` (`id`, `groupname`, `xuhao`, `moveable`, `folder`) VALUES
(1, '企业介绍', 1, 0, 'html'),
(2, '特许加盟', 1, 1, 'league'),
(3, '加盟问答', 1, 1, 'faq'),
(4, '成功案例', 1, 1, 'case');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_cat`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_photo_cat`
--

INSERT INTO `pwn_photo_cat` (`catid`, `pid`, `cat`, `xuhao`, `catpath`, `nums`, `tj`, `ifchannel`) VALUES
(1, 0, '店面展示', 1, '0001:', 0, 0, 0),
(2, 0, '菜品展示', 2, '0002:', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_con`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_con` (
  `id` int(12) NOT NULL auto_increment,
  `catid` int(12) NOT NULL default '0',
  `catpath` varchar(255) NOT NULL default '',
  `pcatid` int(12) NOT NULL default '0',
  `contype` varchar(20) NOT NULL default 'photo',
  `title` varchar(255) NOT NULL default '',
  `body` text,
  `dtime` int(11) default '0',
  `xuhao` int(5) default '0',
  `cl` int(20) default NULL,
  `tj` int(1) default NULL,
  `iffb` int(1) default '0',
  `ifbold` int(1) default '0',
  `ifred` varchar(20) default NULL,
  `type` varchar(30) NOT NULL default '',
  `src` varchar(150) NOT NULL default '',
  `uptime` int(11) default '0',
  `author` varchar(100) default NULL,
  `source` varchar(100) default NULL,
  `memberid` varchar(100) default NULL,
  `proj` varchar(255) NOT NULL default '',
  `secure` int(11) NOT NULL default '0',
  `memo` text NOT NULL,
  `prop1` char(255) NOT NULL default '',
  `prop2` char(255) NOT NULL default '',
  `prop3` char(255) NOT NULL default '',
  `prop4` char(255) NOT NULL default '',
  `prop5` char(255) NOT NULL default '',
  `prop6` char(255) NOT NULL default '',
  `prop7` char(255) NOT NULL default '',
  `prop8` char(255) NOT NULL default '',
  `prop9` char(255) NOT NULL default '',
  `prop10` char(255) NOT NULL default '',
  `prop11` char(255) NOT NULL default '',
  `prop12` char(255) NOT NULL default '',
  `prop13` char(255) NOT NULL default '',
  `prop14` char(255) NOT NULL default '',
  `prop15` char(255) NOT NULL default '',
  `prop16` char(255) NOT NULL default '',
  `prop17` char(255) NOT NULL default '',
  `prop18` char(255) NOT NULL default '',
  `prop19` char(255) NOT NULL default '',
  `prop20` char(255) NOT NULL default '',
  `tags` varchar(255) NOT NULL,
  `zhichi` int(5) NOT NULL default '0',
  `fandui` int(5) NOT NULL default '0',
  `tplog` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `pwn_photo_con`
--

INSERT INTO `pwn_photo_con` (`id`, `catid`, `catpath`, `pcatid`, `contype`, `title`, `body`, `dtime`, `xuhao`, `cl`, `tj`, `iffb`, `ifbold`, `ifred`, `type`, `src`, `uptime`, `author`, `source`, `memberid`, `proj`, `secure`, `memo`, `prop1`, `prop2`, `prop3`, `prop4`, `prop5`, `prop6`, `prop7`, `prop8`, `prop9`, `prop10`, `prop11`, `prop12`, `prop13`, `prop14`, `prop15`, `prop16`, `prop17`, `prop18`, `prop19`, `prop20`, `tags`, `zhichi`, `fandui`, `tplog`) VALUES
(12, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 24, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(11, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 2, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(10, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 3, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(9, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 12, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(8, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 3, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(7, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 4, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(13, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(14, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(15, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(16, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 0, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(17, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 5, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(18, 2, '0002:', 0, 'photo', '菜品展示', '', 1239593157, 0, 3, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239593157.jpg', 1239593157, '管理员', '', '0', '', 0, '菜品展示菜品展示菜品展示', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(19, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(20, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(21, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 1, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, ''),
(22, 1, '0001:', 0, 'photo', '店面图片', '', 1239592871, 0, 2, 0, 1, 0, '0', 'gif', 'photo/pics/20090413/1239592871.jpg', 1239592890, '管理员', '', '0', '', 0, '店面', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_config`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pwn_photo_config`
--

INSERT INTO `pwn_photo_config` (`xuhao`, `vname`, `settype`, `colwidth`, `variable`, `value`, `intro`) VALUES
(1, '模块频道名称', 'input', '30', 'ChannelName', '公司图库', '本模块对应的频道名称，如“图片展示”；用于显示在网页标题、当前位置提示条等处'),
(2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '0', '是否在当前位置提示条显示模块频道名称'),
(5, '会员上传图片尺寸限制(Byte)', 'input', '30', 'PicSizeLimit', '256000', '会员上传图片时,单个图片尺寸的限制');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_pages`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_pages` (
  `id` int(12) NOT NULL auto_increment,
  `photoid` int(12) NOT NULL default '0',
  `src` varchar(150) NOT NULL default '',
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_photo_pages`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_pcat`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_photo_pcat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_proj`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_photo_proj`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_photo_prop`
--

CREATE TABLE IF NOT EXISTS `pwn_photo_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_photo_prop`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_service`
--

CREATE TABLE IF NOT EXISTS `pwn_service` (
  `id` int(3) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `field_caption` varchar(200) NOT NULL default '',
  `field_type` int(1) NOT NULL default '0',
  `field_size` int(5) NOT NULL default '0',
  `field_name` varchar(200) NOT NULL default '',
  `field_value` varchar(255) NOT NULL default '',
  `field_null` int(1) NOT NULL default '0',
  `value_repeat` int(1) NOT NULL default '0',
  `field_intro` varchar(255) NOT NULL default '',
  `use_field` int(1) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '0',
  `xuhao` int(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1611 ;

--
-- 转存表中的数据 `pwn_service`
--

INSERT INTO `pwn_service` (`id`, `groupid`, `field_caption`, `field_type`, `field_size`, `field_name`, `field_value`, `field_null`, `value_repeat`, `field_intro`, `use_field`, `moveable`, `xuhao`) VALUES
(1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2),
(3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3),
(5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5),
(6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1145, 1, '您的学历', 5, 399, 'custom2', '本科以上;大专;高中;其他', 1, 1, '', 1, 0, 13),
(1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1143, 1, '行业经历', 5, 399, 'products_num', '从事过餐饮行业;未从事过餐饮行业', 1, 1, '', 1, 0, 16),
(1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1142, 1, '商业经验', 2, 399, 'products_name', '', 1, 1, '', 1, 0, 17),
(1141, 1, '现在职业', 1, 399, 'products_id', '', 1, 1, '', 1, 0, 11),
(1140, 1, '手机号码', 1, 399, 'fax', '', 1, 1, '', 1, 0, 7),
(1139, 1, '邮政编码', 1, 399, 'zip', '', 1, 1, '', 1, 0, 10),
(1138, 1, '性别称谓', 5, 100, 'sex', '先生;女士', 1, 1, '', 1, 0, 2),
(1136, 1, '工作单位', 1, 399, 'company', '', 1, 1, '', 1, 0, 12),
(1137, 1, '省份城市', 1, 399, 'company_address', '省  市', 1, 1, '', 1, 0, 4),
(1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 1, 1, '', 1, 0, 9),
(1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 25),
(1133, 1, '电子邮件', 1, 399, 'email', '', 1, 1, '', 1, 0, 8),
(1132, 1, '通信地址', 1, 399, 'address', '', 1, 1, '', 1, 0, 5),
(1131, 1, '固定电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 6),
(1130, 1, '您的年龄', 1, 50, 'name', '', 1, 1, '', 1, 0, 3),
(1129, 1, '个人简介', 2, 399, 'content', '', 1, 1, '', 1, 0, 15),
(1128, 1, '您的姓名', 1, 100, 'title', '', 1, 1, '', 1, 1, 1),
(1568, 19, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5),
(1567, 19, '联 系 人', 1, 399, 'name', '', 1, 1, '', 1, 0, 4),
(1566, 19, '咨询内容', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1565, 19, '咨询问题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1564, 18, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1563, 18, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1562, 18, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1561, 18, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1560, 18, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1559, 18, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1558, 18, '需货时间', 1, 399, 'custom1', '', 1, 1, '', 1, 0, 3),
(1557, 18, '订货数量', 1, 399, 'products_num', '', 1, 1, '', 1, 0, 2),
(1556, 18, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1555, 18, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1554, 18, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1553, 18, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1552, 18, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 12),
(1551, 18, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1550, 18, '加 盟 商', 1, 399, 'company', '', 1, 1, '', 1, 0, 4),
(1549, 18, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1548, 18, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1547, 18, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 17),
(1546, 18, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 16),
(1545, 18, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 6),
(1544, 18, '联 系 人', 1, 399, 'name', '', 1, 1, '', 1, 0, 5),
(1543, 18, '其他要求', 2, 399, 'content', '', 0, 1, '', 1, 0, 7),
(1542, 18, '产品名称', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1569, 19, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(1570, 19, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1571, 19, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1572, 19, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1573, 19, '加 盟 商', 1, 399, 'company', '', 1, 1, '', 1, 0, 3),
(1574, 19, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1575, 19, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 12),
(1576, 19, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1577, 19, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1578, 19, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1579, 19, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1580, 19, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1581, 19, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1582, 19, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1583, 19, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1584, 19, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1585, 19, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1586, 19, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1587, 19, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23),
(1588, 20, '留言主题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1),
(1589, 20, '意见建议', 2, 399, 'content', '', 1, 1, '', 1, 0, 2),
(1590, 20, '您的姓名', 1, 399, 'name', '', 0, 1, '', 1, 0, 3),
(1591, 20, '联系电话', 1, 399, 'tel', '', 0, 1, '', 1, 0, 5),
(1592, 20, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6),
(1593, 20, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7),
(1594, 20, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8),
(1595, 20, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9),
(1596, 20, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10),
(1597, 20, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11),
(1598, 20, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4),
(1599, 20, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12),
(1600, 20, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13),
(1601, 20, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14),
(1602, 20, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15),
(1603, 20, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16),
(1604, 20, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17),
(1605, 20, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18),
(1606, 20, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19),
(1607, 20, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20),
(1608, 20, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21),
(1609, 20, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22),
(1610, 20, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_service_chang`
--

CREATE TABLE IF NOT EXISTS `pwn_service_chang` (
  `id` int(3) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `msg` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pwn_service_chang`
--

INSERT INTO `pwn_service_chang` (`id`, `title`, `msg`) VALUES
(1, '问题处理中', '您提交的问题正在处理中,请稍等...'),
(2, '问题需要协同处理', '您提交的问题需要协同处理,可能需要较长的时间,请耐心等待,我们争取在工作日内处理完成...'),
(3, '请电话联系', '您提出的问题,需要电话联系,请直接拨打技术热线:010-10101010。\r\n感谢您的配合!\r\n\r\n某某网站\r\nhttp://'),
(4, '处理完成', '您提交的问题已经处理完成，请验收！\r\n如果您觉得还有问题，可继续回复');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_service_chat`
--

CREATE TABLE IF NOT EXISTS `pwn_service_chat` (
  `id` int(12) NOT NULL auto_increment,
  `rid` int(12) NOT NULL default '0',
  `content` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `fromname` varchar(30) NOT NULL,
  `fromtype` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_service_chat`
--

INSERT INTO `pwn_service_chat` (`id`, `rid`, `content`, `dtime`, `memberid`, `adminid`, `fromname`, `fromtype`) VALUES
(1, 170, 'dffd', 1238898136, 150, 0, '测试会员', 'member');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_service_feedback`
--

CREATE TABLE IF NOT EXISTS `pwn_service_feedback` (
  `id` int(12) NOT NULL auto_increment,
  `groupid` int(5) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `sex` varchar(10) NOT NULL default '',
  `tel` varchar(100) NOT NULL default '',
  `address` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `qq` varchar(20) NOT NULL default '',
  `company` varchar(255) NOT NULL default '',
  `company_address` varchar(255) NOT NULL default '',
  `zip` varchar(6) NOT NULL default '',
  `fax` varchar(20) NOT NULL default '',
  `products_id` varchar(100) NOT NULL default '',
  `products_name` varchar(200) NOT NULL default '',
  `products_num` varchar(9) NOT NULL default '',
  `custom1` text NOT NULL,
  `custom2` text NOT NULL,
  `custom3` text NOT NULL,
  `custom4` text NOT NULL,
  `custom5` text NOT NULL,
  `custom6` text NOT NULL,
  `custom7` text NOT NULL,
  `ip` varchar(20) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `stat` int(2) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `coadminid` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=172 ;

--
-- 转存表中的数据 `pwn_service_feedback`
--

INSERT INTO `pwn_service_feedback` (`id`, `groupid`, `title`, `content`, `name`, `sex`, `tel`, `address`, `email`, `url`, `qq`, `company`, `company_address`, `zip`, `fax`, `products_id`, `products_name`, `products_num`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `ip`, `time`, `uptime`, `memberid`, `stat`, `adminid`, `coadminid`) VALUES
(170, 1, 'ew', 'weeeeee', 'eeeeeee', '', '222222', '', '', '', '', 'we', '', '', '', '', '', '', '', '', '', '', '', '', '', '127.0.0.1', 1238898090, 1238898136, 150, 1, 3, 0),
(171, 1, 'wwww', 'wwww', 'wwww', '先生', 'wwwwwwwwwww', 'wwww', 'wwwwwww@wwww.com', '', 'wwwwwwwwww', 'wwww', '省  市', 'wwww', 'wwwwwwwwwwww', 'wwwwww', 'wwww', '从事过餐饮行业', '', '本科以上', '', '', '', '', '', '127.0.0.1', 1239595765, 1239595765, 150, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_service_group`
--

CREATE TABLE IF NOT EXISTS `pwn_service_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowservice` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `pwn_service_group`
--

INSERT INTO `pwn_service_group` (`id`, `groupname`, `xuhao`, `moveable`, `ifano`, `allowmembertype`, `allowservice`, `intro`) VALUES
(1, '在线加盟', 1, 0, 1, '|26|', '|3|', '如果您有意向加盟，请填写以下加盟申请表，我们会及时与您联系'),
(18, '在线订货', 2, 1, 0, '|35|', '|3|', '加盟商可通过“在线订货”进行预订，使我们及时了解你的需求，及时为你准备所需原料'),
(19, '管理咨询', 3, 1, 0, '|35|', '|3|', '加盟商在管理上存在疑难问题，请在此提交，将由专家为您解答'),
(20, '意见建议', 4, 1, 1, '|35|', '|3|', '您的建议是我们共同发展的动力，您有任何意见建议，可在这里提交');

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_code`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_code` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `cat` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL default '0',
  `groupname` varchar(100) NOT NULL,
  `qq` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `memo` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `xuhao` int(11) NOT NULL default '0',
  `iffb` int(1) NOT NULL default '1',
  `tj` int(1) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_code`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopolldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopolldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `body` text,
  `iffb` int(1) NOT NULL default '0',
  `tj` int(1) default NULL,
  `secure` int(11) NOT NULL default '0',
  `dtime` int(11) NOT NULL default '0',
  `uptime` int(11) NOT NULL default '0',
  `author` varchar(100) default NULL,
  `type` varchar(30) NOT NULL,
  `src` varchar(150) NOT NULL,
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  `votesinfo1` text NOT NULL,
  `votesinfo2` text NOT NULL,
  `votesinfo3` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopolldata`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_photopollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_photopollindex` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(12) NOT NULL,
  `catpath` char(255) default NULL,
  `cat` varchar(100) NOT NULL,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pwn_tools_photopollindex`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollconfig`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollconfig` (
  `config_id` smallint(5) unsigned NOT NULL auto_increment,
  `img_height` int(5) NOT NULL default '0',
  `img_length` int(5) NOT NULL default '0',
  `vodinfo` varchar(225) NOT NULL default '0',
  `def_options` smallint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`config_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_pollconfig`
--

INSERT INTO `pwn_tools_pollconfig` (`config_id`, `img_height`, `img_length`, `vodinfo`, `def_options`) VALUES
(1, 20, 10, '对不起,您已经投过票了', 10);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_polldata`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_polldata` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `poll_id` int(11) NOT NULL default '0',
  `option_id` int(11) NOT NULL default '0',
  `option_text` varchar(200) NOT NULL default '',
  `color` varchar(20) NOT NULL default '',
  `votes` int(14) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `pwn_tools_polldata`
--

INSERT INTO `pwn_tools_polldata` (`id`, `poll_id`, `option_id`, `option_text`, `color`, `votes`) VALUES
(17, 8, 5, '喜欢', 'aqua', 0),
(16, 8, 4, '一般', 'aqua', 0),
(13, 8, 1, '很好', 'aqua', 1),
(14, 8, 2, '不好', 'aqua', 0),
(15, 8, 3, '很差', 'aqua', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_pollindex`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_pollindex` (
  `id` int(11) NOT NULL auto_increment,
  `groupname` varchar(100) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `status` smallint(2) NOT NULL default '0',
  `exp_time` int(11) NOT NULL default '0',
  `expire` smallint(2) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pwn_tools_pollindex`
--

INSERT INTO `pwn_tools_pollindex` (`id`, `groupname`, `timestamp`, `status`, `exp_time`, `expire`) VALUES
(8, '这个软件你感觉怎么样？', 1223209351, 1, 1225801351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statbase`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statbase` (
  `id` int(8) NOT NULL auto_increment,
  `ShowCountType` int(1) default NULL,
  `ShowCountSize` int(1) default NULL,
  `ShowCount` int(1) default NULL,
  `ShowCountStat` int(1) default NULL,
  `starttime` int(11) default NULL,
  `CountIpExp` int(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pwn_tools_statbase`
--

INSERT INTO `pwn_tools_statbase` (`id`, `ShowCountType`, `ShowCountSize`, `ShowCount`, `ShowCountStat`, `starttime`, `CountIpExp`) VALUES
(1, 14, 8, 2, 0, 1234728185, 5);

-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcome`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcome` (
  `id` int(12) NOT NULL auto_increment,
  `url` varchar(255) NOT NULL default '',
  `count` int(5) NOT NULL default '0',
  `begingtime` int(11) NOT NULL default '0',
  `lasttime` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pwn_tools_statcome`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statcount`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statcount` (
  `id` int(21) NOT NULL auto_increment,
  `ip` varchar(17) NOT NULL default '',
  `os` varchar(40) NOT NULL default '',
  `browse` varchar(30) NOT NULL default '',
  `urlform` varchar(255) NOT NULL default '',
  `time` int(11) NOT NULL default '0',
  `nowpage` varchar(255) default NULL,
  `member` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16307 ;

--
-- 转存表中的数据 `pwn_tools_statcount`
--


-- --------------------------------------------------------

--
-- 表的结构 `pwn_tools_statdate`
--

CREATE TABLE IF NOT EXISTS `pwn_tools_statdate` (
  `id` int(2) NOT NULL auto_increment,
  `1th_day` int(5) NOT NULL default '0',
  `2th_day` int(5) NOT NULL default '0',
  `3th_day` int(5) NOT NULL default '0',
  `4th_day` int(5) NOT NULL default '0',
  `5th_day` int(5) NOT NULL default '0',
  `6th_day` int(5) NOT NULL default '0',
  `7th_day` int(5) NOT NULL default '0',
  `8th_day` int(5) NOT NULL default '0',
  `9th_day` int(5) NOT NULL default '0',
  `10th_day` int(5) NOT NULL default '0',
  `11th_day` int(5) NOT NULL default '0',
  `12th_day` int(5) NOT NULL default '0',
  `13th_day` int(5) NOT NULL default '0',
  `14th_day` int(5) NOT NULL default '0',
  `15th_day` int(5) NOT NULL default '0',
  `16th_day` int(5) NOT NULL default '0',
  `17th_day` int(5) NOT NULL default '0',
  `18th_day` int(5) NOT NULL default '0',
  `19th_day` int(5) NOT NULL default '0',
  `20th_day` int(5) NOT NULL default '0',
  `21th_day` int(5) NOT NULL default '0',
  `22th_day` int(5) NOT NULL default '0',
  `23th_day` int(5) NOT NULL default '0',
  `24th_day` int(5) NOT NULL default '0',
  `25th_day` int(5) NOT NULL default '0',
  `26th_day` int(5) NOT NULL default '0',
  `27th_day` int(5) NOT NULL default '0',
  `28th_day` int(5) NOT NULL default '0',
  `29th_day` int(5) NOT NULL default '0',
  `30th_day` int(5) NOT NULL default '0',
  `31th_day` int(5) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `pwn_tools_statdate`
--

INSERT INTO `pwn_tools_statdate` (`id`, `1th_day`, `2th_day`, `3th_day`, `4th_day`, `5th_day`, `6th_day`, `7th_day`, `8th_day`, `9th_day`, `10th_day`, `11th_day`, `12th_day`, `13th_day`, `14th_day`, `15th_day`, `16th_day`, `17th_day`, `18th_day`, `19th_day`, `20th_day`, `21th_day`, `22th_day`, `23th_day`, `24th_day`, `25th_day`, `26th_day`, `27th_day`, `28th_day`, `29th_day`, `30th_day`, `31th_day`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
