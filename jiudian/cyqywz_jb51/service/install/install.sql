INSERT INTO `{P}_base_coltype` VALUES (0, 'service', '客户服务', '客服', 1, 1, 1, 1, 1, '');

INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 101, '客服分组设置', '', 1, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 102, '客服表单设置', '', 2, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 103, '客服工单处理', '', 3, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 104, '存档工单查询', '', 4, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 105, '客服工单删除', '', 5, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 106, '工单人工存档权限', '', 6, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 107, '全部工单监控', '', 7, 10, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'service', 108, '快捷回复设置', '', 8, 10, '');


INSERT INTO `{P}_base_pageset` VALUES (0, '客户服务', 'service', 'main', 228, 626, 139, '', '', '', 'rgb(112,128,144)', 'none', '0% 0%', 'repeat', 'scroll', 900, 'rgb(255,255,255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 1);
INSERT INTO `{P}_base_pageset` VALUES (0, '客服问题提交', 'member', 'service', 164, 608, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 15);
INSERT INTO `{P}_base_pageset` VALUES (0, '客服工单查询', 'member', 'feedback', 147, 478, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 16);
INSERT INTO `{P}_base_pageset` VALUES (0, '工单详情', 'member', 'feedbacklook', 164, 755, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 16);
INSERT INTO `{P}_base_pageset` VALUES (0, '存档工单查询', 'member', 'feedbackhis', 147, 308, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 19);

INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modForm', '客户服务表单', 'service', 'all', 'tpl_form.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客户服务', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modServiceNavPath', '当前位置提示条', 'service', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modFormGroup', '客服分组菜单', 'service', 'all', 'tpl_formgroup.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 99, 0, -1, '-1', '-1', -1, -1, '_self', -1, -1, -1, -1, '-1', '客服分组', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modServiceForm', '客户服务表单', 'member', 'service', 'tpl_serviceform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 50, 220, 90, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '有问必答', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '1', '-1', 1, '', '_service_group', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modServiceTaskList', '客服工单查询', 'member', 'feedback', 'tpl_tasklist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 500, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '客服工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modServiceTaskDetail', '客服工单详情', 'member', 'feedbacklook', 'tpl_taskdetail.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '工单详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'service', 'modServiceTaskHis', '存档工单查询', 'member', 'feedbackhis', 'tpl_taskhis.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '存档工单查询', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);


# 
# 表的结构 `{P}_service`
# 

CREATE TABLE `{P}_service` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1496 DEFAULT CHARSET=utf8 AUTO_INCREMENT=1496 ;

# 
# 导出表中的数据 `{P}_service`
# 

INSERT INTO `{P}_service` VALUES (1, 0, '留言标题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1);
INSERT INTO `{P}_service` VALUES (2, 0, '留言内容', 2, 399, 'content', '', 0, 1, '', 1, 0, 2);
INSERT INTO `{P}_service` VALUES (3, 0, '您的姓名', 1, 399, 'name', '', 0, 1, '', 0, 0, 3);
INSERT INTO `{P}_service` VALUES (5, 0, '联系电话', 1, 399, 'tel', '', 0, 1, '', 0, 0, 5);
INSERT INTO `{P}_service` VALUES (6, 0, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6);
INSERT INTO `{P}_service` VALUES (7, 0, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7);
INSERT INTO `{P}_service` VALUES (8, 0, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8);
INSERT INTO `{P}_service` VALUES (9, 0, 'QQ号码', 1, 399, 'qq', '', 0, 1, '', 0, 0, 9);
INSERT INTO `{P}_service` VALUES (10, 0, '公司名称', 1, 399, 'company', '', 0, 1, '', 0, 0, 10);
INSERT INTO `{P}_service` VALUES (11, 0, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11);
INSERT INTO `{P}_service` VALUES (4, 0, '性　　别', 5, 399, 'sex', '男;女', 0, 1, '', 0, 0, 4);
INSERT INTO `{P}_service` VALUES (12, 0, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12);
INSERT INTO `{P}_service` VALUES (13, 0, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13);
INSERT INTO `{P}_service` VALUES (14, 0, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14);
INSERT INTO `{P}_service` VALUES (15, 0, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15);
INSERT INTO `{P}_service` VALUES (16, 0, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16);
INSERT INTO `{P}_service` VALUES (19, 0, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17);
INSERT INTO `{P}_service` VALUES (18, 0, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18);
INSERT INTO `{P}_service` VALUES (17, 0, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19);
INSERT INTO `{P}_service` VALUES (20, 0, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20);
INSERT INTO `{P}_service` VALUES (21, 0, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21);
INSERT INTO `{P}_service` VALUES (22, 0, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22);
INSERT INTO `{P}_service` VALUES (23, 0, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);
INSERT INTO `{P}_service` VALUES (1145, 1, '自定义二', 5, 399, 'custom2', '100;200;300;400;500', 0, 1, '', 0, 0, 18);
INSERT INTO `{P}_service` VALUES (1146, 1, '自定义三', 5, 399, 'custom3', '100;200;300;400;500', 0, 1, '', 0, 0, 19);
INSERT INTO `{P}_service` VALUES (1147, 1, '自定义四', 1, 399, 'custom4', '', 0, 1, '', 0, 0, 20);
INSERT INTO `{P}_service` VALUES (1148, 1, '自定义五', 1, 399, 'custom5', '', 0, 1, '', 0, 0, 21);
INSERT INTO `{P}_service` VALUES (1149, 1, '自定义六', 1, 399, 'custom6', '', 0, 1, '', 0, 0, 22);
INSERT INTO `{P}_service` VALUES (1150, 1, '自定义七', 1, 399, 'custom7', '', 0, 1, '', 0, 0, 23);
INSERT INTO `{P}_service` VALUES (1143, 1, '订购数量', 1, 399, 'products_num', '', 0, 1, '', 0, 0, 16);
INSERT INTO `{P}_service` VALUES (1144, 1, '自定义一', 5, 399, 'custom1', '100;200;300;400;500', 0, 1, '', 0, 0, 17);
INSERT INTO `{P}_service` VALUES (1142, 1, '产品名称', 1, 399, 'products_name', '', 0, 1, '', 0, 0, 15);
INSERT INTO `{P}_service` VALUES (1141, 1, '产品编号', 1, 399, 'products_id', '', 0, 1, '', 0, 0, 14);
INSERT INTO `{P}_service` VALUES (1140, 1, '传真号码', 1, 399, 'fax', '', 0, 1, '', 0, 0, 13);
INSERT INTO `{P}_service` VALUES (1139, 1, '邮政编码', 1, 399, 'zip', '', 0, 1, '', 0, 0, 12);
INSERT INTO `{P}_service` VALUES (1138, 1, '性别称谓', 5, 399, 'sex', '先生;女士', 0, 1, '', 0, 0, 9);
INSERT INTO `{P}_service` VALUES (1136, 1, '客户名称', 1, 399, 'company', '', 1, 1, '', 1, 0, 3);
INSERT INTO `{P}_service` VALUES (1137, 1, '公司地址', 1, 399, 'company_address', '', 0, 1, '', 0, 0, 11);
INSERT INTO `{P}_service` VALUES (1135, 1, 'QQ/MSN', 1, 399, 'qq', '', 0, 1, '', 1, 0, 9);
INSERT INTO `{P}_service` VALUES (1134, 1, '网址URL', 1, 399, 'url', '', 0, 1, '', 0, 0, 8);
INSERT INTO `{P}_service` VALUES (1133, 1, '电子邮件', 1, 399, 'email', '', 0, 1, '', 0, 0, 7);
INSERT INTO `{P}_service` VALUES (1132, 1, '联系地址', 1, 399, 'address', '', 0, 1, '', 0, 0, 6);
INSERT INTO `{P}_service` VALUES (1131, 1, '联系电话', 1, 399, 'tel', '', 1, 1, '', 1, 0, 5);
INSERT INTO `{P}_service` VALUES (1130, 1, '联 系 人', 1, 399, 'name', '', 0, 1, '', 1, 0, 4);
INSERT INTO `{P}_service` VALUES (1129, 1, '咨询内容', 2, 399, 'content', '', 1, 1, '', 1, 0, 2);
INSERT INTO `{P}_service` VALUES (1128, 1, '咨询主题', 1, 399, 'title', '', 1, 1, '', 1, 1, 1);

# --------------------------------------------------------

# 
# 表的结构 `{P}_service_chang`
# 

CREATE TABLE `{P}_service_chang` (
  `id` int(3) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  `msg` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

# 
# 导出表中的数据 `{P}_service_chang`
# 

INSERT INTO `{P}_service_chang` VALUES (1, '问题处理中', '您提交的问题正在处理中,请稍等...');
INSERT INTO `{P}_service_chang` VALUES (2, '问题需要协同处理', '您提交的问题需要协同处理,可能需要较长的时间,请耐心等待,我们争取在工作日内处理完成...');
INSERT INTO `{P}_service_chang` VALUES (3, '请电话联系', '您提出的问题,需要电话联系,请直接拨打技术热线:010-10101010。\r\n感谢您的配合!\r\n\r\n某某网站\r\nhttp://');
INSERT INTO `{P}_service_chang` VALUES (4, '处理完成', '您提交的问题已经处理完成，请验收！\r\n如果您觉得还有问题，可继续回复');

# --------------------------------------------------------

# 
# 表的结构 `{P}_service_chat`
# 

CREATE TABLE `{P}_service_chat` (
  `id` int(12) NOT NULL auto_increment,
  `rid` int(12) NOT NULL default '0',
  `content` text NOT NULL,
  `dtime` int(11) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  `adminid` int(5) NOT NULL default '0',
  `fromname` varchar(30) NOT NULL,
  `fromtype` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

# 
# 导出表中的数据 `{P}_service_chat`
# 


# --------------------------------------------------------

# 
# 表的结构 `{P}_service_feedback`
# 

CREATE TABLE `{P}_service_feedback` (
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
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 AUTO_INCREMENT=170 ;

# 
# 导出表中的数据 `{P}_service_feedback`
# 


# --------------------------------------------------------

# 
# 表的结构 `{P}_service_group`
# 

CREATE TABLE `{P}_service_group` (
  `id` int(3) NOT NULL auto_increment,
  `groupname` varchar(50) NOT NULL default '',
  `xuhao` int(5) NOT NULL default '0',
  `moveable` int(1) NOT NULL default '1',
  `ifano` int(11) NOT NULL default '0',
  `allowmembertype` varchar(255) NOT NULL,
  `allowservice` char(255) NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

# 
# 导出表中的数据 `{P}_service_group`
# 

INSERT INTO `{P}_service_group` VALUES (1, '销售咨询', 1, 0, 1, '|26|', '|3|', '欢迎咨询');
