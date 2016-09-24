<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
	<HEAD id=Head1>
		<TITLE>后台管理首页</TITLE>
	<META http-equiv=Content-Type content="text/html; charset=utf-8">
	<LINK href="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/Style.css" type="text/css" rel=stylesheet>
	<LINK href="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/Manage.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/FrameDiv.js"></SCRIPT>
<SCRIPT language=javascript src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/Common.js"></SCRIPT>
<link href="/yimiao/Application/MyUser/View/Public/Index/easyui.css" rel="Stylesheet" type="text/css" />
<script type="text/javascript" src="/yimiao/Application/MyUser/View/Public/Index/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="/yimiao/Application/MyUser/View/Public/Index/jquery.easyui.min.js"></script>
<script type="text/javascript">
        function showdig() {
            $("#dlg").dialog({ model: true });
            $(".panel-title").css({"text-align":"center"});
            $(".panel-tool-close").css({ background: 'url("/yimiao/Application/MyUser/View/Public/Index/img/1.jpg")' });
            $("#dlg").append('<div align="centent"style="width:100%;height:100%;position:relative;"><form align="centent" action="<?php echo U('new_user');?>" method="post">用户名：<input type="text" name="name"><br/>密	 码：<input type="password" name="password"><br/>确认密码：<input type="password" name="password_"><br/><input type="submit" value="提交数据"></form></div>');
        }
        function showpass(id){
			$("#dlg1").dialog({ model: true });
            $(".panel-title").css({"text-align":"center"});
            $(".panel-tool-close").css({ background: 'url("/yimiao/Application/MyUser/View/Public/Index/img/1.jpg")' });
            $("#dlg1").append('<div align="centent"style="width:100%;height:100%;position:relative;"><form align="centent" action="<?php echo U('uppass');?>" method="post">密	 码：<input type="password" name="password"><br/>确认密码：<input type="password" name="password_"><br/><input type="hidden" name="id" value='+id+'><input type="submit" value="提交数据"></form></div>');
		}
    </script>
<SCRIPT language=javascript>
        function selectallbox()
        {
            var list = document.getElementsByName('setlist');
            var listAllValue='';
             if(document.getElementById('checkAll').checked)
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = true;
                    if(listAllValue=='')
                        listAllValue=list[i].value;
                    else
                        listAllValue = listAllValue + ',' + list[i].value;
                  }
                  document.getElementById('boxListValue').value=listAllValue;
             }
             else 
             {
                  for(var i=0;i<list.length;i++)
                  {
                    list[i].checked = false;
                  }
                  document.getElementById('boxListValue').value='';
             }
         } 
    </SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR></HEAD>
<BODY>

<SCRIPT type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_019.jpg" border=0></TD>
    <TD width="100%" background="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_020.jpg" height=20></TD>
    <TD width=15><IMG src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_021.jpg" 
  border=0></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15 background="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_022.jpg"><IMG 
      src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_022.jpg" border=0> </TD>
    <TD vAlign=top width="100%" bgColor=#ffffff>
      <TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
        <TR>
          <TD class=manageHead>后台成员用户管理</TD></TR>
        <TR>
          <TD height=2></TD></TD></TR></TABLE>
      <TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0 width="100%" 
      align=center border=0>
        <TBODY>
        <TR>
          <TD height=25>
			  <a href="#"  onclick="showdig()">[添加新账号]</a>|<a href="<?php echo U('Login/Loginout');?>" >[注销]</a>
            </TD>
           
            </TR>
        <TR>
          <TD>
            <TABLE id=grid 
            style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc" 
            cellSpacing=1 cellPadding=2 rules=all border=0>
              <TBODY>
              <TR style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
                <TD>用户名</TD>
                <TD>用户ID</TD>
                <TD>状态</TD>
                <TD>级别</TD>
                <TD>操作</TD>
              </TR>
                
            <?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><TR style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
                <TD><?php echo ($vo["name"]); ?></TD>
                <TD><?php echo ($vo["id"]); ?></TD>
                <TD> <?php if($vo["status"] == 1): ?><IMG alt=申请通过 src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/start.gif" 
                  border=0>启用<?php else: ?>禁用<?php endif; ?>
                </TD>
                <TD><?php if($vo["type"] == 0): ?>超级管理员<?php else: ?>普通管理员<?php endif; ?></TD>
                <TD>
					<?php if($vo["type"] == 0): ?><a href="#" onclick="showpass(<?php echo ($vo["id"]); ?>)">修改密码</a>
					<?php else: ?>
					<a href="#" onclick="showpass(<?php echo ($vo["id"]); ?>)">修改密码</a>｜
					<?php if($vo["status"] == 1): ?><a href="<?php echo U('nagetive',array('id'=>$vo['id']));?>">禁用账号</a><?php else: ?>
					<a href="<?php echo U('start_login',array('id'=>$vo['id']));?>">启用账号</a><?php endif; ?>｜
					<a href="<?php echo U('del',array('id'=>$vo['id']));?>">删除账号</a><?php endif; ?>
                </TD>
		</TR><?php endforeach; endif; else: echo "" ;endif; ?>
	</TBODY>
</TABLE>
</TD>
</TR>
        <TR>
          <TD align=right height=25> </TD>
        </TR>
      </TBODY></TABLE></TD>
    <TD width=15 background="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_023.jpg"><IMG 
      src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_023.jpg" border=0> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
  <TBODY>
  <TR>
    <TD width=15><IMG src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_024.jpg" border=0></TD>
    <TD align=middle width="100%" background="YHChannelApply.files/new_025.jpg" 
    height=15></TD>
    <TD width=15><IMG src="/yimiao/Application/MyUser/View/Public/Index/YHChannelApply.files/new_026.jpg" 
  border=0></TD></TR></TBODY></TABLE>
  <div id="dlg" title="对话框" style="width:400px; height:300px; display:none; position:absolute"></div>
  <div id="dlg1" title="对话框" style="width:400px; height:300px; display:none; position:absolute"></div>
</BODY></HTML>