<?php
namespace Home\Controller;
use Think\Controller;

class CommonController extends Controller{
		//判断前台登录
	protected function _initialize() {
		if(empty(session('user'))){
			$this->redirect('Login/Login');
			exit;
		}
	}

}
