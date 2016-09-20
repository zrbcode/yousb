<?php

/*
	[�������] ����������
	[���÷�Χ] ����ҳ
*/


function NewsContent(){

	global $fsql,$msql,$strNoSource;


	$tempname=$GLOBALS["PLUSVARS"]["tempname"];


	//��ȡ��ַ������
	if(strstr($_SERVER["QUERY_STRING"],".html")){
		$idArr=explode(".html",$_SERVER["QUERY_STRING"]);
		$id=$idArr[0];
	}elseif(isset($_GET["id"]) && $_GET["id"]!=""){
		$id=$_GET["id"];
	}

	$id=htmlspecialchars($id);



	//ģ�����
	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);


	$fsql->query("select * from {P}_news_con where id='$id'");
	if($fsql->next_record()){
		$catid=$fsql->f('catid');
		$catpath=$fsql->f('catpath');
		$memo=$fsql->f('memo');
		$memberid=$fsql->f('memberid');
		$body=$fsql->f('body');
		$dtime=$fsql->f('dtime');
		$title=$fsql->f('title');
		$source=$fsql->f('source');
		$author=$fsql->f('author');
		$iffb=$fsql->f('iffb');
		$cl=$fsql->f('cl');
		$tags=$fsql->f('tags');
		$fileurl=$fsql->f('fileurl');
		$downcount=$fsql->f('downcount');
		$secure=$fsql->f('secure');
		$src=$fsql->f('src');
		$prop1=$fsql->f('prop1');
		$prop2=$fsql->f('prop2');
		$prop3=$fsql->f('prop3');
		$prop4=$fsql->f('prop4');
		$prop5=$fsql->f('prop5');
		$prop6=$fsql->f('prop6');
		$prop7=$fsql->f('prop7');
		$prop8=$fsql->f('prop8');
		$prop9=$fsql->f('prop9');
		$prop10=$fsql->f('prop10');
		$prop11=$fsql->f('prop11');
		$prop12=$fsql->f('prop12');
		$prop13=$fsql->f('prop13');
		$prop14=$fsql->f('prop14');
		$prop15=$fsql->f('prop15');
		$prop16=$fsql->f('prop16');
		$prop17=$fsql->f('prop17');
		$prop18=$fsql->f('prop18');
		$prop19=$fsql->f('prop19');
		$prop20=$fsql->f('prop20');
		$zhichi=$fsql->f('zhichi');
		$fandui=$fsql->f('fandui');
		$downcent=$fsql->f('downcent');
		$downcentid=$fsql->f('downcentid');

	}else{
		$str.=$TempArr["err1"];
		return $str;
	}

	$fsql->query("update {P}_news_con set cl=cl+1 where id='$id'");
	
	//����״̬У��-����Ա�ɿ�
	if(AdminCheckModle()==false && $iffb!="1"){
		$str.=$TempArr["err1"];
		return $str;
	}

	//����ȫ�ֱ�����ʹ�����Ķ�Ȩ������ʱ�����ɾ�̬ҳ
	$GLOBALS["consecure"]=$secure;


	//ҳͷ���ⶨ��
	$GLOBALS["pagetitle"]=$title;
	

	//�ж��Ķ�Ȩ��
	if($secure>0){
		if(!isLogin() || $_COOKIE["SE"]<$secure){
			$str.=$TempArr["err2"];
			return $str;
		}
	}


	$dtime=date("Y-m-d H:i:s",$dtime);
	
	if(strlen($memo)>0){
		$showmemo="block";
	}else{
		$showmemo="none";
	}

	if($src==""){$src="news/pics/nopic.gif";}
	$src=ROOTPATH.$src;
	
	
	//��������
	
	if($fileurl!="" && $fileurl!="http://"){
		$showdown="block";
		$farr=explode("/",$fileurl);
		$fname=$farr[sizeof($farr)-1];
	}else{
		$showdown="none";
	}

	//���ؿ۵��ж�
	if($downcent>0){
		$centname="centname".$downcentid;
		$msql->query("select * from {P}_member_centset");
		if($msql->next_record()){
			$centname1=$msql->f('centname1');
			$centname2=$msql->f('centname2');
			$centname3=$msql->f('centname3');
			$centname4=$msql->f('centname4');
			$centname5=$msql->f('centname5');
		}
		$downcentstr=$$centname.$downcent;
	}


	//��ǩ
	if($tags!=""){
		$tagsarr=explode(",",$tags);
		for($i=0;$i<sizeof($tagsarr);$i++){
			if($tagsarr[$i]!=""){
				$tagstr.="<a href='".ROOTPATH."news/class/index.php?showtag=".urlencode($tagsarr[$i])."'>".$tagsarr[$i]."</a> ";
			}
		}
		$showtag="block";
	}else{
		$showtag="none";
	}

	//��Դ
	if($source==""){
		$source=$GLOBALS["CONF"]["SiteName"];
	}

	//������
	$msql->query("select count(id) from {P}_comment where catid='1' and rid='$id'");
	if($msql->next_record()){
		$commentcount=$msql->f('count(id)');
	}

	//�����ܺ�
	$msql->query("select sum(pj1) from {P}_comment where catid='1' and rid='$id'");
	if($msql->next_record()){
		$totalcent=$msql->f('sum(pj1)');
	}

	//����ƽ����
	if($commentcount>0){
		$centavg=ceil($totalcent/$commentcount);
	}else{
		$centavg=0;
	}

	//������ַ
	$commentutl=ROOTPATH."comment/class/index.php?catid=1&rid=".$id;

	//��������ַ
	if($memberid!="0"){
		$memberurl=ROOTPATH."member/home.php?mid=".$memberid;
	}else{
		$memberurl="#";
	}


	//������
	$propstr="";

	$i=1;
	$msql->query("select * from {P}_news_prop where catid='$catid' order by xuhao");
	while($msql->next_record()){
		$propname=$msql->f('propname');
		$pn="prop".$i;
		$pstr=str_replace("{#propname#}",$propname,$TempArr["list"]);
		$pstr=str_replace("{#prop#}",$$pn,$pstr);

		$propstr.=$pstr;

	$i++;
	}

	$var=array (
		'sitename' => $GLOBALS["CONF"]["SiteName"],
		'id' => $id, 
		'body' => $body, 
		'propstr' => $propstr, 
		'memo' => $memo, 
		'src' => $src, 
		'tagstr' => $tagstr, 
		'showtag' => $showtag, 
		'showmemo' => $showmemo, 
		'dtime' => $dtime, 
		'title' => $title, 
		'source' => $source, 
		'iffb' => $iffb, 
		'author' => $author, 
		'cl' => $cl, 
		'memberurl' => $memberurl, 
		'commentutl' => $commentutl, 
		'commentcount' => $commentcount, 
		'centavg' => $centavg, 
		'zhichi' => $zhichi, 
		'fandui' => $fandui, 
		'fileurl' => $fileurl, 
		'downcentstr' => $downcentstr, 
		'fname' => $fname, 
		'showdown' => $showdown, 
		'downcount' => $downcount
	);

    $str=ShowTplTemp($TempArr["start"],$var);

	return $str;


}

?>