<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/15
 * Time: 9:41
 */

namespace app\index\controller;

use think\Db;
class Aboutus extends BaseHome
{
    public function index(){
        $leader_list=Db::name('cms_about_leader')->where('status',1)->order('id desc')->select();
        $team_list=Db::name('cms_about_team')->where('status',1)->order('id desc')->select();
        // dump($data_list);exit();
        $word_list=Db::name('cms_about_word')->alias('a')->join('cms_about_leader l','a.word_id = l.id')->limit(3)->select();        
        // dump($word_list);exit();
        $about=Db::name('cms_abouts')->where('status',1)->order('create_at desc')->select();  
        $image_list=Db::name('cms_aboutus_img')->where('status',1)->order('create_at desc')->select();  
        // dump($about);exit();
        $this->assign([
           'leader_list'=>$leader_list,
           'team_list'=>$team_list,
           'word_list'=>$word_list,
           'image_list'=>$image_list,
           'about'=>$about
        ]);
        return $this->fetch();
    }
    public function about(){
      $about=Db::name('cms_abouts')->where('status',1)->order('create_at desc')->select();  
      // dump($about);exit();
        $this->assign([
           'about'=>$about
        ]);
        return $this->fetch();
    }
}
