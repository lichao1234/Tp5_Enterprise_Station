<?php
namespace app\wap\controller;
use app\wap\model\Article;
use app\wap\model\Cate;
class Imglist extends Common
{
    public function index()
    {
		$id = input('id');
    	$cates=db('cate')->find(input('id'));
		$cate=new Cate();
        $allCateID=$cate->getchilrenid($id);
		$new = new Article();
        $new = $new->where(' cateid in ('.$allCateID.') ')->order('time desc')->paginate(6);
        $page = $new->render();
        // 查询推荐信息
        $rec = db('article')->field('id,title,desc,time,thumb')->where(' cateid in ('.$allCateID.') and rec = 1 ')->order('id desc')->limit(4)->select();
    	$this->assign(array(
			'cates'=>$cates,
    		'new'=>$new,
    		'page'=>$page,
            'rec'=>$rec,
        ));
        return view('imglist');
    }
}
