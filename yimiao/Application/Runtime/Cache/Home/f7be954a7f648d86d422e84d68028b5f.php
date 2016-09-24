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
<div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post" id="myform" name="myform">
                    <table class="insert-tab" width="100%">
                        <tbody>
						<tr>
                            <th width="120"><i class="require-red">*</i>种类：</th>
                            <td>
								<select name="type" class="common-text required" id="type">
									<option value ="">请选择</option>
									<?php if(is_array($type)): $i = 0; $__LIST__ = $type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value ="<?php echo ($vo["vaccine"]); ?>"><?php echo ($vo["vaccine"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
                            </td>
                        </tr>
                        <tr>
                            <th width="120"><i class="require-red">*</i>厂商：</th>
                            <td>
								<select name="firm" class="common-text required" id="firm">
									<option value ="">请选择</option>
									<?php if(is_array($firm)): $i = 0; $__LIST__ = $firm;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fi): $mod = ($i % 2 );++$i;?><option value ="<?php echo ($fi["firm_name"]); ?>"><?php echo ($fi["firm_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
								</select>
                            </td>
                        </tr>
                        </tbody></table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
            <div class="main-wrap">
       
        <div class="result-wrap">
            <form action="<?php echo U('add_plan');?>" method="post" id="myform" name="myform">
                <div class="config-items">
                    <div class="config-title">
                        <h1><i class="icon-font">&#xe014;</i>接种设置</h1>
                    </div>
                    <div class="result-content">
                        <table width="100%" class="insert-tab">
								<tr>
									<th width="15%"><i class="require-red">*</i>接种人：</th>
										<input type="hidden" name="uid" value="<?php echo ($meminfo["uid"]); ?>">
									<td><?php echo ($meminfo["name"]); ?></td>
								</tr>
								<tr>
                                    <th><i class="require-red">*</i>接种疫苗：</th>
                                    <td>
										<select name="v_id" id="v_change" class="common-text required">
										</select>
                                    </td>
                                </tr>
                                <tr>
									<th><i class="require-red">*</i>接种计划：</th>
									<td>
										<a href="javascript:void(0)" id="getplan" class="btn btn-primary btn1 mr5" >生成接种计划</a>(必点，否则不能直接生成接种计划)
									</td>
                                </tr>
                                <tr>
									<th><i class="require-red">*</i>接种计划：</th>
									<td>
										<ul id="aa">
										
										</ul>
									</td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <td>
                                        <input type="submit" value="提交" class="btn btn-primary btn6 mr10">
                                        <input type="button" value="返回" onclick="history.go(-1)" class="btn btn6">
                                    </td>
                                </tr>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
<script>
$(document).ready(function(){
	$("#v_change").empty();
	$("#type").change(function(){
		$.post("<?php echo U('GetList');?>", { type: $("#type").val(), firm: $("#firm").val() },
		 function(data){
			var obj= eval(data);
			$("#v_change").empty();
			for(var i=0;i<obj.length;i++){
				$("#v_change").append("<option value="+obj[i]['v_id']+">"+obj[i]['type_name']+"</option>")
			}
	   }); 
	});
	$("#firm").change(function(){
		$.post("<?php echo U('GetList');?>", { type: $("#type").val(), firm: $("#firm").val() },
		function(data){
			var obj= eval(data);
			$("#v_change").empty();
			for(var i=0;i<obj.length;i++){
				$("#v_change").append("<option value="+obj[i]['v_id']+">"+obj[i]['type_name']+"</option>")
			}
	   }); 
	});
	$("#getplan").click(function(){
		$.post("<?php echo U('Get_Vaccine_Info');?>",{v_id:$("#v_change").val()},function(d){
			var o = eval(d);
			for(var j=0;j<o.length;j++){
				$("#aa").append("<li>"+o[j]['info']+"</li><input type='hidden' name='plan[]' value="+o[j]['time']+">");
			}
		});
	});

});

</script>
</html>