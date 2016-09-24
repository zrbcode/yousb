<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/4/20
 * Time: 17:31
 */
//邮件配置
return array(
    'THINK_EMAIL' => array(
        'SMTP_HOST' => 'smtp.163.com', //SMTP服务器
        'SMTP_PORT' => '25', //SMTP服务器端口
        'SMTP_USER' => 'hotel022@163.com', //SMTP服务器用户名
        'SMTP_PASS' => '1234qwer.@', //SMTP服务器密码
        'FROM_EMAIL' => 'hotel022@163.com', //发件人EMAIL
        'FROM_NAME' => 'service', //发件人名称
        'REPLY_EMAIL' => '', //回复EMAIL（留空则为发件人EMAIL）
        'REPLY_NAME' => '', //回复名称（留空则为发件人名称）
    ),
);