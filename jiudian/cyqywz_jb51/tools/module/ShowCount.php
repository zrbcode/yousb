<?php

/*
	[�������] ����ͳ��
	[���÷�Χ] ȫվ
*/

function ShowCount() { 
	


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

	$Temp=LoadTemp($tempname);

	$count="<script>document.write(\"<script src=".ROOTPATH."tools/stat.php?nowpage=\"+window.location.href+\"&reffer=\"+escape(document.referrer)+\"><\/script>\")</script>";

	$var=array (
		'coltitle' => $coltitle,
		'count' => $count
	);

	$str=ShowTplTemp($Temp,$var);
	return $str;


		
}



?>