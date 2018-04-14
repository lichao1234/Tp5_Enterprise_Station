<?php
namespace app\index\controller;

class Page extends Common
{
    public function index()
    {
    	$cates=db('cate')->find(input('id'));
    	$cate=new \app\index\model\Cate();
        $cateInfo=$cate->getCateInfo(input('cateid'));
        // 获取子栏目
        // echo $cates['id'];
        $subsection = db('cate')->where(' pid = '.$cates['id'].' ')->select();
        // 获取专访6篇文章
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('click desc')->limit(6)->select();
    	$this->assign(array(
    		'cates'=>$cates,
    		'cateInfo'=>$cateInfo,
            'subsection'=>$subsection,
            'news' => $news,
            'title'=>$cates['catename'],
    		));
        return view('page');
    }
}
