<?php include("config.php");?>
<html>
<body>
<?
// ���ͼ����û��д����ʾ�û�
		$book_id=$_GET['book_id'];
		if ($book_id==""){
			echo "<script language=javascript>alert('��Ų���ȷ');window.location='index.php'</script>";
			exit();
		}
		else {
		?>
	<?
	// ����
		// �鿴�û�ID�Ƿ�����
		if ($_SESSION['id']==""){
			echo "<script language=javascript>alert('����û�е�½');window.location='landing.php'</script>";
			exit();
		}else{
		// �����������飬��¼֮
		// ��õ�ǰ����
		$now = date("Y-m-d");
		$lendsql="insert into lend(book_id, book_title, lend_time, user_id) values('$book_id','$title','$now','".$_SESSION['id']."')";
		mysql_query($lendsql,$conn) or die ("����ʧ�ܣ�".mysql_error());
		
		// �������Ҫ�ڸ����¼�п��ʣ������һ
		mysql_query("update yx_books set leave_number=leave_number-1 where id='$book_id'",$conn);
		echo "<script language=javascript>alert('�������');window.location='index.php'</script>";
		?>
<?
}
	}
?>
</body>
</html>