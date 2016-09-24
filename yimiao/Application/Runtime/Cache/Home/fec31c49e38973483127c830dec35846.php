<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>疫苗信息管理</title>
    <link rel="stylesheet" type="text/css" href="/yimiao/Application/Home/View/default/Public//css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/yimiao/Application/Home/View/default/Public//css/main.css"/>
    <script src="/yimiao/Application/Home/View/default/Public//js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/yimiao/Application/Home/View/default/Public//js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="<?php echo U('Index/index');?>" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="<?php echo U('Index/index');?>">首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li>欢迎您，<?php echo ($_SESSION['user']['name']); ?></li>
                <li><a href="<?php echo U('Login/up');?>">修改密码</a></li>
                <li><a href="<?php echo U('Login/Loginout');?>">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>信息操作</a>
                    <ul class="sub-menu">
                        <li><a href="<?php echo U('Member/index');?>"><i class="icon-font">&#xe005;</i>个人数据管理</a></li>
                        <li><a href="<?php echo U('Member/add_user');?>"><i class="icon-font">&#xe009;</i>个人信息录入</a></li>
                    </ul>
                </li>
                <li>
					<?php if($_SESSION['user']['type']== 0): ?><a href="#"><i class="icon-font">&#xe018;</i>疫苗管理</a>
                    <ul class="sub-menu">
                        <li><a href="<?php echo U('Vaccine/index');?>"><i class="icon-font">&#xe037;</i>疫苗管理</a></li>
                        <li><a href="<?php echo U('Vaccine/add_vaccine');?>"><i class="icon-font">&#xe017;</i>新增疫苗</a></li>
                        <li><a href="<?php echo U('Vaccine/add_firm');?>"><i class="icon-font">&#xe046;</i>新增厂商</a></li>
                        <li><a href="<?php echo U('Vaccine/add_type');?>"><i class="icon-font">&#xe045;</i>新增种类</a></li>
                    </ul>
                    <?php else: endif; ?>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->

<div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">个人信息管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="<?php echo U('index');?>" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="120">姓名:</th>
                            <td>
									<input type="hidden" name="type" value="1">
									<input class="common-text" placeholder="姓名" name="name" value="" id="" type="text">
                            </td>
                            <th width="70">身份证号:</th>
                            <td><input class="common-text" placeholder="身份证号" name="idcard" value="" id="" type="text"></td>
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>
                            <th>姓名</th>
                            <th>身份证号</th>
                            <th>性别</th>
                            <th>电话</th>
                            <th>家族住址</th>
                            <th>接种信息</th>
                            <th>操作</th>
                        </tr>
                        <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                            <td><?php echo ($vo["uid"]); ?></td>
                            <td title=""><?php echo ($vo["name"]); ?></td>
                            <td><?php echo ($vo["idcard"]); ?></td>
                            <td><?php echo ($vo["sex"]); ?></td>
                            <td><?php echo ($vo["phone"]); ?></td>
                            <td><?php echo ($vo["address"]); ?></td>
                            <td><a href="<?php echo U('Inoculation/index',array('uid'=>$vo['uid']));?>">新增接种</a>｜<a href="<?php echo U('Inoculation/vlist',array('uid'=>$vo['uid']));?>">历史接种</a></td>
                            <td>
                                <a class="link-update" href="<?php echo U('Member/up_mem',array('id'=>$vo['uid']));?>">修改信息</a>
                                <a class="link-del" href="<?php echo U('Member/del',array('id'=>$vo['uid']));?>">删除信息</a>
                            </td>
                        </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                      
                    </table>
                    <div class="list-page"> <?php echo ($page); ?></div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>