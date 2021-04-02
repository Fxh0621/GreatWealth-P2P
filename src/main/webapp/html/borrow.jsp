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
                    <li class="layui-nav-item"><a href="invest.jsp" style="color: black;">我要投资</a></li>
                    <li class="layui-nav-item layui-this"><a href="borrow.jsp" style="color: black;">我要借款</a></li>
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

    <div style="height: 600px;background-color: #fafafa;">
       <div style="width: 85%;height: 550px;background-color: white;position: relative;top: 20px;bottom: 20px;margin-left: auto;margin-right: auto;">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
          <ul class="layui-tab-title" style="height: 80px;">
            <li class="layui-this" style="width: 200px;font-size: 30px;margin-top: 20px;margin-left: 300px;">散标</li>
            <li style="width: 200px;font-size: 30px;margin-top: 20px;margin-left: 100px;">标准标</li>
          </ul>
          <div class="layui-tab-content" style="height: 100px;">
            <div class="layui-tab-item layui-show">
              <div class="layui-row">
                <div class="layui-col-md4">
                   <p style="font-size: 25px;color: greenyellow;margin-left: 10px;">宏贷宝</p>
                   <p style="width: 80%;margin-left: auto;margin-right: auto;margin-top: 30px;">
                    宏量财富平台的借款功能旨在帮助借款用户以
										低成本获得借款。用户在需要资金时，可以将
										信用额度作为抵押物，小油菜线下审核
										通过后，根据抵押物的价值融资。
                   </p>
                   <input type="button" value="申请条件" style="background-color: orange;color: white;font-size: 18px;width: 130px;height: 30px;border-radius: 4px;margin-left: 40px;margin-top: 20px;">
                   <br>
                   <ul>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic01.png" alt="" style="width: 22px;height: 22px;">年满18周岁以上的公民</li>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic03.png" alt="" style="width: 22px;height: 22px;">个人或企业银行征信记录良好</li>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic04.png" alt="" style="width: 22px;height: 22px;">无现有诉讼记录</li>
                   </ul>
                   <input type="button" value="提交资料" style="background-color: orange;color: white;font-size: 18px;width: 130px;height: 30px;border-radius: 4px;margin-left: 40px;margin-top: 20px;">
                   <br>
                   <ul>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic05.png" alt="" style="width: 22px;height: 22px;">身份证</li>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic06.png" alt="" style="width: 22px;height: 22px;">申请资料</li>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic07.png" alt="" style="width: 22px;height: 22px;">其他</li>
                  </ul>
                </div>
                <div class="layui-col-md8">
                  <div style="width: 80%;height: 440px; background-color: #f3f3f3;margin-left: auto;margin-right: auto;margin-top: 10px;">
                    <div class="layui-row" style="margin-left: 45px;position: relative;top: 20px;">
                      <div class="layui-col-md5">
                        <p style="font-size: 20px;">按日结息</p>
                      </div>
                      <div class="layui-col-md4">
                        <p style="font-size: 25px;color: greenyellow;">0.0096%</p>
                      </div>
                      <div class="layui-col-md3">
                        <p style="font-size: 20px;">10000元起贷</p>
                      </div>
                    </div>
                    <form action="/borrowdays" style="margin-left: 120px;position: relative;top: 38px;">
                      <span style="font-size: 20px;font-weight: bolder;">身份证号</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 300px;height: 50px;border: none;" name="personId1">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">借款金额</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="元" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="money1">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">借款期限</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="天" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="days">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">手机号码</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="phoneNum1">
                      <br>
                        <input type="submit" value="立即贷款" style="font-size: 20px;color: white;width: 160px;height: 40px;background-color: orange;margin-left: 140px;margin-top: 30px;cursor: pointer;">
                        <span style="color: red">${sessionScope.fail1}</span>
                        <span style="color: green">${sessionScope.success1}</span>
                        <span style="color: orangered">${sessionScope.lowMoney1}</span>

                        <%
                            session.removeAttribute("fail1");
                            session.removeAttribute("success1");
                            session.removeAttribute("lowMoney1");
                        %>
                   </form>
                  </div>
                </div>
              </div>
            </div>
            <div class="layui-tab-item">
              <div class="layui-row">
                <div class="layui-col-md4">
                   <p style="font-size: 25px;color: greenyellow;margin-left: 10px;">宏贷宝</p>
                   <p style="width: 80%;margin-left: auto;margin-right: auto;margin-top: 30px;">
                    宏量财富平台的借款功能旨在帮助借款用户以
										低成本获得借款。用户在需要资金时，可以将
										信用额度作为抵押物，小油菜线下审核
										通过后，根据抵押物的价值融资。
                   </p>
                   <input type="button" value="申请条件" style="background-color: orange;color: white;font-size: 18px;width: 130px;height: 30px;border-radius: 4px;margin-left: 40px;margin-top: 20px;">
                   <br>
                   <ul>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic01.png" alt="" style="width: 22px;height: 22px;">年满18周岁以上的公民</li>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic03.png" alt="" style="width: 22px;height: 22px;">个人或企业银行征信记录良好</li>
                     <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic04.png" alt="" style="width: 22px;height: 22px;">无现有诉讼记录</li>
                   </ul>
                   <input type="button" value="提交资料" style="background-color: orange;color: white;font-size: 18px;width: 130px;height: 30px;border-radius: 4px;margin-left: 40px;margin-top: 20px;">
                   <br>
                   <ul>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic05.png" alt="" style="width: 22px;height: 22px;">身份证</li>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic06.png" alt="" style="width: 22px;height: 22px;">申请资料</li>
                    <li style="font-size: 16px;color: gray;margin-top: 10px;margin-left: 35px;"><img src="../image/bor_pic07.png" alt="" style="width: 22px;height: 22px;">其他</li>
                  </ul>
                </div>
                <div class="layui-col-md8">
                  <div style="width: 80%;height: 440px; background-color: #f3f3f3;margin-left: auto;margin-right: auto;margin-top: 10px;">
                    <div class="layui-row" style="margin-left: 45px;position: relative;top: 20px;">
                      <div class="layui-col-md5">
                        <p style="font-size: 20px;">按月结息</p>
                      </div>
                      <div class="layui-col-md4">
                        <p style="font-size: 25px;color: greenyellow;">0.37%</p>
                      </div>
                      <div class="layui-col-md3">
                        <p style="font-size: 20px;">8000元起贷</p>
                      </div>
                    </div>
                    <form action="/borrowmonths" style="margin-left: 120px;position: relative;top: 38px;">
                      <span style="font-size: 20px;font-weight: bolder;">身份证号</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 300px;height: 50px;border: none;" name="personId2">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">借款金额</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="元" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="money2">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">借款期限</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="月" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="months">
                      <br>
                      <span style="font-size: 20px;font-weight: bolder;display: inline-block;margin-top: 40px;">手机号码</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" style="width: 300px;height: 50px;border: none;text-align: right;font-size: 20px;" name="phoneNum2">
                      <br>
<%--                      <button style="font-size: 20px;color: white;width: 160px;height: 40px;background-color: orange;margin-left: 140px;margin-top: 30px;cursor: pointer;">立即贷款</button>--%>
                      <input type="submit" value="立即贷款" style="font-size: 20px;color: white;width: 160px;height: 40px;background-color: orange;margin-left: 140px;margin-top: 30px;cursor: pointer;">
                        <span style="color: red">${sessionScope.fail2}</span>
                        <span style="color: green">${sessionScope.success2}</span>
                        <span style="color: orangered">${sessionScope.lowMoney2}</span>

                        <%
                            session.removeAttribute("fail2");
                            session.removeAttribute("success2");
                            session.removeAttribute("lowMoney2");
                        %>
                   </form>
                  </div>
                </div>
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