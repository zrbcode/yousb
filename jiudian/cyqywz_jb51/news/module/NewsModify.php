<?php


function NewsModify(){


		global $msql,$fsql,$tsql;

		
	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//ģ�����
		$Temp=LoadTemp($tempname);
		

		$id=$_REQUEST["id"];
		$id=htmlspecialchars($id);


		$memberid=$_COOKIE["MEMBERID"];
		$msql->query("select * from {P}_news_con where id='$id' and memberid='$memberid'");
		if($msql->next_record()){
			$catid=$msql->f('catid');
			$mypcatid=$msql->f('pcatid');
			$title=$msql->f('title');
			$body=$msql->f('body');
			$src=$msql->f('src');
			$author=$msql->f('author');
			$source=$msql->f('source');
			$fileurl=$msql->f('fileurl');
			$memo=$msql->f('memo');
			$tags=$msql->f('tags');
			$proj=$msql->f('proj');

		}else{
			return "Invalied ID";
		}


		if($src!=""){
			$icon="image.gif";
			$src=ROOTPATH.$src;
		}else{
			$icon="noimage.gif";
		}

		$body=htmlspecialchars($body);
		$body=Path2Url($body);


		//���˷���
		$fsql -> query ("select * from {P}_news_pcat where memberid='$memberid' order by xuhao");
		while ($fsql -> next_record ()) {
			$pcatid = $fsql -> f ("catid");
			$pcat = $fsql -> f ("cat");
			if($mypcatid==$pcatid){
				$pcatlist.="<option value='".$pcatid."' selected>".$pcat."</option>";
			}else{
				$pcatlist.="<option value='".$pcatid."'>".$pcat."</option>";
			}
		}

		//��ȡ����������Ȩ
		$secureset=SecureClass("126");

		//��������
		$fsql -> query ("select * from {P}_news_cat order by catpath");
		while ($fsql -> next_record ()) {
			$lpid = $fsql -> f ("pid");
			$lcatid = $fsql -> f ("catid");
			$cat = $fsql -> f ("cat");
			$catpath = $fsql -> f ("catpath");
			$lcatpath = explode (":", $catpath);

			//������������Ȩʱ��ȡ�¼�����
			if(strstr($secureset,":".intval($lcatpath[0]).":")){
			
				for ($i = 0; $i < sizeof ($lcatpath)-2; $i ++) {
					$lcatpath[$i]=intval($lcatpath[$i]);
					$tsql->query("select catid,cat from {P}_news_cat where catid='$lcatpath[$i]'");
					if($tsql->next_record()){
						$ncatid=$tsql->f('cat');
						$ncat=$tsql->f('cat');
						$ppcat.=$ncat."/";
					}
				}
				
				if($catid==$lcatid){
					$catlist.="<option value='".$lcatid."' selected>".$ppcat.$cat."</option>";
				}else{
					$catlist.="<option value='".$lcatid."'>".$ppcat.$cat."</option>";
				}
				$ppcat="";
			
			}
			
			
		}

		//��ǩ����
		$tags=explode(",",$tags);


		//ר��
		$fsql -> query ("select * from {P}_news_proj order by id desc");
		while ($fsql -> next_record ()) {
			$projid = $fsql -> f ("id");
			$project = $fsql -> f ("project");
			$NowPath=fmpath($projid);
			$musellist.="<option value=".$NowPath.">".$project."</option>";
			
		}

		//��ѡר��
		$arrs = explode (":",$proj);
		for ($k = 0; $k < sizeof ($arrs)-1; $k ++) {
			$projid=$arrs[$k]+0;
			$tsql->query("select project from {P}_news_proj where id='$projid'");
			if($tsql->next_record()){
				$project=$tsql->f('project');
			}
			$munowlist.="<option value=".$arrs[$k].">".$project."</option>";
		}


		//ģ�����
		
		$var=array (
		'catlist' => $catlist,
		'pcatlist' => $pcatlist,
		'author' => $author, 
		'source' => $source,
		'memo' => $memo,
		'icon' => $icon, 
		'src' => $src,
		'fileurl' => $fileurl,
		'title' => $title,
		'id' => $id,
		'musellist' => $musellist,
		'munowlist' => $munowlist,
		'tags0' => $tags[0],
		'tags1' => $tags[1],
		'tags2' => $tags[2],
		'tags3' => $tags[3],
		'tags4' => $tags[4],
		'body' => $body
		);
		
		$str=ShowTplTemp($Temp,$var);
		
		return $str;
		

}

?>