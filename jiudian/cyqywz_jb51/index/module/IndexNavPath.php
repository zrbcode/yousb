<?php

/*
	[�������] ��ҳ������
	[���÷�Χ] ��ҳ
*/


function IndexNavPath(){


	global $msql;


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$pagename=$GLOBALS["PLUSVARS"]["pagename"];

	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);


	$var=array (
		'coltitle' => $coltitle,
		'sitename' => $GLOBALS["CONF"]["SiteName"],
	);

	$str=ShowTplTemp($TempArr["start"],$var);

	$str.=$TempArr["end"];
	return $str;
}

?>