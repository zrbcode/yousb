<!--


function initSubMenu(mainMenuDiv,subMenuDiv,n){
	if(n==""){n=0;}
	//$("#"+mainMenuDiv+"_"+n)[0].className=mainMenuDiv+"_current";
	$("#"+subMenuDiv).children("ul")[n].style.display="block";

}

function showSubMenu(mainMenuDiv,subMenuDiv,n){
	

	obj=$("#"+subMenuDiv).children("ul");

	for(var i=0;i<obj.length;i++){
		if(i==n){
			obj[i].style.display="block";
			$("#"+subMenuDiv)[0].style.left=$("#"+mainMenuDiv+"_"+i)[0].offsetLeft+8+"px";
			$("#"+mainMenuDiv+"_"+i)[0].className=mainMenuDiv+"_current";
		}else{
			obj[i].style.display="none";
			$("#"+mainMenuDiv+"_"+i)[0].className=mainMenuDiv;
		}
		
	}

}


-->