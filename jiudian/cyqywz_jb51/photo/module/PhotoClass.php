<?php

/*
	[�������] һ������
	[���÷�Χ] ����ҳ��
*/



function PhotoClass(){

		global $msql,$fsql;



		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$catid=$GLOBALS["PLUSVARS"]["catid"];
		$showtj=$GLOBALS["PLUSVARS"]["showtj"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];

		if($catid!=0 && $catid!=""){
			$scl=" pid='$catid' ";
		}else{
			$scl=" pid='0' ";
		}


		
		if($showtj!="" && $showtj!="0"){
			$scl.=" and tj='1' ";
		}

	


		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//ѭ����ʼ
		$var=array(
			'coltitle' => $coltitle
		);

		$str=ShowTplTemp($TempArr["start"],$var);

			
		$msql->query("select * from {P}_photo_cat where $scl order by xuhao");
		
		while($msql->next_record()){
				$pid=$msql->f("pid");
				$catid=$msql->f("catid");
				$cat=$msql->f("cat");
				$catpath=$msql->f("catpath");
				$ifchannel=$msql->f('ifchannel');
				if($ifchannel=="1"){
					$link=ROOTPATH."photo/class/".$catid."/";
				}else{
					if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."photo/class/".$catid.".html")){
						$link=ROOTPATH."photo/class/".$catid.".html";
					}else{
						$link=ROOTPATH."photo/class/?".$catid.".html";
					}
				}

				$var=array (
				'link' => $link, 
				'cat' => $cat, 
				'target' => $target
				);
				$str.=ShowTplTemp($TempArr["list"],$var);
	
		
		}
		
		
        $str.=$TempArr["end"];
       
		return $str;

		
}


?>