<?php


function MemberAccount(){

	global $msql,$fsql;

	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	
	$memberid=$_COOKIE["MEMBERID"];
	$memberid=htmlspecialchars($memberid);

	
	//��ȡ��Ա����
	$msql->query("select * from {P}_member where memberid='$memberid'");
	if($msql->next_record()){
		$user=$msql->f('user');
		$email=$msql->f('email');
	}


	$var=array (
		'user' => $user, 
		'email' => $email, 
		'password' => $password
	);


	//ģ�����
	$Temp=LoadTemp($tempname);
	$str=ShowTplTemp($Temp,$var);

	return $str;

}



?>