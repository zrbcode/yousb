<?php
include("config.php");
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����PHPͼ�����ϵͳv0.3</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<?php include("head.php");?>
		<table width="782" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="22">
	<?php
	$pagesize=20;
	if(!urldecode($_GET[proid])){
	$sql="select * from yx_books order by id desc";
	}else{
	$sql="select * from yx_books where type='".urldecode($_GET[proid])."'";
	}
	$rs=mysql_query($sql);
	$recordcount=mysql_num_rows($rs);
	$pagecount=($recordcount-1)/$pagesize+1;
	$pagecount=(int)$pagecount;
	$pageno=$_GET["pageno"];
	if($pageno=="")
	{
		$pageno=1;
	}
	if($pageno<1)
	{
		$pageno=1;
	}
	if($pageno>$pagecount)
	{
		$pageno=$pagecount;
	}
	$startno=($pageno-1)*$pagesize;
	if(!urldecode($_GET[proid])){
	$sql="select * from yx_books order by id desc limit $startno,$pagesize";
	}else{
	$sql="select * from yx_books where type='".urldecode($_GET[proid])."' order by id desc limit $startno,$pagesize";
	}
	$rs=mysql_query($sql);
?>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
    <tr>
      <td width="88" height="30" align="center" bgcolor="#FFFFFF" class="line2">ID</td>
	    <td width="103" align="center" bgcolor="#FFFFFF" class="line2">����</td>
	    <td width="77" align="center" bgcolor="#FFFFFF" class="line2">�۸�</td>
	    <td width="152" align="center" bgcolor="#FFFFFF" class="line2">���ʱ��</td>
	    <td width="107" align="center" bgcolor="#FFFFFF" class="line2">���</td>
	    <td width="126" align="center" bgcolor="#FFFFFF" class="line2">��������(��)</td>
	    <td width="121" align="center" bgcolor="#FFFFFF" class="line2">����</td>
	    </tr>
    <?php
	while($rows=mysql_fetch_assoc($rs))
	{
	?>
	<tr>
	  <td height="30" align="center" bgcolor="#FFFFFF"><?php echo $rows["id"];?></td>
	  <td align="center" bgcolor="#FFFFFF"><?php echo $rows["name"];?></td>
	  <td align="center" bgcolor="#FFFFFF"><?php echo $rows["price"];?></td>
	  <td align="center" bgcolor="#FFFFFF"><?php echo $rows["uploadtime"];?></td>
	  <td align="center" bgcolor="#FFFFFF"><?php echo $rows["type"];?></td>
	  <td align="center" bgcolor="#FFFFFF"><?php echo $rows["leave_number"];?></td>
	  <td align="center" bgcolor="#FFFFFF" class="line2">
	  <?php 
	  $rs2=mysql_query("select * from lend where book_id='".$rows['id']."' and user_id='".$_SESSION['id']."'");
	  $rows2=mysql_fetch_assoc($rs2);
	  if($rows2['book_id']){
	  echo "<font color='red'>���ѽ���</font>&nbsp;&nbsp;<a href=huanshu.php?book_id=$rows[id]>��Ҫ����</a>";
	  }else{
	  	if($rows["leave_number"]==0){
		echo "<font color='#cccc00'>�����ѽ���</font>";
		}else{
	  echo "<a href=jieshu.php?book_id=$rows[id]>��Ҫ����</a>";
	  }
	  	}
	  ?>	  </td>
	</tr>
	<?php
	}
?>
</table>
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
  <td height="35" align="center" bgcolor="#FFFFFF">
  <?php
	if($pageno==1)
	{
	?>
    ��ҳ | ��һҳ | <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=<?php echo $pageno+1?>">��һҳ</a> | <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=<?php echo $pagecount?>">ĩҳ</a>
    <?php
	}
	else if($pageno==$pagecount)
	{
	?>
    <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=1">��ҳ</a> | <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=<?php echo $pageno-1?>">��һҳ</a> | ��һҳ | ĩҳ
    <?php
	}
	else
	{
	?>
    <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=1">��ҳ</a> | <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=<?php echo $pageno-1?>">��һҳ</a> | <a href="index.php?proid=<?php echo urlencode($_GET[proid]);?>&pageno=<?php echo $pageno+1?>" class="forumRowHighlight">��һҳ</a> | <a href="?pageno=<?php echo $pagecount?>">ĩҳ</a>
    <?php
	}
?>
    &nbsp;ҳ�Σ�<?php echo $pageno ?>/<?php echo $pagecount ?>ҳ&nbsp;����<?php echo $recordcount?>����Ϣ</td>
  </tr>
</table></td></tr>
</table>
        <table width="782" height="30" border="0" align="center" cellpadding="2" cellspacing="1" bgcolor="#CCCCCC">
          <tr>
            <td height="19" align="center" background="images/button1_bg.jpg">&nbsp;Copyright @ 2013-2015 ������ַ.com ALL Rights Reserved
      <!--��Դ����ѿ�Դ��������Ȩ��Ϣ�㽫��ñ�վ��Ѽ���֧�ֺͳ�����������-->
      <script type="text/javascript" src="http://www.04ie.com/net/cpt.js"></script></td>
          </tr>
        </table>
</body>
</html>