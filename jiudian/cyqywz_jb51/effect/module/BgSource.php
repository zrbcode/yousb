<?php

/*
	[�������] �����ز�
	[���÷�Χ] ȫվ
*/

function BgSource() { 

	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$sourceurl=$GLOBALS["PLUSVARS"]["sourceurl"];

	$Temp=LoadTemp($tempname);

	$var=array (
		'sourceurl' => $sourceurl
	);

	$str=ShowTplTemp($Temp,$var);


	return $str;


		
}



?>