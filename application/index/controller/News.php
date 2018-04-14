<?php
namespace app\index\controller;
use app\index\model\Article;
use app\index\controller\Common;
class News extends Common
{
    public function lst()
    {
    	$new=new Article();
        $new=$new->order('time desc')->paginate(5);
        $page = $new->render();
        $this->assign('new',$new);
        $this->assign('page',$page);
        $this->assign('title','新闻列表');
        return view();
    }

    public function details()
    {
    	$id = input('id');
    	$news= db('article')->find($id);
    	if($news){
    		$this->assign('news',$news);
	        $this->assign('title',$news['title']);
	        return view();
    	}else{
    		echo "<script>
				alert('该文章不存在');
				window.history.back(-1); 
    		</script>";
    	}
    }
}
