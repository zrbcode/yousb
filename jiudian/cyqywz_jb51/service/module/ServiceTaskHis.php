<?php

/*
	[插件名称] 存档工单查询
*/



function ServiceTaskHis(){

		global $msql,$fsql;

		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//模版解释
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$memberid=$_COOKIE["MEMBERID"];

		$scl=" memberid='$memberid' and stat='6' ";

		include(ROOTPATH."includes/pages.inc.php");
		$pages=new pages;
		$totalnums=TblCount("_service_feedback","id",$scl);
		$pages->setvar(array("key" => $key));
		$pages->set(20,$totalnums);		                          
		$pagelimit=$pages->limit();	  


		$msql->query("select * from {P}_service_feedback where $scl order by uptime desc limit $pagelimit");
		
		while($msql->next_record()){
			 $id=$msql->f('id');
			 $groupid=$msql->f('groupid');
			 $title=$msql->f('title');
			 $time=$msql->f('time'); 
			 $uptime=$msql->f('uptime'); 
			 $stat=$msql->f('stat');

			 $time=date("m/d H:i",$time);
			 $uptime=date("m/d H:i",$uptime);
				
			 $link=ROOTPATH."service/feedback_look.php?id=".$id;


			$statstr="strServiceStat".$stat;
			$nowstat=$GLOBALS[$statstr];
			
			

			$var=array (
			'id' => $id, 
			'link' => $link, 
			'title' => $title, 
			'time' => $time, 
			'uptime' => $uptime, 
			'stat' => $stat,
			'nowstat' => $nowstat
			);
			$str.=ShowTplTemp($TempArr["list"],$var);
		}
		
		$pagesinfo=$pages->ShowNow();

		$var=array (
		'showpages' => $pages->output(1),
		'pagestotal' => $pagesinfo["total"],
		'pagesnow' => $pagesinfo["now"],
		'pagesshownum' => $pagesinfo["shownum"],
		'pagesfrom' => $pagesinfo["from"],
		'pagesto' => $pagesinfo["to"],
		'totalnums' => $totalnums
		);

		$str.=ShowTplTemp($TempArr["end"],$var);
       
		return $str;

		
}


?>