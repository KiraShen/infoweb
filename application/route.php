<?php

/**
 * Created by PhpStorm.
 * User: jonny
 * Date: 2017/6/12
 * Time: 16:27
 */
use think\Route;
/*  测试环境禁止操作路由绑定 */
/*think\Route::post([
    'admin/config/index' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁修改系统配置操作！']);
    },
    'admin/config/file' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁修改文件配置操作！']);
    },
    'admin/menu/add' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁添加菜单操作！']);
    },
    'admin/menu/edit' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁编辑菜单操作！']);
    },
    'admin/menu/forbid' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止禁用菜单操作！']);
    },
    'admin/menu/del' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止删除菜单操作！']);
    },
    'wechat/config/index' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信配置操作！']);
    },
    'wechat/config/pay' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信支付操作！']);
    },
    'wechat/menu/edit' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止修改微信菜单操作！']);
    }
]);
think\Route::get([
    'wechat/menu/cancel' => function() {
        return json(['code' => 0, 'msg' => '测试环境禁止删除微信菜单操作！']);
    }
]);*/
Route::rule('jonnycms','admin/login/index');//登录页面
Route::rule('ajonnycms','admin/login/');//登录页面
Route::rule('service','index/services/index');//产品与服务
Route::rule('news','index/article/index');//新闻资讯
Route::rule('cases','index/cases/index');//新闻资讯
Route::rule('about','index/aboutus/index');//关于我们
Route::rule('abouta','index/aboutus/about');//关于我们
Route::rule('contact','index/contact/index');//联系我们
Route::rule('joinus','index/joinus/index');//联系我们
Route::get('news-<id>','index/article/details',[],['id'=>'\d+']);//新闻详情
Route::get('services-<id>','index/services/services_details',[],['id'=>'\d+']);//服务详情
Route::get('product-<id>','index/services/product_details',[],['id'=>'\d+']);//服务详情

Route::get('cate-<type>','index/article/index',[],['type'=>'\d+']);//文章列表

Route::get('case-<type>','index/cases/index',[],['type'=>'\d+']);//案例