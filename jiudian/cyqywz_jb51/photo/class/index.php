<?php
define("ROOTPATH", "../../");
include(ROOTPATH."includes/common.inc.php");
include("../language/".$sLan.".php");
include("../includes/photo.inc.php");

//����ģ������ҳ����
PageSet("photo","query");

//���
PrintPage();

?>