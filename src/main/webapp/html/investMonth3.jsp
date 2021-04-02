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
      color:red;
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

    <!-- 3个月的详细信息 -->
    <div style="background-color: #f1f1f1;width: 100%;height: 800px;">
      <div style="width: 80%;height: 400px;background-color: white;margin-left: auto;margin-right: auto;position: relative;top: 25px;">
        <div class="layui-row">
            <div class="layui-col-md8">
              <div style="width: 100%;height: 50px;background-color: #FAFAFA;">
                <span style="display: inline-block;width: 100px;height: 30px;text-align: center;font-size: 20px;background-color: #596273;position: relative;top: 9px;left: 25px;">固定锁定期</span>
                <span style="display: inline-block;width: 100px;height: 30px;text-align: center;font-size: 20px;position: relative;top: 9px;left: 25px;">宏盈宝</span>
                <span style="display: inline-block;width: 350px;height: 30px;text-align: center;font-size: 14px;position: relative;top: 9px;left: 25px;">1个月后自动发起转让，提前续期可享原预期利率</span>
              </div>

              <div>
                  <img src="../image/三角形新手专享.png" alt="" style="width: 80px;width: 80px;">
              </div>

              <div class="layui-row">
                <div class="layui-col-md5" style="text-align:center;">
                   <p style="font-size: 16px;font-weight: lighter;">预期年化结算利率 <span><img src="../image/问号.png" alt="" style="width: 18px;height: 18px;"></span></p>
                   <p style="font-size: 45px;font-weight: bolder;color: orange;margin-top: 50px;">8.0%</p>
                </div>
                <div class="layui-col-md4">
                   <p style="font-size: 16px;font-weight: lighter;">最少投资金额</p>
                   <p style="font-size: 45px;font-weight: bolder;margin-top: 50px;">2000 <span style="font-size: 20px;color: gray;">元</span></p>
                </div>
                <div class="layui-col-md3">
                    <p style="font-size: 16px;font-weight: lighter;">投标期限</p>
                   <p style="font-size: 45px;font-weight: bolder;margin-top: 50px;">3 <span style="font-size: 20px;color: gray;">个月</span></p>
                </div>
              </div>

              <div style="margin-top: 100px;margin-left: 60px;">
                  <p style="color: indianred;">投资有风险，请理性投资！</p>
              </div>
            </div>
   
            <div class="layui-col-md4" style="background-color: #FAFAFA; height: 400px;">
                <form action="/insertInvestThreeMonth">
                    <div style="width: 100%;height: 100px;margin-top: 60px;">
                        <p style="margin-top: 20px;text-align: center;">当前开放金额：20000元</p>
                        <p style="margin-top: 20px;text-align: center;">当前剩余金额:0元</p>
                    </div>
                    <div>
                        <input type="text" placeholder="2000.00元" style="width: 250px;height: 40px;text-align: right;margin-left: 70px;color: orange;font-size: 25px;" name="investmoney">
                        <p style="margin-left: 80px;margin-top: 30px;">按利息复投方式预期可赚取<span style="color: orange;font-size: 18px;">40.27</span>元 <span><img src="../image/问号.png" alt="" style="width: 18px;height: 18px;"></span></p>
                        <input type="submit" style="width: 200px;height: 38px;background-color: orangered;font-size: 21px;color: white;font-weight: bolder;margin-left: 100px;margin-top: 40px;cursor: pointer;" value="立即投资">
                        <p style="color: green;font-size: 16px;margin-top: 20px;margin-left: 145px;">${sessionScope.investSuccess3}</p>
                        <p style="color: red;font-size: 16px;margin-top: 20px;margin-left: 145px;">${sessionScope.investfail3}</p>

                        <%
                            session.removeAttribute("investSuccess3");
                            session.removeAttribute("investfail3");
                        %>
                        <%--                   <button style="width: 200px;height: 38px;background-color: orangered;font-size: 21px;color: white;font-weight: bolder;margin-left: 100px;margin-top: 40px;cursor: pointer;">立即投资</button>--%>
                    </div>
                </form>
            </div>
        </div>
      </div>

      <div style="width: 80%;height: 340px;margin-top: 50px;background-color: white;margin-left: auto;margin-right: auto;">
        <div class="layui-tab layui-tab-card">
            <ul class="layui-tab-title">
              <li class="layui-this" style="width: 200px;">收益详情</li>
              <li style="width: 200px;">投资记录</li>
              <li style="width: 200px;">标的组成</li>
            </ul>
            <div class="layui-tab-content" style="height: 280px;">
              <div class="layui-tab-item layui-show">
                <ul class="layui-timeline">
                    <li class="layui-timeline-item">
                      <i class="layui-icon layui-timeline-axis"></i>
                      <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">今日投资（开始匹配标的和债权）</div>
                      </div>
                    </li>
                    <li class="layui-timeline-item">
                      <i class="layui-icon layui-timeline-axis"></i>
                      <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">匹配并投资成功</div>
                      </div>
                    </li>
                    <li class="layui-timeline-item">
                      <i class="layui-icon layui-timeline-axis"></i>
                      <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">预期年化结算利率=基础债权利率（9.0%～14.1%）- 服务费率（3.0%～8.1%）。</div>
                      </div>
                    </li>
                    <li class="layui-timeline-item">
                      <i class="layui-icon layui-timeline-axis"></i>
                      <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">加入费用：0%；提现费用：0%</div>
                      </div>
                    </li>
                    <li class="layui-timeline-item">
                      <i class="layui-icon layui-anim layui-anim-rotate layui-anim-loop layui-timeline-axis"></i>
                      <div class="layui-timeline-content layui-text">
                        <div class="layui-timeline-title">3个月后开始收益</div>
                      </div>
                    </li>
                  </ul>
              </div>
              <div class="layui-tab-item">
                <table class="layui-table" lay-even="" lay-skin="nob">
                    <colgroup>
                      <col width="150">
                      <col width="150">
                      <col width="200">
                      <col>
                    </colgroup>
                    <thead>
                      <tr>
                        <th>用户</th>
                        <th>手机号</th>
                        <th>投资时间</th>
                        <th>投资金额</th>
                        <th>收益金额</th>
                      </tr> 
                    </thead>
                    <tbody id="investMonth3">
