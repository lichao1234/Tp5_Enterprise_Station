<?php
namespace app\index\controller;
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
        // var_dump($front);
        // var_dump($after);
        // exit;
        $front=db('article')->where("id<".$artid." and  cateid = ".$articles['cateid'])->order('id desc')->limit('1')->find();
        $after=db('article')->where("id>".$artid." and  cateid = ".$articles['cateid'])->order('id desc')->limit('1')->find();

        $cates=db('cate')->find($articles['cateid']);
        // 获取专访6篇文章
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('click desc')->limit(6)->select();
        $this->assign(array(
            'articles'=>$articles,
            'artid'=>$artid,
            'cates'=>$cates,
            'front'=>$front,
            'after'=>$after,
            'news'=>$news,
            'title' => $articles['title'],
        ));
        return view('article');
    }

}
