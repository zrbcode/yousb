<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");

$act = $_POST['act'];

switch($act){


	//客服表单提交
	case "formsend":
		
		$REMOTE_ADDR=$_SERVER["REMOTE_ADDR"];
		$groupid=htmlspecialchars($_POST["groupid"]);
		$email=htmlspecialchars($_POST["email"]);
		$title=htmlspecialchars($_POST["title"]);
		$name=htmlspecialchars($_POST["name"]);
		$sex=htmlspecialchars($_POST["sex"]);
		$tel=htmlspecialchars($_POST["tel"]);
		$address=htmlspecialchars($_POST["address"]);
		$email=htmlspecialchars($_POST["email"]);
		$url=htmlspecialchars($_POST["url"]);
		$qq=htmlspecialchars($_POST["qq"]);
		$company=htmlspecialchars($_POST["company"]);
		$company_address=htmlspecialchars($_POST["company_address"]);
		$zip=htmlspecialchars($_POST["zip"]);
		$fax=htmlspecialchars($_POST["fax"]);
		$products_id=htmlspecialchars($_POST["products_id"]);
		$products_name=htmlspecialchars($_POST["products_name"]);
		$products_num=htmlspecialchars($_POST["products_num"]);
		$content=htmlspecialchars($_POST["content"]);
		$custom1=htmlspecialchars($_POST["custom1"]);
		$custom2=htmlspecialchars($_POST["custom2"]);
		$custom3=htmlspecialchars($_POST["custom3"]);
		$custom4=htmlspecialchars($_POST["custom4"]);
		$custom5=htmlspecialchars($_POST["custom5"]);
		$custom6=htmlspecialchars($_POST["custom6"]);
		$custom7=htmlspecialchars($_POST["custom7"]);
		$nomember=htmlspecialchars($_POST["nomember"]);
		$ip=$_SERVER["REMOTE_ADDR"];


		//非匿名提交且未登录时调用登录窗口
		if($nomember!="1" && isLogin()==false){
			echo "NOLOGIN";
			exit;
		}


		
		$fsql -> query ("select ifano,allowmembertype from {P}_service_group where id='$groupid'");
		if($fsql -> next_record ()) {
			$ifano=$fsql->f('ifano');
			$allowmembertype=$fsql->f('allowmembertype');

			//判断分组是否允许匿名提交
			if($ifano=="0" && $nomember=="1"){
				echo $FormSendNTC3;
				exit;
			}
			
			//判断用户使用许可
			if($nomember!="1"){
				$membertypeid=$_COOKIE["MEMBERTYPEID"];
				if(!strstr($allowmembertype,"|".$membertypeid."|")){
					echo $FormSendNTC4;
					exit;
				}
			}

		}else{
			echo "Error: NO GROUPID";
			exit;
		}

	



		$fsql -> query ("select field_caption,field_name,field_null,value_repeat from {P}_service where groupid='$groupid' and use_field = '1' order by xuhao");
		while ($fsql -> next_record ()) {
			$field_caption = $fsql -> f ('field_caption');
			$field_name = $fsql -> f ('field_name');
			$field_null = $fsql -> f ('field_null');
			$value_repeat = $fsql -> f ('value_repeat');
			$nowvalue=$_POST[$field_name];
			
			if ($field_null == "1" && (!isset ($nowvalue) || $nowvalue == "")) {
				echo $FormSendNTC1.$field_caption;
				exit;
			}


			if ($value_repeat == "0" && $nowvalue != "") {
				$tsql -> query ("select id from {P}_service_feedback where " . $field_name . "='" . $nowvalue . "' and groupid = '" .$groupid . "'");
				if ($tsql -> next_record ()) {
					echo $field_caption.$FormSendNTC2;
					exit;
				}
			}
		}

		$ImgCode=$_POST["ImgCode"];
		
		$Ic=$_COOKIE["CODEIMG"];
		$Ic=strrev($Ic)+5*2-9;
		$Ic=substr ($Ic,0,4);

		if($ImgCode=="" || $Ic!=$ImgCode){
			echo $strIcErr;
			exit;
		}

		$nowtime = time ();
		
		if($nomember=="1"){
			$memberid="-1";
		}else{
			$memberid=$_COOKIE["MEMBERID"];
		}

		

		$tsql -> query ("insert into {P}_service_feedback set
		`groupid`='$groupid',
		`title`='$title',
		`content`='$content',
		`name`='$name',
		`sex`='$sex',
		`tel`='$tel',
		`address`='$address',
		`email`='$email',
		`url`='$url',
		`qq`='$qq',
		`company`='$company',
		`company_address`='$company_address',
		`zip`='$zip',
		`fax`='$fax',
		`products_id`='$products_id',
		`products_name`='$products_name',
		`products_num`='$products_num',
		`custom1`='$custom1',
		`custom2`='$custom2',
		`custom3`='$custom3',
		`custom4`='$custom4',
		`custom5`='$custom5',
		`custom6`='$custom6',
		`custom7`='$custom7',
		`ip`='$ip',
		`time`='$nowtime',
		`uptime`='$nowtime',
		`memberid`='$memberid',
		`stat`='0',
		`adminid`='0',
		`coadminid`='0'
		 ");


		//匿名和不匿名返回不同提示，并转向不同位置
		if($nomember=="1"){
			echo "ANOOK";
			exit;
		}else{
			echo "OK";
			exit;
		}


	break;


	//回复提交
	case "backsend" :

		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];

		$id=$_POST["id"];
		$message=htmlspecialchars($_POST["message"]);
		$now=time();
	

		//没有受理的不能直接发言，否则无法受理
		$msql->query("select stat from {P}_service_feedback where memberid='$memberid' and id='$id'");
		if($msql->next_record()){
		   $nowstat=$msql->f('stat');
		   if($nowstat=="0"){
				echo $strServiceNTC2;
				exit;
			}
		}else{
			echo $strServiceNTC1;
			exit;
		}
		
		
		//回复入库
		$msql->query("insert into {P}_service_chat set 
		rid='$id',
		memberid='$memberid',
		adminid='',
		content='$message',
		dtime='$now',
		fromname='".$_COOKIE["MEMBERPNAME"]."',
		fromtype='member'
		");
			
		
		$msql->query("update {P}_service_feedback set stat='1',uptime='$now' where memberid='$memberid' and id='$id'");

		
		$str="<div class='chatlist'><div class='chattime'>".date("Y/m/d H:i:s",$now)."&nbsp; ".$_COOKIE["MEMBERPNAME"].":</div>";
		$str.="<div>".stripslashes(nl2br($message))."</div></div>";


		echo $str;
		exit;

	break;


	//显示聊天记录
	case "getbacklist" :

		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];

		$id=$_POST["id"];
		
		$str="";
		$msql->query("select * from {P}_service_chat where rid='$id' and memberid='$memberid' order by dtime");
		while($msql->next_record()){
			$chatid=$msql->f('id');
			$fromtype=$msql->f('fromtype');
			$chatcontent=$msql->f('content');
			$chatfromname=$msql->f('fromname');
			$chatmemberid=$msql->f('memberid');
			$chatadminid=$msql->f('adminid');
			$dtime=$msql->f('dtime');
			$dtime=date("Y/m/d H:i:s",$dtime);
			if($fromtype=="admin"){
				$lastid=$chatid;
			}

			$str.="<div class='chatlist'><div class='chattime'>".$dtime."&nbsp; ".$chatfromname.":</div>";
			$str.="<div>".nl2br($chatcontent)."</div></div>";
		
		}

		if(!isset($lastid) || $lastid==""){
			$lastid=0;
		}

		$str.="<input  type='hidden' id='newtime' value='".$lastid."' />";

		echo $str;
		exit;

	break;


	//检查客服方是否有新回复
	case "checknew" :
		
		$qusid=$_POST["qusid"];
		$lastid=$_POST["lastid"];
	
		$msql->query("select id from {P}_service_chat where fromtype='admin' and rid='$qusid' and id>$lastid order by dtime desc limit 0,1");
		if($msql->next_record()){
			$chatid=$msql->f('id');
		}

		echo $chatid;
		exit;

	break;


	//获取客服方新回复
	case "getnewchat" :

		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];

		$qusid=$_POST["qusid"];
		$lastid=$_POST["lastid"];
	
		$msql->query("select * from {P}_service_chat where memberid='$memberid' and fromtype='admin' and rid='$qusid' and id>$lastid order by dtime");
		while($msql->next_record()){
			$chatid=$msql->f('id');
			$chatcontent=$msql->f('content');
			$chatfromname=$msql->f('fromname');
			$dtime=$msql->f('dtime');
			$dtime=date("Y/m/d H:i:s",$dtime);

			$str.="<div class='chatlist'>";
			$str.="<div class='chattime'>".$dtime."&nbsp; ".$chatfromname.":</div>";
			$str.="<div>".nl2br($chatcontent)."</div></div>";
		}

		echo $str;
		exit;

	break;



	//处理中问题检查状态
	case "mytaskstat" :
		
	 SecureMember();
	 $memberid=$_COOKIE["MEMBERID"];

	  
	 $str="{";
	 $i=0;
	 $fsql -> query ("select * from {P}_service_feedback where memberid='$memberid' and stat<6 order by uptime desc");
	 while ($fsql->next_record ()) {
		  $id=$fsql->f('id');
		  $stat=$fsql->f('stat');
		  $str.="quslist_".$id.":'".$stat."',";
	 $i++;
	 }
	 if($i>0){
		$str=substr($str,0,-1);
	 }
	 
	 $str.="}";

		echo $str;
		exit;

	break;


}
?>