<?php

/*
	[�������] �ͷ�����������˵�
*/



function FormGroup(){

		global $msql,$fsql;

		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//ģ�����
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//ѭ����ʼ
		$var=array(
			'coltitle' => $coltitle
		);

		$str=ShowTplTemp($TempArr["start"],$var);

			
		$msql->query("select * from {P}_service_group order by xuhao");
		
		while($msql->next_record()){
				$groupid=$msql->f("id");
				$groupname=$msql->f("groupname");
				
				$link=ROOTPATH."service/index.php?groupid=".$groupid;

				$var=array (
				'link' => $link, 
				'groupname' => $groupname, 
				'target' => $target
				);
				$str.=ShowTplTemp($TempArr["list"],$var);
	
		
		}
		
		
        $str.=$TempArr["end"];
       
		return $str;

		
}


?>