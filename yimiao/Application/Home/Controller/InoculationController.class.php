<?php
namespace Home\Controller;
use Think\Controller;

class InoculationController extends CommonController{
	//新增接种信息表
	public function index(){
		$uid = I('uid');
		$meminfo = D('memberinfo')->where(array('uid'=>$uid))->find();
		$firm = D("firm")->select();
		$type = D("vaccinetype")->select();
		$this->assign('firm',$firm);
		$this->assign('type',$type);
		$this->assign('meminfo',$meminfo);
		$this->display();
	}
	//删除接种操作
	public function del(){
		$id = I('h_id');
		$res = D("vlist")->where(array('h_id'=>$id))->delete();
		if($res){
				echo "ok";
		}
		else{
				echo "error:".$m->_sql();
		}
	}
	//执行新增操作
	public function add_plan(){
		$data['u_id'] =I("uid");
		$data['v_id'] =I("v_id");
		$data['plan'] =implode("#",I("plan"));
		$data['starttime'] =I("plan")[0];
		$data['operator_id'] =session('user')['id'];
		$data['count'] =1;
		$res = D("vlist")->add($data);
		if($res){
			$this->success("操作成功");
		}
		else{
			$this->error("操作失败");
			//echo D("vlist")->_sql();
		}
	}
	
	
	//接种列表
	public function vlist(){
		 $id=I("uid");
		 $list = D("vlist")->where(array("uid"=>$id))->select();
		 $meminfo =D("memberinfo")->where(array("uid"=>$id))->find();
		 for($i=0;$i<count($list);$i++){
			 $vinfo = D("Vaccine")->where(array("v_id"=>$list[$i]["v_id"]))->find();
			$list[$i]["v_id"] = $vinfo['type_name'];
			$list[$i]["v_number"] = $vinfo["number"];
			$list[$i]["v_firm"] = $vinfo['firm'];
			$list[$i]['plan'] = explode("#",$list[$i]['plan']);
			$list[$i]['planlist'] = $this->GetPlanList($list[$i]['plan'],$list[$i]['count']);
			$doit = D("user")->where(array('uid'=>$list[$i]['u_id']))->find();
			$list[$i]["operator_id"] = $doit['name'];
		 }
		 $this->assign('data',$list);
		 $this->assign('member',$meminfo);
		 $this->display();
	}
	//生成接种计划列表
	public function GetPlanList($arr,$count){
			for($i =0;$i<count($arr);$i++){
					$n = $i+1;
				if($n>$count){
					$str[$i]['info']= "第".($i+1)."针接种时间：".$arr[$i];
					$str[$i]['status'] = "0";
				}
				else{
					$str[$i]['info'] = "第".($i+1)."针接种时间：".$arr[$i];
					$str[$i]['status'] = "1";
				}
				
			}
			return $str;
	}
	//编辑接种信息
	public function edit(){
		$m = D("vlist");
		$id = I("id");
		$data = $m->where(array('h_id'=>$id))->find();
		$info= D("Vaccine")->where(array('v_id'=>$data['v_id']))->find();
		$plist = explode("#",$info['plan']);
		if($data){
			$arr = explode("#",$data['plan']);
			$save['count'] = $data['count']+1;
			//接种第几针，重新赋值
			for($i=0;$i<count($arr);$i++){
				$n =$i+1;//第n针；
				if($n==$save['count']){
					$arr[$i] = date("Y-m-d",time());
				}
				else{
					continue;
				}
			}
			for($i = 0;$i<count($arr);$i++){
				$n = $i+1;
				if($n > $save['count']){
					$arr[$i] = $this->DatetoTime($arr[$i-1],$this->DayToSecond($plist[$i-1]));
				}
				else{
					continue;
				}
			}
			$save['plan'] = implode("#",$arr);
			 $res= $m ->where(array("h_id"=>$id))->save($save);
			 if($res){
				echo json_encode(array("info"=>'成功'));
			 }
			 else{
						echo json_encode(array("info"=>'操作失败'));
			 }
			 
		}
		else{
			echo json_encode(array('info'=>'历史记录未找到'));
		}
	}
	//获取新接种计划
	public function new_plan($count){
		
	}
	//ajax返回
	//ajax疫苗列表信息
	public function GetList(){
		 $where['type']= I('type');
		 $where['firm'] = I('firm');
		 $where['_logic'] = "and";
		 if(empty($where['type'])){
			$list = D('Vaccine')->where(array('firm'=>I('firm')))->select();
		 }
		 else{
			if(empty($where['firm'])){
				$list = D('Vaccine')->where(array('type'=>I('type')))->select();
			}
			else{
				 $list = D('Vaccine')->where($where)->select();
			}
		 }
		 if($list){
			echo json_encode($list);
		}
		else{
			$r = array(
				'0'=>array(
					'v_id'=>'0',
					'type_name'=>'无相关数据'
				),
			);
			echo json_encode($r);
		}
			
	}
	//ajax返回详情
	public function Get_Vaccine_Info(){
		$id = I('v_id');
		$data = D('Vaccine')->where(array('v_id'=>$id))->find();
		$count_data = $this->GetPlan($data);
		echo json_encode($count_data);
	}
	//生成针次
	private function GetPlan($data){
		$day = explode("#",$data['plan']);
		$res[0]['info']= "第1针：".date("Y-m",time());
		$res[0]['time'] = date("Y-m",time());
		
		for($i=0;$i<count($day);$i++){
			$ad = $this->DayToSecond($day[$i]);
			$res[$i+1]['info'] = "第".($i+2)."针：".$this->DatetoTime($res[$i]['time'],$ad);
			$res[$i+1]['time'] = $this->DatetoTime($res[$i]['time'],$ad);
		}
		return $res;
	}
	//天数转秒
	private function DayToSecond($num){
		$second = $num*24*60*60;
		return $second;
	}
	//日期转时间戳
	private function DatetoTime($date,$ad){
		$time= strtotime($date);
		$time += $ad;
		return date("Y-m",$time);
	}

}
?>
