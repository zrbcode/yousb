<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>﻿<?php include template("content","header"); ?>
<!--main-->
<DIV class=container>
<DIV class="ads960 bot">
<SCRIPT language=javascript src="<?php echo JS_PATH;?>statics/js/2.js"></SCRIPT>
</DIV>
<DIV class="contentbox bot">
<DIV class="FocusPicBox left">
<DIV class=FocusPic>
<DIV id=main-slide class=content>
<DIV class=changeDiv>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3c71a59e8234a0621fb4a683c5ace637&action=position&posid=1&order=id&num=10&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('posid'=>'1','order'=>'id',)).'3c71a59e8234a0621fb4a683c5ace637');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'position')) {$data = $content_tag->position(array('posid'=>'1','order'=>'id','limit'=>'10',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<a title="<?php echo str_cut($r['title'],80);?>" href="<?php echo $r['url'];?>" target=_blank><img alt="<?php echo $r['title'];?>" src="<?php echo thumb($r['thumb'],340,250);?>" width="340" height="250" /></a>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
 </DIV></DIV></DIV></DIV>
<DIV class="newsbox left">
<DIV class=title01>
<DIV class=weather></DIV>
<UL class=SwapTab01>
  <LI class=fb><A href="<?php echo $CATEGORYS['21']['url'];?>" 
  target=_blank><?php echo $CATEGORYS['21']['catname'];?></A> </LI>
  </UL></DIV>
<DIV class=tab-content01>
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=fda110b255524747a125c19db6d31f59&action=lists&catid=21&order=id&num=1&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'21','order'=>'id',)).'fda110b255524747a125c19db6d31f59');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'21','order'=>'id','limit'=>'1',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <H1><A title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],50);?></A></H1>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=758533cadfa590d67cede38d1c4b6083&action=lists&catid=21&order=id&num=8&start=1&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'21','order'=>'id',)).'758533cadfa590d67cede38d1c4b6083');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'21','order'=>'id','limit'=>'1,8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><SPAN class=time><?php echo date("m-d",$r[inputtime]);?></SPAN><A title=<?php echo $r['title'];?> href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],80);?></A></LI>
   <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
 </UL>
<UL class=hidden>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1aea9e36d2aedf2917c754f2281ee0fc&action=lists&catid=22&order=id&num=1&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'22','order'=>'id',)).'1aea9e36d2aedf2917c754f2281ee0fc');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'22','order'=>'id','limit'=>'1',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <H1><A title="<?php echo $r['title'];?>" 
  href="<?php echo $r['url'];?>" 
  target=_blank><?php echo str_cut($r[title],50);?></A></H1>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=dcf2507067560d8919c7db1a20d54b4b&action=lists&catid=22&order=id&num=8&start=1&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'22','order'=>'id',)).'dcf2507067560d8919c7db1a20d54b4b');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'22','order'=>'id','limit'=>'1,8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><SPAN class=time><?php echo date("m-d",$r[inputtime]);?></SPAN><A title=<?php echo $r['title'];?> href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],80);?></A></LI>
   <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV></DIV>
<DIV class="sidebar right">
<DIV class=box>
<DIV class=title02>
<UL class=SwapTab00><!--   聚焦隆林 大山回音-->
  <LI class=fb><A href="<?php echo $CATEGORYS['22']['url'];?>" 
  target=_blank><?php echo $CATEGORYS['22']['catname'];?></A> </LI>
  <LI><A href="<?php echo $CATEGORYS['24']['url'];?>" 
  target=_blank><?php echo $CATEGORYS['24']['catname'];?></A> </LI></UL></DIV>
