<?php
namespace app\index\controller;
use think\Controller;
class Common extends Controller
{

    public function _initialize(){
    	//当前位置
        if(input('cateid')){
            $this->getPos(input('cateid'));
        }
        if(input('artid')){
            $articles=db('article')->field('cateid')->find(input('artid'));
            $cateid=$articles['cateid'];
            $this->getPos($cateid);
        }
        //网站配置项
    	$this->getConf();
        //网站栏目导航
        $this->getNavCates();
        //网站轮播图
        $this->getcarousel();
        //友情链接
        $this->getlinks();
        //推荐栏目
        $this->getcateM();
        //底部导航信息
        $cateM=new \app\index\model\Cate();
        $recBottom=$cateM->getRecBottom();
        $this->assign('recBottom',$recBottom);
    }



    public function getNavCates(){
        $cateres=db('cate')->where(array('pid'=>0))->select();
        foreach ($cateres as $k => $v) {
            $children=db('cate')->where(array('pid'=>$v['id']))->select();
            if($children){
                $cateres[$k]['children']=$children;
            }else{
                $cateres[$k]['children']=0;
            }
        }
        $this->assign('cateres',$cateres);
    }

    public function getConf(){
        $conf=new \app\index\model\Conf();
        $_confres=$conf->getAllConf();
        $confres=array();
        foreach ($_confres as $k => $v) {
            $confres[$v['enname']]=$v['value'];
        }
        // var_dump($confres);
        // exit;
        $this->assign('confres',$confres);
    }

    public function getPos($cateid){
        $cate= new \app\index\model\Cate();
        $posArr=$cate->getparents($cateid);
        // dump($posArr); die;
        $this->assign('posArr',$posArr);
    }

    public function getcarousel(){
        $carousel=db('carousel')->order('sort desc')->select();
        // var_dump($carousel);
        // exit;
        $this->assign('carousel',$carousel);
    }

    public function getlinks(){
        //友情链接数据
        $linkRes=db('link')->order('sort desc')->select();
        $this->assign('linkRes',$linkRes);
    }

    public function getcateM(){
        //获取推荐栏目
        $cateM=new \app\index\model\Cate();
        $recIndex=$cateM->getRecIndex();
        $this->assign('recIndex',$recIndex);
    }

}
