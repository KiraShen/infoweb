<?php
/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 10:38
 */

namespace app\cms\controller;


use controller\BasicAdmin;
use service\DataService;
use think\Db;
class Services extends BasicAdmin
{
    public $table = 'cms_product';
    public $table_cms = 'cms_service_msg';

    public function index(){
        // 设置页面标题
        $this->title = '产品信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table);
        // 实例化并显示
        return parent::_list($db);
    }

    public function add(){
        return $this->_form($this->table, 'form');
    }

    public function edit(){

        return $this->_form($this->table, 'form');
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

    public function del(){
        if (DataService::update($this->table)) {
            $this->success("案例删除成功！", '');
        }
        $this->error("案例删除失败，请稍候再试！");
    }

    public function content(){
        // 设置页面标题
        $this->title = '服务信息';
        // 获取到所有GET参数
        $get = $this->request->get();
        // 实例Query对象
        $db = Db::name($this->table_cms);
        // echo $db;exit();
        // 实例化并显示
        return parent::_list($db);
    }

    public function add_cms(){
        return $this->_form($this->table_cms, 'content_form');
    }

    public function edit_cms(){

        return $this->_form($this->table_cms, 'content_form');
    }
    
    public function del_cms(){
        if (DataService::update($this->table_cms)) {
            $this->success("案例删除成功！", '');
        }
        $this->error("案例删除失败，请稍候再试！");
    }

    public function forbid_cms() {
        if (DataService::update($this->table_cms)) {
            $this->success("禁用成功！", '');
        }
        $this->error("禁用失败，请稍候再试！");
    }

    public function resume_cms() {
        if (DataService::update($this->table_cms)) {
            $this->success("启用成功！", '');
        }
        $this->error("启用失败，请稍候再试！");
    }

}