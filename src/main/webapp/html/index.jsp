<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <title>P2P宏量财富</title>
  <style>
    *{
      margin: 0;
      padding: 0;
      /* overflow-x: hidden; */
    }

    .news{
      margin-top: 30px;
    }
    .news li{
      margin-top: 10px;
      font-size: 14px;
    }
    .news li a{
      font-size: 14px;
      color: black;
      font-weight: lighter;
    }
    .news li a:hover{
      color: gray;
    }

    .newsTime{
      margin-top: 30px;
    }
    .newsTime li{
      margin-top: 14px;
      font-size: 14px;
    }
    .newsTime li a{
      font-size: 14px;
      color: black;
      font-weight: lighter;
    }
    .newsTime li a:hover{
      color: gray;
    }
      #profiTable tr:nth-child(1) td:nth-child(1){
           color:red;
      }

    #profiTable tr:nth-child(2) td:nth-child(1){
        color:orange;
    }

    #profiTable tr:nth-child(3) td:nth-child(1){
        color:green;
    }
    #borrowTable tr:nth-child(1) td:nth-child(1){
        color: red;
    }
    #borrowTable tr:nth-child(2) td:nth-child(1){
        color: orange;
    }
    #borrowTable tr:nth-child(3) td:nth-child(1){
        color: green;
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
                    <li class="layui-nav-item layui-this"><a href="" style="color: black;">首页</a></li>
                    <li class="layui-nav-item"><a href="html/invest.jsp" style="color: black;">我要投资</a></li>
                    <li class="layui-nav-item"><a href="html/borrow.jsp" style="color: black;">我要借款</a></li>
                    <c:if test="${sessionScope.user==null}">
                        <li class="layui-nav-item"><a href="html/register1.jsp" style="color: skyblue;">免费注册</a></li>
                        <li class="layui-nav-item"><a href="html/login.jsp" style="color: black;">登录</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                        <li class="layui-nav-item" lay-unselect="">
                            <a href="javascript:;" style="color: black;"><img src="${sessionScope.user.headerpic}" class="layui-nav-img">${sessionScope.user.username}</a>
                            <dl class="layui-nav-child">
                                <dd><a href="html/chang.jsp">修改信息</a></dd>
                                <dd><a href="html/account.jsp">账户管理</a></dd>
                                <dd><a href="/logout">退出账户</a></dd>
                            </dl>
                        </li>
                    </c:if>
                    <li class="layui-nav-item"><a href="html/help.jsp" style="color: black;">帮助</a></li>
                  </ul>
            </div>
        </div>
    </div>

    <!-- 轮播图 -->
    <div class="layui-contanier">
       <div class="layui-row">
          <div class="layui-col-lg12">
            <div class="  r" style="width: 100%;height: 350px; margin-top: 10px;">
              <div class="layui-row">
                <div class="layui-carousel" id="test3" lay-filter="test4">
                  <div carousel-item="">
                    <div><img src="../image/banner.jpg" alt="" style="width: 100%;height: 100%;"></div>
                    <div><img src="../image/banner02.jpg" alt="" style="width: 100%;height: 100%;"></div>
                    <div><img src="../image/help-banner.png" alt="" style="width: 100%;height: 100%;"></div>
                  </div>
                </div> 
              </div>
          </div>
          </div>
       </div>
    </div>

    <!-- 投资部分 -->
    <div style="width: 100%;background-color: rgb(223, 220, 220) ;">
      <div class="layui-container" style="width: 80%; background-color:white;height: 60px;border-radius: 2px;position: relative;top: 10px;">
        <div class="layui-row">
           <div class="layui-col-md12" style="margin-left: auto;margin-right: auto;height: 60px;">
               <div class="layui-col-xs3" style="height: 60px;">
                <div class="grid-demo" style="text-align: center;margin-top: 20px;">累积投资金额：<span id="totalInvest" style="color: orange;font-size: 23px;">547613.21</span>&nbsp;&nbsp;元</div>
               </div>
               <div class="layui-col-xs3" style="height: 60px;">
                <div class="grid-demo" style="text-align: center;margin-top: 20px;">累积收益：<span id="totalBorrow" style="color: orange;font-size: 23px;">164013.16</span>&nbsp;&nbsp;元</div>
               </div>
               <div class="layui-col-xs3" style="height: 60px;">
                <div class="grid-demo" style="text-align: center;margin-top: 20px;">网站已运行：<span style="color: orange;font-size: 23px;" id="days"></span>&nbsp;&nbsp;天</div>
               </div>
               <div class="layui-col-xs3" style="height: 60px;">
                <div class="grid-demo" style="text-align: center;margin-top: 20px;">注册人数：<span style="color: orange;font-size: 23px;" id="count"></span>&nbsp;&nbsp;人</div>
               </div>
           </div>
        </div>
    </div>

    <!-- 产品项目介绍部分 -->
    <div style="width: 80%;height: 200px;background-color:white;margin-left: auto;margin-right: auto;margin-top: 20px;">
        <div class="layui-row">
           <div class="layui-col-md3" style="text-align: center;">
              <p style="font-size: 30px;font-weight: bolder;color: black;margin-top: 50px;">高收益</p>
              <p style="font-size: 16px;font-weight: lighter;color: gray;margin-top: 10px;">年化收益率最高达 "20%"</p>
              <p style="font-size: 16px;font-weight: lighter;color: gray;">2000元起投，助你轻松获收益</p>
           </div>

           <div class="layui-col-md3" style="text-align: center;">
            <p style="font-size: 30px;font-weight: bolder;color: black;margin-top: 50px;">安全理财</p>
            <p style="font-size: 16px;font-weight: lighter;color: gray;margin-top: 10px;">100%本息保障</p>
            <p style="font-size: 16px;font-weight: lighter;color: gray;">信用抵押，多重风控审核</p>
           </div>

         <div class="layui-col-md3" style="text-align: center;">
          <p style="font-size: 30px;font-weight: bolder;color: black;margin-top: 50px;">随时赎回</p>
          <p style="font-size: 16px;font-weight: lighter;color: gray;margin-top: 10px;">两步赎回您的资金</p>
          <p style="font-size: 16px;font-weight: lighter;color: gray;">最快当日到账</p>
         </div>

        <div class="layui-col-md3" style="text-align: center;">
        <p style="font-size: 30px;font-weight: bolder;color: black;margin-top: 50px;">随时随地理财</p>
        <p style="font-size: 16px;font-weight: lighter;color: gray;margin-top: 10px;">下载手机客户端</p>
        <p style="font-size: 16px;font-weight: lighter;color: gray;">随时随地轻松理财</p>
        </div>
        </div>
    </div>

    <div style="width: 80%;height: 600px;margin-left: auto;margin-right: auto;margin-top: 20px;">
       <div class="layui-row">
          <div class="layui-col-md9" style="background-color:white;width: 75%;">
             <div style="height: 150px;">
                <p style="text-align: right;font-size: 14px;font-weight: lighter;margin-top: 10px;">常规发标时间每天10:00，13:00和20:00，其余时间根据需要随机发</p>
                <hr>
                <span style="margin-left: 10px;font-size: 13px;">期限1-18个月，期限短，收益见效快</span>
                <span style="display: inline-block;margin-left: 620px;"><a href="#" style="font-size: 12px;color: gray;font-weight: lighter;">查看更多>></a></span>
                <hr>
                <div style="width: 100%;background-color: white;height: 250px;">
                  <p style="font-size: 18px;color: orange;margin-left: 20px;">宏盈宝</p>
                  <div class="layui-row" style="height: 70px;">
                     <div class="layui-col-md5" style="text-align: center;font-size: 20px;position: relative;top: 30px;">
                        1个月
                     </div>
                     <div class="layui-col-md4" style="font-size: 24px;color: orange;position: relative;top: 30px;">
                        9.5%
                    </div>
                    <div class="layui-col-md3" style="font-size: 20px;position: relative;top: 30px;">
                        2000元起投
                    </div>
                  </div>

                  <div class="layui-row" style="height: 70px;">
                    <div class="layui-col-md5" style="text-align: center;font-size: 20px;position: relative;top: 30px;">
                       3个月
                    </div>
                    <div class="layui-col-md4" style="font-size: 24px;color: orange;position: relative;top: 30px;">
                       8.0%
                   </div>
                   <div class="layui-col-md3" style="font-size: 20px;position: relative;top: 30px;">
                       2000元起投
                   </div>
                 </div>

                 <div class="layui-row" style="height: 70px;">
                  <div class="layui-col-md5" style="text-align: center;font-size: 20px;position: relative;top: 30px;">
                     6个月
                  </div>
                  <div class="layui-col-md4" style="font-size: 24px;color: orange;position: relative;top: 30px;">
                     7.5%
                 </div>
                 <div class="layui-col-md3" style="font-size: 20px;position: relative;top: 30px;">
                     2000元起投
                 </div>
               </div>
                </div>

                <div style="width: 100%;background-color: white;height: 240px;margin-top: 20px;">
                  <p style="font-size: 18px;color: greenyellow;margin-left: 20px;position: relative;top: 16px;">宏贷宝</p>
                  <div class="layui-row" style="height: 80px;">
                     <div class="layui-col-md5" style="text-align: center;font-size: 20px;position: relative;top: 40px;">
                        散标（按日结息）
                     </div>
                     <div class="layui-col-md4" style="font-size: 28px;color: greenyellow;position: relative;top: 40px;">
                        0.0096%
                    </div>
                    <div class="layui-col-md3" style="font-size:20px; position: relative;top: 40px;">
                       10000元起贷
                    </div>
                  </div>

                  <div class="layui-row" style="height: 80px;">
                    <div class="layui-col-md5" style="text-align: center;font-size: 20px;position: relative;top: 40px;">
                       标准标（按月结息）
                    </div>
                    <div class="layui-col-md4" style="font-size: 28px;color: greenyellow;position: relative;top: 40px;">
                       0.37%
                   </div>
                   <div class="layui-col-md3" style="font-size:20px; position: relative;top: 40px;">
                      8000元起贷
                   </div>
                 </div>
                </div>
             </div>
          </div>

          <div class="layui-col-md2" style="margin-left:2%;width: 23%;">
              <p style="text-align: center;color: orange;font-size: 13px;background-color:white;width: 100%;height: 50px;"><span style="display: inline-block;margin-top: 17px;">收益与风险并存，请理性选择平台</span></p>
              <div style="height: 300px;background-color: white;margin-top: 20px;">
                  <h3 style="text-align: center;">排行榜</h3>
                  <div class="layui-tab layui-tab-card">
                    <ul class="layui-tab-title">
                      <li class="layui-this" style="width: 110px;color: green;">收益</li>
                      <li style="width: 110px;color: orange;">投资</li>
                    </ul>
                    <div class="layui-tab-content" style="height: 206px;">
                      <div class="layui-tab-item layui-show">
                        <table class="layui-table" lay-even="" lay-skin="nob">
                          <colgroup>
                            <col width="60">
                            <col width="60">
                            <col width="60">
                            <col>
                          </colgroup>
                          <tbody id="profiTable">
