
//显示工单和回复
$(document).ready(function() {


	//初始读取回复记录列表
	var qusid=$("#qusid")[0].value;

	$.ajax({
		type: "POST",
		url:"post.php",
		data: "act=getbacklist&id="+qusid,
		success: function(msg){
			var chathtml=$(msg).find("div").html();
			if(chathtml!=null && chathtml!=""){
				$("#chatzone").append(msg);
				$("#chatzone")[0].scrollTop=$("#chatzone")[0].scrollHeight-$("#chatzone")[0].offsetHeight;
				$().setBg();
			}else{
				$("#chatzone").append(msg);
				$("#chatzone").hide();
			}
		}
	});


	//定时检查并显示新回复
	setInterval(function(){
		var qusid=$("#qusid")[0].value;
		var lastid=$("#newtime")[0].value;

		$.ajax({
			type: "POST",
			url:"post.php",
			data: "act=checknew&qusid="+qusid+"&lastid="+lastid,
			success: function(msg){
					if(msg!="" && parseInt(msg)>0){
						$("#newtime")[0].value=msg;
						$.ajax({
							type: "POST",
							url:"post.php",
							data: "act=getnewchat&qusid="+qusid+"&lastid="+lastid,
							success: function(msg){
								$("#chatzone").show();
								$("#chatzone").append(msg);
								$("#chatzone")[0].scrollTop=$("#chatzone")[0].scrollHeight-$("#chatzone")[0].offsetHeight;
								$().setBg();
							}
						});
					}
			}
		});

	},5000);

	
	//CTRL_ENTER提交
	$("#message").keydown(function(){
		 if(window.event.ctrlKey&&window.event.keyCode==13) { 
            $('#backForm').submit(); 
        } 

	});

	//表单提交
	$('#backForm').submit(function(){

		var qusid=$("#qusid")[0].value;
		
		if($("#stat")[0].value=="0"){
			alert("对不起，本工单还没有受理，不能提交回复");
			return false;
		}

		if($("#message")[0].value==""){
			alert("请输入回复内容");
			return false;
		}

		

		$('#backForm').ajaxSubmit({
			target: 'div#notice',
			url: 'post.php',
			success: function(msg) {
				$('div#notice').hide();
				$("#message")[0].value="";
				$("#chatzone").show();
				$("#chatzone").append(msg);
				$("#chatzone")[0].scrollTop=$("#chatzone")[0].scrollHeight-$("#chatzone")[0].offsetHeight;
				$().setBg();
			}
		}); 

	 return false; 

   }); 
});