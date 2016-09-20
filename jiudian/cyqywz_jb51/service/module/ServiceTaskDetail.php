<?php

/*
	[插件名称] 最新客服工单查询
*/



function ServiceTaskDetail(){

		global $msql,$fsql;

		$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
		$tempname=$GLOBALS["PLUSVARS"]["tempname"];


		//模版解释
		$Temp=LoadTemp($tempname);
		$TempArr=SplitTblTemp($Temp);

		$memberid=$_COOKIE["MEMBERID"];
		$id=$_GET["id"];


		$msql->query("select * from {P}_service_feedback where memberid='$memberid' and id='$id'");
		
		if($msql->next_record()){
		   $groupid=$msql->f('groupid');
		   $content=$msql->f('content');
		   $title=$msql->f('title');
		   $name=$msql->f('name');
		   $sex=$msql->f('sex');
		   $tel=$msql->f('tel');
		   $address=$msql->f('address');
		   $email=$msql->f('email');
		   $url=$msql->f('url');
		   $qq=$msql->f('qq');
		   $company=$msql->f('company');
		   $company_address=$msql->f('company_address');
		   $zip=$msql->f('zip');
		   $fax=$msql->f('msql');
		   $products_id=$msql->f('products_id');
		   $products_name=$msql->f('products_name');
		   $products_num=$msql->f('products_num');
		   $custom1=$msql->f('custom1');
		   $custom2=$msql->f('custom2');
		   $custom3=$msql->f('custom3');
		   $custom4=$msql->f('custom4');
		   $custom5=$msql->f('custom5');
		   $custom6=$msql->f('custom6');
		   $custom7=$msql->f('custom7');
		   $ip=$msql->f('ip');
		   $time=$msql->f('time');
		   $uptime=$msql->f('uptime');
		   $stat=$msql->f('stat');
		}


		$time=date("Y-n-j H:i:s",$time);
		$uptime=date("Y-n-j H:i:s",$uptime);
		$content=nl2br($content);


		$statstr="strServiceStat".$stat;
		$nowstat=$GLOBALS[$statstr];

		if($stat=="6"){
			$showbackform="display:none";
		}

		$var=array (
		'id' => $id, 
		'link' => $link, 
		'title' => $title, 
		'time' => $time, 
		'uptime' => $uptime, 
		'showbackform' => $showbackform,
		'stat' => $stat,
		'nowstat' => $nowstat
		);
		$str=ShowTplTemp($TempArr["start"],$var);


		//自定义表单字段显示
		$msql -> query ("select field_caption,field_name from {P}_service where groupid='$groupid' and use_field = '1' order by xuhao");
		while ($msql -> next_record ()) {
			$field_caption = $msql -> f ('field_caption');
			$field_name = $msql -> f ('field_name');
			
			$var=array (
			'fieldcaption' => $field_caption, 
			'fieldname' => ${$field_name}
			);
			$str.=ShowTplTemp($TempArr["list"],$var);
		}

	
		//回复表单
		$var=array (
		'id' => $id,
		'stat' => $stat,
		'showbackform' => $showbackform
		);
		
        $str.=ShowTplTemp($TempArr["end"],$var);
       
		return $str;

		
}


?>