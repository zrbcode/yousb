<?php

/*
	[�������] ����������
	[���÷�Χ] ����ҳ
*/


function NewsSearchForm(){

	global $msql,$fsql;
	


	
	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	

	//��ַ������
	if(strstr($_SERVER["QUERY_STRING"],".html")){
		$Arr=explode(".html",$_SERVER["QUERY_STRING"]);
		$nowcatid=$Arr[0];
	}elseif($_GET["catid"]>0){
		$nowcatid=$_GET["catid"];
	}else{
		$nowcatid=0;
	}

	$nowcatid=htmlspecialchars($nowcatid);

	$key=htmlspecialchars($_GET["key"]);
	$myord=htmlspecialchars($_GET["myord"]);
	$myshownums=htmlspecialchars($_GET["myshownums"]);
		
		$fsql->query("select * from {P}_news_cat where pid='0'");
		while($fsql->next_record()){
			$cat=$fsql->f('cat');
			$catid=$fsql->f('catid');
			if($nowcatid==$catid){
				$catlist.="<option value='".$catid."' selected>".$cat."</option>";
			}else{
				$catlist.="<option value='".$catid."'>".$cat."</option>";
			}
		}

	

	//ģ�����
	$Temp=LoadTemp($tempname);

	$var=array (
	'coltitle' => $coltitle,
	'myshownums' => $myshownums, 
	'myord' => $myord, 
	'key' => $key, 
	'catlist' => $catlist
	);

	$str=ShowTplTemp($Temp,$var);

	return $str;


}
?>