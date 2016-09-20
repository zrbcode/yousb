<?php

/*
	[插件名称] 客服反馈表单分组菜单
*/



function FormGroup(){

		global $msql,$fsql;

		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$target=$GLOBALS["PLUSVARS"]["target"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//模版解释
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		
		//循环开始
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