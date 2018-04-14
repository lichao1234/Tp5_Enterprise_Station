<?php
namespace app\index\controller;

class Index extends Common
{
    public function index()
    {
    	// 首页新闻资讯调用
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('id desc')->limit(9)->select();
        // 首页产品展示调用
        $products = db('article')->field('id,title,desc,time,thumb')->where('cateid = 3 and rec = 1')->order('id desc')->limit(4)->select();
        // 企业动态
        $dynamic = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 7 and rec = 1')->order('id desc')->limit(9)->select();
        $this->assign('news',$news);
        $this->assign('products',$products);
        $this->assign('dynamic',$dynamic);
        return view();
    }
}
