<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="还款管理">
    <meta name="keywords" content="还款管理">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <link rel="shortcut icon" href="../image/宏量财富小图标.jpg">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
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
        .left li:nth-child(4){
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

    <div style="background-color: #f1f1f1;height: 740px;">
        <!-- 账户主体部分 -->
    <div style="width: 85%;height: 100px;margin-left: auto;margin-right: auto;position: relative;top: 20px;">
        <img src="../image/clist1.jpg" alt="" style="width: 100%;height: 100%;">
     </div>
 
     <div style="width: 85%;height: 500px;margin-left: auto;margin-right: auto;margin-top: 30px;margin-bottom: 25px;">
     <!-- 左边的选项卡部分 -->
      <div style="width: 25%;height: 80%;background-color: white;float: left;">
         <ul class="left">
             <li style="margin-top: 20px;"><span style="margin-left: 80px;"><img src="../image/家.png" alt="" style="width: 30px;height: 30px;"></span><a href="html/account.jsp">账户管理</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/充值.png" alt="" style="width: 30px;height: 30px;"></span><a href="html/pay.jsp">充值</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/提现.png" alt="" style="width: 30px;height: 30px;"></span><a href="html/withdraw.jsp">提现</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/还款.png" alt="" style="width: 30px;height: 30px;"></span><a href="/">还款</a></li>
             <li><span style="margin-left: 80px;"><img src="../image/设置.png" alt="" style="width: 30px;height: 30px;"></span><a href="html/chang.jsp">账户设置</a></li>
         </ul>
      </div>

      <!-- 右边的主体部分 -->
      <div style="width: 74%;height: 600px;margin-left: 1%;float: left;background-color: white;">

          <!-- 正文区域 -->
          <section class="content"> <!-- .box-body -->
              <div class="box box-primary">
                  <div class="box-header with-border">
                      <h3 class="box-title">投资类型列表</h3>
                  </div>

                  <div class="box-body">

                      <!-- 数据表格 -->
                      <div class="table-box">

                          <!--工具栏-->
                          <div class="pull-left">
                              <div class="form-group form-inline">
                                  <div class="btn-group">
<%--                                      <button type="button" class="btn btn-default" title="新建"--%>
<%--                                              onclick="location.href='${pageContext.request.contextPath}/html/investTypesAdd.jsp'">--%>
<%--                                          <i class="fa fa-file-o"></i> 添加--%>
<%--                                      </button>--%>

                                      <button type="button" class="btn btn-default" title="刷新"
                                              onclick="window.location.reload();">
                                          <i class="fa fa-refresh"></i> 刷新
                                      </button>
                                  </div>
                              </div>
                          </div>
<%--                          <div class="box-tools pull-right">--%>
<%--                              <div class="has-feedback">--%>
<%--                                  <input type="text" class="form-control input-sm"--%>
<%--                                         placeholder="搜索"> <span--%>
<%--                                      class="glyphicon glyphicon-search form-control-feedback"></span>--%>
<%--                              </div>--%>
<%--                          </div>--%>
                          <!--工具栏/-->

                          <!--数据列表-->
                          <table id="dataList"
                                 class="table table-bordered table-striped table-hover dataTable">
                              <thead>
                              <tr>
                                  <th class="" style="padding-right: 0px">
                                      <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                  </th>
                                  <th class="sorting_asc">ID</th>
                                  <th class="sorting_desc">贷款时间</th>
                                  <th class="sorting_asc sorting_asc_disabled">贷款金额</th>
                                  <th class="sorting_desc sorting_desc_disabled">贷款利息</th>
                                  <th class="text-center">操作</th>
                              </tr>
                              </thead>

                              <tbody>
                              <c:forEach items="${pageInfo.list}" var="borrow">
                                  <tr>
                                      <td>
                                          <input name="ids" type="checkbox" value="${borrow.borrowid}">
                                      </td>
                                      <td>${borrow.borrowid}</td>
                                      <td>${borrow.borrowtime}</td>
                                      <td>${borrow.borrowmoney}</td>
                                      <td>${borrow.borrowinterest}</td>
                                      <td class="text-center">
                                          <a href="${pageContext.request.contextPath}/repaymentFunction?borrowid=${borrow.borrowid}&borrowmoney=${borrow.borrowmoney}&borrowinterest=${borrow.borrowinterest}" class="btn bg-olive btn-xs">还款</a>
                                      </td>
                                  </tr>
                              </c:forEach>
                              </tbody>
                          </table>
                          <!--数据列表/-->

                      </div>
                      <!-- 数据表格 /-->

                  </div>
                  <!-- /.box-body -->

                  <!-- .box-footer-->
                  <div class="box-footer">
                      <div class="pull-left">
                          <div class="form-group form-inline">
                              总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
                              <select class="form-control" id="changePageSize" onchange="changePageSize()">
                                  <option value="2" <c:if test="${pageInfo.pageSize eq 2}">selected</c:if> >2</option>
                                  <option value="4" <c:if test="${pageInfo.pageSize eq 4}">selected</c:if>>4</option>
                                  <option value="6" <c:if test="${pageInfo.pageSize eq 6}">selected</c:if>>6</option>
                              </select>条
                          </div>
                      </div>

                      <div class="box-tools pull-right">
                          <ul class="pagination">
                              <li>
                                  <a href="${pageContext.request.contextPath}/viewAllBorrow?pageNum=1&pageSize=${pageInfo.pageSize}" aria-label="Previous">首页</a>
                              </li>
                              <li><a href="${pageContext.request.contextPath}/viewAllBorrow?pageNum=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}">上一页</a></li>

                              <c:forEach begin="1" end="${pageInfo.pages}" var="pageNow">
                                  <li><a href="${pageContext.request.contextPath}/viewAllBorrow?pageNum=${pageNow}&pageSize=${pageInfo.pageSize}">${pageNow}</a></li>
                              </c:forEach>

                              <li><a href="${pageContext.request.contextPath}/viewAllBorrow?pageNum=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}">下一页</a></li>
                              <li>
                                  <a href="${pageContext.request.contextPath}/viewAllBorrow?pageNum=${pageInfo.pages}&pageSize=${pageInfo.pageSize}" aria-label="Next">尾页</a>
                              </li>
                          </ul>
                      </div>

                  </div>
                  <!-- /.box-footer-->

              </div>

          </section>
          <!-- 正文区域 /-->

<%--          <c:if test="${(param.info_msg != '') || !(empty param.info_msg) }"> <script> alert("${param.info_msg}");</script></c:if>--%>

              <p style="color: red;font-size: 18px;margin-left: 200px;margin-top: 30px;">${sessionScope.info_msg}</p>

          <%
              session.removeAttribute("info_msg");
          %>
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
<script src="../js/jquery-3.5.1.js"></script>
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


layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //普通图片上传
  var uploadInst = upload.render({
    elem: '#test1'
    ,url: 'https://httpbin.org/post' //改成您自己的上传接口
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code > 0){
        return layer.msg('上传失败');
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });

})
</script>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="../plugins/raphael/raphael-min.js"></script>
<script src="../plugins/morris/morris.min.js"></script>
<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="../plugins/knob/jquery.knob.js"></script>
<script src="../plugins/daterangepicker/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="../plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="../plugins/fastclick/fastclick.js"></script>
<script src="../plugins/iCheck/icheck.min.js"></script>
<script src="../plugins/adminLTE/js/app.min.js"></script>
<script src="../plugins/treeTable/jquery.treetable.js"></script>
<script src="../plugins/select2/select2.full.min.js"></script>
<script src="../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="../plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="../plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="../plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="../plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="../plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="../plugins/ckeditor/ckeditor.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="../plugins/chartjs/Chart.min.js"></script>
<script src="../plugins/flot/jquery.flot.min.js"></script>
<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
<script src="../plugins/flot/jquery.flot.pie.min.js"></script>
<script src="../plugins/flot/jquery.flot.categories.min.js"></script>
<script src="../plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="../plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script>

    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document)
        .ready(
            function () {

                // 激活导航位置
                setSidebarActive("admin-datalist");

                // 列表按钮
                $("#dataList td input[type='checkbox']")
                    .iCheck(
                        {
                            checkboxClass: 'icheckbox_square-blue',
                            increaseArea: '20%'
                        });
                // 全选操作
                $("#selall")
                    .click(
                        function () {
                            var clicks = $(this).is(
                                ':checked');
                            if (!clicks) {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck(
                                        "uncheck");
                            } else {
                                $(
                                    "#dataList td input[type='checkbox']")
                                    .iCheck("check");
                            }
                            $(this).data("clicks",
                                !clicks);
                        });
            });
</script>
</html>