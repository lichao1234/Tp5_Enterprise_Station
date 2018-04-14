<?php
namespace app\index\controller;
use think\Request;
use think\Db; 
class Message extends Common
{
    public function add()
    {
    	$this->assign('title','在线留言');
    	return view();
    }

    public function insert()
    {
    	$data = input('post.');
    	$data['createtime'] = time();
    	$res = Db::table('bk_message')->insert($data);
    	if($res){
    		echo 1;
    	}else{
    		echo 2;
    	}
    }
}
