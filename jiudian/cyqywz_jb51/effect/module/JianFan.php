<?php

/*
	[�������] ��ת�����
	[���÷�Χ] ȫվ
*/

function JianFan() { 
	


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

	$Temp=LoadTemp($tempname);

	$var=array (
		'coltitle' => $coltitle
	);

	$str=ShowTplTemp($Temp,$var);
	return $str;


		
}



?>