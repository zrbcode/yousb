<?php
include("../config.php");
require_once('ly_check.php');
$sql="delete from yx_books where id=".$_GET[id];
$arry=mysql_query($sql,$conn);
if($arry){
echo "<script> alert('ɾ���ɹ�');location='list.php';</script>";
}
else
echo "ɾ��ʧ��";
?>