<?php
	error_reporting(0);
	ob_start();
	session_start(); //��������
	$conn=@mysql_connect("localhost","root","root");  //����mysql��������Ϣ
	if($conn==null)
	{
		echo "���ݿ��ʧ��";
		exit; //���ݿ��ʧ�ܣ��˳�
	}
	mysql_query("SET NAMES 'gbk'"); //�������ݿ����
	mysql_select_db("bookinfo"); //ѡ�����ݿ�
?>