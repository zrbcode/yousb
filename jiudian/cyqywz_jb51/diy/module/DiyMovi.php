<?php

/*
	[�������] �Զ���FLASH��Ƶ
	[���÷�Χ] ȫվ
*/

function DiyMovi(){


		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$movi=$GLOBALS["PLUSVARS"]["movi"];
		
		$Temp=LoadTemp($tempname);


		$var=array(
			'movi' => $movi
			);
		
		$str=ShowTplTemp($Temp,$var);
		
		return $str;


}

?>