<DIV class="tab-content00 sidvod">
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0db713492b1e4e2875090953619260a1&action=lists&catid=22&order=id&num=4&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'22','order'=>'id',)).'0db713492b1e4e2875090953619260a1');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'22','order'=>'id','limit'=>'4',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><A title=<?php echo $r['title'];?> href="<?php echo $r['url'];?>" target=_blank><IMG title=<?php echo $r['title'];?> src="<?php echo thumb($r[thumb],90,68);?> "></A> 
  <DIV><A title=<?php echo $r['title'];?> href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],25);?></A></DIV></LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>  
  </UL>
<UL class=hidden>
  <DIV class=music>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=33ab4a8263c6fa62d4c7c27474316d18&action=lists&catid=24&order=id&num=10&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'24','order'=>'id',)).'33ab4a8263c6fa62d4c7c27474316d18');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'24','order'=>'id','limit'=>'10',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <DIV><A title=<?php echo $r['title'];?> href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],50);?></A></DIV>
   <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
  </DIV></UL></DIV></DIV></DIV></DIV>
<DIV class="contentbox bot">
<DIV class="ads734X80 left bot">
<SCRIPT language=javascript src="http://localhost/gxll/statics/js/3.js"></SCRIPT>
</DIV>
<DIV class="sidebar right"><!--通知公告-->
<DIV class="box bot">
<DIV class=title02><SPAN class=more><A 
href="<?php echo $CATEGORYS['136']['url'];?>" 
target=_blank>更多&gt;&gt;</A></SPAN> 
<DIV class=fb><?php echo $CATEGORYS['136']['catname'];?></DIV></DIV>
<DIV style="OVERFLOW: hidden" class=sidlis>
<UL id=ticker>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=81234256b3dac049e69d23cfbcae2b85&action=lists&catid=136&order=id&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'136','order'=>'id',)).'81234256b3dac049e69d23cfbcae2b85');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'136','order'=>'id','limit'=>'20',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><A title={$r[title] href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],60);?></A> </LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL>
  <SCRIPT type=text/javascript>
	  $(function() {
		var ticker = $("#ticker");
		ticker.children().filter("li").each(function() {
		  var dt = $(this),
		    container = $("<div>");
		  dt.next().appendTo(container);
		  dt.prependTo(container);
		  container.appendTo(ticker);
		});
		ticker.css("overflow", "hidden");
		function animator(currentItem) {
		  var distance = currentItem.height();
			duration = (distance + parseInt(currentItem.css("marginTop"))) / 0.015;
		  currentItem.animate({ marginTop: -distance }, duration, "linear", function() {
			currentItem.appendTo(currentItem.parent()).css("marginTop", 0);
			animator(currentItem.parent().children(":first"));
		  }); 
		};		
		animator(ticker.children(":first"));
		ticker.mouseenter(function() {
		  ticker.children().stop();		  
		});
		ticker.mouseleave(function() {	
		  animator(ticker.children(":first"));		  
		});
	  });
    </SCRIPT>
</DIV></DIV><!--社会与法制-->
<DIV class=box>
<DIV class=title02><SPAN class=more><A 
href="<?php echo $CATEGORYS['137']['url'];?>" 
target=_blank>更多&gt;&gt;</A></SPAN> 
<DIV class=fb><?php echo $CATEGORYS['137']['catname'];?></DIV></DIV>
<DIV class=sidlis>
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b65b6b13926ae26f6fe3dd6db0e65bd5&action=lists&catid=137&order=id&num=8&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'137','order'=>'id',)).'b65b6b13926ae26f6fe3dd6db0e65bd5');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'137','order'=>'id','limit'=>'8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><A title="<?php echo $r['title'];?>" 
  href="<?php echo $r['url'];?>" 
  target=_blank><?php echo str_cut($r[title],45);?></A> </LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
 </UL></DIV></DIV></DIV>
