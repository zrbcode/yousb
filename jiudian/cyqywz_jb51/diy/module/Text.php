<?php

/*
	[�������] �Զ�������
	[���÷�Χ] ȫվ
*/

function Text(){




		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$text=$GLOBALS["PLUSVARS"]["text"];
		$link=$GLOBALS["PLUSVARS"]["link"];
		
		$text=nl2br($text);

		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);


		$var=array(
			'coltitle' => $coltitle,
			'text' => $text,
			'link' => $link
			);
		
		$str=ShowTplTemp($TempArr["start"],$var);
		
		if($link!=""){
			$str.=ShowTplTemp($TempArr["link"],$var);
		}else{
			$str.=ShowTplTemp($TempArr["text"],$var);
		}

		return $str;


}

?>