<?php

/*
	[�������] ���ɱ༭����
	[���÷�Χ] ȫվ
*/

function Edit(){




		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$body=$GLOBALS["PLUSVARS"]["body"];
		
		$Temp=LoadTemp($tempname);

		$var=array(
			'coltitle' => $coltitle,
			'body' => $body
			);
		
		$str=ShowTplTemp($Temp,$var);

		return $str;


}

?>