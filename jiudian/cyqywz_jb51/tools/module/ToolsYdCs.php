<?php

/*
	[�������] �ƶ��������԰���
	[���÷�Χ] ȫվ
*/

function ToolsYdCs() { 
	
	global $msql;
	
	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	
	$scl=" cat='yd' and iffb='1' ";
	

	//ģ�����
	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);
	
	$str=$TempArr["start"];
	
	$msql->query("select * from {P}_tools_code where $scl order by id");
	if($msql->next_record()){
		$id=$msql->f("id");
		$code=$msql->f("code");
				
		$var=array (
			'id' => $id,
			'code' => $code
		);
				
	}
	

	$str.=ShowTplTemp($TempArr["end"],$var);
	
	return $str;

}


?>