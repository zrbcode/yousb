<?php

$partner        = $pcenteruser;       //合作伙伴ID
$security_code  = $pcenterkey;       //安全检验码
$seller_email   = $key1;       //卖家支付宝帐户
$_input_charset = "utf-8";  //字符编码格式  目前支持 GBK 或 utf-8
$sign_type      = "MD5";    //加密方式  系统默认(不要修改)
$transport      = "http";  //访问模式,你可以根据自己的服务器是否支持ssl访问而选择http以及https访问模式(系统默认,不要修改)
$notify_url     = $notify_url; //交易过程中服务器通知的页面 要用 http://格式的完整路径
$return_url     = $return_url; //付完款后跳转的页面 要用 http://格式的完整路径
$show_url       = $myurl;      //网站地址
$out_trade_no   = date(YmdHis)."-".$v_orderid;


////////////////////////////////////////////////////////////////////////////////

class alipay_service {

	var $gateway = "https://www.alipay.com/cooperate/gateway.do?";         //支付接口
	var $parameter;       //全部需要传递的参数
	var $security_code;   //安全校验码
	var $mysign;          //签名

	//构造支付宝外部服务接口控制
	function alipay_service($parameter,$security_code,$sign_type = "MD5",$transport= "https") {
		$this->parameter      = $this->para_filter($parameter);
		$this->security_code  = $security_code;
		$this->sign_type      = $sign_type;
		$this->mysign         = '';
		$this->transport      = $transport;
		if($parameter['_input_charset'] == "")
		$this->parameter['_input_charset']='utf-8';
		if($this->transport == "https") {
			$this->gateway = "https://www.alipay.com/cooperate/gateway.do?";
		} else $this->gateway = "http://www.alipay.com/cooperate/gateway.do?";
		$sort_array = array();
		$arg = "";
		$sort_array = $this->arg_sort($this->parameter);
		while (list ($key, $val) = each ($sort_array)) {
			$arg.=$key."=".$this->charset_encode($val,$this->parameter['_input_charset'])."&";
		}
		$prestr = substr($arg,0,count($arg)-2);  //去掉最后一个问号
		$this->mysign = $this->sign($prestr.$this->security_code);
	}


	function create_url() {
		$url        = $this->gateway;
		$sort_array = array();
		$arg        = "";
		$sort_array = $this->arg_sort($this->parameter);
		while (list ($key, $val) = each ($sort_array)) {
			$arg.=$key."=".urlencode($this->charset_encode($val,$this->parameter['_input_charset']))."&";
		}
		$url.= $arg."sign=" .$this->mysign ."&sign_type=".$this->sign_type;
		return $url;

	}

	function arg_sort($array) {
		ksort($array);
		reset($array);
		return $array;

	}

	function sign($prestr) {
		$mysign = "";
		if($this->sign_type == 'MD5') {
			$mysign = md5($prestr);
		}elseif($this->sign_type =='DSA') {
			//DSA 签名方法待后续开发
			die("DSA 签名方法待后续开发，请先使用MD5签名方式");
		}else {
			die("支付宝暂不支持".$this->sign_type."类型的签名方式");
		}
		return $mysign;

	}
	function para_filter($parameter) { //除去数组中的空值和签名模式
		$para = array();
		while (list ($key, $val) = each ($parameter)) {
			if($key == "sign" || $key == "sign_type" || $val == "")continue;
			else	$para[$key] = $parameter[$key];
		}
		return $para;
	}
	//实现多种字符编码方式
	function charset_encode($input,$_output_charset ,$_input_charset ="utf-8" ) {
		$output = "";
		if(!isset($_output_charset) )$_output_charset  = $this->parameter['_input_charset '];
		if($_input_charset == $_output_charset || $input ==null) {
			$output = $input;
		} elseif (function_exists("mb_convert_encoding")){
			$output = mb_convert_encoding($input,$_output_charset,$_input_charset);
		} elseif(function_exists("iconv")) {
			$output = iconv($_input_charset,$_output_charset,$input);
		} else die("sorry, you have no libs support for charset change.");
		return $output;
	}
}


$parameter = array(
	"service"        => "create_partner_trade_by_buyer",  //交易类型
	"partner"        => $partner,         //合作商户号
	"return_url"     => $return_url,      //同步返回
	"notify_url"     => $notify_url,      //异步返回
	"_input_charset" => $_input_charset,  //字符集，默认为utf-8
	"subject"        => $items,       //商品名称，必填
	"body"           => $items,       //商品描述，必填
	"out_trade_no"   => $out_trade_no,     //商品外部交易号，必填（保证唯一性）
	"price"          => $paytotal,          //订购金额
	"payment_type"   => "1",              //默认为1,不需要修改
	"quantity"       => "1",              //商品数量，必填
		
	"logistics_fee"      =>'0.00',        //物流配送费用
	"logistics_payment"  =>'BUYER_PAY',   //物流费用付款方式：SELLER_PAY(卖家支付)、BUYER_PAY(买家支付)、BUYER_PAY_AFTER_RECEIVE(货到付款)
	"logistics_type"     =>'EXPRESS',     //物流配送方式：POST(平邮)、EMS(EMS)、EXPRESS(其他快递)

	"show_url"       => $show_url,        //商品相关网站
	"seller_email"   => $seller_email     //卖家邮箱，必填
);
$alipay = new alipay_service($parameter,$security_code,$sign_type);

$link=$alipay->create_url();



////////////////////生成按钮///////////////////////////////////////////////

$hiddenString ="<form method='post' id='post' action='".$link."'>";
$hiddenString .= "<input type='submit' class='bigbutton' value='通过".$pcenter."付款'>";
$hiddenString .= "</form>";

?>


