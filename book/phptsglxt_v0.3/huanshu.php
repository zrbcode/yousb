<?php 
require ('config.php');
	//���û�е�¼���˳�
	if ($_SESSION['id']==""){
			echo "<script language=javascript>alert('����û�е�½');window.location='landing.php'</script>";
			exit();
		}
	$book_id=$_GET[book_id];	
	//����sql��仹��
	//��lend����ɾ���ý����¼
	$returnsql="delete from lend where book_id='$book_id' and user_id=".$_SESSION['id'];
	mysql_query($returnsql,$conn) or die ("ɾ�������¼ʧ�ܣ�".mysql_error());
	//��book��������һ���ִ�������
	$booksql="update yx_books set leave_number=leave_number+1 where id='$book_id'";
	mysql_query($booksql,$conn) or die ("����ʣ��������ʧ�ܣ�".mysql_error());
	echo "<script language=javascript>alert('����ɹ�');window.location='index.php'</script>";
?>