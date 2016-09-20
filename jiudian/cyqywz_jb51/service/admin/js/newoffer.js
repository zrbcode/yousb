$(document).ready(function() {
	
	//删除
	$(".qusdel").click(function(){
		var qusid=this.id.substr(7);
		$.ajax({
			type: "POST",
			url: "post.php",
			data: "act=qusdel&qusid="+qusid,
			success: function(msg){
				if(msg=="OK"){
					$("#quslist_"+qusid).remove();
				}else{
					alert(msg);
				}
			}
		});
	});


	//受理
	$(".qusoffer").click(function(){
		var qusid=this.id.substr(9);
		$.ajax({
			type: "POST",
			url: "post.php",
			data: "act=qusoffer&qusid="+qusid,
			success: function(msg){
				if(msg=="OK"){
					$().alertwindow("工单受理成功","look.php?id="+qusid);
				}else{
					alert(msg);
				}
			}
		});
	});


});