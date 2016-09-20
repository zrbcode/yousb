<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>﻿     <?php 
       $username=$r[username]; 
     ?> 
<?php include template("content","header2"); ?>
<!--main-->
<DIV class=container>
<DIV class=P10></DIV>
<DIV class=contentbox>
<DIV class="main left">
<DIV class=box>
<DIV class=main_tit>
<DIV class="txt left"><?php echo $CAT['catname'];?></DIV><SPAN class=crumbs><A 
href="<?php echo siteurl($siteid);?>">首页</A><SPAN> &gt; </SPAN><?php echo catpos($catid);?> 正文</SPAN> 
</DIV>
<DIV class=show>
<DIV id=Article>
<H1><?php echo $title;?><BR><SPAN><?php echo $inputtime;?>&nbsp;&nbsp;&nbsp;来源：<A 
style="COLOR: #aaa" href="<?php echo siteurl($siteid);?>" target=_blank><?php echo $SEO['site_title'];?></A>&nbsp;&nbsp;&nbsp;作者：<?php echo $r['author'];?>&nbsp;&nbsp;&nbsp;评论：<A 
id=comment href="#comment_iframe">0</A>&nbsp;&nbsp;&nbsp;点击：<SPAN id=hits></SPAN></SPAN></H1>
<DIV 
class=summary>
<?php echo $description;?>
</DIV>
<DIV class=content>
<?php echo $content;?>
</DIV>
<DIV id=pages class=text-c></DIV>
<p style="margin-bottom:10px">
            <strong>相关热词搜索：</strong><?php $n=1;if(is_array($keywords)) foreach($keywords AS $keyword) { ?><a href="<?php echo APP_PATH;?>index.php?m=content&c=tag&a=lists&tag=<?php echo urlencode($keyword);?>" class="blue"><?php echo $keyword;?></a> 	<?php $n++;}unset($n); ?>
            </p>
            <p class="f14">
                <strong>上一篇：</strong><a href="<?php echo $previous_page['url'];?>"><?php echo $previous_page['title'];?></a><br />
                <strong>下一篇：</strong><a href="<?php echo $next_page['url'];?>"><?php echo $next_page['title'];?></a>
            </p>
          <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=59d3146c936b0bbb61d83c4d89437c20&action=relation&relation=%24relation&id=%24id&catid=%24catid&num=5&keywords=%24rs%5Bkeywords%5D\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'relation')) {$data = $content_tag->relation(array('relation'=>$relation,'id'=>$id,'catid'=>$catid,'keywords'=>$rs[keywords],'limit'=>'5',));}?>
              <?php if($data) { ?>
                <div class="related">
                    <h5 class="blue">延伸阅读：</h5>
                    <ul class="list blue lh24 f14">
                        <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                            <li><a href="<?php echo $r['url'];?>" target="_blank"><?php echo $r['title'];?></a></li>
                        <?php $n++;}unset($n); ?>
                    </ul>
                </div>
              <?php } ?>
          <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<DIV class=P10></DIV></DIV></DIV></DIV>
<DIV class=P10></DIV>
<DIV class=Article-Tool><img src="http://v.t.qq.com/share/images/s/weiboicon16.png" style="padding-bottom:3px;" onclick="postToWb();" class="cu" title="分享到腾讯微博"/><script type="text/javascript">
	function postToWb(){
		var _t = encodeURI(document.title);
		var _url = encodeURIComponent(document.location);
		var _appkey = encodeURI("cba3558104094dbaa4148d8caa436a0b");
		var _pic = encodeURI('<?php echo $thumb;?>');
		var _site = '';
		var _u = 'http://v.t.qq.com/share/share.php?url='+_url+'&appkey='+_appkey+'&site='+_site+'&pic='+_pic+'&title='+_t;
		window.open( _u,'', 'width=700, height=680, top=0, left=0, toolbar=no, menubar=no, scrollbars=no, location=yes, resizable=no, status=no' );
	}
