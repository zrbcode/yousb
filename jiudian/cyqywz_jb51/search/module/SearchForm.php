<?php

/*
	[�������] ȫվ������
	[���÷�Χ] ȫվ
*/


function SearchForm(){

	global $msql,$fsql;
	
	
	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	
	$key=htmlspecialchars($_GET["key"]);
	$myord=htmlspecialchars($_GET["myord"]);
	$myshownums=htmlspecialchars($_GET["myshownums"]);


	//ģ�����
	$Temp=LoadTemp($tempname);

	$var=array (
	'coltitle' => $coltitle,
	'myshownums' => $myshownums, 
	'myord' => $myord, 
	'key' => $key
	);

	$str=ShowTplTemp($Temp,$var);

	return $str;


}
?>