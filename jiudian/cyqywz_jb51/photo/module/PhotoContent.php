<?php

/*
	[�������] ͼƬ������
	[���÷�Χ] ����ҳ
*/


function PhotoContent(){

	global $fsql,$msql;


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


	$fsql->query("select * from {P}_photo_con where id='$id'");
	if($fsql->next_record()){
		$catid=$fsql->f('catid');
		$catpath=$fsql->f('catpath');
		$memberid=$fsql->f('memberid');
		$memo=$fsql->f('memo');
		$dtime=$fsql->f('dtime');
		$title=$fsql->f('title');
		$source=$fsql->f('source');
		$author=$fsql->f('author');
		$iffb=$fsql->f('iffb');
		$cl=$fsql->f('cl');
		$secure=$fsql->f('secure');
		$src=$fsql->f('src');
		$tags=$fsql->f('tags');
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
		
	}else{
		$str.=$TempArr["err1"];
		return $str;
	}

	$fsql->query("update {P}_photo_con set cl=cl+1 where id='$id'");
	
	//����У��-����Ա�ɿ�
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
		if(AdminCheckModle()==false && (!isLogin() || $_COOKIE["SE"]<$secure)){
			$str.=$TempArr["err2"];
			return $str;
		}
	}

	//��ǩ
	if($tags!=""){
		$tagsarr=explode(",",$tags);
		for($i=0;$i<sizeof($tagsarr);$i++){
			if($tagsarr[$i]!=""){
				$tagstr.="<a href='".ROOTPATH."photo/class/index.php?showtag=".urlencode($tagsarr[$i])."'>".$tagsarr[$i]."</a> ";
			}
		}
		$showtag="block";
	}else{
		$showtag="none";
	}

	//������
	$msql->query("select count(id) from {P}_comment where catid='2' and rid='$id'");
	if($msql->next_record()){
		$commentcount=$msql->f('count(id)');
	}

	//�����ܺ�
	$msql->query("select sum(pj1) from {P}_comment where catid='2' and rid='$id'");
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
	$commentutl=ROOTPATH."comment/class/index.php?catid=2&rid=".$id;


	$dtime=date("Y-m-d H:i:s",$dtime);

	if($src==""){$src="photo/pics/nopic.gif";}
	$src=ROOTPATH.$src;

	if($memo!=""){
		$memo=nl2br($memo);
		$showmemo="block";
	}else{
		$showmemo="none";
	}

	
	//��������ַ
	if($memberid!="0"){
		$memberurl=ROOTPATH."member/home.php?mid=".$memberid;
	}else{
		$memberurl="#";
	}


	$var=array (
		'sitename' => $GLOBALS["CONF"]["SiteName"],
		'id' => $id, 
		'body' => $body, 
		'memo' => $memo, 
		'showmemo' => $showmemo, 
		'src' => $src, 
		'dtime' => $dtime, 
		'title' => $title, 
		'source' => $source, 
		'iffb' => $iffb, 
		'author' => $author, 
		'tagstr' => $tagstr, 
		'showtag' => $showtag, 
		'commentutl' => $commentutl, 
		'commentcount' => $commentcount, 
		'memberurl' => $memberurl, 
		'centavg' => $centavg, 
		'zhichi' => $zhichi, 
		'fandui' => $fandui, 
		'cl' => $cl
	);

    $str=ShowTplTemp($TempArr["start"],$var);


	
	/*
	//������
	$propstr=$TempArr["list"];

	$i=1;
	$msql->query("select * from {P}_photo_prop where catid='$catid' order by xuhao");
	while($msql->next_record()){
		$propname=$msql->f('propname');
		$pn="prop".$i;

		$pstr=str_replace("{#propname#}",$propname,$propstr);
		$pstr=str_replace("{#prop#}",$$pn,$pstr);

		$str.=$pstr;

	$i++;
	}


	$var=array (
		'id' => $id, 
		'memo' => $memo, 
		'src' => $src, 
		'dtime' => $dtime, 
		'title' => $title, 
		'source' => $source, 
		'iffb' => $iffb, 
		'author' => $author, 
		'cl' => $cl
	);

    $str.=ShowTplTemp($TempArr["end"],$var);
	*/

	$str.=$TempArr["end"];

	return $str;


}

?>