<?php

/*
	[�������] ͼƬһ����������
	[���÷�Χ] ����ҳ��
*/



function PhotoTwoClass(){

		global $msql,$fsql,$tsql;

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
			$subscl=" and tj='1' ";
		}



		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);


		$str=$TempArr["start"];

			
		$msql->query("select * from {P}_photo_cat where $scl order by xuhao");
		while($msql->next_record()){
				$catid=$msql->f("catid");
				$cat=$msql->f("cat");
				$catpath=$msql->f("catpath");
				$ifchannel=$msql->f('ifchannel');
				if($ifchannel=="1"){
					$toplink=ROOTPATH."photo/class/".$catid."/";
				}else{
					if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."photo/class/".$catid.".html")){
						$toplink=ROOTPATH."photo/class/".$catid.".html";
					}else{
						$toplink=ROOTPATH."photo/class/?".$catid.".html";
					}
				}
				$tsql->query("select count(id) from {P}_photo_con where iffb='1' and catid!='0' and  catpath regexp '".fmpath($catpath)."'");
				if($tsql->next_record()){
					$topcount=$tsql->f('count(id)');
				}
				$sublinkstr="";
				$fsql->query("select * from {P}_photo_cat where pid='$catid' $subscl order by xuhao");
				while($fsql->next_record()){
					$scatid=$fsql->f("catid");
					$scat=$fsql->f("cat");
					$scatpath=$fsql->f("catpath");
					$sifchannel=$fsql->f('ifchannel');
					if($sifchannel=="1"){
						$slink=ROOTPATH."photo/class/".$scatid."/";
					}else{
						if($GLOBALS["CONF"]["CatchOpen"]=="1" && file_exists(ROOTPATH."photo/class/".$scatid.".html")){
							$slink=ROOTPATH."photo/class/".$scatid.".html";
						}else{
							$slink=ROOTPATH."photo/class/?".$scatid.".html";
						}
					}
					
					$tsql->query("select count(id) from {P}_photo_con where iffb='1' and catid!='0' and  catpath regexp '".fmpath($scatpath)."'");
					if($tsql->next_record()){
						$subcount=$tsql->f('count(id)');
					}

					$substr=str_replace("{#slink#}",$slink,$TempArr["list"]);
					$substr=str_replace("{#target#}",$target,$substr);
					$substr=str_replace("{#scat#}",$scat,$substr);
					$substr=str_replace("{#subcount#}",$subcount,$substr);
					$sublinkstr.=$substr;
				}



				$var=array (
				'toplink' => $toplink, 
				'cat' => $cat, 
				'topcount' => $topcount, 
				'sublinkstr' => $sublinkstr, 
				'target' => $target
				);
				$str.=ShowTplTemp($TempArr["menu"],$var);
	
		
		}
		
		
        $str.=$TempArr["end"];
       
		return $str;

		
}


?>