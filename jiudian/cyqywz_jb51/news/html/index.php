<?php
define("ROOTPATH", "../../");
include(ROOTPATH."includes/common.inc.php");
include("../language/".$sLan.".php");
include("../includes/news.inc.php");

//��ַת��(1.4.3/20100922)
NewsToUrl();

//����ģ������ҳ����
PageSet("news","detail");


//���
PrintPage();

?>