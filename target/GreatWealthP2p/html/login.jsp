<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <link rel="shortcut icon" href="../image/宏量财富小图标.jpg">
    <link rel="stylesheet" href="../css/footer.css">
    <title>P2P宏量财富</title>
    <style>
        .error{
            color: red;
        }
    </style>
</head>
<body>
    <!-- 联系电话 -->
    <div class="layui-container" style="height: 60px;">
        <div class="layui-row">
           <div class="layui-col-md2" style="margin-top: 20px;">
              <span style="font-size:15px;">咨询热线：400-668-6698</span>
           </div>
           <div class="layui-col-md2" style="margin-top: 20px;">
            <span style="font-size:15px;">服务时间：9:00 - 18:00</span>
          </div>
          <div class="layui-col-md2" style="margin-top: 20px;">
            <a href="#"><img src="../image/微信.png" alt="" style="width: 23px;height: 23px;"></a>&nbsp;&nbsp;
            <a href="#"><img src="../image/QQ.png" alt="" style="width: 23px;height: 23px"></a>&nbsp;&nbsp;
            <a href="#"><img src="../image/微博.png" alt="" style="width: 23px;height: 23px;"></a>
         </div>
        </div>
     </div>
    <!-- 头部 -->
    <div class="layui-contanier">
        <div class="layui-row" >
            <div class="layui-col-md7" style="height: 60px;">
               <img src="../image/财富.png" alt="" style="width: 60px;height: 60px;margin-left: 180px;">
               <span style="font-size: 30px;text-align: center;display: inline-block;color: #E0630E;position: relative;top: 8px;">宏量财富</span>
            </div>

            <div class="layui-col-md5" style="height: 60px;">
                <ul class="layui-nav" style="background-color: white;">
                    <li class="layui-nav-item"><a href="/" style="color: black;">首页</a></li>
                    <li class="layui-nav-item"><a href="invest.jsp" style="color: black;">我要投资</a></li>
                    <li class="layui-nav-item"><a href="borrow.jsp" style="color: black;">我要借款</a></li>
                    <c:if test="${sessionScope.user==null}">
                        <li class="layui-nav-item"><a href="register1.jsp" style="color: skyblue;">免费注册</a></li>
                        <li class="layui-nav-item layui-this"><a href="login.jsp" style="color: black;">登录</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                        <li class="layui-nav-item" lay-unselect="">
                            <a href="javascript:;" style="color: black;"><img src="${sessionScope.user.headerpic}" class="layui-nav-img">${sessionScope.user.username}</a>
                            <dl class="layui-nav-child">
                                <dd><a href="chang.jsp">修改信息</a></dd>
                                <dd><a href="account.jsp">账户管理</a></dd>
                                <dd><a href="/logout">退出账户</a></dd>
                            </dl>
                        </li>
                    </c:if>
                    <li class="layui-nav-item"><a href="help.jsp" style="color: black;">帮助</a></li>
                  </ul>
            </div>
        </div>
    </div>

    <!-- 登录部分 -->
    <div style="width: 100%;height: 550px;background-color: #f1f1f1;">
        <p style="width: 100%;height: 10px;background-color: #f1f1f1;"></p>
        <div class="layui-container" style="height: 500px;margin-bottom: 20px;background-color: white;">
            <hr>
            <p style="font-size: 21px;color: black;"><span style="display: inline-block;margin-left: 60px;"><img src="../image/icon5.gif" alt="" style="width: 20px;height: 20px;"></span>&nbsp;&nbsp;&nbsp;用户登录</p>
            <hr>
            <div class="layui-row">
               <div class="layui-col-md6">
                   <form action="/login" id="loginForm" style="margin-left: 50px;margin-top: 100px;" method="post">
                       <table>
                           <tr>
                               <td style="width: 100px;text-align: center;font-size: 22px;font-weight: lighter;">同户名：</td>
                               <td><input type="text" name="username" style="width: 250px;height: 30px;"></td>
                           </tr>
                           <tr>
                               <td style="width: 100px;text-align: center;font-size: 22px;margin-top: 25px;font-weight: lighter;">密码:</td>
                               <td><input type="password" name="password" style="width: 250px;height: 30px;margin-top: 25px;"></td>
                           </tr>
                           <tr>
                               <td colspan="2"><input type="submit" name="loginNow" value="立即登录" style="background-color: green;cursor: pointer;width: 160px;height: 50px;display: inline-block;margin-top: 25px;margin-left:120px;color: white;font-weight: bolder;font-size: 21px;"></td>
                           </tr>
                       </table>
                       <p style="color: red;font-size: 15px;margin-top: 30px;margin-left: 130px">${requestScope.msg}</p>
                   </form>
               </div>
               <div class="layui-col-md6">
                   <img src="../image/registerRbg1.gif" alt="">
               </div>
            </div>
         </div>
    </div>
    
    <!-- footer -->
    <div style="background-color: #475059;height: 300px;">
        <div class="layui-container" style="width:80%;height: 200px;">
           <div class="layui-row">
              <div class="layui-col-md6">
               <ul class="footer-li" style="float: left;margin-left: 25px;">
                 <li>关于我们</li>
                 <li><a href="#">公司简介</a></li>
                 <li><a href="#">管理团队</a></li>
                 <li><a href="#">网站公告</a></li>
               </ul>
               <ul class="footer-li" style="float: left;margin-left: 75px;">
                 <li>相关业务</li>
                 <li><a href="#">我要投资</a></li>
                 <li><a href="#">我要投资</a></li>
               </ul>
               <ul class="footer-li" style="float: left;margin-left: 75px;">
                 <li>帮助中心</li>
                 <li><a href="#">新手入门</a></li>
                 <li><a href="#">我的账户</a></li>
                 <li><a href="#">债权转让</a></li>
               </ul>
               <ul class="footer-li" style="float: left;margin-left: 75px;">
                 <li>联系我们</li>
                 <li><a href="#">联系我们</a></li>
               </ul>
              </div>
              <div class="layui-col-md4">
                <ul class="footer-contact">
                  <li>8888-8888-8888</li>
                  <li>工作日 9:00-22:00</li>
                  <li>官方交流群：888888888888</li>
                  <li>工作日 9:00-22:00 /周六 9:00-18:00</li>
                  <li>
                    <span><a href="#"><img src="../image/微博.png" alt="" style="width: 25px;height: 25px;"></a></span>
                    <span><a href="#"><img src="../image/腾讯微博.png" alt="" style="width: 25px;height: 25px;"></a></span>
                    <span><a href="#"><img src="../image/人脉.png" alt="" style="width: 25px;height: 25px;"></a></span>
                    <span><a href="#"><img src="../image/邮件.png" alt="" style="width: 25px;height: 25px;"></a></span>
                  </li>
                </ul>
              </div>
              <div class="layui-col-md2">
                <h3 style="color: white; margin: 20px;">官方二维码</h3>
                <div>
                  <img src="../image/code.png" alt="" style="width: 120px;height: 120px;">
                </div>
              </div>
           </div>
        </div>
 
        <div class="layui-container" style="height: 60px;">
           <div class="layui-row">
             <ul class="footer-pic">
               <li style="background: url(../image/icon_approve.jpg);width: 96px;height: 30px;background-position: -280px,0;"></li>
               <li style="background: url(../image/icon_approve.jpg);width: 96px;height: 30px;background-position: -500px,0;"></li>
               <li style="background: url(../image/icon_approve.jpg);width: 96px;height: 30px;background-position: -950px,0;"></li>
               <li style="background: url(../image/icon_approve.jpg);width: 112px;height: 30px;background-position: -1195px,0;"></li>
             </ul>
           </div>
 
           <div class="layui-row">
             <ul class="footer-text">
               <li>©2017 宏量财富 All rights reserved</li>
               <li> | </li>
               <li>江苏省宏量财富投资管理有限公司</li>
               <li> | </li>
               <li>赣ICP备88888888号-8 </li>
             </ul>
           </div>
        </div>
     </div>
