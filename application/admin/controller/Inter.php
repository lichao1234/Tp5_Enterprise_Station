<?php
namespace app\admin\controller;
use app\admin\model\Link as LinkModel;
use app\admin\controller\Common;
class Inter extends Common
{



    public function home()
    {
		$data = array();
		$banner = db('carousel')->field('id,title,thumb')->select();
		$data['banner'] = $banner;
		$cate = db('cate')->field('id,catename')->where('pid = 0')->select();
		foreach($cate as $k=>$v)
		{
			$data['list'][$k]['name'] = $v['catename'];
			$data['list'][$k]['row'] = db('article')->field('id,title,thumb')->where('cateid = '.$v['id'].'')->limit('6')->select();
		}
		echo json_encode($data);
	}
	
	public function details(){
		$id = input('get.id');
		$res =  db('article')->where('id = '.$id.'')->find();
		$res['time'] = date("Y-m-d H:i:s",$res['time']);
		$fwrx = db('conf')->where(' id = 15 ')->find();
		$res['fwrx'] = $fwrx['value'];
		echo json_encode($res);
	}
	
	public function types(){
		$res = db('cate')->field('id,catename')->where('pid = 0')->select();
		echo json_encode($res);
	}

	public function detail_list(){
		$id = input('get.id');
		$res = db('article')->field('id,title,thumb,time')->where('cateid = '.$id.'')->select();
		foreach($res as $k=>$v){
			$res[$k]['time'] = date("Y-m-d H:i:s",$res[$k]['time']);
		}
		echo json_encode($res);
	}
	
	public function liuyan(){
		$data=input('get.');
		$data['createtime'] = time();
		$res = db('message')->insert($data);
		if($res){
			echo 1;
		}else{
			echo 0;
		}
	}
	
    public function add(){
        if(request()->isPost()){
            $data=input('post.');
            $validate = \think\Loader::validate('Link');
            if(!$validate->scene('add')->check($data)){
                $this->error($validate->getError());
            }
            $add=db('link')->insert($data);
            if($add){
                $this->success('添加友情链接成功！',url('lst'));
            }else{
                $this->error('添加友情链接失败！');
            }
        }
        return view();
    }

    public function edit(){
        if(request()->isPost()){
            $data=input('post.');
            $validate = \think\Loader::validate('Link');
            if(!$validate->scene('edit')->check($data)){
                $this->error($validate->getError());
            }
            $link=new LinkModel();
            $save=$link->save($data,['id'=>$data['id']]);
            if($save !== false){
                $this->success('修改链接成功！',url('lst'));
            }else{
                $this->error('修改链接失败！');
            }
            return;
        }
        $links=LinkModel::find(input('id'));
        $this->assign('links',$links);
        return view();
    }

    public function del(){
        $del=LinkModel::destroy(input('id'));
        if($del){
           $this->success('删除链接成功！',url('lst')); 
        }else{
            $this->error('删除链接失败！');
        }
    }

}
