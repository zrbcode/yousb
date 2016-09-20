INSERT INTO `{P}_base_coltype` VALUES (0, 'down', '下载模块', '下载', 1, 1, 1, 1, 1, '_down_cat');

INSERT INTO `{P}_base_pageset` VALUES (0, '下载首页', 'down', 'main', 164, 31, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'index', 1);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载检索页', 'down', 'query', 232, 577, 153, '', '', '', 'rgb(112,128,144)', 'none', '0% 0%', 'repeat', 'scroll', 900, 'rgb(255,255,255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'catid', 2);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载详情', 'down', 'detail', 164, 805, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', 'id', 3);
INSERT INTO `{P}_base_pageset` VALUES (0, '会员资源下载', 'down', 'memberdown', 164, 177, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 12);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载管理', 'member', 'downgl', 147, 440, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 5);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载发布', 'member', 'downfabu', 164, 393, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 6);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载修改', 'member', 'downmodify', 164, 422, 152, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 7);
INSERT INTO `{P}_base_pageset` VALUES (0, '下载分类', 'member', 'downcat', 147, 275, 150, '', '', '', 'rgb(112, 128, 144)', '', 'center top', 'repeat', 'fixed', 900, 'rgb(255, 255, 255)', '', 10, 10, 'auto', 'transparent', '900', 'transparent', '900', 10, 'transparent', '900', '0', 9);


INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 160, '下载模块参数设置', '', 0, 16, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 161, '下载分类', '', 1, 16, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 162, '下载管理', '', 2, 16, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 163, '下载专题设置', '', 3, 16, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 165, '下载发布', '', 5, 16, '');
INSERT INTO `{P}_base_adminauth` VALUES (0, 'down', 166, '下载修改', '', 6, 16, '');

INSERT INTO `{P}_member_secure` VALUES (161, 'down', '下载发布权限', 'func', 1);
INSERT INTO `{P}_member_secure` VALUES (162, 'down', '下载修改权限', 'func', 2);
INSERT INTO `{P}_member_secure` VALUES (163, 'down', '下载发布/修改免审核权限', 'func', 3);
INSERT INTO `{P}_member_secure` VALUES (164, 'down', '编辑器图片上传权限', 'func', 5);
INSERT INTO `{P}_member_secure` VALUES (166, 'down', '下载公共分类投稿授权', 'class', 11);
INSERT INTO `{P}_member_secure` VALUES (167, 'down', '下载自定义分类权限', 'func', 9);
INSERT INTO `{P}_member_secure` VALUES (169, 'down', '下载版主权限(推荐/删除)', 'banzhu', 9);

INSERT INTO `{P}_member_centrule` VALUES (0, 'down', '发布资源下载', 161, 10, 0, 0, 0, 0);
INSERT INTO `{P}_member_centrule` VALUES (0, 'down', '下载资源被支持', 162, 0, 1, 0, 0, 0);
INSERT INTO `{P}_member_centrule` VALUES (0, 'down', '下载资源被反对', 163, 0, -1, 0, 0, 0);
INSERT INTO `{P}_member_centrule` VALUES (0, 'down', '下载资源被版主推荐', 164, 20, 0, 0, 0, 0);
INSERT INTO `{P}_member_centrule` VALUES (0, 'down', '下载被版主删除并扣分', 165, -20, 0, 0, 0, 0);

INSERT INTO `{P}_comment_cat` VALUES (3, 0, '下载点评', '1003:', 'down', 3, 0, 0, 0);

INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownQuery', '下载检索搜索', 'down', 'query', 'tpl_down_query.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 500, 30, 200, 90, 12, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownClass', '下载分类（列表）', 'all', 'all', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownTreeClass', '下载分类（树形）', 'all', 'all', 'tpl_classtree.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 200, 200, 90, 12, -1, '-1', '-1', 0, -1, '_self', 0, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 1, 1);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownProjList', '相关下载(同专题)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownAuthorList', '相关下载(同发布人)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownClassFc', '下载逐级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '', 0, 'solid', '', '', 'none', '', '', '#fff', '-1', 200, 200, 0, 0, 90, 12, 99, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownList', '下载列表', 'all', 'all', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/', 250, 200, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 12, '_self', 0, -1, -1, -1, '-1', '最新下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownContent', '下载详情', 'down', 'detail', 'tpl_down_content.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 650, 300, 30, 0, 90, 25, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载详情', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownSearchForm', '下载搜索表单', 'down', 'all', 'tpl_down_searchform.htm', '-1', 'A500', '', 0, 'solid', '', '', 'none', '', '', '', '-1', 650, 30, 0, 200, 90, 3, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownComment', '下载点评', 'down', 'detail', 'tpl_down_comment.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '', '', '#fff', 'http://', 650, 350, 300, 0, 90, 0, 5, '-1', '-1', -1, 20, '_self', -1, 120, -1, -1, '-1', '下载评论', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownNavPath', '当前位置提示条', 'down', 'all', 'tpl_navpath.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 30, 0, 200, 90, 0, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '当前位置', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownProject', '下载专题（列表）', 'all', 'all', 'tpl_downproj.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', -1, 12, '_self', -1, -1, -1, -1, '-1', '最新专题', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownHot', '下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '下载排行榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownFabu', '下载发布表单', 'member', 'downfabu', 'tpl_down_fabu.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载发布', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownGl', '下载管理', 'member', 'downgl', 'tpl_down_gl.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownModify', '下载修改表单', 'member', 'downmodify', 'tpl_down_modify.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 700, 0, 0, 99, 20, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载修改', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownMyCat', '下载分类管理', 'member', 'downcat', 'tpl_down_mycat.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 700, 300, 0, 0, 99, 5, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类管理', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modMemberDownList', '会员下载列表', 'member', 'homepage', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/memberdown.php?mid={#mid#}', 380, 170, 0, 0, 90, 10, 5, 'id|dtime|uptime|prop1|prop2|cl', 'desc', 0, 20, '_self', -1, -1, -1, -1, '-1', '资源下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modMemberDownClass', '会员下载分类', 'down', 'memberdown', 'tpl_memberdown_class.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 180, 0, 0, 99, 12, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modMemberDownQuery', '会员下载检索', 'down', 'memberdown', 'tpl_memberdown_query.htm', '-1', '1000', '#dddddd', 0, 'solid', '', '', 'none', '#cccccc', '#fff', '#fff', '-1', 650, 300, 0, 0, 90, 5, 20, '-1', '-1', -1, 30, '_self', -1, -1, -1, -1, '-1', '下载检索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'visible', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modMemberDownSearchForm', '会员下载搜索', 'down', 'memberdown', 'tpl_memberdown_searchform.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 175, 0, 0, 99, 15, -1, '-1', '-1', -1, -1, '-1', -1, -1, -1, -1, '-1', '下载搜索', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownHot30', '本月下载排行榜', 'all', 'all', 'tpl_downhot.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '{#RP#}down/class/index.php?myord=cl', 250, 280, 0, 0, 90, 10, 10, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '本月下载榜', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '', '-1', '0', 1, '_down_cat', '', '_down_proj', -1, 'hidden', 'content', 'block', 1, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownSameTagList', '相关下载(同标签)', 'down', 'detail', 'tpl_downlist.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', 'http://', 230, 200, 0, 0, 90, 12, 5, '-1', '-1', 0, 12, '_self', 0, -1, -1, -1, '-1', '相关下载', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '_down_cat', '', '', -1, 'hidden', 'content', 'block', 0, 0);
INSERT INTO `{P}_base_plusdefault` VALUES (0, 'down', 'modDownSameClass', '下载同级分类', 'down', 'query', 'tpl_downclass.htm', '-1', 'A001', '#dddddd', 1, 'solid', '', '', 'block', '#cccccc', '#fff', '#fff', '-1', 200, 200, 0, 0, 90, 12, -1, '-1', '-1', 0, -1, '_self', -1, -1, -1, -1, '-1', '下载分类', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 1, '', '', '', -1, 'hidden', 'content', 'block', 0, 0);

