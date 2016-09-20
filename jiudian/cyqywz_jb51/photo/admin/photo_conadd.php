<?php
define("ROOTPATH", "../../");
include(ROOTPATH."includes/admin.inc.php");
include("language/".$sLan.".php");
include("func/upload.inc.php");
NeedAuth(155);

$pid=$_REQUEST["pid"];
if(!isset($pid) || $pid==""){
$pid=0;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link  href="css/style.css" type="text/css" rel="stylesheet">
<title><?php echo $strAdminTitle; ?></title>
<script type="text/javascript" src="../../base/js/base.js"></script>
<script type="text/javascript" src="../../base/js/form.js"></script>
<script type="text/javascript" src="../../base/js/blockui.js"></script>
<script type="text/javascript" src="js/photo.js"></script>

<style type="text/css">
<!--
.style1 {color: #FF0033}
-->
</style>
</head>
<body >

<form id="photoAddForm" name="form" action="" method="post" enctype="multipart/form-data">

<div class="formzone">

<div class="namezone">
<?php echo $strPhotoFabu; ?>
</div>
<div class="tablezone">
<div  id="notice" class="noticediv"></div>

<table width="100%"   border="0" align="center"  cellpadding="2" cellspacing="0" >
    <tr> 
      <td height="30" width="100" align="center" ><?php echo $strSetMenu3; ?></td>
      <td height="30" > 
        <select id="selcatid" name="catid" >
          <?php		

					$fsql -> query ("select * from {P}_photo_cat  order by catpath");
					while ($fsql -> next_record ()) {
						$lpid = $fsql -> f ("pid");
						$lcatid = $fsql -> f ("catid");
						$cat = $fsql -> f ("cat");
						$catpath = $fsql -> f ("catpath");
						$lcatpath = explode (":", $catpath);


						
						
							for ($i = 0; $i < sizeof ($lcatpath)-2; $i ++) {
								$tsql->query("select catid,cat from {P}_photo_cat where catid='$lcatpath[$i]'");
								if($tsql->next_record()){
									$ncatid=$tsql->f('cat');
									$ncat=$tsql->f('cat');
									$ppcat.=$ncat."/";
								}
							}
							
							if($pid==$lcatid){
								echo "<option value='".$lcatid."' selected>".$ppcat.$cat."</option>";
							}else{
								echo "<option value='".$lcatid."'>".$ppcat.$cat."</option>";
							}
							$ppcat="";
						
						
					}

				
?> 
        </select>        </td>
    </tr>
	 <tr> 
      <td height="30" width="100" align="center" ><?php echo $strPhotoAddTitle; ?></td>
      <td height="30" > 
        <input type="text" name="title" style='WIDTH: 499px;font-size:12px;' maxlength="200" class="input" />
        <span class="style1">* </span> </td>
    </tr>
	
	 <tr> 
      <td height="30" width="100" align="center" ><?php echo $strPhotoAddImg; ?></td>
      <td height="30" > 
        <input type="file" name="jpg" class="input" style="WIDTH: 499px;" />
        <span class="style1">        *
        </span> </td>
    </tr>
   
	
	</table>
	<div id="proplist">
	
	</div>
	<table width="100%"   border="0" align="center"  cellpadding="2" cellspacing="0" >
    <tr>
      <td width="100" height="30" align="center" ><?php echo $strPhotoMemo; ?></td>
      <td height="30" ><textarea name="memo" style="WIDTH: 499px;font-size:12px;" class="textarea" rows="8"></textarea>
      </td>
    </tr>
    <tr>
      <td height="30" align="center" ><?php echo $strPhotoTag; ?></td>
      <td height="30" >
	  <input name="tags[]" type="text" class="input" id="tags"  value="" size="10" />
        <input name="tags[]" type="text" class="input" id="tags"  value="" size="10" />
        <input name="tags[]" type="text" class="input" id="tags"  value="" size="10" />
        <input name="tags[]" type="text" class="input" id="tags"  value="" size="10" />
        <input name="tags[]" type="text" class="input" id="tags"  value="" size="10" /></td>
    </tr>
    
	<tr> 
      <td height="30" width="100" align="center" ><?php echo $strPhotoAddProj; ?></td>
      <td height="30" ><?php

			$catstr.="<SCRIPT language=javascript src='js/multicat.js'></SCRIPT>";
			$catstr.="<table cellspacing=0 cellpadding=0><tr><td ><select style='WIDTH: 239px;font-size:12px;' multiple size=5 name=spe_funct>";
			
			$fsql -> query ("select * from {P}_photo_proj order by id desc");
			while ($fsql -> next_record ()) {
				$projid = $fsql -> f ("id");
				$project = $fsql -> f ("project");

				$NowPath=fmpath($projid);
				
				$catstr.="<option value=".$NowPath.">".$project."</option>";
				$ppcat="";
				
				
			}

		$catstr.="</select></td><td width=20>
<input style='width:20px;height=37px;font-size:12px;border:1px outset;' onClick=\"JavaScript:AddItem('spe_funct', 'spe_selec[]')\" type=button value='+' name='Input'>
<input style='width:20px;height=37px;font-size:12px;border:1px outset;' onClick=\"JavaScript:DelItem('spe_selec[]')\" type=button value='-' name='Input'>
				</td>
				<td>
				  <select  style='WIDTH: 239px;font-size:12px' multiple size=5 name=spe_selec[]>";
	
				
		$catstr.="</select></td><td valign=bottom></td><td width=20 align=center  valign='bottom'></td></tr></table>";
		echo $catstr;
?></td>
    </tr>
  
   

</table>
</div>
<div class="adminsubmit">
<input type="submit" name="cc"  value="<?php echo $strSubmit; ?>" class="button" />
<input type="hidden" name="act" value="photoadd">
<input type="hidden" name="pid" value="<?php echo $pid; ?>">
<input type="hidden" id="nowid"  value="" />
<input type="hidden" name="author"  value="<?php echo $_COOKIE['SYSNAME']; ?>" />
<input type="hidden" name="source"  value="" />
</div>

</div>
</form>
<script>
$().getPropList();
</script>
</body>
</html>
