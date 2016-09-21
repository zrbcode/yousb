<?php
/**
 * zrb
 * Date: 2015/8/21
 * Time: 14:17
 */

namespace Home\Controller;

use Think\Controller;
use Think\Verify;

class CustomerServiceController extends Controller
{
    public function _initialize()
    {
        $memberinfo = session('memberinfo');
        $this->assign('memberinfo', $memberinfo);
        $sel = 7;
        $this->assign('sel', $sel);
    }

    /**
     * 首页
     * 创建时间：2015年4月10日
     */
    public function index()
    {
		$hotelId = I('hotelId', 0, 'int');
        $startTime = I('startTime', '');
        $endTime = I('endTime', '');
        $memberinfo = session('memberinfo');
        if (empty($memberinfo)) {
            $tmp['startTime'] = $startTime;
            $tmp['hotelId'] = $hotelId;
            $tmp['endTime'] = $endTime;
            session('tmparray', $tmp);
            $this->success('请登录后操作...', U('Login/index', array('returnUrl' => base64_encode(U("CustomerService/index")))));
            die();
        }
        $tmp = session('tmparray');
        if (!empty($tmp)) {
            $hotelId = $tmp['hotelId'];
            $startTime = $tmp['startTime'];
            $endTime = $tmp['endTime'];
            session('tmparray', null);
        }
        $this->assign('memberinfo', $memberinfo);

        /*$hotel = M('hotel')->where(array('type'=>$_GET['class']))->select();
         * 数据库查询酒店名称
         * */
         //接口调用查询酒店名称
        $hotel_list = $this->getList("http://182.92.76.102/app_api/index.php/hotel/getlist?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8","");

        $get_list = json_decode($hotel_list,true);
        $hotel = $get_list["data"]["hotel_list"];
        //dump($hotel);exit;
        $this->assign('hotel', $hotel);

        $this->assign('startTime', $startTime);
        $this->assign('hotelId', $hotelId);
        $this->assign('endTime', $endTime);
        $this->assign('nav', 0);
		if($_GET['class']==0){
			$this->display('kefang');
		}
		else{
			if($_GET['class']==1){
				$this->display('huichang');
			}
			else
				return false;
		}
	}

    /**
     * 预定结果
     * 创建时间：2015年4月10日
     */
    public function result()
    {
		
        $memberinfo = session('memberinfo');
        if (empty($memberinfo)) {
            $this->success('请登录后操作...', U('Login/index'));
            die();
        }
	
        $imgcode = I('imgcode', '');
        $config = array('fontSize' => 13,    // 验证码字体大小
            'length' => 4,     // 验证码位数
            'useNoise' => false, // 关闭验证码杂点
        );
        $Verify = new Verify($config);
//        if (!$Verify->check($imgcode)) {
//            $this->error('您输入的验证码不正确');
//        }
       //$roomInfo = M('room')->where(array('id' => I('roomId', 0, 'int')))->find();
       $info['room_id'] = I('roomId',0,'int');
       $room_arr = $this->post("http://182.92.76.102/app_api/index.php/room/getinfo?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8",$info);
       $room_info = json_decode($room_arr,true);
       $roomInfo = $room_info['data']['room_info'];
        $data = array(
            'member_id' => $memberinfo['id'],
            'start_date' => strtotime(I('startTime', '')),
            'end_date' => strtotime(I('endTime', '')),
            'idcard' => $memberinfo['idcard'],
            'adult' => 0,
            'children' => 0,
            'room_num' => I('room_num', 0, 'int'),
            'room_type' => $roomInfo['r_id'],
            'hotel_id' => $roomInfo['h_id'],
            'bathrobe' => '大-0,中-0,小-0,儿童-0',
            'slippers' => '大-0,中-0,小-0,儿童-0',
            'money' => I('room_num', 0, 'int') * $roomInfo['price'],
            'is_pay' => 0,
            'pay_mode' => '银联支付',
            'status' => '待支付',
            'write_date' => time(),
            'room_id' => I('roomId', 0, 'int'),
            'room_name' => $roomInfo['name'],
            'req'=>I('req',''),
            'food_num'=>I('food_num','0'),
            'room_typename' => D('room_type')->where(array("id" => $roomInfo['r_id']))->getField('typename'),
            'hotel_name' => D('hotel')->where(array("id" => $roomInfo['h_id']))->getField('h_name'),
        );
      
        $result = $this->post('http://182.92.76.102/app_api/index.php/room/roomOrderSubmit?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8',$data);
        $arr = json_decode($result,true);
        if(is_array($arr)){
			if($arr['error']==0){
				$message = '订单号：' . $arr['data']['order_no'] . '<br/>酒店：' . $data['hotel_name'] . '<br/>房型：' . $data['room_typename'] . '-' . $data['room_name'] . '<br/>房间数：' . $data['room_num'] . '<br/>入驻：' . I('startTime', '') . '<br/>退房：' . I('endTime', '') . '<br/>早餐数：'.I("food_num").'份<br/>金额：￥' . $data['money'];
			}
			else{
				$this->error("预订失败：".$arr['error_info']);
			}
		}
		else{
			$this->error('返回参数错误，请稍候再试');
		}
		/*
        $this->assign('nav', 0);
        $M_order = D('order');
        $rs = $M_order->data($data)->add();
        if ($rs === false) {
            $this->error('下单失败');
        }
        $message = '订单号：' . $data['order_no'] . '<br/>酒店：' . $data['hotel_name'] . '<br/>房型：' . $data['room_typename'] . '-' . $data['room_name'] . '<br/>房间数：' . $data['room_num'] . '<br/>入驻：' . I('startTime', '') . '<br/>退房：' . I('endTime', '') . '<br/>金额：￥' . $data['money'];
        if (think_send_mail($memberinfo['email'], $memberinfo['uname'], '预订订单生成', $message, null) == 1) {
            //$this->success('您的新密码已经通过email发送到您的邮箱，请注意查收', U('Login/forgotpassword'));
        }
        //$payUrl = '';//付款地址
        //$this->success('下单成功,去付款...', $payUrl, 1);
        */
      
		$this->assign('message',$message);
		$this->display();
    }
   
