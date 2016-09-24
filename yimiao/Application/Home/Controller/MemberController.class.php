<?php
namespace Home\Controller;
use Think\Controller;

class MemberController extends CommonController {
	//个人数据主页
    public function index(){
		if(!I('type')){
			$count = D("Memberinfo")->count();
			$Page  = new \Think\Page($count,5);
			$show       = $Page->show();
			$data = D("Memberinfo")->order('uid desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		}
		else{
			$w['name'] = I('name');
			$w['idcard'] = I('idcard');
			$count = D("Memberinfo")->where($w)->count();
			$Page  = new \Think\Page($count,5);
			$show       = $Page->show();
			$data[] = D('Memberinfo')->where($w)->limit($Page->firstRow.','.$Page->listRows)->find();
		}
		$this->assign('page',$show);
		$this->assign('data',$data);
		$this->display();
    }
    //添加新成员——
    public function add_user(){
		$this->display();
	}
	//添加新成员
	public function do_add(){
		$data['name']=I('name');
		$data['idcard']=I('idcard');
		$data['sex']=I('sex','0');
		$data['address']=I('address');
		$data['phone']=I('phone');
		$m = D('Memberinfo');
		$res = $m->add($data);
		if($res){
			$this->success("信息录入成功");
		}
		else{
			//$this->error("信息录入失败");
			echo $m->_sql();
		}
	}
	//删除成员
	public function del(){
		$id = I('id','0');
		$res = D('Memberinfo')->where(array('uid'=>$id))->delete();
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
		}
	}
	//成员信息更改
	public function up_mem(){
		$id = I('id','0');
		$res = D('Memberinfo')->where(array('uid'=>$id))->find();
		$this->assign('data',$res);
		$this->display();
	} 
	//操作更新
	public function up_member(){
		$m = D('Memberinfo');
		$data = $m->create();
		$res = $m->save($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
		}
		
	}



}
?>
