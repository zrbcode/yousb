<?php
include("../config.php");
require_once('ly_check.php');
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����PHP��ͼ�����ϵͳv0.1</title>
<link rel="stylesheet" href="images/css.css" type="text/css">
</head>
<body>
<table width="799" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC" class="table">
      <tr>
        <td height="27" colspan="2" align="left" bgcolor="#FFFFFF" class="bg_tr">&nbsp;��̨����&nbsp;&gt;&gt;&nbsp;ͼ��ͳ��</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF" height="27">ͼ�����</td>
        <td align="center" bgcolor="#FFFFFF">����ͼ��</td>
      </tr>
      <?php 
	  $sql="select type, count(*) from yx_books group by type";
	  $val=mysql_query($sql,$conn);
	  while($arr=mysql_fetch_row($val)){
	  echo "<tr height='30'>";
	  echo "<td align='center' bgcolor='#FFFFFF'>".$arr[0]."</td>";
	  echo "<td align='center' bgcolor='#FFFFFF'>����Ŀ���У�".$arr[1]."&nbsp;��</td>";
	  echo "</tr>";
	  }
	  ?>
</table>
</body>
</html>