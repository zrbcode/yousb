<?php

/*
	[�������] ��������
	[���÷�Χ] ȫվ
*/

function BgSound(){


		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$attach=$GLOBALS["PLUSVARS"]["attach"];
		
		$Temp=LoadTemp($tempname);

		$attach=ROOTPATH.$attach;

		$var=array(
			'attach' => $attach
			);
		
		$str=ShowTplTemp($Temp,$var);
		

		return $str;


}

?>