<?php


function PhotoMyCat(){

	global $fsql,$tsql;


	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

	$memberid=$_COOKIE["MEMBERID"];

	$memberid=htmlspecialchars($memberid);



	//ģ�����
	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);

	$str=$TempArr["start"];
	

	$fsql->query("select * from {P}_photo_pcat where memberid='$memberid' order by xuhao ");

	while($fsql->next_record()){
		$catid=$fsql->f('catid');
		$cat=$fsql->f('cat');
		$xuhao=$fsql->f('xuhao');

		$var=array (
		'catid' => $catid,
		'cat' => $cat, 
		'xuhao' => $xuhao
		);

		$str.=ShowTplTemp($TempArr["list"],$var);
		
		

	}

	$str.=$TempArr["end"];

	return $str;


}

?>