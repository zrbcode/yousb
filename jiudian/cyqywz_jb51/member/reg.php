<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
include("includes/member.inc.php");


//����ģ������ҳ����
PageSet("member","reg");


//���
PrintPage();


?>