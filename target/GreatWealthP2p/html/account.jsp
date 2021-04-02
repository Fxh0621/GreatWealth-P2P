<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <script src="../js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <link rel="shortcut icon" href="../image/宏量财富小图标.jpg">
    <link rel="stylesheet" href="../css/footer.css">
    <script src="../layui/layui.js" charset="utf-8"></script>
    <title>P2P宏量财富</title>
    <style>
        .left li{
            width: 100%;
            height: 40px;
            margin-bottom: 18px;
        }
        .left li:hover{
            background-color: skyblue;
        }
        .left li:first-child{
          background-color: skyblue;
        }
        .left li a{
           display: inline-block;
           position: relative;
           top: 4px;
           font-size: 21px;
           color: black;
           font-weight: bold;
        }
        .touzi td{
            font-size: 17px;
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
                    <li class="layui-nav-item  layui-this" lay-unselect="">
                        <a href="javascript:;" style="color: black;"><img src="${sessionScope.user.headerpic}" class="layui-nav-img">${sessionScope.user.username}</a>
                        <dl class="layui-nav-child">
                          <dd><a href="chang.jsp">修改信息</a></dd>
                          <dd><a href="account.jsp">账户管理</a></dd>
                          <dd><a href="/logout">退出账户</a></dd>
                        </dl>
                      </li>
                    <li class="layui-nav-item"><a href="help.jsp" style="color: black;">帮助</a></li>
                  </ul>
            </div>
        </div>
    </div>

    <div style="background-color: #f1f1f1;height: 700px;">
        <!-- 账户主体部分 -->
    <div style="width: 85%;height: 100px;margin-left: auto;margin-right: auto;position: relative;top: 20px;">
        <img src="../image/clist1.jpg" alt="" style="width: 100%;height: 100%;">
     </div>
 
     <div style="width: 85%;height: 500px;margin-left: auto;margin-right: auto;margin-top: 30px;margin-bottom: 25px;">
     <!-- 左边的选项卡部分 -->
      <div style="width: 25%;height: 80%;background-color: white;float: left;">
         <ul class="left">
             <li style="margin-top: 20px;"><span style="margin-left: 80px;"><img src="../image/家.png" alt="" style="width: 30px;height: 30px;"></span><a href="/">账户管理</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/充值.png" alt="" style="width: 30px;height: 30px;"></span><a href="pay.jsp">充值</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/提现.png" alt="" style="width: 30px;height: 30px;"></span><a href="withdraw.jsp">提现</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/还款.png" alt="" style="width: 30px;height: 30px;"></span><a href="/viewAllBorrow">还款</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/设置.png" alt="" style="width: 30px;height: 30px;"></span><a href="chang.jsp">账户设置</a></li>
         </ul>
      </div>
      <!-- 右边的主体部分 -->
      <div style="width: 74%;height: 100%;margin-left: 1%;float: left;">
         <div style="height: 320px;background-color: white;">
            <p style="height: 30px;"><span style="font-size: 16px;display: inline-block;margin-left: 30px;position: relative;top: 8px;">晚上好，喝一杯茶，让心情放松一下~</span><span style="font-size: 16px;display: inline-block;margin-left: 450px;position: relative;top: 8px;">注册时间：
                <fmt:formatDate value="${sessionScope.user.registertime}" type="date" pattern="yyyy-MM-dd" />
            </span></p>
            <hr>
            <div style="width: 15%;float: left;">
               <img src="${sessionScope.user.headerpic}" alt="" style="width: 80px;height: 80px;margin-left: 30px;margin-top: 30px;"><br>
               <span style="display: inline-block;margin-left: 22px;margin-top: 10px;"><img src="../image/头像1.png" alt="" style="width: 25px;height: 25px;"></span>
               <span><img src="../image/手机.png" alt="" style="width: 30px;height: 30px;"></span>
               <span><img src="../image/邮件1.png" alt="" style="width: 30px;height: 30px;"></span>
               <hr>
            </div>
            <div style="width: 80%;float: left;margin-left: 20px;">
               <p style="height: 20px;font-size: 18px;margin-top: 30px;">用户名：${sessionScope.user.username}</p>
                <c:if test="${sessionScope.user.personid==null}">
                    <div style="margin-top: 20px;"><p>安全级别：</p><div style="background-color: red;width: 80px;height: 8px;float: left;margin-top: 8px;"></div>
                        <span>[低]</span>
                    </div>
                </c:if>
                <c:if test="${sessionScope.user.personid!=null}">
                    <div style="margin-top: 20px;"><p>安全级别：</p><div style="background-color: green;width: 80px;height: 8px;float: left;margin-top: 8px;"></div>
                        <span>[高]</span>
                    </div>
                </c:if>

               <p style="margin-top: 20px;">您还未开通第三方支付账户，请 立即开通以确保您的正常使用和资金安全。</p>
               <hr>
            </div>

            <div style="width: 30%;float: left;">
                <p style="text-align: center;margin-top: 20px;font-size: 16px;">账户总额<span><img src="../image/i .png" alt="" style="width: 18px;height: 18px;"></span></p>
                <p style="text-align: center;margin-top: 10px;font-size: 25px;">${sessionScope.user.balance}<span style="font-size: 16px;">元</span></p>
            </div>
            <div style="width: 30%;float: left;">
                <p style="text-align: center;margin-top: 20px;font-size: 16px;">待收本息<span><img src="../image/i .png" alt="" style="width: 18px;height: 18px;"></span></p>
                <p style="text-align: center;margin-top: 10px;font-size: 25px;">${sessionScope.user.borrowallinterest}<span style="font-size: 16px;">元</span></p>
            </div>
            <div style="width: 40%;float: left;">
                <p style="text-align: center;margin-top: 20px;font-size: 16px;">累计收益<span><img src="../image/i .png" alt="" style="width: 18px;height: 18px;"></span></p>
                <p style="text-align: center;margin-top: 10px;font-size: 25px;color: red;">${sessionScope.user.investallinterest}<span style="font-size: 16px;color: black;">元</span></p>
            </div>
            <div style="height: 30px;"></div>
         </div>
         
         <div style="margin-top: 10px;background-color: white;">
            <div class="layui-tab layui-tab-card">
                <ul class="layui-tab-title">
                  <li class="layui-this">投资记录</li>
                  <li>借贷记录</li>
                  <li>充值记录</li>
                </ul>
                <div class="layui-tab-content" style="height: 175px;">
                  <div class="layui-tab-item layui-show">
<%--                      <table align="center" class="touzi" cellpadding="0px" cellspacing="20px" border="1px" style="width: 80%;height: 80%;" id="invest">--%>
<%--                          <tr align="center">--%>
<%--                              <td>投资时间</td>--%>
<%--                              <td>投资项目</td>--%>
<%--                              <td>投资类型</td>--%>
<%--                              <td>投资金额</td>--%>
<%--                          </tr>--%>
<%--                          <tr align="center">--%>
<%--                              <td>2020-12-25</td>--%>
<%--                              <td>新手宝</td>--%>
<%--                              <td>小额投资</td>--%>
<%--                              <td>800.00元</td>--%>
<%--                          </tr>--%>
<%--                          <tr align="center">--%>
<%--                            <td>2020-12-25</td>--%>
<%--                            <td>新手宝</td>--%>
<%--                            <td>小额投资</td>--%>
<%--                            <td>800.00元</td>--%>
<%--                        </tr>--%>
<%--                        <tr align="center">--%>
<%--                            <td>2020-12-25</td>--%>
<%--                            <td>新手宝</td>--%>
<%--                            <td>小额投资</td>--%>
<%--                            <td>800.00元</td>--%>
<%--                        </tr>--%>
<%--                        <tr align="center">--%>
<%--                            <td>2020-12-25</td>--%>
<%--                            <td>新手宝</td>--%>
<%--                            <td>小额投资</td>--%>
<%--                            <td>800.00元</td>--%>
<%--                        </tr>--%>
<%--                      </table>--%>
<%--                      <div id="demo2" align="center"></div>--%>
                      <table class="layui-hide" id="invest"></table>
                  </div>
                  <div class="layui-tab-item">
<%--                    <table align="center" class="touzi" cellpadding="0px" cellspacing="20px" border="1px" style="width: 80%;height: 80%;" id="borrow">--%>
<%--                        <tr align="center">--%>
<%--                            <td>借贷时间</td>--%>
<%--                            <td>借贷项目</td>--%>
<%--                            <td>借贷类型</td>--%>
<%--                            <td>借贷金额</td>--%>
<%--                        </tr>--%>
<%--                        <tr align="center">--%>
<%--                            <td>2020-12-25</td>--%>
<%--                            <td>新手宝</td>--%>
<%--                            <td>小额借贷</td>--%>
<%--                            <td>1800.00元</td>--%>
<%--                        </tr>--%>
<%--                        <tr align="center">--%>
<%--                          <td>2020-12-25</td>--%>
<%--                          <td>新手宝</td>--%>
<%--                          <td>小额借贷</td>--%>
<%--                          <td>8100.00元</td>--%>
<%--                      </tr>--%>
<%--                      <tr align="center">--%>
<%--                          <td>2020-12-25</td>--%>
<%--                          <td>新手宝</td>--%>
<%--                          <td>小额借贷</td>--%>
<%--                          <td>8800.00元</td>--%>
<%--                      </tr>--%>
<%--                      <tr align="center">--%>
<%--                          <td>2020-12-25</td>--%>
<%--                          <td>新手宝</td>--%>
<%--                          <td>小额借贷</td>--%>
<%--                          <td>7900.00元</td>--%>
<%--                      </tr>--%>
<%--                    </table>--%>
<%--                    <div id="demo2-1" align="center"></div>--%>
                      <table class="layui-hide" id="borrow"></table>
                  </div>
                  <div class="layui-tab-item">
<%--                      <table align="center" class="touzi" cellpadding="0px" cellspacing="20px" border="1px" style="width: 80%;height: 80%;" id="recharge">--%>
<%--                          <tr align="center">--%>
<%--                              <td>充值时间</td>--%>
<%--                              <td>充值金额</td>--%>
<%--                          </tr>--%>
<%--&lt;%&ndash;                          <tr align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                              <td>2020-12-25</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                              <td>10000.00</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                          </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                          <tr align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>2020-12-25</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>10000.00</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <tr align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>2020-12-25</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>10000.00</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <tr align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>2020-12-25</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <td>10000.00</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </tr>&ndash;%&gt;--%>
<%--                      </table>--%>
                      <table class="layui-hide" id="recharge"></table>
<%--                      <div id="demo2-2" align="center"></div>--%>
                  </div>
                </div>
              </div>
         </div>
      </div>
     </div>
    </div>



<%--  表格中的数据  --%>
    <script>
        //投资记录

        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#invest'
                ,url:'/viewAccountInvest'
                ,limit:2
                ,limits:[2]
                ,parseData:function (res) {
                    console.log(res.data.data);
                    console.log("进入到函数中了");
                    return{
                        "code":res.code,//解析接口状态
                        "msg":res.msg,//解析提示文本
                        "count":res.data.total,//解析数据长度
                        "data":res.data.data//解析数据列表
                    };
                },
                response:{
                    statusCode:200
                }
                ,cols: [[
                    {field:'investintime', width:232, title: '投资时间', align:'center',templet:'<div>{{ layui.util.toDateString(d.investintime, "yyyy-MM-dd") }}</div>'}
                    ,{field:'investproject', width:232, title: '投资项目',align:'center'}
                    ,{field:'investtype', width:232, title: '投资类型',align:'center'}
                    ,{field:'investmoney', width:232, title: '投资金额',align:'center'}
                ]]
                ,page: true
            });
        });
        //借贷记录

        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#borrow'
                ,url:'/viewAccountBorrow'
                ,limit:2
                ,limits:[2]
                ,parseData:function (res) {
                    console.log(res.data.data);
                    console.log("进入到函数中了");
                    return{
                        "code":res.code,//解析接口状态
                        "msg":res.msg,//解析提示文本
                        "count":res.data.total,//解析数据长度
                        "data":res.data.data//解析数据列表
                    };
                },
                response:{
                    statusCode:200
                }
                ,cols: [[
                    {field:'borrowtime', width:232, title: '借贷时间', align:'center'}
                    ,{field:'borrowproject', width:232, title: '借贷项目',align:'center'}
                    ,{field:'borrowtype', width:232, title: '借贷类型',align:'center'}
                    ,{field:'borrowmoney', width:232, title: '借贷金额',align:'center'}
                ]]
                ,page: true
            });
        });
        //充值记录
        layui.use('table', function(){
            var table = layui.table;

            table.render({
                elem: '#recharge'
                ,url:'/viewAccountRecharge'
                ,limit:2
                ,limits:[2]
                ,parseData:function (res) {
                    console.log(res.data.data);
                    console.log("进入到函数中了");
                    return{
                        "code":res.code,//解析接口状态
                        "msg":res.msg,//解析提示文本
                        "count":res.data.total,//解析数据长度
                        "data":res.data.data//解析数据列表
                    };
                },
                response:{
                    statusCode:200
                }
                ,cols: [[
                    {field:'retime', width:465, title: '充值时间', align:'center',templet:'<div>{{ layui.util.toDateString(d.retime, "yyyy-MM-dd") }}</div>'}
                    ,{field:'remoney', width:465, title: '充值金额',align:'center'}
                ]]
                ,page: true
            });
        });
    </script>





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
                    <span><a href="#"><img src="../image/微博.png" alt="" style="width: 30px;height: 30px;"></a></span>
                    <span><a href="#"><img src="../image/腾讯微博.png" alt="" style="width: 30px;height: 30px;"></a></span>
                    <span><a href="#"><img src="../image/人脉.png" alt="" style="width: 30px;height: 30px;"></a></span>
                    <span><a href="#"><img src="../image/邮件.png" alt="" style="width: 30px;height: 30px;"></a></span>
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
<script src="../js/Time.js"></script>
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

// layui.use(['laypage', 'layer'], function(){
//   var laypage = layui.laypage
//   ,layer = layui.layer;
//   //自定义样式
//   laypage.render({
//     elem: 'demo2'
//     ,count: 100
//     ,theme: '#1E9FFF'
//   });
//   laypage.render({
//     elem: 'demo2-1'
//     ,count: 100
//     ,theme: '#FF5722'
//   });
//   laypage.render({
//     elem: 'demo2-2'
//     ,count: 100
//     ,theme: '#FFB800'
//   });
//
//   //调用分页
//   laypage.render({
//     elem: 'demo20'
//     ,jump: function(obj){
//           console.log(obj.curr);
//           console.log(obj.limit);
//     }
//   });
//
// });



</script>
</html>