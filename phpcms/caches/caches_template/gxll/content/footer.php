<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>﻿<!--<DIV class=link>
<DIV id=link_text>
<a href="<?php echo APP_PATH;?>index.php?m=link&c=index&a=register&siteid=<?php echo $siteid;?>" target=_blank title="申请链接">友情链接</a>
<select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---国家部委网站---</option>
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=a9005f4214658333cd6e41746e8f94ab&action=type_list&typeid=53&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'53','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
      <select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---省级政府网站---</option>   
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=09c79d952f74459123d8654058a04a8a&action=type_list&typeid=54&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'54','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
      <select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---市级政府网站---</option>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=5c60df2269012388962c4e84337e7901&action=type_list&typeid=55&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'55','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
      <select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---县区政府网站---</option>
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=752568030832104f37d15f920d8a375c&action=type_list&typeid=56&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'56','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
      <select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---新闻媒体网站---</option>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=0a08dbc03dc41c983375cacad8ce44a0&action=type_list&typeid=57&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'57','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
      <select name="FriendLink" onchange="if(this.options[this.selectedIndex].value!=''){window.open(this.options[this.selectedIndex].value,'_blank');}">
        <option value="">---其它友情链接---</option>
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=4d39eab90deb84e81985289c554249d9&action=type_list&typeid=58&siteid=%24siteid&order=listorder+DESC&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'type_list')) {$dat = $link_tag->type_list(array('typeid'=>'58','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'10',));}?>
        <?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
              <option value="<?php echo $v['url'];?>"><?php echo $v['name'];?></option>
		<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
      </select>
 </DIV></DIV></DIV>-->
<DIV class=footer>
<DIV class=copymain><A 
style="MARGIN-TOP: 15px; PADDING-RIGHT: 30px; FLOAT: right" title=网上报警 
href="http://www.gx.cyberpolice.cn/" target=_blank><IMG alt=网上报警 
src="http://localhost/gxll/statics/images/gxll/bjgt.gif" width=36 
height=42></A> 
<BR>主管：椴木沟村
QQ群：120220768<BR>ICP备09007576号&nbsp;百公网安备：4526010151&nbsp;技术支持：<A 
title="河北大学软件创业中心" href="http://soft.hicc.cn/" 
target=_blank>河北大学软件创业中心&河北大学工商学院科技协会</A> &nbsp;
<SCRIPT type=text/javascript>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd42650cb11b75aefd900d43a60803a26' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT>
</DIV></DIV>
<SCRIPT type=text/javascript> 
$(function(){
	new slide("#main-slide","cur",340,255,1);//焦点图
	new SwapTab(".SwapTab00","li",".tab-content00","ul","fb");//新闻TAB
	new SwapTab(".SwapTab01","li",".tab-content01","ul","fb");//新闻TAB
	new SwapTab(".SwapTab02","li",".tab-content02","ul","fb");//政务TAB
	new SwapTab(".SwapTab03","li",".tab-content03","ul","fb");//政务TAB
	new SwapTab(".SwapTab04","li",".tab-content04","ul","fb");//政务TAB
	new SwapTab(".SwapTab05","li",".tab-content05","ul","fb");//政务TAB
	new SwapTab(".SwapTab06","li",".tab-content06","div","fb");//政务TAB
	new SwapTab(".SwapTab07","li",".tab-content07","ul","fb");//政务TAB
})
jQuery(".Ebookbox").slide({mainCell:".bd ul",autoPlay:true,effect:"fold"});
</SCRIPT>
</BODY></HTML>
