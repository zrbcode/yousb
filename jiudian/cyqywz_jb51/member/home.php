<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
include("includes/member.inc.php");

$mid=$_GET["mid"];

//����ģ������ҳ����
PageSet("member","homepage");

//���
PrintPage();

?>