<%--                            <tr>--%>
<%--                              <td style="color:red">01</td>--%>
<%--                              <td>张*</td>--%>
<%--                              <td>￥2567.12</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td style="color: orange;">02</td>--%>
<%--                              <td>傅**</td>--%>
<%--                              <td>￥2567.12</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td style="color:greenyellow;">03</td>--%>
<%--                              <td>桂*</td>--%>
<%--                              <td>￥2567.12</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td>04</td>--%>
<%--                              <td>高**</td>--%>
<%--                              <td>￥2567.12</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td>05</td>--%>
<%--                              <td>高**</td>--%>
<%--                              <td>￥2567.12</td>--%>
<%--                            </tr>--%>
                          </tbody>
                        </table> 
                      </div>
                      <div class="layui-tab-item">
                        <table class="layui-table" lay-even="" lay-skin="nob">
                          <colgroup>
                            <col width="50">
                            <col width="50">
                            <col width="50">
                            <col>
                          </colgroup>
                          <tbody id="borrowTable">
<%--                            <tr>--%>
<%--                              <td style="color:red">01</td>--%>
<%--                              <td>徐*</td>--%>
<%--                              <td>￥1208567.00</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td style="color: orange;">02</td>--%>
<%--                              <td>傅**</td>--%>
<%--                              <td>￥122567.00</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td style="color:greenyellow;">03</td>--%>
<%--                              <td>薛*</td>--%>
<%--                              <td>￥88889.00</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td>04</td>--%>
<%--                              <td>高**</td>--%>
<%--                              <td>￥46730.00</td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                              <td>04</td>--%>
<%--                              <td>高**</td>--%>
<%--                              <td>￥2567.00</td>--%>
<%--                            </tr>--%>
                          </tbody>
                        </table> 
                      </div>
                    </div>

                    <div style="background-color: white;height: 200px;margin-top: 30px;">
                        <h2 style="color: orange;text-align: center;">收益计算器</h2>
                        <img src="../image/计算器.png" alt="" style="width: 100px;height: 100px;margin-left: 90px; margin-top: 30px;">
                        <p style="text-align: center;font-size: 16px;font-weight: lighter;color: palevioletred;margin-top: 10px;">让你的收益清晰可见</p>
                    </div>
                  </div>
              </div>
          </div>
       </div>
    </div>

    <div style="width: 80%;height: 300px;background-color:white;margin-left: auto;margin-right: auto;margin-top: 20px;position: relative;bottom: 10px;">
      <div class="layui-row">
          <div class="layui-col-md7">
            <p style="font-size: 20px;margin-top: 30px;">媒体报告</p>
            <hr style="background-color: orange;">
            <div class="layui-row" style="margin-top: 10px;">
                <div class="layui-col-md3" style="text-align: center;">
                   <img src="../image/news.PNG" alt="" style="width: 150px;height: 150px;margin-top: 30px;">
                </div>
                <div class="layui-col-md6">
                   <ul class="news">
                     <li>[宏量财富]&nbsp;&nbsp;<a>宏量财富与农业银行联名信用卡上线</a></li>
                     <li>[宏量财富]&nbsp;&nbsp;<a>网贷8月信息披露情况公布，宏量财富...</a></li>
                     <li>[宏量财富]&nbsp;&nbsp;<a>响应监管部门合规检查要求 宏量财富上传...</a></li>
                     <li>[宏量财富]&nbsp;&nbsp;<a>互金整治办发文明确“老赖”标准 ，宏量...</a></li>
                     <li><a href="#" style="color:blue;">查看更多 ></a></li>
                   </ul>
                </div>
                <div class="layui-col-md3">
                    <img src="../image/newsPic.PNG" alt="" style="width: 180px;height: 150px;margin-top: 30px;">
                </div>
            </div>
          </div>
          
          <div class="layui-col-md4" style="margin-left: 100px;">
            <p style="font-size: 20px;margin-top: 30px;">公告</p>
            <hr style="background-color: orange;">
            <div class="layui-row">
                 <div class="layui-col-md8">
                  <ul class="news">
                    <li><a>宏量财富2021年春节假期业务受理...</a></li>
                    <li><a>关于华夏银行北京分行资金存管...</a></li>
                    <li><a>关于停止计算昨日出借回报的公告</a></li>
                    <li><a>接入中国银行征信系统的公告</a></li>
                    <li><a href="#" style="color:blue;">查看更多 ></a></li>
                  </ul>
                 </div>
                 <div class="layui-col-md4">
                  <ul class="newsTime">
                    <li><a>2021-02-08</a></li>
                    <li><a>2021-01-31</a></li>
                    <li><a>2020-11-04</a></li>
                    <li><a>2020-06-09</a></li>
                  </ul>
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

    //头部的运行天数等信息
    $(function(){
        $.ajax({
            dataType:"json",
            type:"get",
            url:"/viewIndex",
            success:function (data) {
                $("#count").text(data.count);
                $("#days").text(data.days);
                $("#totalInvest").text(data.totalInvest);
                $("#totalBorrow").text(data.totalProfit);
            }

        });
    })

    //收益排行
    $(function(){
        $.ajax({
            dataType:"json",
            type:"get",
            url:"/viewIndexProfiRank",
            success:function (data) {
                console.log("进入函数")
                console.log(data)
               for (i in data){
                   console.log(parseInt(i))
                   var tr1 = '';
                   var username = data[i].username;
                   var length = data[i].username.length;
                   tr1 = '<td>'+(parseInt(i)+1)+'</td>'+'<td>'
                       +username.replaceAll(username.substring(1,length),"**")
                       +'</td>'+'<td>'+data[i].investallinterest+'</td>';
                   $("#profiTable").append('<tr>'+tr1+'</tr>')
                   console.log("tr:"+tr1)
               }

            }

        });
    })
    //投资排行
    $(function(){
        $.ajax({
            dataType:"json",
            type:"get",
            url:"/viewIndexBorrowRank",
            success:function (data) {
                for (i in data){
                    console.log(parseInt(i))
                    var username = data[i].username;
                    var length = data[i].username.length;
                    var tr1 = '';
                    tr1 = '<td>'+(parseInt(i)+1)+'</td>'+'<td>'+username.replaceAll(username.substring(1,length),"**")+'</td>'+'<td>'+data[i].investAsset+'</td>';
                    $("#borrowTable").append('<tr>'+tr1+'</tr>')
                    console.log("tr:"+tr1)
                }
            }

        });
    })


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