<?php

/*
	[�������] �Զ��嵥������
	[���÷�Χ] ȫվ
*/

function Words(){


		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$word=$GLOBALS["PLUSVARS"]["word"];
		$link=$GLOBALS["PLUSVARS"]["link"];
		$pdvid=$GLOBALS["PLUSVARS"]["pdv"];
		

		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);


		$var=array(
			'coltitle' => $coltitle,
			'pdvid' => $pdvid,
			'word' => $word,
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