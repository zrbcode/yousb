<?php

/*
	[�������] ��������+��
	[���÷�Χ] ����ҳ

*/

function NewsComment(){

	global $fsql,$tsql,$strGuest;


		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$shownums=$GLOBALS["PLUSVARS"]["shownums"];
		$cutword=$GLOBALS["PLUSVARS"]["cutword"];
		$cutbody=$GLOBALS["PLUSVARS"]["cutbody"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];

		//��ȡ��ַ������
		if(strstr($_SERVER["QUERY_STRING"],".html")){
			$idArr=explode(".html",$_SERVER["QUERY_STRING"]);
			$newsid=$idArr[0];
		}elseif(isset($_GET["id"]) && $_GET["id"]!=""){
			$newsid=$_GET["id"];
		}

		$newsid=htmlspecialchars($newsid);


		$scl=" iffb='1' and catid='1' and pid='0' and rid='$newsid' ";

		$moreurl=ROOTPATH."comment/class/index.php?catid=1&rid=".$newsid;


		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$var=array(
			'coltitle' => $coltitle,
			'moreurl' => $moreurl
		);

		$str=ShowTplTemp($TempArr["start"],$var);

		$fsql->query("select * from {P}_comment where $scl order by dtime desc limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$rid=$fsql->f('rid');
			$memberid=$fsql->f('memberid');
			$title=$fsql->f('title');
			$body=$fsql->f('body');
			$pj1=$fsql->f('pj1');
			$dtime=$fsql->f('dtime');
			$uptime=$fsql->f('uptime');
			$cl=$fsql->f('cl');
			$lastname=$fsql->f('lastname');

			$body=strip_tags($body);

			$tsql->query("select count(id) from {P}_comment where pid='$id' and iffb='1'");
			if($tsql->next_record()){
				$count=$tsql->f('count(id)');
			}

			//�Ƿ�����

			if($memberid=="-1"){
				$pname=$strGuest;
				$nowface="1";
				$memberurl="#";
			}else{
				$tsql->query("select * from {P}_member where memberid='$memberid'");
				if($tsql->next_record()){
					$pname=$tsql->f("pname");
					$nowface=$tsql->f("nowface");
				}
				$memberurl=ROOTPATH."member/home.php?mid=".$memberid;
			}

			

					
			$dtime=date("Y-m-d",$dtime);
			if($cutword!="0"){$title=csubstr($title,0,$cutword);}
			if($cutbody!="0"){$body=csubstr($body,0,$cutbody)." ...";}

			$link=ROOTPATH."comment/html/?".$id.".html";
			$face=ROOTPATH."member/face/".$nowface.".gif";

			$pjstr=pstarnums($pj1,ROOTPATH);

			$var=array (
			'commentid' => $id, 
			'title' => $title, 
			'dtime' => $dtime, 
			'pname' => $pname, 
			'body' => $body, 
			'count' => $count, 
			'cl' => $cl, 
			'link' => $link,
			'lastname' => $lastname,
			'face' => $face, 
			'pjstr' => $pjstr, 
			'memberurl' => $memberurl, 
			'target' => $target
			);
			
			$str.=ShowTplTemp($TempArr["list"],$var);



		}


		//��ȡ����
		$tsql->query("select title from {P}_news_con where id='$newsid'");
		if($tsql->next_record()){
			$title=$tsql->f("title");
		}


		$var=array(
			'title' => $title,
			'commentcatid' => "1",
			'rid' => $newsid,
			'pid' => '',
		);
		$str.=ShowTplTemp($TempArr["end"],$var);


		return $str;

}

?>