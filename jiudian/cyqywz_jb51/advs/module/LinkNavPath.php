<?php

/*
	[�������] ģ�鵼����
	[���÷�Χ] ģ��
*/


function LinkNavPath(){

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


	//ҳͷ����
	$GLOBALS["pagetitle"]=$GLOBALS["PSET"]["name"];


	$str.=$TempArr["end"];
	return $str;
}

?>