INSERT INTO `{P}_base_plustemp` VALUES (0, 'modDownHot', '排行榜样式二', 'tpl_downhot2.htm');
INSERT INTO `{P}_base_plustemp` VALUES (0, 'modDownSearchForm', '竖式搜索表单', 'tpl_down_searchform_h.htm');
INSERT INTO `{P}_base_plustemp` VALUES (0, 'modDownQuery', '下载检索,标题 时间 简介', 'tpl_down_query_memo.htm');
INSERT INTO `{P}_base_plustemp` VALUES (0, 'modDownQuery', '下载检索(标题 分类 发布人)', 'tpl_down_query_auth_cat.htm');



CREATE TABLE `{P}_down_cat` (
  `catid` int(12) NOT NULL auto_increment,
  `pid` int(12) default NULL,
  `cat` char(100) default NULL,
  `xuhao` int(12) default NULL,
  `catpath` char(255) default NULL,
  `nums` int(20) default NULL,
  `tj` int(1) NOT NULL default '0',
  `ifchannel` int(1) NOT NULL default '0',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `{P}_down_con` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `{P}_down_config` (
  `xuhao` int(3) NOT NULL default '0',
  `vname` varchar(50) NOT NULL default '',
  `settype` varchar(30) NOT NULL default 'input',
  `colwidth` varchar(3) NOT NULL default '30',
  `variable` varchar(32) NOT NULL default '',
  `value` text NOT NULL,
  `intro` text NOT NULL,
  PRIMARY KEY  (`variable`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `{P}_down_config` VALUES (1, '模块频道名称', 'input', '30', 'ChannelName', '资源下载', '本模块对应的频道名称，如“资源下载”；用于显示在网页标题、当前位置提示条等处');
INSERT INTO `{P}_down_config` VALUES (2, '是否在当前位置提示条显示模块频道名称', 'YN', '30', 'ChannelNameInNav', '1', '是否在当前位置提示条显示模块频道名称');
INSERT INTO `{P}_down_config` VALUES (3, '文件上传大小限制(Byte)', 'input', '30', 'FileSizeLimit', '1024000', '会员上传文件时,单个文件大小的限制;但最高设置不能超过2M');
INSERT INTO `{P}_down_config` VALUES (7, '下载介绍编辑器图片上传限制(Byte)', 'input', '30', 'EditPicLimit', '512000', '会员发布下载资源时,在编辑器内上传图片,单个图片的尺寸限制');
INSERT INTO `{P}_down_config` VALUES (8, '下载交易积分类型', 'centlist', '30', 'DefaultCentId', '3', '会员资源下载交易所采用的积分类型');
INSERT INTO `{P}_down_config` VALUES (9, '下载交易积分佣金', 'centyj', '30', 'CentYj', '0.2', '资源下载积分交易中网站方收取的佣金比例，如果计算后不足1个积分单位，以1个积分单位计算');


CREATE TABLE `{P}_down_downlog` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `memberid` int(12) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `{P}_down_pages` (
  `id` int(12) NOT NULL auto_increment,
  `downid` int(12) NOT NULL default '0',
  `body` text NOT NULL,
  `xuhao` int(5) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `{P}_down_pcat` (
  `catid` int(12) NOT NULL auto_increment,
  `memberid` int(12) NOT NULL default '0',
  `pid` int(12) NOT NULL default '0',
  `cat` char(100) NOT NULL default '',
  `xuhao` int(12) NOT NULL default '0',
  `catpath` char(255) NOT NULL default '',
  PRIMARY KEY  (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE `{P}_down_proj` (
  `id` int(12) NOT NULL auto_increment,
  `project` varchar(100) default NULL,
  `folder` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `{P}_down_prop` (
  `id` int(20) NOT NULL auto_increment,
  `catid` int(20) NOT NULL default '0',
  `propname` char(30) default NULL,
  `xuhao` int(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `xuhao` (`xuhao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

