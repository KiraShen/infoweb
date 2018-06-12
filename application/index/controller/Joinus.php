<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/15
 * Time: 9:41
 */

namespace app\index\controller;

use think\Db;
class Joinus extends BaseHome
{
    public function index(){

        $data_list=Db::name('cms_joinus')->where('status',1)->order('id desc')->select();//关于我们
        // dump($data_list);exit();
        
        $this->assign([
           'data_list'=>$data_list
        ]);
        return $this->fetch();
    }
}
