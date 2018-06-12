<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/13
 * Time: 16:20
 */
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;

class BaseHome extends Controller
{
   public function _initialize()
    {
        $nav_list=Db::name('cms_nav')->where('status',1)->field('id,title,url,status,controller_name')->select();//导航菜单
        $link_list=Db::name('cms_link')->where('status',1)->select();//友情链接

        $config_list=Db::name('cms_config')->select();
        $key[] = array_column($config_list,'value','name');
        
        $news_list = Db::name('cms_article')->where('status',1)->order('create_at desc')->limit(4)->select();

        $data_list=Db::name('cms_product')->where('status',1)->order('id desc')->select();

        $about=Db::name('cms_abouts')->where('status',1)->order('create_at desc')->select(); 
        // dump($key);exit();
        $this->assign([
            'nav_list'=>$nav_list,
            'link_list'=>$link_list,
            'key'=>$key,
            'fkey'=>$key,
            'about'=>$about,
            'news_list'=>$news_list,
            'fnews_list'=>$news_list,
            'fdata_list'=>$data_list,
            'controller_name'=>Request::instance()->controller(),
            'action_name'=>Request::instance()->action()
        ]);
    }
}