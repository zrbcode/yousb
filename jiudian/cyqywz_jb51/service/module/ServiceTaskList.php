<?php

/*
	[插件名称] 最新客服工单查询
*/



function ServiceTaskList(){

		global $msql,$fsql;

		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//模版解释
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$str=$TempArr["start"];

		$memberid=$_COOKIE["MEMBERID"];

		$msql->query("select * from {P}_service_feedback where memberid='$memberid' and stat<6 order by uptime desc");
		
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
		
		
        $str.=$TempArr["end"];
       
		return $str;

		
}


?>