    /*
     * 这个先用于提交东西吧 sb接口
     * 2015／08／19
     * zrb
     * */
	private function post($url,$data){
		$headers = array(
			"Content-Type: application/x-www-form-urlencoded"
		);
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60); //设置超时
		curl_setopt($ch, CURLOPT_POST, TRUE);
		curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data)); 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE); 
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
		$rtn = curl_exec($ch);//CURLOPT_RETURNTRANSFER 不设置  curl_exec返回TRUE 设置  curl_exec返回json(此处) 失败都返回FALSE
		curl_close($ch);
		return  $rtn;
	}
	//获取列表
	private function getList($url,$data){
		$headers = array(
			"Content-Type: application/x-www-form-urlencoded"
		);
		$ch = curl_init($url);
		curl_setopt($ch, CURLOPT_TIMEOUT, 60); //设置超时
		if(!empty($data)){
			curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data)); 
			curl_setopt($ch, CURLOPT_POST, true);
		}
		else{
			curl_setopt($ch, CURLOPT_POST, false);
		}
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE); 
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
		$rtn = curl_exec($ch);//CURLOPT_RETURNTRANSFER 不设置  curl_exec返回TRUE 设置  curl_exec返回json(此处) 失败都返回FALSE
		curl_close($ch);
		return  $rtn;
	}
    /**
     * 图片验证码
     * 创建时间：2015年4月14日
     */
    public function verify()
    {
        $config = array('fontSize' => 13,    // 验证码字体大小
            'length' => 4,     // 验证码位数
            'useNoise' => false, // 关闭验证码杂点
        );
        $Verify = new Verify($config);
        $Verify->entry();
    }

    /**
     * 在线地图
     * 创建时间：2015年4月14日
     */
    public function onlinemap()
    {
        $this->assign('nav', 1);
        $this->display();
    }

    /**
     * 百度地图
     * 创建时间：2015年4月14日
     */
    public function ditu()
    {
        $this->display();
    }


    /**
     * 获取房间类型
     */
    public function getRoomType(){
		$data['h_id'] = I('hotelId', 0, 'int');
		$data['type'] =I('class',0,'int');
		$data['ckstatus'] =0;
		$data['_logic'] = "AND";
		//dump($data);exit;
		/*数据库调取数据*/
        //$room_list = M('room')->where($data)->select();
        //$room_type_list = M('room_type')->select();
        /*end*/
        //接口获取房间类型
        $search['hotel_id'] = $data['h_id'];
        //echo $search;exit;
        $RoomType = $this->getList("http://182.92.76.102/app_api/index.php/room/getcategory?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8",$search);
        $room_list_ = $this->getList("http://182.92.76.102/app_api/index.php/room/getRoomsInCategory?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8",$search);
         $arr = json_decode($RoomType,true);
		//dump($arr['data']["type_list"]);exit;
		$room_type_list = json_encode($arr['data']["type_list"]);
		$room_list_ = json_decode($room_list_,true);
		//dump($room_list_["data"]);exit;
		$rooms_list = $room_list_['data']['type_list']["room_list"];
		$tmp = array();
		foreach($room_list_['data']['type_list'] as $val){
			foreach($val['room_list'] as $vo){
				$tmp['id'] = $vo['id'];
				$tmp['no'] = $vo['no'];
				$tmp['typename'] = $vo["typename"];
				$tmp['name'] = $vo['name'];
				$tmp['hotel_id'] = $vo['hotel_id'];
				$tmp['count'] = $vo['count'];
				$tmp['price'] = $vo['price'];
 			}
 			$room_arr[] = $tmp;
		}
		//dump($tmp);exit;
		echo json_encode($room_arr);
        //end
        
       /* foreach ($room_list as $val) {
            $tmp['id'] = $val['id'];
            $tmp['name'] = $val['name'];
            $tmp['price'] = $val['price'];
            foreach ($room_type_list as $val_) {
                if ($val['r_id'] == $val_['id']) {
                    $tmp['typename'] = $val_['typename'];
                    break;
                }
            }
            $arr[] = $tmp;
        }
        */
        //echo json_encode($arr);
    }
   /***
    * 获取房间简要及图片 
    * */
    public function getRoomImg(){
		//$m = D('room');
		//$roominfo = $m->where(array('id'=>I('post.RoomId')))->join('tb_room_img ON tb_room.id=tb_room_img.room_id')->select();
		$roominfo = $this->getList("http://182.92.76.102/app_api/index.php/room/getinfo?Token=8CE4F98878B0C302CB3DE0DCD27D8BC8",array('room_id'=>I('post.RoomId')));
		$test = json_decode($roominfo,true);
		//dump($test);exit;
		//dump($test['data']['room_info']['piclist']);exit;
		if(!empty($roominfo)){
			echo json_encode($test['data']['room_info']['piclist']);
		}
		else{
			echo '该类型没有图片';
		}
	}
}
