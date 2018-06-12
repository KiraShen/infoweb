<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/14
 * Time: 11:14
 */

namespace app\index\controller;

use think\Db;
class Services extends BaseHome
{
    public function index(){

        $data_list=Db::name('cms_product')->where('status',1)->order('id desc')->select();//关于我们
        // dump($data_list);exit();
        
        $cms_list=Db::name('cms_service_msg')->where('status',1)->order('create_at')->select();//关于我们
        // dump($cms_list);exit();
        $this->assign([
           'data_list'=>$data_list,
           'cms_list'=>$cms_list
        ]);
        return $this->fetch();

        $about_list=Db::name('cms_about')->where('status',1)->order('create_at desc')->select();//关于我们
        $case_list=Db::name('cms_case')->where('status',1)->select();//案例列表
        $css_array=array('fadeInLeft','fadeInUp','fadeInUp','fadeInRight');
        $service_list=array();
        $process_list=array();//流程列表
        $i=0;
        $j=0;
        foreach($about_list as $k=>$v) {
            if ($v['type'] == 1) {
                if($i < 4){
                    $service_list[$k]['title'] = $v['title'];
                    $service_list[$k]['icon'] = $v['icon'];

                    $service_list[$k]['description'] = explode(",", $v['description']);
                    array_filter($service_list[$k]['description']);
                    foreach ($service_list[$k]['description'] as $key => $val) {
                        $service_list[$k]['description'][$key] = trim($val);
                    }
                    $service_list[$k]['css']=$css_array[$i];
                    $i++;
                }

            }

            if($v['type'] == 6){
                $process_list[$k]['title'] = $v['title'];
                $process_list[$k]['icon'] = $v['icon'];

                $process_list[$k]['description'] =  $v['description'];
                $process_list[$k]['time']=0.1*$j;
                $j++;
            }
        }
        $this->assign([
          'service_list'=>$service_list,
            'process_list'=>$process_list,
            'case_list'=>$case_list
        ]);
        return $this->fetch();
    }
       
    public function product_details(){
        $id=input('id','','int');
        if(!empty($id)){
            $where['id']=array('eq',$id);
        }
        $article_info=Db::name('cms_product')->where($where)->find();
        $data_list=Db::name('cms_product')->where('status',1)->order('id desc')->select();
        // dump($article_info);exit();
        $this->assign([
            'data_list'=>$data_list,
            'article_info'=>$article_info,
            'create_at'=>$article_info['create_at'],
            'seo_title'=>$article_info['title']
        ]);
        return $this->fetch();
    }

    //服务详情
    public function services_details(){
        $id=input('id','','int');
        if(!empty($id)){
            $where['id']=array('eq',$id);
        }

        $cms_list=Db::name('cms_service_msg')->where('status',1)->order('create_at')->select();//关于我们
        $article_info=Db::name('cms_service_msg')->where($where)->find();
        // dump($article_info);exit();
        $this->assign([
            'cms_list'=>$cms_list,
            'article_info'=>$article_info,
            'create_at'=>$article_info['create_at'],
            'seo_title'=>$article_info['title']
        ]);
        return $this->fetch();
    }
}