<?php

/*
	[�������] ���������˵�
	[���÷�Χ] ȫվ

*/


function TopMenu(){
	
	global $msql,$SiteUrl;


	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$groupid=$GLOBALS["PLUSVARS"]["groupid"];
	$shownums=$GLOBALS["PLUSVARS"]["shownums"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];


	$Temp=LoadTemp($tempname);

	$TempArr=SplitTblTemp($Temp);

	
	$var=array (
		'coltitle' => $coltitle
	);

	$str=ShowTplTemp($TempArr["start"],$var);
	
	$msql->query("select * from {P}_menu where ifshow='1' and groupid='$groupid' order by xuhao limit 0,$shownums");
	while($msql->next_record()){
			$id=$msql->f('id');
			$menu=$msql->f('menu');
			$linktype=$msql->f('linktype');
			$coltype=$msql->f('coltype');
			$folder=$msql->f('folder');
			$url=$msql->f('url');
			$target=$msql->f('target');
			
			
			switch($linktype){
			

			//1=�ڲ�����
			case "1" :
				$menuurl=ROOTPATH.$folder;
			break;

			
			//2=�ⲿ����
			case "2" :
				$menuurl=$url;
			break;


			
			//���ӵ�ģ��
			default:
				
				
				if($coltype=="index"){
					
					//��ҳ���⴦��
					if($GLOBALS["CONF"]["CatchOpen"]=="1"){
						$menuurl=ROOTPATH;
					}else{
						$menuurl=ROOTPATH."index.php";
					}

				}else{
					
					//����ģ������
					if($GLOBALS["CONF"]["CatchOpen"]=="1"){
						$menuurl=ROOTPATH.$coltype."/";
					}else{
						$menuurl=ROOTPATH.$coltype."/index.php";
					}
				}
				

			break;

		
		}

		
		$var=array (
		'menu' => $menu, 
		'menuurl' => $menuurl,
		'target' => $target
		);

		$str.=ShowTplTemp($TempArr["menu"],$var);

	}

	
	$str.=$TempArr["end"];

	return $str;
		
	

}

?>