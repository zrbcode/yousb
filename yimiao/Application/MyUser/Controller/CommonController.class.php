<?php
namespace MyUser\Controller;
use Think\Controller;

class CommonController extends Controller{
		//判断后台登录
	protected function _initialize() {
		if(empty(session('info'))){
			$this->redirect('Login/Login');
			exit;
		}
	}

}
