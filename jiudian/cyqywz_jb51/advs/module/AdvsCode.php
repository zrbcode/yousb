<?php

/*
	[�������] ������
	[���÷�Χ] ȫվ
*/

function AdvsCode() { 
	
	global $msql;


	$code=$GLOBALS["PLUSVARS"]["code"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];


	$Temp=LoadTemp($tempname);


	$var=array (
		'code' => $code
	);
	
	$str=ShowTplTemp($Temp,$var);

	return $str;


		
}



?>