


//ͼƬͶƱϵͳ֮ͼƬ����ȫѡ
$(document).ready(function() {
	$("#photoPollSelAll").click(function(){

		var getObj = $('.photopollcheckbox');
		getObj.each(function(id) {
			if($("#photoPollSelAll")[0].checked==true){
				this.checked=true;
			}else{
				this.checked=false;
			}
		});
		
	
	});
});



//QQ�ͷ�ϵͳ֮QQ����ȫѡ
$(document).ready(function() {
	$("#qqSelAll").click(function(){

		var getObj = $('.qqcheckbox');
		getObj.each(function(id) {
			if($("#qqSelAll")[0].checked==true){
				this.checked=true;
			}else{
				this.checked=false;
			}
		});
		
	
	});
});

