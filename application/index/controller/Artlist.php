<?php
namespace app\index\controller;
use app\index\model\Article;
use app\index\model\Cate;
class Artlist extends Common
{
    public function index()
    {
        $id = input('id');
    	$cates=db('cate')->find(input('id'));
        $cate=new \app\index\model\Cate();
        $cateInfo=$cate->getCateInfo(input('cateid'));
        $subsection = db('cate')->where(' pid = '.$cates['id'].' ')->select();
        $cate=new Cate();
        $allCateID=$cate->getchilrenid($id);
        $new = new Article();
        $new = $new->where(' cateid in ('.$allCateID.') ')->order('time desc')->paginate(10);
        $page = $new->render();
        // var_dump($cates);
        // var_dump($cateInfo);
        // var_dump($subsection);
        // var_dump($new);
        // exit;
        // 获取专访6篇文章
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('click desc')->limit(6)->select();
        $this->assign(array(
            'cates'=>$cates,
            'cateInfo'=>$cateInfo,
            'subsection'=>$subsection,
            'page'=>$page,
            'new'=>$new,
            'news'=>$news,
            'title'=>$cates['catename'],
        ));
        return view('artlist'); 
    }
}
