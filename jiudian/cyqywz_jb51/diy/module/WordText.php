<?php

/*
	[�������] �Զ������+��������
	[���÷�Χ] ȫվ
*/

function WordText(){


		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$word=$GLOBALS["PLUSVARS"]["word"];
		$link=$GLOBALS["PLUSVARS"]["link"];
		$text=$GLOBALS["PLUSVARS"]["text"];
		
		$text=nl2br($text);

		$Temp=LoadTemp($tempname);

		$var=array(
			'coltitle' => $coltitle,
			'text' => $text,
			'word' => $word,
			'link' => $link,
			);
		
		
		$str=ShowTplTemp($Temp,$var);

		return $str;


}

?>