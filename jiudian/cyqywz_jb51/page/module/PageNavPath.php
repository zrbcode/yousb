<?php

/*
	[�������] �Զ���ҳģ�鵼����
	[���÷�Χ] �Զ���ҳģ��
*/


function PageNavPath(){

	global $msql;


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$pagename=$GLOBALS["PLUSVARS"]["pagename"];

	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);


	$var=array (
		'sitename' => $GLOBALS["CONF"]["SiteName"],
		'channel' => $GLOBALS["channel"],
	);

	$str=ShowTplTemp($TempArr["start"],$var);



	$str.=$TempArr["end"];
	return $str;
}

?>