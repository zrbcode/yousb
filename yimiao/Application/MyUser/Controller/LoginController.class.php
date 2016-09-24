<?php
namespace MyUser\Controller;
use Think\Controller;

class LoginController extends Controller{
		public function Login(){
			$this->display();
		}
		//登录操作
		public function DoLogin(){
				$where['name'] = I("name",'');
				$where['password'] = I("password",'',md5);
				$m = D("user");				
				$res = $m->where($where)->find();
				
				if($res){
					if($res['type']){
						$this->error("此账号权限不足，无法登录");
						exit;
					}
					else{
						$_SESSION['info']= $res;
						$this->success("登录成功",U('Index/index'));
					}
				}
				else{
					$this->error("账号或密码错误");
					exit;
				}
				
		}
		//注销
		public function Loginout(){
			if(isset($_SESSION)){
				session_destroy();
				$this->success("您已经退出登录");
			}
			
		}

}
