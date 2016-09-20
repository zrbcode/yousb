


//根据是否登录显示发布表单时的登录信息
$(document).ready(function(){
	$.ajax({
		type: "POST",
		url:PDV_RP+"post.php",
		data: "act=isLogin",
		success: function(msg){
			if(msg=="1"){
				$("div#notLogin").hide();
				$("div#isLogin").show();
				$("span#username").html(getCookie("MUSER"));
			}else{
				$("div#isLogin").hide();
				$("div#notLogin").show();
				$('.loginlink').click(function() { 
					$().popLogin(1);
				});
				$("input#nomember").click(function() { 
					if(this.checked==false){
						$().popLogin(1);
					}
				});
			}
		}
	});
});


//会员退出
$(document).ready(function(){
	
	$('.logoutlink').click(function(){ 
		
		$.ajax({
			type: "POST",
			url: PDV_RP+"post.php",
			data: "act=memberlogout",
			success: function(msg){
				if(msg=="OK"){

					$("div#isLogin").hide();
					$("div#notLogin").show();
					$('.loginlink').click(function() { 
						$().popLogin(1);
					});
					$("input#nomember").click(function() { 
						if(this.checked==false){
							$().popLogin(1);
						}
					});

				}else{
					alert(msg);
				}
			}
		});
	

   }); 
});


//下拉分组列表
$(document).ready(function(){
	$("select#groupsellist").change(function(){
		self.location="?groupid="+$("select#groupsellist")[0].value;
	});
});


//反馈表单提交
$(document).ready(function(){
	$('#myform').submit(function(){ 
		$('#myform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'service/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("您的问题已提交，我们会尽快处理","feedback.php");
				}else if(msg=="ANOOK"){
					$('div#notice').hide();
					$().alertwindow("您的问题已提交，我们会尽快处理","");
				}else if(msg=="NOLOGIN"){
					$('div#notice').hide();
					$().popLogin(1);
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
				}
			}
		}); 
       return false; 

   }); 
});

