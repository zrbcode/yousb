<?php

/*
	[�������] ��Ա����������
	[���÷�Χ] ��Ա���¼���ҳ
*/


function MemberNewsSearchForm(){

	global $msql,$fsql;
	
	
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	

	//��ַ������
	if(isset($_GET["mid"]) && $_GET["mid"]!="" && $_GET["mid"]!="0"){
		$mid=$_GET["mid"];
	}else{
		return "";
	}
	$mid=htmlspecialchars($mid);

	$key=htmlspecialchars($_GET["key"]);
	$myord=htmlspecialchars($_GET["myord"]);
	$myshownums=htmlspecialchars($_GET["myshownums"]);
	$pcatid=htmlspecialchars($_GET["pcatid"]);
		
		$fsql->query("select * from {P}_news_pcat where memberid='$mid'  order by xuhao");
		while($fsql->next_record()){
			$cat=$fsql->f('cat');
			$catid=$fsql->f('catid');
			if($pcatid==$catid){
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
	'mid' => $mid, 
	'catlist' => $catlist
	);

	$str=ShowTplTemp($Temp,$var);

	return $str;


}
?>