<?php

/*
	[�������] ����������
	[���÷�Χ] ��������ҳ
*/


function PageContent(){

	global $fsql;


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$pagename=$GLOBALS["PLUSVARS"]["pagename"];

	//��������벻ͬҳ��ʱ�������ж�
	if(strstr($_SERVER["QUERY_STRING"],".html")){
		$idArr=explode(".html",$_SERVER["QUERY_STRING"]);
		$id=$idArr[0];
		$scl=" where id='$id' ";
	}elseif(isset($_GET["id"]) && $_GET["id"]!=""){
		$id=$_GET["id"];
		$scl=" where id='$id' ";
	}elseif(strstr($pagename,"_")){
		//ֱ�ӷ��ʶ���������ҳʱ
		$arr=explode("_",$pagename);
		if(sizeof($arr)==2){
			$fsql->query("select id from {P}_page_group where folder='$arr[0]'");
			if($fsql->next_record()){
				$groupid=$fsql->f('id');
			}
			$scl=" where groupid='$groupid' and pagefolder='$arr[1]'";
		}
	}else{
		//ֱ�ӷ�����ҳ��ʱ�ҵ������һҳ
		$fsql->query("select id from {P}_page_group where folder='$pagename'");
		if($fsql->next_record()){
			$groupid=$fsql->f('id');
		}
		$scl=" where groupid='$groupid' order by xuhao limit 0,1";
	}

	


	//ģ�����
	$Temp=LoadTemp($tempname);


	$fsql->query("select * from {P}_page $scl ");
	if($fsql->next_record()){
		$body=$fsql->f('body');
		$title=$fsql->f('title');
	}
	

	//ҳͷ���ⶨ��
	$GLOBALS["pagetitle"]=$title;
	$GLOBALS["channel"]=$title;


	$var=array (
		'coltitle' => $coltitle,
		'body' => $body, 
		'title' => $title, 
	);

    $str=ShowTplTemp($Temp,$var);
	return $str;

}

?>