<?php
namespace app\wap\controller;
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
        $new = $new->where(' cateid in ('.$allCateID.') ')->order('time desc')->paginate(8);
        $page = $new->render();
        // var_dump($cates);
        // var_dump($cateInfo);
        // var_dump($subsection);
        // var_dump($new);
        // exit;
        $this->assign(array(
            'cates'=>$cates,
            'cateInfo'=>$cateInfo,
            'subsection'=>$subsection,
            'page'=>$page,
            'new'=>$new,
            'title'=>$cates['catename'],
        ));
        return view('artlist'); 
    }
}
