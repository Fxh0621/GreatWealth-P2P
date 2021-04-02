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
                    <li class="layui-nav-item layui-this"><a href="invest.jsp" style="color: black;">我要投资</a></li>
                    <li class="layui-nav-item"><a href="borrow.jsp" style="color: black;">我要借款</a></li>
                    <c:if test="${sessionScope.user==null}">
                        <li class="layui-nav-item"><a href="register1.jsp" style="color: skyblue;">免费注册</a></li>
                        <li class="layui-nav-item"><a href="login.jsp" style="color: black;">登录</a></li>
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
     

    <!-- 投资页面 -->
    <div style="width: 100%;height:700px; background-color: #f1f1f1;">
      <div style="width: 80%;height: 650px;margin-left: auto;margin-right: auto;background-color: white;position: relative;top: 20px;">
        <p style="position: relative;top: 30px;"><img src="../image/投资.png" alt="" style="width: 45px;height: 45px;margin-left: 40px;"><span style="font-size: 25px;display: inline-block;position: relative;top: 10px;left: 20px;">投资项目</span></p>
        
        <p style="background-color: gray;width: 100%;height: 20px;margin-top: 40px;"></p>

        <div style="width: 95%;height:510px;margin-left: auto;margin-right: auto;margin-top: 20px;">
           <div style="width: 20%;height: 100%;float: left;background-color: #EEF0F6;">
              <img src="../image/元宝.png" alt="" style="width: 100px;height: 100px;margin-top: 160px;margin-left: 70px;">
              <p style="font-size: 20px;font-weight: bold;text-align: center;margin-top: 20px;">宏盈宝</p>
              <p style="margin-top: 160px;text-align: center;color: cadetblue;font-size: 16px;">自动投标，便捷回报</p>
           </div>

           <div style="width: 80%;height: 100%;float: left;background-color: #f8f9fc;">
              <div class="layui-row" style="height: 100px;">
                 <div class="layui-col-md5" style="text-align: center;position: relative;top: 18px;">
                     <span style="font-size: 30px;">1个月</span><br>
                     <span style="font-size: 12px;color: gray;">投标期限</span>
                 </div>
                 <div class="layui-col-md4" style="position: relative;top: 18px;">
                     <span style="font-size: 30px;color: #61A0EA;">9.5%</span>
                     <span style="background-color: orange;display: inline-block;width: 80px;height: 20px;text-align: center;color: white;">新手专享</span><br>
                     <span style="font-size: 12px;color: gray;">预期年化结算利率</span>
                 </div>
                 <div class="layui-col-md3" style="position: relative;top: 25px;">
                     <button type="submit" onclick="window.open('../html/investMonth1.jsp')" style="width: 150px;height: 35px;background-color: turquoise;font-size: 16px;font-weight: lighter;cursor: pointer;border-radius: 4px;">了解详情</button>
                 </div>
              </div>

              <div class="layui-row" style="height: 100px;">
                <div class="layui-col-md5" style="text-align: center;position: relative;top: 18px;">
                    <span style="font-size: 30px;">3个月</span><br>
                    <span style="font-size: 12px;color: gray;">投标期限</span>
                </div>
                <div class="layui-col-md4" style="position: relative;top: 18px;">
                    <span style="font-size: 30px;color: #61A0EA;">8.0%</span>
                    <span style="background-color: orange;display: inline-block;width: 80px;height: 20px;text-align: center;color: white;">新手专享</span><br>
                    <span style="font-size: 12px;color: gray;">预期年化结算利率</span>
                </div>
                <div class="layui-col-md3" style="position: relative;top: 25px;">
                    <button type="submit" onclick="window.open('../html/investMonth3.jsp')" style="width: 150px;height: 35px;background-color: turquoise;font-size: 16px;font-weight: lighter;cursor: pointer;border-radius: 4px;">了解详情</button>
                </div>
             </div>

             <div class="layui-row" style="height: 100px;">
                <div class="layui-col-md5" style="text-align: center;position: relative;top: 18px;">
                    <span style="font-size: 30px;">6个月</span><br>
                    <span style="font-size: 12px;color: gray;">投标期限</span>
                </div>
                <div class="layui-col-md4" style="position: relative;top: 18px;">
                    <span style="font-size: 30px;color: #61A0EA;">7.5%</span>
                    <span style="background-color: orange;display: inline-block;width: 80px;height: 20px;text-align: center;color: white;">限时专享</span><br>
                    <span style="font-size: 12px;color: gray;">预期年化结算利率</span>
                </div>
                <div class="layui-col-md3" style="position: relative;top: 25px;">
                    <button type="submit" onclick="window.open('../html/investMonth6.jsp')" style="width: 150px;height: 35px;background-color: turquoise;font-size: 16px;font-weight: lighter;cursor: pointer;border-radius: 4px;">了解详情</button>
                </div>
             </div>

             <div class="layui-row" style="height: 100px;">
                <div class="layui-col-md5" style="text-align: center;position: relative;top: 18px;">
                    <span style="font-size: 30px;">12个月</span><br>
                    <span style="font-size: 12px;color: gray;">投标期限</span>
                </div>
                <div class="layui-col-md4" style="position: relative;top: 18px;">
                    <span style="font-size: 30px;color: #61A0EA;">9.5%</span>
                    <span style="background-color: orange;display: inline-block;width: 80px;height: 20px;text-align: center;color: white;">活动专享</span><br>
                    <span style="font-size: 12px;color: gray;">预期年化结算利率</span>
                </div>
                <div class="layui-col-md3" style="position: relative;top: 25px;">
                    <button type="submit" onclick="window.open('../html/investMonth12.jsp')" style="width: 150px;height: 35px;background-color: turquoise;font-size: 16px;font-weight: lighter;cursor: pointer;border-radius: 4px;">了解详情</button>
                </div>
             </div>

             <div class="layui-row" style="height: 100px;">
                <div class="layui-col-md5" style="text-align: center;position: relative;top: 18px;">
                    <span style="font-size: 30px;">18个月</span><br>
                    <span style="font-size: 12px;color: gray;">投标期限</span>
                </div>
                <div class="layui-col-md4" style="position: relative;top: 18px;">
                    <span style="font-size: 30px;color: #61A0EA;">9.6%</span>
                    <span style="background-color: orange;display: inline-block;width: 80px;height: 20px;text-align: center;color: white;">活动专享</span><br>
                    <span style="font-size: 12px;color: gray;">预期年化结算利率</span>
                </div>
                <div class="layui-col-md3" style="position: relative;top: 25px;">
                    <button type="submit" onclick="window.open('../html/investMonth18.jsp')" style="width: 150px;height: 35px;background-color: turquoise;font-size: 16px;font-weight: lighter;cursor: pointer;border-radius: 4px;">了解详情</button>
                </div>
             </div>
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
<script src="../layui/layui.js" charset="utf-8"></script>
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
</script>
</html>