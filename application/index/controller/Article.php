<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/14
 * Time: 18:07
 */

namespace app\index\controller;

use think\Db;
class Article extends BaseHome
{
    //文章首页
    public function index(){

        // 查询状态为1的用户数据 并且每页显示10条数据
        $list = Db::name('cms_article')->where('status',1)->paginate(6);
        // foreach($list as $k=>$v){
        //     $list[$k]['url']=url('/news-'.$v['id']);
        // }
        $this->assign('list', $list);
        // 渲染模板输出
        // dump($list);exit();
        return $this->fetch();

        $type=input('type','','int');
        $Nowpage = input('get.page') ? input('get.page'):1;
        if(!empty($type)){
           $where['cate_id']=$type;
        }
        $where['status']=1;
        $article_cate=Db::name('cms_article_cate')->where('status',1)->select();
        foreach($article_cate as $k=>$v){
            $article_cate[$k]['url']=url('/cate-'.$v['id']);
        }
        $limits = 6;// 获取总条数
        $start = $limits * ($Nowpage - 1);
        $article_list=Db::name('cms_article')->where($where)->limit($start,$limits)->select();
        foreach($article_list as $k=>$v){
            $article_list[$k]['url']=url('/news-'.$v['id']);
        }
        $count=Db::name('cms_article')->where($where)->count();
        $allpage = ceil($count / $limits);
        // dump($article_list);exit();
        
        
        $this->assign([
           'article_cate'=>$article_cate,
            'article_list'=>$article_list,
            'allpage'=>$allpage,
            'type'=>$type,
            'page'=>$Nowpage
        ]);
        // echo "string";exit();
        return $this->fetch();
    }
    //文章详情
    public function details(){
        $id=input('id','','int');
        if(!empty($id)){
            $where['id']=array('eq',$id);
        }
        $article_info=Db::name('cms_article')->where($where)->find();
        // dump($article_info);exit();
        // 
        $list = Db::name('cms_article')->where('status',1)->limit(10)->paginate(6);
        $this->assign([
            'article_info'=>$article_info,
            'list'=>$list,
            'create_at'=>$article_info['create_at'],
            'seo_title'=>$article_info['title'],
            'seo_keywords'=>$article_info['seo_keywords'],
            'seo_description'=>$article_info['seo_description']
        ]);
        return $this->fetch();
    }
}