<?php
namespace app\wap\controller;

class Page extends Common
{
    public function index()
    {
    	$cates=db('cate')->find(input('id'));
    	$cate=new \app\index\model\Cate();
        $cateInfo=$cate->getCateInfo(input('id'));
        // 获取子栏目
        // echo $cates['id'];
        $subsection = db('cate')->where(' pid = '.$cates['id'].' ')->select();
        // var_dump($cates);
        // var_dump($cateInfo);
        // echo $cates['id'];
        // var_dump($subsection);
        // exit;
    	$this->assign(array(
    		'cates'=>$cates,
    		'cateInfo'=>$cateInfo,
            'subsection'=>$subsection,
            'title'=>$cates['catename'],
    		));
        return view('page');
    }
}
