<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include(ROOTPATH."member/includes/member.inc.php");
include("language/".$sLan.".php");
include("includes/down.inc.php");

SecureMember();

//����ģ������ҳ����
PageSet("member","downcat");


//���
PrintPage();


?>