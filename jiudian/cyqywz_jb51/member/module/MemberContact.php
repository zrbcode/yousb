<?php


function MemberContact(){

	global $msql,$fsql;

	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	
	$memberid=$_COOKIE["MEMBERID"];
	$memberid=htmlspecialchars($memberid);

	
	//��ȡ��Ա����
	$msql->query("select * from {P}_member where memberid='$memberid'");
	if($msql->next_record()){
		$name=$msql->f('name');
		$addr=$msql->f('addr');
		$tel=$msql->f('tel');
		$mov=$msql->f('mov');
		$postcode=$msql->f('postcode');
		$email=$msql->f('email');
		$qq=$msql->f('qq');
		$msn=$msql->f('msn');
	}



	$var=array (
		'addr' => $addr, 
		'tel' => $tel, 
		'mov' => $mov, 
		'postcode' => $postcode, 
		'email' => $email, 
		'name' => $name, 
		'qq' => $qq, 
		'msn' => $msn
	);


	//ģ�����
	$Temp=LoadTemp($tempname);
	$str=ShowTplTemp($Temp,$var);

	return $str;

}



?>