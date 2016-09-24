<?php
namespace MyUser\Controller;
use Think\Controller;
class IndexController extends CommonController {
    /***
     * 后台主页 
     * **/
    public function index(){
		$m = D("user");
		$data = $m ->select();
		$this->assign('info',$data);
		$this->display();
    }
    //增加新成员
    public function new_user(){
		$m = D("user");
		$data['id'] = NUll;
		$data['name'] = I("name");
		$data['password'] = I("password","",'md5');
		$data['status'] = 0;
		$data['type'] = 1;
		
		$password_ = I("password_","",'md5');
		if($password_ != $data['password']){
			$this->error("再次密码输入不一致");
		}
		else{
			$r = $m ->where(array('name'=>I('name')))->find();	//数据查重
			if($r){
				$this->error("此用户已存在");
			}
			else{
				$res = $m->add($data);
				if($res){
					$this->success("增加成功");
				}
				else{
					echo $m->GetLastSql();
					echo $m->getDbError();
				}
			}
		}
	}
	//删除成员
		public function del(){
			$id=I('id','0');
			$m = D('user')->where(array('id'=>$id))->delete();
			if($m){
				$this->success("删除成功");
			}
			else{
				$this->error("删除失败");
			}
		}
		//禁用成员登录
		public function nagetive(){
			$id = I('id','0');
			$data['status'] = 0;
			$m = D('user')->where(array('id'=>$id))->save($data);
			if($m){
				$this->success("操作成功");
			}
			else{
				$this->error("操作失败");
			}
		}
		//启用成员登录
		public function start_login(){
			$id = I('id','0');
			$data['status'] = 1;
			$m = D('user')->where(array('id'=>$id))->save($data);
			if($m){
				$this->success("操作成功");
			}
			else{
				$this->error("操作失败");
			}
		}
		//更新密码
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
