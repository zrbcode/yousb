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
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">接种管理</span></div>
        </div>
       
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-title">
                    
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th width="18%">接种疫苗信息</th>
                            <th width="5%">接种人</th>
                            <th width="8%">操作员</th>
                             <th width="8%">录入员</th>
                             <th width="61%">接种信息与操作</th>
                        </tr>
                        <?php if(is_array($data)): $i = 0; $__LIST__ = $data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                            <td>
								疫苗编号：<?php echo ($vo["v_number"]); ?><br/>
								疫苗名称：<?php echo ($vo["v_id"]); ?><br/>
								生产厂商：<?php echo ($vo["v_firm"]); ?>
                            </td>
                            <td><?php echo ($member["name"]); ?></td>
                            <td><?php echo ($_SESSION['user']['name']); ?></td>
                            <td><?php echo ($vo["operator_id"]); ?></td>
                            <td>
								<input type="hidden" id="getid" value="<?php echo ($vo["h_id"]); ?>">
								<button class="btn btn-primary btn2 mr10" id="do" onclick="show_check();">接种下一针</button>
								<a href="javascript:void(0);" class="btn btn-primary btn2 mr10" onclick="check1(<?php echo ($vo["h_id"]); ?>);">删除此接种信息</a>
								<table class="result-tab" width="100%">
									<tr>
										<th>接种计划</th><th>接种状况</th>
									</tr>
									<?php if(is_array($vo['planlist'])): $i = 0; $__LIST__ = $vo['planlist'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><tr>
										<td><?php echo ($list["info"]); ?></td>
										<td>
											<?php if($list["status"] == 0): ?><span>未接种</span>
												<?php else: ?>
													<span>已接种</span><?php endif; ?>
										</td>
									</tr><?php endforeach; endif; else: echo "" ;endif; ?>
								</table>
                            </td>
                        </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                      
                    </table>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
<script>
function show_check(){
	if(window.confirm('是否继续？')){
		$.post("<?php echo U('edit');?>",{id:$("#getid").val()},function(data){
			var obj = eval(data);
			alert(obj[info]);
		})
	}
	else{
		alert("操作取消");
	}

}
function check1(data){
	if(window.confirm('是否删除数据？')){
		$.post("<?php echo U('del');?>",{h_id:data},function(data){
				if(data=="ok"){
					   window.location.reload();//刷新当前页面.
				}
				else{
					alert("操作失败");
				}
				
		});
	}
}

</script>
</body>
</html>