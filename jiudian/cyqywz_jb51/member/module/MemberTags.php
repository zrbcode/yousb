<?php

/*
	[�������] ��Ա�Ƽ�(����ǩ)
	[���÷�Χ] ȫվ
*/

function MemberTags(){

	global $fsql,$msql;

		
		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$shownums=$GLOBALS["PLUSVARS"]["shownums"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tags=$GLOBALS["PLUSVARS"]["tags"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$picw=$GLOBALS["PLUSVARS"]["picw"];
		$pich=$GLOBALS["PLUSVARS"]["pich"];


		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$var=array(
			'coltitle' => $coltitle
		);
		$str=ShowTplTemp($TempArr["start"],$var);

		//��ѯ����
		$scl=" memberid!='0' ";

		//�ж�ƥ���ǩ
		if($tags!=""){
			$tags=$tags.",";
			$scl.=" and tags regexp '$tags' ";
		}

		//��������
		$msql->query("select * from {P}_member_centset");
		if($msql->next_record()){
		$centname1=$msql->f('centname1');
		$centname2=$msql->f('centname2');
		$centname3=$msql->f('centname3');
		$centname4=$msql->f('centname4');
		$centname5=$msql->f('centname5');
		}

		$picnum=1;
		$fsql->query("select * from {P}_member where $scl order by cent1 desc limit 0,$shownums");
		while($fsql->next_record()){
			$mid=$fsql->f('memberid');
			$pname=$fsql->f('pname');
			$nowface=$fsql->f('nowface');
			$tags=$fsql->f('tags');
			$cent1=$fsql->f('cent1');
			$cent2=$fsql->f('cent2');
			$cent3=$fsql->f('cent3');
			$cent4=$fsql->f('cent4');
			$cent5=$fsql->f('cent5');

			$memberurl=ROOTPATH."member/home.php?mid=".$mid;
			$face=ROOTPATH."member/face/".$nowface.".gif";

			$tagsArr=explode(",",$tags);
			$tag1=$tagsArr[0];
			$tag2=$tagsArr[1];
			$tag3=$tagsArr[2];

			//ģ���ǩ����

			$var=array (
			'pname' => $pname, 
			'face' => $face,
			'picw' => $picw,
			'pich' => $pich,
			'tag1' => $tag1,
			'tag2' => $tag2,
			'tag3' => $tag3,
			'memberurl' => $memberurl, 
			'centname1' => $centname1, 
			'centname2' => $centname2, 
			'centname3' => $centname3, 
			'centname4' => $centname4, 
			'centname5' => $centname5, 
			'cent1' => $cent1, 
			'cent2' => $cent2, 
			'cent3' => $cent3, 
			'cent4' => $cent4, 
			'cent5' => $cent5, 
			'target' => $target, 
			'picnum' => $picnum
			);
			$str.=ShowTplTemp($TempArr["list"],$var);


		$picnum++;

		}

		$str.=$TempArr["end"];


		return $str;

}

?>