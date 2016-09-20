<!--

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


	//存档
	$(".qushis").click(function(){
		var qusid=this.id.substr(7);
		$.ajax({
			type: "POST",
			url: "post.php",
			data: "act=qushis&qusid="+qusid,
			success: function(msg){
				if(msg=="OK"){
					$("#quslist_"+qusid).remove();
				}else{
					alert(msg);
				}
			}
		});
	});




	//定时检查并更新状态
	setInterval(function(){
		$.ajax({
			type: "POST",
			url: "post.php",
			data: "act=mytaskstat",
			success: function(msg){
				eval("data = "+msg);
				
				$(".quslist").each(function(){
					var listid=this.id;
					var dstr="data."+listid;
					var stat=eval(dstr);
					var qusid=listid.substr(8);

					switch(stat){
						case "1" :
							$("td#showstat_"+qusid).html("<span class='stat1'>尚未解决</span>");
						break;
						case "2" :
							$("td#showstat_"+qusid).html("<span class='stat2'>已经受理</span>");
						break;
						case "3" :
							$("td#showstat_"+qusid).html("<span class='stat3'>正在处理</span>");
						break;
						case "4" :
							$("td#showstat_"+qusid).html("<span class='stat4'>等待回应</span>");
						break;
						case "5" :
							$("td#showstat_"+qusid).html("<span class='stat5'>处理完成</span>");
							$("#qushis_"+qusid)[0].disabled=false;
						break;
						case "6" :
							$("td#showstat_"+qusid).html("<span class='stat6'>已经存档</span>");
						break;
					}

				});
			}
		});

	},5000);

		
		
		
	

});



-->