<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        .left li{
            width: 100%;
            height: 40px;
            margin-bottom: 18px;
        }
        .left li:hover{
            background-color: skyblue;
        }
        .left li:nth-child(2){
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

        .zhifu li{
          float: left;
          margin-right: 100px;
          margin-top: 20px;
          width: 150px;
          height: 50px;
          border: 1px solid black;
        }
        .zhifu li img{
          width: 150px;
          height: 50.5px;
        }

        .tishi{
          position: relative;
          top: 20px;
          width: 90%;
          height: 270px;
        }

        .tishi p{
          margin-top: 10px;
          margin-left: 50px;
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
                    <li class="layui-nav-item"><a href="index.jsp" style="color: black;">首页</a></li>
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

    <div style="background-color: #f1f1f1;height: 940px;">
        <!-- 账户主体部分 -->
    <div style="width: 85%;height: 100px;margin-left: auto;margin-right: auto;position: relative;top: 20px;">
        <img src="../image/clist1.jpg" alt="" style="width: 100%;height: 100%;">
     </div>
 
     <div style="width: 85%;height: 500px;margin-left: auto;margin-right: auto;margin-top: 30px;margin-bottom: 25px;">
     <!-- 左边的选项卡部分 -->
      <div style="width: 25%;height: 80%;background-color: white;float: left;">
         <ul class="left">
             <li style="margin-top: 20px;"><span style="margin-left: 80px;"><img src="../image/家.png" alt="" style="width: 30px;height: 30px;"></span><a href="account.jsp">账户管理</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/充值.png" alt="" style="width: 30px;height: 30px;"></span><a href="/">充值</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/提现.png" alt="" style="width: 30px;height: 30px;"></span><a href="withdraw.jsp">提现</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/还款.png" alt="" style="width: 30px;height: 30px;"></span><a href="/viewAllBorrow">还款</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/设置.png" alt="" style="width: 30px;height: 30px;"></span><a href="chang.jsp">账户设置</a></li>
         </ul>
      </div>
      <!-- 右边的主体部分 -->
      <div style="width: 74%;height: 800px;margin-left: 1%;float: left;background-color: white;">
         
         <p style="font-size: 25px;width: 90%;height: 30px;margin-left: auto;margin-right: auto;">充值</p>
         <hr>

         <div style="width: 90%;height: 460px;border: 1px solid black;margin-left: auto;margin-right: auto;">
            <form action="/payView" style="margin-left: 40px;margin-top: 50px;">
              <span style="font-size: 20px;font-weight: bolder;">充值金额</span>
              <input type="text" style="width: 170px;height: 40px;" name="payMoney">
              <span style="font-size: 20px;font-weight: bolder;">元</span>
              <p style="font-size: 13px;color: cornflowerblue;margin-left: 85px;margin-top: 10px;font-weight: bold;">宏量财富提醒您：充值金额超过50000元时，请切换到网银充值</p>
              <p style="margin-top: 40px;font-weight: bolder;">请选择支付方式</p>
              <div style="width: 100%;height: 150px;">
                  <ul class="zhifu">
                      <li style="background: url(../image/中国农业银行.png);background-size: cover;background-repeat: no-repeat;"><input type="checkbox"></li>
                      <li style="background: url(../image/中国工商银行.png);background-size: cover;background-repeat: no-repeat;"><input type="checkbox"></li>
                      <li style="background: url(../image/中国建设银行.png);background-size: cover;background-repeat: no-repeat;"><input type="checkbox"></li>
                  </ul>
                  <ul class="zhifu">
                      <li style="background: url(../image/中国银行.png);background-size: cover;background-repeat: no-repeat;"><input type="checkbox"></li>
                      <li style="background: url(../image/微信支付.jpeg);background-size: contain;background-repeat: no-repeat;"><input type="checkbox"></li>
                      <li style="background: url(../image/支付宝.png);background-size: cover;background-repeat: no-repeat;"><input type="checkbox"></li>
                  </ul>
              </div>

              <div style="height: 100px;margin-top: 20px;">
                <input type="checkbox" id="agree">&nbsp;&nbsp;&nbsp;&nbsp;
                <span style="font-size: 18px;">我同意并接受<span style="color: deepskyblue;">《宏量财富投资咨询与管理服务电子协议》</span></span><br>
                <input type="submit" id="btn" disabled="disabled" value="充值" style="color: white;background-color: red;width: 370px;height: 60px;font-size: 25px;font-weight: bold;margin-top: 18px;cursor: pointer;">
              </div>
            </form>
         </div>

         <div style="background-color: #FFF5E7;width: 90%;height: 260px;margin-left: auto;margin-right: auto;margin-top: 20px;">
          <div class="tishi">
             <p>温馨提示：</p>
             <p>1. 投资人充值过程全程免费，不收取任何手续费。</p>
             <p>2. 为防止套现，所充资金必须经投标回款后才能提现。</p>
             <p>3. 使用快捷支付进行充值，可能会受到不同银行的限制，如需大额充值请使用网银充值进行操作。</p>
             <p>4. 充值/提现必须为银行借记卡，不支持存折、信用卡充值。</p>
             <p>5. 严禁利用充值功能进行信用卡套现、转账、洗钱等行为，一经发现，将封停账号30天。</p>
             <p>6. 充值期间，请勿关闭浏览器，待充值成功并返回首页后，所充资金才能入账，如有疑问，请联系客服。</p>
             <p>7. 充值需开通银行卡网上支付功能，如有疑问请咨询开户行客服。</p>
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

layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  //自定义样式
  laypage.render({
    elem: 'demo2'
    ,count: 100
    ,theme: '#1E9FFF'
  });
  laypage.render({
    elem: 'demo2-1'
    ,count: 100
    ,theme: '#FF5722'
  });
  laypage.render({
    elem: 'demo2-2'
    ,count: 100
    ,theme: '#FFB800'
  });
  
  //调用分页
  laypage.render({
    elem: 'demo20'
    ,count: data.length
    ,jump: function(obj){
      //模拟渲染
      document.getElementById('biuuu_city_list').innerHTML = function(){
        var arr = []
        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
        layui.each(thisData, function(index, item){
          arr.push('<li>'+ item +'</li>');
        });
        return arr.join('');
      }();
    }
  });
  
});


//同意按钮
    var box = document.getElementById("agree");
    var btn = document.getElementById("btn");
    box.onclick=function(){
        if (box.checked){
            btn.removeAttribute('disabled')
        }else {
            btn.setAttribute('disabled','disabled')
        }
    }
</script>
</html>