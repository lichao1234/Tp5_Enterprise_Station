<?php
namespace app\wap\controller;

class Index extends Common
{
    public function index()
    {
        // 首页专访调用
        $news = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 2 and rec = 1')->order('id desc')->limit(7)->select();
        // 首页新闻中心调用
        $core = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 7 and rec = 1')->order('id desc')->limit(7)->select();
        // 首页产品展示调用
        $product = db('article')->field('id,title,desc,time,thumb,click')->where('cateid = 3 and rec = 1')->order('id desc')->limit(4)->select();
    	$this->assign(array(
            'news' => $news,
            'core' => $core,
            'product' => $product,
    	));
        return view();
    }
}
