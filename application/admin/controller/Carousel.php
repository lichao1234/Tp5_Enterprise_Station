<?php
namespace app\admin\controller;
use app\admin\model\Carousel as CarouselModel;
use app\admin\controller\Common;
use think\Image;
class Carousel extends Common
{



    public function lst()
    {
        $link=new CarouselModel();
        if(request()->isPost()){
            $sorts=input('post.');
            foreach ($sorts as $k => $v) {
                $link->update(['id'=>$k,'sort'=>$v]);
            }
            $this->success('更新排序成功！',url('lst'));
            return;
        }
        $linkres=$link->order('sort desc')->paginate(5);
        $this->assign('linkres',$linkres);
        return view();
	}

    public function add(){
        if(request()->isPost()){
            $data=input('post.');
            $file = request()->file('thumb');
            $info = $file->validate(['ext'=>'jpg,png,gif'])->rule('uniqid')->move(ROOT_PATH . 'public' . DS . 'uploads');
            if($info){
                // 成功上传后 获取上传信息
                // 输出 jpg
                // echo $info->getExtension();
                // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                // echo $info->getSaveName();
                // 输出 42a79759f284b767dfcb2a0197904287.jpg
                $filename =  $info->getFilename(); 
                $data['thumb'] = '/uploads/'.$filename;
                $validate = \think\Loader::validate('Carousel');
                if(!$validate->scene('add')->check($data)){
                    $this->error($validate->getError());
                }
                $carousel=new CarouselModel;
                if($carousel->insert($data)){
                    $this->success('添加轮播成功',url('lst'));
                }else{
                    $this->error('添加轮播失败！');
                }
                return;
            }else{
                // 上传失败获取错误信息
                $error = $file->getError();
                $this->error(''.$error.'');
                return;
            }
            
        }
        return view();
    }

    // public function edit(){
    //     if(request()->isPost()){
    //         $data=input('post.');
    //         $validate = \think\Loader::validate('Link');
    //         if(!$validate->scene('edit')->check($data)){
    //             $this->error($validate->getError());
    //         }
    //         $link=new CarouselModel();
    //         $save=$link->save($data,['id'=>$data['id']]);
    //         if($save !== false){
    //             $this->success('修改链接成功！',url('lst'));
    //         }else{
    //             $this->error('修改链接失败！');
    //         }
    //         return;
    //     }
    //     $links=CarouselModel::find(input('id'));
    //     $this->assign('links',$links);
    //     return view();
    // }

    public function del(){
        $id = input('id');
        $carousel=new CarouselModel;
        $link = $carousel->where('id',$id)->column('thumb');
        $ruto = $_SERVER['DOCUMENT_ROOT'];
        $img = $link[0];
        $del=CarouselModel::destroy(input('id'));
        if($del){
            unlink($ruto.$img);
            $this->success('删除轮播成功！',url('lst')); 
        }else{
            $this->error('删除轮播失败！');
        }
    }

    




   

	












}
