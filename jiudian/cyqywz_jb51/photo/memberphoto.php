<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
include("includes/photo.inc.php");


//定义模块名和页面名
PageSet("photo","memberphoto");


//输出
PrintPage();


?>