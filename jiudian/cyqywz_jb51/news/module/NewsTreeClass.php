<?php

/*
	[�������] ���ͷ���˵�
	[���÷�Χ] ����ҳ��
*/


function NewsTreeClass(){

		global $msql,$fsql;


		$catid=$GLOBALS["PLUSVARS"]["catid"];
		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$showtj=$GLOBALS["PLUSVARS"]["showtj"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		$scl=" catid!='0' ";
		
		if($showtj!="" && $showtj!="0"){
			$scl.=" and tj='1' ";
		}

		if($catid!=0 && $catid!=""){
			$catid=fmpath($catid);
			$scl.=" and catpath regexp '$catid' ";
		}



		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//ѭ����ʼ
		$var=array(
			'coltitle' => $coltitle,
			'target' => $target
		);


		$str=ShowTplTemp($TempArr["start"],$var);


		$msql->query("select * from {P}_news_cat where $scl order by xuhao");
		while($msql->next_record()){
			$pid=$msql->f("pid");
			$catid=$msql->f("catid");
			$cat=$msql->f("cat");
			$catpath=$msql->f("catpath");
			$ifchannel=$msql->f('ifchannel');
			$fsql->query("select count(id) from {P}_news_con where catpath regexp '".fmpath($catid)."'");
			if($fsql->next_record()){
				$nums=$fsql->f('count(id)');
			}
			if($ifchannel=="1"){
				$url=ROOTPATH."news/class/".$catid."/";
			}else{
				if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."news/class/".$catid.".html")){
					$url=ROOTPATH."news/class/".$catid.".html";
				}else{
					$url=ROOTPATH."news/class/?".$catid.".html";
				}
			}

			$var=array (
			'url' => $url, 
			'catid' => $catid, 
			'pid' => $pid, 
			'cat' => $cat, 
			'nums' => $nums, 
			'target' => $target
			);
			
			$str.=ShowTplTemp($TempArr["list"],$var);

		}
		

        $str.=$TempArr["end"];
       
		return $str;

				
}



?>