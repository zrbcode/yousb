<?php
namespace Home\Controller;
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
					if($res['status']){
						session('user',$res);
						$this->success("登录成功",U('Index/index'));
					}
					else{
						$this->error("该账号已经被禁用");
					}
				}
				else{
					$this->error("请检查账号或密码正确性");
					//echo $m->_sql();
				}
				
		}
		//注销
		public function Loginout(){
			if(isset($_SESSION)){
				session_destroy();
				$this->success("您已经退出登录");
			}
			
		}
		//修改登录密码
		public function uppass(){
			$id = I("id",'0');
			$data['password'] = I('password','0','md5');
			$password = I('password_','0','md5');
			if($data['password']!=$password){
				$this->error("密码不一致");
			}
			else{
				$m = D("user")->where(array('id'=>$id))->save($data);
				if($m){
					$this->success("操作成功");
				}
				else{
					echo $m->_sql();
				}
			}
		}
		

}
