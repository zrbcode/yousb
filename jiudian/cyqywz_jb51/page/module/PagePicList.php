<?php

/*
	[�������] ��ҳ����ͼƬ+����+ժҪ
	[���÷�Χ] ȫվ
*/

function PagePicList(){

	global $fsql,$msql;

		//�������
		$shownums=$GLOBALS["PLUSVARS"]["shownums"];
		$cutword=$GLOBALS["PLUSVARS"]["cutword"];
		$cutbody=$GLOBALS["PLUSVARS"]["cutbody"];
		$picw=$GLOBALS["PLUSVARS"]["picw"];
		$pich=$GLOBALS["PLUSVARS"]["pich"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$groupid=$GLOBALS["PLUSVARS"]["groupid"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$fittype=$GLOBALS["PLUSVARS"]["fittype"];

		if($groupid!=0 && $groupid!=""){
			$fsql->query("select folder,groupname from {P}_page_group where id='$groupid' limit 0,1");
			if($fsql->next_record()){
				$folder=$fsql->f('folder');
				$groupname=$fsql->f('groupname');
			}
		}else{
			$str="NO GROUPID";
			return $str;
		}

		//ҳͷ���ⶨ��
		$GLOBALS["pagetitle"]=$groupname;
		$GLOBALS["channel"]=$groupname;
		



		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];
		

		$fsql->query("select * from {P}_page where groupid='$groupid' order by xuhao limit 0,$shownums");

		while($fsql->next_record()){
			
			$id=$fsql->f('id');
			$title=$fsql->f('title');
			$src=$fsql->f('src');
			$memo=$fsql->f('memo');
			$url=$fsql->f('url');
			$pagefolder=$fsql->f('pagefolder');

			//���ӣ��������ת��ַ��������ת 20090503
			if(strlen($url)>1){
				if(substr($url,0,7)=="http://"){
					$link=$url;
				}else{
					$link=ROOTPATH.$url;
				}
			}else{
				//����ж���ҳ�����ȶ���ҳ
				if($pagefolder!="" && file_exists(ROOTPATH."page/".$folder."/".$pagefolder.".php")){
					$link=ROOTPATH."page/".$folder."/".$pagefolder.".php";
				}else{
					if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."page/".$folder."/".$id.".html")){
						$link=ROOTPATH."page/".$folder."/".$id.".html";
					}else{
						$link=ROOTPATH."page/".$folder."/?".$id.".html";
					}
				}
			}

			if($cutword!="0"){$title=csubstr($title,0,$cutword);}
			if($cutbody!="0"){$memo=csubstr($memo,0,$cutbody);}

			$memo=nl2br($memo);

			if($src==""){$src="page/pics/nopic.gif";}
			
			$src=ROOTPATH.$src;



			//ģ���ǩ����

			$var=array (
			'title' => $title, 
			'memo' => $memo,
			'link' => $link,
			'src' => $src,
			'picw' => $picw,
			'pich' => $pich,
			'target' => $target
			);
			$str.=ShowTplTemp($TempArr["list"],$var);

		}

		$var=array(
			'fittype' => $fittype
		);
		$str.=ShowTplTemp($TempArr["end"],$var);


		return $str;

}

?>