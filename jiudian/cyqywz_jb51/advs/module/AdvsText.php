<?php

/*
	[�������] ���ֹ��λ
	[���÷�Χ] ȫվ
*/

function AdvsText() { 
	
	global $msql;


	$groupid=$GLOBALS["PLUSVARS"]["groupid"];
	$link=$GLOBALS["PLUSVARS"]["link"];
	
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];


	$msql->query("select * from {P}_advs_text where id='$groupid'");
	if($msql->next_record()){
		$text=$msql->f('text');
		$link=$msql->f('url');
	}

	$Temp=LoadTemp($tempname);


	$var=array (
		'text' => $text,
		'link' => $link
	);
	
		$str=ShowTplTemp($Temp,$var);

	return $str;


		
}



?>