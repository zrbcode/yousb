<?php
include("config.php");
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����PHPͼ�����ϵͳv0.3</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<script language="javascript"> 
    function checkreg()
    { 			
		if (form1.name.value=="")
		{
			// �����ʵ����Ϊ�գ�����ʾ������Ϣ
	        alert("��ʵ��������Ϊ�գ�");
			form1.name.focus();
			return false;
	    }
		if (form1.password.value=="" )
		{
			// �������Ϊ�գ�����ʾ������Ϣ
	        alert("���벻��Ϊ�գ�");
			form1.password.focus();
			return false;
	    }
		if (form1.pwd.value=="" )
		{
			// �������Ϊ�գ�����ʾ������Ϣ
	        alert("ȷ�����벻��Ϊ�գ�");
			form1.pwd.focus();
			return false;
	    }
		// ��������Ӧһ��
		if (form1.password.value!=form1.pwd.value && form1.password.value!="")
		{
			alert("�������벻һ������ȷ�ϣ�");
			form1.password.focus();
			return false;
		}
		if (form1.email.value=="")
		{
			// ���EmailΪ�գ�����ʾ������Ϣ
	        alert("Email����Ϊ�գ�");
			form1.email.focus();
			return false;
	    }
			// ���email��ʽ�Ƿ���ȷ
		else if (form1.email.value.charAt(0)=="." ||
			form1.email.value.charAt(0)=="@"||
			form1.email.value.indexOf('@', 0) == -1 ||
			form1.email.value.indexOf('.', 0) == -1 ||
			form1.email.value.lastIndexOf("@")==form1.email.value.length-1 ||
			form1.email.value.lastIndexOf(".")==form1.email.value.length-1)
		{
			alert("Email�ĸ�ʽ����ȷ��");
			form1.email.select();
			return false;
		}
		return true;

    }	
</script>
<?php 
if($_POST['submit']){
// ȡ����ҳ�Ĳ���
$name=$_POST['name'];
$password=$_POST['password'];
$email=$_POST['email'];
$tel=$_POST['tel'];
$address=$_POST['address'];
// ��������
$password=md5($password);
// �������ݿ⣬ע���û�
$sql="insert into user(name, password, email, tel, address) values('$name','$password','$email', '$tel','$address')";
mysql_query($sql,$conn) or die ("ע���û�ʧ��: ".mysql_error());

// ���ע���û����Զ�id���Ժ�ʹ�ô�id�ſɵ�¼
$result=mysql_query("select last_insert_id()",$conn);
$re_arr=mysql_fetch_array($result);
$id=$re_arr[0];

//ע��ɹ����Զ���¼��ע��session����
session_register("user");
$user=$id;
echo "<script language=javascript>alert('ע��ɹ�,������ҳ!');window.location='index.php'</script>";
	}
?>
<body>
<?php include("head.php");?>
<form name="form1" method="post" action="" enctype='multipart/form-data' onSubmit="return checkreg()" >
  <table width="782" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
    <tr> 
      <th colspan="2" bgcolor="#FFFFFF"><font size="5">�� �� ע �� �� ��</font></th>
    </tr>    
    <tr> 
      <td width="364" align="right" bgcolor="#FFFFFF">��   ����</td>
      <td width="403" bgcolor="#FFFFFF"> 
        <input type="text" name="name">
    </tr>
    <tr> 
      <td align="right" bgcolor="#FFFFFF">��   ��:</td>
      <td bgcolor="#FFFFFF"> 
        <input type="password" name="password">        
    </tr>
	<tr> 
      <td align="right" bgcolor="#FFFFFF">ȷ�����룺</td>
      <td bgcolor="#FFFFFF"> 
        <input type="password" name="pwd">        
    </tr>
	<tr> 
      <td align="right" bgcolor="#FFFFFF">Email��</td>
      <td bgcolor="#FFFFFF"> 
        <input type="text" name="email">        
    </tr>
	 <tr> 
      <td align="right" bgcolor="#FFFFFF">��   ��:</td>
      <td bgcolor="#FFFFFF"> 
        <input type="text" name="tel">
    </tr>
	<tr> 
      <td align="right" bgcolor="#FFFFFF">��   ַ:</td>
      <td bgcolor="#FFFFFF"> 
        <input type="text" name="address">
    </tr>    
    <tr> 
      <td  align=right bgcolor="#FFFFFF" > 
        <input type="submit" name="submit" value="ע ��">
      </td>
      <td align=left bgcolor="#FFFFFF"> 
        <input type="reset" name="submit" value="�� д">
      </td>
    </tr>
  </table>
</form>
</body>
</html>