<?php

/*
	[�������] �Զ���ͼƬ+����+�������
	[���÷�Χ] ȫվ
*/

function PicWordText(){


		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];
		$pic=$GLOBALS["PLUSVARS"]["pic"];
		$piclink=$GLOBALS["PLUSVARS"]["piclink"];
		$word=$GLOBALS["PLUSVARS"]["word"];
		$text=$GLOBALS["PLUSVARS"]["text"];
		$link=$GLOBALS["PLUSVARS"]["link"];
		$pich=$GLOBALS["PLUSVARS"]["pich"];
		
		$text=nl2br($text);

		$Temp=LoadTemp($tempname);

		$src=ROOTPATH.$pic;

		$var=array(
			'coltitle' => $coltitle,
			'src' => $src,
			'piclink' => $piclink,
			'word' => $word,
			'text' => $text,
			'pich' => $pich,
			'link' => $link,
			);
		
		
		$str=ShowTplTemp($Temp,$var);

		return $str;


}

?>