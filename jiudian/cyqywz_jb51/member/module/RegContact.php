<?php


function RegContact(){

	global $msql,$fsql;

	
	$memberid=$_COOKIE["MEMBERID"];
	$tempname="tpl_reg_contact.htm";

	
	//��ȡ��Ա����
	$msql->query("select * from {P}_member where memberid='$memberid'");
	if($msql->next_record()){
		$name=$msql->f('name');
		$sex=$msql->f('sex');
		$addr=$msql->f('addr');
		$tel=$msql->f('tel');
		$mov=$msql->f('mov');
		$postcode=$msql->f('postcode');
		$email=$msql->f('email');
		$qq=$msql->f('qq');
		$msn=$msql->f('msn');
		$membertypeid=$msql->f('membertypeid');
		$membergroupid=$msql->f('membergroupid');
	}



	$var=array (
		'membertypeid' => $membertypeid, 
		'name' => $name, 
		'addr' => $addr, 
		'tel' => $tel, 
		'mov' => $mov, 
		'postcode' => $postcode, 
		'email' => $email, 
		'qq' => $qq, 
		'msn' => $msn
	);


	//ģ�����
	$Temp=LoadTemp($tempname);
	$str=ShowTplTemp($Temp,$var);

	return $str;

}



?>