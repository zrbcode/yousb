<?php

/*
	[�������] ��Ա��ҳ-��Ա���
	[���÷�Χ] ��Ա����
*/

function MemberIntro(){

	global $msql;
		
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

		
		//��ַ������
		if(isset($_GET["mid"]) && $_GET["mid"]!="" && $_GET["mid"]!="0"){
			$mid=$_GET["mid"];
		}else{
			return "";
		}
		$mid=htmlspecialchars($mid);


		$msql->query("select bz from {P}_member where memberid='$mid'");
		if($msql->next_record()){
			$bz=$msql->f('bz');
		}

		$intro=nl2br($bz);

		$Temp=LoadTemp($tempname);

		$var=array(
			'intro' => $intro
		);
		
		$str=ShowTplTemp($Temp,$var);

		return $str;


}

?>