<DIV class="main01 left MR10">
<DIV class=title03><SPAN class=more><A 
href="<?php echo $CATEGORYS['25']['url'];?>" 
target=_blank>更多&gt;&gt;</A></SPAN> 
<DIV class=tit><!--领导动态--><?php echo $CATEGORYS['25']['catname'];?></DIV></DIV>
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1de93b540dd42ae6a78a10794e063426&action=lists&catid=25&order=id&num=8&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'25','order'=>'id',)).'1de93b540dd42ae6a78a10794e063426');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'25','order'=>'id','limit'=>'8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><SPAN class=time><?php echo date("m-d",$r[inputtime]);?></SPAN><A title=<?php echo $r['title'];?> 
  href="<?php echo $r['url'];?>" 
  target=_blank><?php echo str_cut($r[title],45);?></A> 
  </LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV>
<DIV class="main01 left MR10">
<DIV class=title03><SPAN class=more><A 
href="<?php echo $CATEGORYS['141']['url'];?>" 
target=_blank>更多&gt;&gt;</A></SPAN> 
<DIV class=tit><!--乡镇传真--><?php echo $CATEGORYS['141']['catname'];?></DIV></DIV>
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=cf736bd4477ab4047eae64f5ac7ec053&action=lists&catid=141&order=id&num=8&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'141','order'=>'id',)).'cf736bd4477ab4047eae64f5ac7ec053');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'141','order'=>'id','limit'=>'8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><SPAN class=time><?php echo date("m-d",$r[inputtime]);?></SPAN><A title=<?php echo $r['title'];?> 
  href="<?php echo $r['url'];?>" 
  target=_blank><?php echo str_cut($r[title],45);?></A> 
  </LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV>
<DIV class="main01 left bot">
<DIV class=title03><SPAN class=more><A 
href="<?php echo $CATEGORYS['140']['url'];?>" 
target=_blank>更多&gt;&gt;</A></SPAN> 
<DIV class=tit><!--部门工作--><?php echo $CATEGORYS['140']['catname'];?></DIV></DIV>
<UL>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=342ff3b2b3a134d6703d81faef4b4fd1&action=lists&catid=140&order=id&num=8&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'140','order'=>'id',)).'342ff3b2b3a134d6703d81faef4b4fd1');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'140','order'=>'id','limit'=>'8',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><SPAN class=time><?php echo date("m-d",$r[inputtime]);?></SPAN><A title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>" 
  target=_blank><?php echo str_cut($r[title],45);?></A></LI>
   <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
  </UL></DIV>
<DIV class="main01picbox left">
<DIV class=main01pictit><A title="点击查看更多图说新闻>>" 
href="<?php echo $CATEGORYS['14']['url'];?>" target=_blank><IMG 
src="<?php echo IMG_PATH;?>gxll/gxll_tit04.gif"></A></DIV>
<DIV class="main01pic left">
<UL>
 <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=39390502e7b97fd92281a2557bb782a7&action=lists&catid=14&num=4&order=id+DESC&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$tag_cache_name = md5(implode('&',array('catid'=>'14','order'=>'id DESC',)).'39390502e7b97fd92281a2557bb782a7');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'14','order'=>'id DESC','limit'=>'4',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
 <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
 <LI><A title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>" target=_blank><IMG title="<?php echo $r['title'];?>" src="<?php echo thumb($r[thumb],154,116);?>"></A> 
  <DIV class=ptb><A title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>" target=_blank><?php echo str_cut($r[title],30);?></A></DIV></LI>
  <?php $n++;}unset($n); ?>
  <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV></DIV></DIV>
<DIV style="WIDTH: 960px; HEIGHT: 80px" class="ads960 bot">
<DIV style="WIDTH: 475px; FLOAT: left">
<!--广告调用-->
<SCRIPT language=javascript src="http://localhost/gxll/statics/js/11.js"></SCRIPT>
</DIV>
<DIV style="WIDTH: 475px; FLOAT: right">
<SCRIPT language=javascript src="http://localhost/gxll/statics/js/12.js"></SCRIPT>
</DIV></DIV>
<!--广告调用结束-->

<?php include template("content","footer"); ?>