</script>
          <script type="text/javascript">document.write('<a href="http://v.t.sina.com.cn/share/share.php?url='+encodeURIComponent(location.href)+'&appkey=3172366919&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到新浪微博" class="t1" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://www.douban.com/recommend/?url='+encodeURIComponent(location.href)+'&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到豆瓣" class="t2" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://share.renren.com/share/buttonshare.do?link='+encodeURIComponent(location.href)+'&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到人人" class="t3" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://www.kaixin001.com/repaste/share.php?rtitle='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'&rurl='+encodeURIComponent(location.href)+'&rcontent=" title="分享到开心网" class="t4" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(location.href)+'" title="分享到QQ空间" class="t5" target="_blank">&nbsp;</a>');</script>
      
	  <span id='favorite'>
		<a href="javascript:;" onclick="add_favorite('<?php echo addslashes($title);?>');" class="t6">收藏</a>
	  </span>

	  </DIV></DIV>
<DIV class="sidebar right">
<DIV class="box bot">
<DIV class=sidebar_tit><?php echo $CAT['catname'];?> 
</DIV>
<DIV class="Btop sidenav">
<UL>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=eb98c76c0848ea36a397dd73a2bdc182&action=category&catid=%24parentid&num=15&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$parentid,'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'15',));}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><A href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></A> </LI>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV></DIV>
<DIV class=box>
<DIV class=sidebar_tit>专题栏目</DIV>
<DIV class="Btop sidesp">
<UL>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=a13db64271ac850de00948248a308c4f&action=category&catid=15&siteid=%24siteid&num=4&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'15','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'4',));}?>
   <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?> 
	<LI><a title="$r[title]" href="<?php echo $r['url'];?>" target=_blank><IMG src=<?php echo thumb($r[image],194,60);?> width="190" height="56"></a></LI>
	<?php $n++;}unset($n); ?>
	<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV></DIV>
<DIV class=P10></DIV>
<DIV class=box>
<DIV class=sidebar_tit>热门阅读</DIV>
<DIV class="Btop sidelis">
<UL>
  <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=58900d29a2d86f6669bfff23ba8fcaf2&action=hits&catid=%24catid&num=10&order=views+DESC&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array('catid'=>$catid,'order'=>'views DESC',)).'58900d29a2d86f6669bfff23ba8fcaf2');if(!$data = tpl_cache($tag_cache_name,3600)){$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'hits')) {$data = $content_tag->hits(array('catid'=>$catid,'order'=>'views DESC','limit'=>'10',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
  <LI><A href="<?php echo $r['url'];?>" 
  target=_blank title="<?php echo $r['title'];?>"><?php echo str_cut($r[title], 28, '');?></A> 
  </LI>
  <?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
  </UL></DIV></DIV></DIV></DIV>
<DIV class="P10 PT"></DIV></DIV>
<SCRIPT type=text/javascript>
<!--
	function show_ajax(obj) {
		var keywords = $(obj).text();
		var offset = $(obj).offset();
		var jsonitem = '';
		$.getJSON("http://www.gxll.gov.cn/index.php?m=content&c=index&a=json_list&type=keyword&modelid=1&id=19501&keywords="+encodeURIComponent(keywords),
				function(data){
				var j = 1;
				var string = "<div class='point key-float'><div style='position:relative'><div class='arro'></div>";
				string += "<a href='JavaScript:;' onclick='$(this).parent().parent().remove();' hidefocus='true' class='close'><span>关闭</span></a><div class='contents f12'>";
				if(data!=0) {
				  $.each(data, function(i,item){
					j = i+1;
					jsonitem += "<a href='"+item.url+"' target='_blank'>"+j+"、"+item.title+"</a><BR>";
					
				  });
					string += jsonitem;
				} else {
					string += '没有找到相关的信息！';
				}
					string += "</div><span class='o1'></span><span class='o2'></span><span class='o3'></span><span class='o4'></span></div></div>";		
					$(obj).after(string);
					$('.key-float').mouseover(
						function (){
							$(this).siblings().css({"z-index":0})
							$(this).css({"z-index":1001});
						}
					)
					$(obj).next().css({ "left": +offset.left-100, "top": +offset.top+$(obj).height()+12});
				});
	}

	function add_favorite(title) {
		$.getJSON('http://www.gxll.gov.cn/api.php?op=add_favorite&title='+encodeURIComponent(title)+'&url='+encodeURIComponent(location.href)+'&'+Math.random()+'&callback=?', function(data){
			if(data.status==1)	{
				$("#favorite").html('收藏成功');
			} else {
				alert('请登录');
			}
		});
	}

$(function(){
  $('#Article .content img').LoadImage(true, 660, 660,'http://www.gxll.gov.cn/statics/images/s_nopic.gif');    
})
//-->
</SCRIPT>

<SCRIPT language=JavaScript 
src="<?php echo IMG_PATH;?>gxll/api.htm"></SCRIPT>

<?php include template("content","footer2"); ?>