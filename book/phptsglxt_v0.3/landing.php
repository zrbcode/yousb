<?php
include("config.php");
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����PHP��ͼ�����ϵͳv0.3</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<?php
//��ʼ��session
if($_GET['tj'] == 'out'){
 session_destroy();
 echo "<script language=javascript>alert('�˳��ɹ���');window.location='landing.php'</script>";
}
?>
<?
if($_POST['submit']){
// ����Ѿ���¼����ֱ���˳�
if(isset($_SESSION['id'])) {
	//�ض��򵽹�������
	echo "<script language=javascript>alert('���ѵ�½');window.location='index.php'</script>";
	// ��¼���Ļ�����������
   exit;
}
// ��ò���
$nickname=$_POST['username'];
$password=$_POST['password'];
$password=md5($password);

// ����ʺź������Ƿ���ȷ,
$sql="select * from user where name='$nickname' and password='$password'";
$re=mysql_query($sql,$conn);
$result=mysql_fetch_array($re);
// ����û���¼��ȷ
if(!empty($result)) {
	//ע��session���������浱ǰ�Ự�û����ǳ�
	$_SESSION['id']=$result['id'];
	// ��¼�ɹ��ض��򵽹���ҳ��
	echo "<script language=javascript>alert('��½�ɹ�');window.location='index.php'</script>";
}
else { 
    // ����Ա��¼ʧ��
	echo "<script language=javascript>alert('���벻��ȷ');window.location='landing.php'</script>";
	}
}
?>
<body>
<?php include("head.php");?>
<form  name="myform" method="post" onSubmit="return CheckPost()" action="" style="margin-bottom:5px;">
<table width="782" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td height="30" colspan="2" bgcolor="#FFFFFF">�û���¼</td>
    </tr>
  <tr>
    <td width="337" align="right" bgcolor="#FFFFFF">�û���:
      </td>
    <td width="422" bgcolor="#FFFFFF"><input type="text" name="username"></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF">�� ��:
      </td>
    <td bgcolor="#FFFFFF"><input type="password" name="password"></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF"><a href="reg.php">ע�����û�</a>
      </td>
    <td bgcolor="#FFFFFF"><input type="submit" name="submit" value="��¼"></td>
  </tr>
</table>
</form>
</body>
</html>