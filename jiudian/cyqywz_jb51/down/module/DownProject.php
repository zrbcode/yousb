<?php

/*
	[�������] ����ר�������б�
	[���÷�Χ] ����ҳ��
*/



function DownProject(){

		global $msql,$fsql;



		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$cutword=$GLOBALS["PLUSVARS"]["cutword"];



		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//ѭ����ʼ
		$var=array(
			'coltitle' => $coltitle
		);

		$str=ShowTplTemp($TempArr["start"],$var);

			
		$msql->query("select * from {P}_down_proj order by id desc");
		
		while($msql->next_record()){
				$id=$msql->f("id");
				$project=$msql->f("project");
				$folder=$msql->f("folder");
			
				if($cutword!="0"){$project=csubstr($project,0,$cutword);}

				$link=ROOTPATH."down/project/".$folder."/";

				$var=array (
				'link' => $link, 
				'project' => $project, 
				'target' => $target
				);
				$str.=ShowTplTemp($TempArr["list"],$var);
		
		}
		
		
        $str.=$TempArr["end"];
       
		return $str;

		
}


?>