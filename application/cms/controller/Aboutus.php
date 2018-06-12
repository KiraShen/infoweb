<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */

namespace app\cms\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
class Aboutus extends BasicAdmin
{

    public $img_table = 'cms_aboutus_img';
    public $text_table = 'cms_aboutus';
    // public function edit_text(){
    //     // $cate_list=Db::name('cms_type')->select();
    //     // $this->assign('catelist',$cate_list);
    //     return $this->_form($this->text_table, 'text_form');
    // }

    public function index(){
        // 设置页面标题
        $this->title = '公司环境信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->img_table);
        // 实例化并显示
        return parent::_list($db);
    }
    
    public function add_img(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->img_table, 'index_form');
    }

    public function edit_img(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->img_table, 'index_form');
    }
    public function del_img(){
        if (DataService::update($this->img_table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }

    public $a_table = 'cms_abouts';
    public function about(){
        // 设置页面标题
        $this->title = '企业介绍';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->a_table);
        // 实例化并显示
        return parent::_list($db);
    }
    public function a_add(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->a_table, 'about_form');
    }

    public function a_edit(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->a_table, 'about_form');
    }
    public function a_del(){
        if (DataService::update($this->a_table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }
     /**
     * 禁用
     */
    public function a_forbid() {
        if (DataService::update($this->a_table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function a_resume() {
        if (DataService::update($this->a_table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }


    public $table = 'cms_about_leader';
    public function leader(){
        // 设置页面标题
        $this->title = '领导核心信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db);
    }
    public function add(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->table, 'leader_form');
    }

    public function edit(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->table, 'leader_form');
    }
    public function del(){
        if (DataService::update($this->table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }
     /**
     * 禁用
     */
    public function forbid() {
        if (DataService::update($this->table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function resume() {
        if (DataService::update($this->table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }


    public $team_table = 'cms_about_team';
    public function team(){
        // 设置页面标题
        $this->title = '团队信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->team_table);
        // 实例化并显示
        return parent::_list($db);
    }
    public function add_team(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->team_table, 'team_form');
    }

    public function edit_team(){
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        return $this->_form($this->team_table, 'team_form');
    }
    public function del_team(){
        if (DataService::update($this->team_table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }
     /**
     * 禁用
     */
    public function forbid_team() {
        if (DataService::update($this->team_table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function resume_team() {
        if (DataService::update($this->team_table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

    public $word_table = 'cms_about_word';
    public function word(){
        // 设置页面标题
        $this->title = '领导寄语管理';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->word_table);
        // 实例化并显示
        return parent::_list($db);
    }
    public function add_word(){

        $cate_list=Db::name('cms_about_leader')->select();
        $this->assign('catelist',$cate_list);
        // $cate_list=Db::name('cms_type')->select();
        // $this->assign('catelist',$cate_list);
        // dump($cate_list);exit();
        return $this->_form($this->word_table, 'word_form');
    }
    public function del_word(){
        if (DataService::update($this->word_table)){
            $this->success("删除成功！", '');
        }
        $this->error("删除失败，请稍候再试！");
    }

       public function forbid_word() {
        if (DataService::update($this->word_table)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    /**
     * 禁用
     */
    public function resume_word() {
        if (DataService::update($this->word_table)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }
        public function edit_word(){

        $cate_list=Db::name('cms_about_leader')->select();
        $this->assign('catelist',$cate_list);
        return $this->_form($this->word_table, 'word_form');
    }
}