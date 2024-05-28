<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>注册</title>
  <link rel="stylesheet" href="../../layui/css/layui.css">
  <link rel="stylesheet" href="../../xznstatic/css/login.reset.min.css">
  <link rel="stylesheet" href="../../xznstatic/css/login.style.css">
  <style>
    body {
      background: #FF69B4
    }
  </style>
</head>
<body>
  <div id="app">
    <form class="layui-form login-form form">
      <div class="form-inner">
        <h2>注 册</h2>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="tablename" name="tablename" placeholder="请输入商品表名" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="goodid" name="goodid" placeholder="请输入商品id" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="goodname" name="goodname" placeholder="请输入商品名称" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="buynumber" name="buynumber" placeholder="请输入购买数量" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="price" name="price" placeholder="请输入单价" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="input-wrapper">
          <div class="input-group">
            <span class="icon">
              <svg viewBox="0 0 24 24">
                <path
                  d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,14C16.42,14 20,15.79 20,18V20H4V18C4,15.79 7.58,14 12,14Z">
                </path>
              </svg>
            </span>
            <div class="layui-form-item">
              <div class="layui-input-block" style="margin-left: 57px;">
                <input type="text" id="discountprice" name="discountprice" placeholder="请输入会员价" autocomplete="off" class="layui-input" lay-ignore>
              </div>
            </div>
          </div>
        </div>
        <div class="btn-group">
          <div class="layui-form-item" style="margin-bottom: 0;">
            <div class="layui-input-block" style="margin-left: 0;">
              <button class="layui-btn btn-submit layui-btn-primary" lay-submit lay-filter="register">注册</button>
            </div>
          </div>
          <a class="btn--text" href="javascript:window.location.href='../login/login.jsp'">已有账号？去登录</a>
        </div>
      </div>
    </form>
  </div>

  <script src="../../layui/layui.js"></script>
  <script src="../../js/vue.js"></script>
  <script src="../../js/config.js"></script>
  <script src="../../modules/config.js"></script>
  <script src="../../js/utils.js"></script>
  <script src="../../js/validate.js"></script>

  <script>
    layui.use(['layer', 'element', 'carousel', 'form', 'http', 'jquery'], function() {
      var layer = layui.layer;
      var element = layui.element;
      var carousel = layui.carousel;
      var form = layui.form;
      var http = layui.http;
      var jquery = layui.jquery;

      var tablename = http.getParam('tablename');
              
      // 注册
      form.on('submit(register)', function(data) {
        data = data.field;
                        if(!data.userid){
          layer.msg('用户id不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!data.goodid){
          layer.msg('商品id不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
                                                        if(!data.buynumber){
          layer.msg('购买数量不能为空', {
            time: 2000,
            icon: 5
          });
          return false
        }
        if(!isIntNumer(data.buynumber)){
          layer.msg('购买数量应输入整数', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!isNumber(data.price)){
          layer.msg('单价应输入数字', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        if(!isNumber(data.discountprice)){
          layer.msg('会员价应输入数字', {
            time: 2000,
            icon: 5
          });
          return false
        }
                        http.requestJson(tablename + '/register', 'post', data, function(res) {
          layer.msg('注册成功', {
            time: 2000,
            icon: 6
          },function(){
            // 路径访问设置
            window.location.href = '../login/login.jsp';
          });
        });
        return false
      });
    });
  </script>
</body>
</html>
