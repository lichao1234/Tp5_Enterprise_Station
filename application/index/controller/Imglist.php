<?php
namespace app\index\controller;
use app\index\model\Article;
use app\index\model\Cate;
class Imglist extends Common
{
    public function index()
    {
        $cates=db('cate')->find(input('id'));
        $id = input('id');
        $cate=new Cate();
        $allCateID=$cate->getchilrenid($id);
        $new = new Article();
        $new = $new->where(' cateid in ('.$allCateID.') ')->order('time desc')->paginate(10);
        $page = $new->render();
        // 获取专访6篇文章
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('click desc')->limit(6)->select();
    	$this->assign(array(
            'cates'=>$cates,
            'page'=>$page,
            'new'=>$new,
            'news'=>$news,
        ));
        return view('imglist');
    }
}