<%--                      <tr>--%>
<%--                        <td>张**</td>--%>
<%--                        <td>130****4833</td>--%>
<%--                        <td>6个月</td>--%>
<%--                        <td>10000.00元</td>--%>
<%--                        <td>237.50元</td>--%>
<%--                      </tr>--%>
<%--                      <tr>--%>
<%--                        <td>张**</td>--%>
<%--                        <td>130****4833</td>--%>
<%--                        <td>6个月</td>--%>
<%--                        <td>10000.00元</td>--%>
<%--                        <td>237.50元</td>--%>
<%--                      </tr>--%>
<%--                      <tr>--%>
<%--                        <td>张**</td>--%>
<%--                        <td>130****4833</td>--%>
<%--                        <td>6个月</td>--%>
<%--                        <td>10000.00元</td>--%>
<%--                        <td>237.50元</td>--%>
<%--                      </tr>--%>
<%--                      <tr>--%>
<%--                        <td>张**</td>--%>
<%--                        <td>130****4833</td>--%>
<%--                        <td>6个月</td>--%>
<%--                        <td>10000.00元</td>--%>
<%--                        <td>237.50元</td>--%>
<%--                      </tr>--%>
<%--                      <tr>--%>
<%--                        <td>张**</td>--%>
<%--                        <td>130****4833</td>--%>
<%--                        <td>6个月</td>--%>
<%--                        <td>10000.00元</td>--%>
<%--                        <td>237.50元</td>--%>
<%--                      </tr>--%>
                    </tbody>
                  </table>
                  <div style="margin-left: auto;margin-right: auto;width: 200px;height: 40px;font-size: 18px;">、、、、、、、、、</div> 
              </div>
              <div class="layui-tab-item">
                  <div style="background-color: #F7F8FA;width: 90%;height: 250px;margin-left: auto;margin-right: auto;margin-top: 20px;">
                    <div class="layui-row" style="width: 100%;height: 100px;position: relative;top: 100px;">
                        <div class="layui-col-md5" style="text-align: center;">
                            <p>此项目共分散出借于1,929,704个标</p>
                            <p>以下为近12个月的数据，每日0时更新</p>
                       </div>
                       <div class="layui-col-md4" style="text-align: center;">
                            <p style="font-size: 30px;" id="avgPerson">0</p>
                            <p>人均投资金额</p>
                       </div>
                       <div class="layui-col-md3" style="text-align: center;">
                        <p style="font-size: 30px;" id="avgPen">0</p>
                        <p>笔均投资金额</p>
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
<script src="../js/jquery-3.5.1.js"></script>
<script src="../js/jquery.validate.js"></script>
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

// 校验
$(".touzi").validate({
 rules:{
    touzi:{
     "required":true,
     "min":2000
    }
 },
 messages:{
     touzi:{
     "required":"金额不能为空",
     "min":"投资最低金额为2000.00元"
    }
 }
})


    //投资时间为3个月
    $(function(){
        $.ajax({
            dataType:"json",
            type:"get",
            url:"/inverstThreeMonth",
            success:function (data) {
                for (i in data){
                    console.log(parseInt(i))
                    var username = data[i].username;
                    var length1 = data[i].username.length;
                    var phoneNum = data[i].phonenum;
                    var investInTime =data[i].investintime;
                    var investOutTime=data[i].investouttime;

                    var investTime = Math.floor((investOutTime-investInTime)/(1000*3600*24*30))

                    var tr1 = '';
                    tr1 ='<td>'+username.replaceAll(username.substring(1,length1),"**")+'</td>'
                        +'<td>'+phoneNum.replaceAll(phoneNum.substring(3,7),"****")+'</td>'
                        +'<td>'+investTime+"个月"+'</td>'
                        +'<td>'+data[i].investmoney+"元"+'</td>'
                        +'<td>'+data[i].investinterest+"元"+'</td>';
                    $("#investMonth3").append('<tr>'+tr1+'</tr>')
                    console.log("tr:"+tr1)
                }
            }

        });
    })


    //均投资
    $(function(){
        $.ajax({
            dataType:"json",
            type:"get",
            url:"/avgThreeMonth",
            success:function (data) {
                $("#avgPerson").text("￥"+data.avgPerson);
                $("#avgPen").text("￥"+data.avgPen);
            }

        });
    })
</script>
</html>