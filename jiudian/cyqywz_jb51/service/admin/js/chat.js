<!--


//回复工单
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
							}
						});
					}
			}
		});

	},5000);


	//快捷回复短语
	$("#changback").change(function(){
		var changid=$("#changback")[0].value;
		if(changid!="0"){
			$.ajax({
				type: "POST",
				url:"post.php",
				data: "act=getchang&changid="+changid,
				success: function(msg){
					$("#message")[0].value=msg;
				}
			});
		
		}
	});
	

	//CTRL_ENTER提交
	$("#message").keydown(function(){
		 if(window.event.ctrlKey&&window.event.keyCode==13) { 
            $('#backForm').submit(); 
        } 

	});

	//表单提交
	$('#backForm').submit(function(){

		var qusid=$("#qusid")[0].value;
		var stat=$("#stat")[0].value;

		//对不是匿名提交的工单，必须回复才能修改状态
		if(stat!="5x" && $("#message")[0].value==""){
			alert("请输入回复内容");
			return false;
		}

		$('#backForm').ajaxSubmit({
			target: 'div#notice',
			url: 'post.php',
			success: function(msg) {
				if(stat=="5x"){
					$('div#notice').hide();
					self.location='feedback_do.php';
				}else{
					$('div#notice').hide();
					$("#message")[0].value="";
					$("#chatzone").show();
					$("#chatzone").append(msg);
					$("#chatzone")[0].scrollTop=$("#chatzone")[0].scrollHeight-$("#chatzone")[0].offsetHeight;
				}
				
			}
		}); 

	 return false; 

   }); 
});



-->