<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
SecureMember();


//����ģ������ҳ����
PageSet("member","feedback");

//���
PrintPage();

?>