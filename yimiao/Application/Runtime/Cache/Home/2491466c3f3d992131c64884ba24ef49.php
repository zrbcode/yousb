<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>疫苗信息管理系统登录-</title>

<link rel="stylesheet" href="/yimiao/Application/Home/View/default/Public//css/style.css">

<body>

<div class="login-container">
	<h1>疫苗信息管理系统登录</h1>
	
	<div class="connect">
		
	</div>
	
	<form action="<?php echo U('DoLogin');?>" method="post" id="form">
		<div>
			<input type="text" name="name" class="username" placeholder="用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="密码"  oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit" onclick=" document.getElementById('form').submit()">登 陆</button>
	</form>

	

</div>

<script src="/yimiao/Application/Home/View/default/Public//js/jquery.min.js"></script>
<script src="/yimiao/Application/Home/View/default/Public//js/common.js"></script>
<!--背景图片自动更换-->
<script src="/yimiao/Application/Home/View/default/Public//js/supersized.3.2.7.min.js"></script>
<script src="/yimiao/Application/Home/View/default/Public//js/supersized-init.js"></script>
<!--表单验证-->
<script src="/yimiao/Application/Home/View/default/Public//js/jquery.validate.min.js?var1.14.0"></script>


</body>
</html>