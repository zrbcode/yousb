<?php
include("../config.php");
require_once('ly_check.php');
?>
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
$sql="select * from yx_books where id=".$_GET[id];
$arr=mysql_query($sql,$conn);
$rows=mysql_fetch_row($arr);
?>
<?php 
if($_POST[action]=="modify"){
$sqlstr = "update yx_books set name = '".$_POST[name]."', price = '".$_POST[price]."', uploadtime = '".$_POST[uptime]."', type = '".$_POST[type]."', total = '".$_POST[total]."' where id = ".$_GET[id];
$arry=mysql_query($sqlstr,$conn);
if ($arry){
				echo "<script> alert('�޸ĳɹ�');location='list.php';</script>";
			}
			else{
				echo "<script>alert('�޸�ʧ��');history.go(-1);</script>";
				}

		}
?>
<body>
<form id="myform" name="myform" method="post" action="" onSubmit="return myform_Validator(this)" language="JavaScript" >
      <table width="100%" height="173" border="0" align="center" cellpadding="2" cellspacing="1" class="table">
        <tr>
          <td colspan="2" align="left" class="bg_tr">&nbsp;��̨����&nbsp;&gt;&gt;&nbsp;�����޸�</td>
        </tr>
        <tr>
          <td width="31%" align="right" class="td_bg">������</td>
          <td width="69%" class="td_bg">
            <input name="name" type="text" id="name" value="<?php echo $rows[1] ?>" size="15" maxlength="30" />          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">�۸�</td>
          <td class="td_bg">
            <input name="price" type="text" id="price" value="<?php echo  $rows[2]; ?>" size="5" maxlength="15" />          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">���ʱ�䣺</td>
          <td class="td_bg">
            <label>
            <input name="uptime" type="text" id="uptime" value="<?php echo $rows[3] ; ?>" size="17" />
            </label>          </td>
        </tr>
        <tr>
          <td align="right" class="td_bg">�������</td>
          <td class="td_bg"><label>
            <input name="type" type="text" id="type" value="<?php echo $rows[4]; ?>" size="6" maxlength="19" />
          </label></td>
        </tr>
        <tr>
          <td align="right" class="td_bg">���������</td>
          <td class="td_bg"><input name="total" type="text" id="total" value="<?php echo  $rows[5]; ?>" size="5" maxlength="15" />
          ��</td>
        </tr>
        <tr>
          <td align="right" class="td_bg">
          <input type="hidden" name="action" value="modify">
            <input type="submit" name="button" id="button" value="�ύ"/></td>
          <td class="td_bg">����
            <input type="reset" name="button2" id="button2" value="����"/></td>
        </tr>
      </table>
</form>
</body>
</html>