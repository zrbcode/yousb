<?php
namespace Home\Controller;
use Think\Controller;

class VaccineController extends CommonController{
	//疫苗管理主页
	public function index(){
		if(!I('type')){
			$count = D("Vaccine")->count();
			$Page  = new \Think\Page($count,5);
			$show       = $Page->show();
			$data = D("Vaccine")->limit($Page->firstRow.','.$Page->listRows)->select();
		}
		else{
			$w['nember'] = I('no');
			$data[] = D('Vaccine')->where($w)->find();
		}
		$this->assign('data',$data);
		$this->display();
	}
	//新增疫苗
	public function add_vaccine(){
		$firm = D("firm")->select();
		$type = D("vaccinetype")->select();
		$this->assign('firm',$firm);
		$this->assign('type',$type);
		$this->display();
	}
	//新增疫苗操作
	public function do_add(){
		//dump($_POST);exit;
		$m = D('Vaccine');
		$data['type_name'] = I('type_name');
		$data['firm'] = I('firm');
		$type=explode("#",I('type'));
		$data['type'] = $type[0];
		$data['plan'] = implode("#",I('plan'));
		$data['number'] = $this->get_num($type[1]);
		$data['sum'] = I('sum');
		$res = $m->add($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			//$this->error("操作失败");
			echo $m->_sql();
		}
	}
	//删除疫苗信息
	public function del(){
		$id = I('v_id');
		$m = D('Vaccine')->where(array('v_id'=>$id))->delete();
		if($m){
			$this->success("删除成功");
		}
		else{
			$this->error("删除失败");
			//echo D('Vaccine')->_sql();
		}
	}
	//新增厂商
	public function add_firm(){
		$this->display();
	}
	//执行add厂商操作
	public function do_firm(){
		$m = D('firm');
		$data =$m->create();
		$res = $m->add($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
			//echo $m->_sql();
		}
	}
	//新增种类
	public function add_type(){
		$this->display();
	}
	//添加种类
	public function do_type_add(){
		$m = D('vaccinetype');
		$data =$m->create();
		$res = $m->add($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
			//echo $m->_sql();
		}
	}
	//更新疫苗信息
	public function chage_vaccine(){
		$id = I('v_id');
		$data = D('vaccine')->where(array('v_id'=>$id))->find();
		$firm = D("firm")->select();
		$type = D("vaccinetype")->select();
		$this->assign('firm',$firm);
		$this->assign('type',$type);
		$this->assign('data',$data);
		$this->display();
	}
	//执行更新操作
	public function do_chage(){
		$m = D('Vaccine');
		$data = $m->create();
		$type=explode("#",I('type'));
		$data['type'] = $type[0];
		$res = $m->save($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
			//echo $m->_sql();
		}
	}
	//生成编号
	public  function get_num($str){
		$str.=time();
		return $str;
	}
}
?>
