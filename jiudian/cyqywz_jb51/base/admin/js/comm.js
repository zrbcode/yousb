


//������Ȩȫѡ
$(document).ready(function() {
	$("#selAll").click(function(){

		var getObj = $('.authcheckbox');
		getObj.each(function(id) {
			if($("#selAll")[0].checked==true){
				this.checked=true;
			}else{
				this.checked=false;
			}
		});
		
	
	});
});

