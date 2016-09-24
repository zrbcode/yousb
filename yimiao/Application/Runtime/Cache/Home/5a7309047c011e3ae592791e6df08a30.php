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
            <div class="crumb-list"><i class="icon-font"></i><a href="<?php echo U('Index/index');?>">首页</a><span class="crumb-step">&gt;</span>信息操作<span class="crumb-step">&gt;</span>
            <span>新增厂商信息</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="<?php echo U('do_firm');?>" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
						<tr>
                            <th width="120"><i class="require-red">*</i>厂商名称：</th>
                            <td>
                               <input class="common-text required" id="title" name="firm_name" size="50" value="" type="text" required="required">
                            </td>
                        </tr>
                        <tr>
                            <th width="120"><i class="require-red">*</i>厂商地址：</th>
                            <td>
                               <input class="common-text required" id="title" name="firm_address" size="50" value="" type="text" required="required">
                            </td>
                        </tr>
                        <tr>
                            <th width="120"><i class="require-red">*</i>联系方式：</th>
                            <td>
                               <input class="common-text required" id="title" name="firm_phone" size="50" value="" type="text" required="required">
                            </td>
                        </tr>
                         <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
</html>