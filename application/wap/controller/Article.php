<?php
namespace app\wap\controller;
use think\Request;
use app\index\model\Cate;
use app\index\model\Article as ArticleModel;
use think\Loader;
class Article extends Common
{
    public function index()
    {
        $artid=input('id');
        db('article')->where(array('id'=>$artid))->setInc('click');
        $articles=db('article')->find($artid);
        $cates=db('cate')->find($articles['cateid']);

        $cate=new Cate();
        $new = Loader::model('Article');

        $allnewCateID=$cate->getchilrenid(4);
        if(strpos($allnewCateID,strval($articles['cateid'])) !== false){
            $front=db('article')->where("id<".$artid." and  cateid in (".$allnewCateID.")")->order('id desc')->limit('1')->find();
            $after=db('article')->where("id>".$artid." and  cateid in (".$allnewCateID.")")->order('id desc')->limit('1')->find();
        }else{
            $front=db('article')->where("id<".$artid." and  cateid = ".$articles['cateid'])->order('id desc')->limit('1')->find();
            $after=db('article')->where("id>".$artid." and  cateid = ".$articles['cateid'])->order('id desc')->limit('1')->find();
        }

        $this->assign(array(
            'articles'=>$articles,
            'cates'=>$cates,
            'title' => $articles['title'],
            'front'=>$front,
            'after'=>$after,
        ));
        return view('article');
    }

}