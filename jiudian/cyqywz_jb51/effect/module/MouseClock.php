<?php

/*
	[�������] ������ܵ�ʱ��
	[���÷�Χ] ȫվ
*/

function MouseClock() { 
	


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