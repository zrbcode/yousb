<?php include("config.php");?>
<html>
<body>
<?
// 如果图书编号没填写，提示用户
		$book_id=$_GET['book_id'];
		if ($book_id==""){
			echo "<script language=javascript>alert('编号不正确');window.location='index.php'</script>";
			exit();
		}
		else {
		?>
	<?
	// 借书
		// 查看用户ID是否已填
		if ($_SESSION['id']==""){
			echo "<script language=javascript>alert('您还没有登陆');window.location='landing.php'</script>";
			exit();
		}else{
		// 可以正常借书，记录之
		// 获得当前日期
		$now = date("Y-m-d");
		$lendsql="insert into lend(book_id, book_title, lend_time, user_id) values('$book_id','$title','$now','".$_SESSION['id']."')";
		mysql_query($lendsql,$conn) or die ("操作失败：".mysql_error());
		
		// 借出后需要在该书记录中库存剩余数减一
		mysql_query("update yx_books set leave_number=leave_number-1 where id='$book_id'",$conn);
		echo "<script language=javascript>alert('借阅完成');window.location='index.php'</script>";
		?>
<?
}
	}
?>
</body>
</html>