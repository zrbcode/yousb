<?php
include("../config.php");
require_once('ly_check.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>����PHPͼ�����ϵͳv0.1</title>
<link rel="stylesheet" href="images/css.css" type="text/css">
<script Language="JavaScript" Type="text/javascript">
<!--
function myform_Validator(theForm)
{

  if (theForm.name.value == "")
  {
    alert("������������");
    theForm.name.focus();
    return (false);
  }
    if (theForm.price.value == "")
  {
    alert("�����������۸�");
    theForm.price.focus();
    return (false);
  }
    if (theForm.type.value == "")
  {
    alert("�����������������");
    theForm.type.focus();
    return (false);
  }
 return (true);
 }

//--></script>
</head>
<?php
if($_POST[action]=="insert"){
$sql = "insert into yx_books (id,name,price,uploadtime,type,total,leave_number) values('','".$_POST[name]."','".$_POST[price]."','".$_POST[uptime]."','".$_POST[type]."','".$_POST[total]."','".$_POST[total]."')";
$arr=mysql_query($sql,$conn);
if ($arr){
		echo "<script language=javascript>alert('��ӳɹ���');window.location='add.php'</script>";
			}
			else{
				echo "<script>alert('���ʧ��');history.go(-1);</script>";
				}

		}
?>
<body>
<form id="myform" name="myform" method="post" action="" onsubmit="return myform_Validator(this)" language="JavaScript">
      <table width="100%" height="173" border="0" align="center" cellpadding="2" cellspacing="1" class="table">
        <tr>
          <td colspan="2" align="left" class="bg_tr">&nbsp;��̨����&nbsp;&gt;&gt;&nbsp;�������</td>
        </tr>
        <tr>
          <td width="31%" align="right" class="td_bg">������</td>
          <td width="69%" class="td_bg">
            <input name="name" type="text" id="name" size="15" maxlength="30" />          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">�۸�</td>
          <td class="td_bg">
            <input name="price" type="text" id="price" size="5" maxlength="15" />         </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">���ڣ�</td>
          <td class="td_bg">
            <input name="uptime" type="text" id="uptime" value="<? echo date("Y-m-d h:i:s"); ?>" />          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">�������</td>
          <td class="td_bg">
            <input name="type" type="text" id="type" size="6" maxlength="19" />          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">���������</td>
          <td class="td_bg"><input name="total" type="text" id="total" size="5" maxlength="15" />
            ��</td>
        </tr>
        <tr>
          <td align="right" class="td_bg">
          <input type="hidden" name="action" value="insert">
            <input type="submit" name="button" id="button" value="�ύ" />          </td>
          <td class="td_bg">����
            <input type="reset" name="button2" id="button2" value="����" />       </td>
        </tr>
  </table>
</form>
</body>
</html>