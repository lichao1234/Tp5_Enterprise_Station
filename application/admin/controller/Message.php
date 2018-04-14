<?php
namespace app\admin\controller;
use app\admin\model\Message as MessageModel;
use app\admin\controller\Common;
class Message extends Common
{



    public function lst()
    {
        $Message=new MessageModel();
        $Message=$Message->order('createtime desc')->paginate(5);
        $page = $Message->render();
        $this->assign('Message',$Message);
        $this->assign('page',$page);
        return view();
	}

    
    public function del(){
        $del=MessageModel::destroy(input('id'));
        if($del){
           $this->success('删除链接成功！',url('lst')); 
        }else{
            $this->error('删除链接失败！');
        }
    }

    




   

	












}
