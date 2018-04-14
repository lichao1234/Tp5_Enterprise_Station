<?php
namespace app\index\controller;
use think\Request;
class Art extends Common
{
    public function ggwh()
    {
    	$this->assign('title','港谷文化');
    	return view();
    }

    public function xmjj()
    {
    	$this->assign('title','项目简介');
    	return view();
    }

    public function gwyq()
    {
    	$this->assign('title','谷物元气');
    	return view();
    }

    public function yqzc()
    {
    	$this->assign('title','元气早餐');
    	return view();
    }

    public function gwzc()
    {
    	$this->assign('title','谷物正餐');
    	return view();
    }

    public function xxxwc()
    {
    	$this->assign('title','休闲下午茶');
    	return view();
    }

    public function ffwc()
    {
    	$this->assign('title','丰富晚餐');
    	return view();
    }

    public function scfx()
    {
    	$this->assign('title','市场分析');
    	return view();
    }

    public function xmys()
    {
    	$this->assign('title','项目优势');
    	return view();
    }

    public function jmtj()
    {
    	$this->assign('title','加盟条件');
    	return view();
    }

    public function jmdx()
    {
    	$this->assign('title','加盟店型');
    	return view();
    }

    public function jmlc()
    {
    	$this->assign('title','加盟流程');
    	return view();
    }

    public function jmqy()
    {
    	$this->assign('title','加盟权益');
    	return view();
    }

    public function jmzc()
    {
    	$this->assign('title','加盟支持');
    	return view();
    }

    public function lxwm()
    {
    	$this->assign('title','联系我们');
    	return view();
    }
}