</body>
<script src="../js/jquery-3.5.1.js"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<script src="../js/jquery.validate.js"></script>
<script>

    // 导航条
 layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });


  //   轮播图
  layui.use(['carousel', 'form'], function(){
  var carousel = layui.carousel
  ,form = layui.form;
  
  //设定各种参数
  var ins3 = carousel.render({
    elem: '#test3'
    ,width:'100%'
    ,height:'350px'
  });
  //图片轮播
  carousel.render({
    elem: '#test10'
    ,width: '778px'
    ,height: '440px'
    ,interval: 5000
  });
  
  //事件
  carousel.on('change(test4)', function(res){
    console.log(res)
  });
  
  var $ = layui.$, active = {
    set: function(othis){
      var THIS = 'layui-bg-normal'
      ,key = othis.data('key')
      ,options = {};
      
      othis.css('background-color', '#5FB878').siblings().removeAttr('style'); 
      options[key] = othis.data('value');
      ins3.reload(options);
    }
  };
  
  //监听开关
  form.on('switch(autoplay)', function(){
    ins3.reload({
      autoplay: this.checked
    });
  });
  
  $('.demoSet').on('keyup', function(){
    var value = this.value
    ,options = {};
    if(!/^\d+$/.test(value)) return;
    
    options[this.name] = value;
    ins3.reload(options);
  });
  
  //其它示例
  $('.demoTest .layui-btn').on('click', function(){
    var othis = $(this), type = othis.data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
});

});

// 表单校验
$(function(){
    $("#loginForm").validate({
        rules:{
           username:{
            "required":true,
            "minlength":2,
            "maxlength":5
           },
           password:{
            "required":true,
            "minlength":6,
            "digits":true
           }
        },
        messages:{
           username:{
            "required":"用户名不能为空",
            "minlength":"用户名长度不能小于2",
            "maxlength":"用户名长度不能大于5"
           },
           password:{
            "required":"密码不能为空",
            "minlength":"用户名长度不能小于6",
            "digits":"密码必须为数字"
           }
        }
    });
});

</script>
</html>