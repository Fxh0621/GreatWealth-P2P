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
                    <li class="layui-nav-item layui-this"><a href="help.jsp" style="color: black;">帮助</a></li>
                  </ul>
            </div>
        </div>
    </div>

    <!-- 图片区 -->
    <div style="width: 100%;height: 250px; margin-top: 10px;">
       <img src="../image/help-banner.png" alt="" style="width: 100%;height: 100%;">
    </div>

    <!-- 帮助区 -->
    <div class="layui-container" style="margin-top: 20px;margin-bottom: 20px;">
        <div class="layui-collapse" lay-accordion="">
            <div class="layui-colla-item">
              <h2 class="layui-colla-title">本金保障计划</h2>
              <div class="layui-colla-content layui-show">
                <p>宏量财富为所有投资人建立"本金保障计划"用于保障全体投资人的资金安全，投资人在宏量财富的投资行为100%适用于本金保障计划。<br />
                    1、什么是本金保障计划<br />
                    宏量财富针对每笔借款根据服务类型及借款人的信用等级计提一定比例的风险备用金。宏量财富已与中国光大银行上海分行签署风险备用金托管协议，计提的风险备用<br />
                    金存放入中国光大银行上海分行进行专户托管。风险备用金的计提标准和垫付规则详见分类垫付规则明细表。<br />
                    2、本金保障计划是如何运作的<br />
                    "风险备用金账户"资金将专门用于在一定限额内偿付宏量财富所服务的投资人由于借款人的违约所遭受的本金或本息的损失（具体偿付金额 以所出借的服务类<br />
                    型的垫付规则为准），当借款人逾期时，宏量财富将按照"风险备用金账户"资金使用规则从该账户中提取相应资金用于偿付投资人应收取的本金或本息金额（不同服务的垫付范围请参考《分类垫付规则明细表》）。<br />
                    3、"风险备用金账户"资金使用规则<br />
                    3.1、违约偿付规则：当借款人逾期还款超过30日时，方可从"风险备用金账户"资金中抽取相应资金偿付投资人应收金额。<br />
                    3.2、时间顺序规则：即"风险备用金账户"资金对投资人应收逾期金额的偿付按照该债权发生的时间顺序进行偿付分配，先偿付发生在前的债权，后偿付发生在后的债权。<br />
                    3.3、债权比例规则："风险备用金账户"资金对同一借款关系项下的不同投资人应收逾期金额的偿付按照各自债权金额占发生债权总额的比例进行偿付分配。当"<br />
                    风险备用金账户"资金当期余额不足以支付当期（每月为一期）所有应享受该账户的投资人所对应的逾期<br />
                    偿付金额时，则当期应享受该账户的投资人按照各自对应的应收逾期金额占当期所有投资人对应的逾期应收总额的比例进行偿付分配。<br />
                    3.4、有限偿付规则：即"风险备用金账户"资金对投资人的应收逾期金额的偿付以该账户的资金总额为限。当该账户余额为零时，自动停止对该投资人应收逾期金<br />
                    额的偿付，直到该账户获得新的风险备用金。<br />
                    3.5、收益转移规则：即当投资人获得"风险备用金帐户"对某笔逾期偿付金额的足额偿付后，该债权对应的借款人所偿还的本金、借款利息及违约罚息归属"风险备用金账户"。<br />
                    3.6、金额上限规则：即当"风险备用金账户"内金额超过宏量财富平台上所有债权本金金额的10%时，超出部分作为宏量财富的风险备用金账户管理费，归宏量财富所有。<br />
                    3.7、宏量财富将审慎管理"风险备用金账户"资金，并就账户及资金使用情况进行定期披露。
                    4、分类垫付规则明细表
                </p>
              </div>
            </div>
            <div class="layui-colla-item">
              <h2 class="layui-colla-title">法律合规保障</h2>
              <div class="layui-colla-content">
                <p> 一、关于在宏量财富平台上网络借贷关系的合法性：<br />
                    1.《中华人民共和国合同法》第196条规定“借款合同是借款人向贷款人借款，到期返还借款并支付利息的合同”，允许普通民事主体之间发生借贷关系，并认定借款人还本付息的合理性。<br />
                    2.宏量财富平台上的网络借贷关系在借款的渠道和方式上进行了创新，出借人与借款人的借贷行为原则上属于民事主体之间的借贷，因此符合《合同法》的相关规定，受到法律保护。<br />
                    二、关于电子合同的合法性及可执行性：<br />
                    1.《合同法》第10条规定：“当事人订立合同，有书面形式、口头形式和其他形式。”<br />
                    2.《合同法》第11条规定：“书面形式是指合同书、信件和数据电文（包括电报、电传、传真、电子数据交换和电子邮件）等可以有形地表现所载内容的形式。”<br />
                    3.《中华人民共和国电子签名法》规定：“民事活动中的合同或者其他文件、单证等文书，当事人可以约定使用或者不使用电子签名、数据电文。”“当事人约定使用电子签名、数据电文的文书，不得仅因为其采用电子签名、数据电文的形式而否定其法律效力。”因此，电子合同与纸质合同具有同等的法律效力。<br />
                    三、关于出借人在宏量财富平台获得的投资收益的合法性：<br />
                    1.《合同法》第211条规定：“自然人之间的借款合同约定支付利息的，借款的利率不得违反国家有关限制借款利率的规定”。<br />
                    2.根据最高人民法院《关于人民法院审理借贷案件的若干意见》第6条规定：“民间借贷的利率可以适当高于银行的利率，各地人民法院可以根据本地区的实际情况具体掌握，但最高不得超过银行同类贷款利率的四倍，（包含利率本款）。超出此限度的，超出部分的利息不予保护。”当期人民银行一年期基准贷款利率为6.00%，则当期基准贷款利率的四倍为24.00%，宏量财富网的出借收益率低于24.00%，在法律允许的范围内，受到法律保护。
                </p>
              </div>
            </div>
            <div class="layui-colla-item">
              <h2 class="layui-colla-title">风控保障</h2>
              <div class="layui-colla-content">
                <p>五道安全防线：<br />
                    a) 严格的信贷政策，过滤高风险行业；<br />
                    b) 严谨的资料审核，16项必备材料逐一审查，全方位覆盖所有风险点；<br />
                    c) 专业银行级别反欺诈系统，结合多角度社会背景实地征信，辨别信息真伪；<br />
                    d) 贷中风险预警机制，等额本息的还款方式更好的控制逾期风险；<br />
                    e) 完善的贷后管理，多种手段针对各种逾期情况的催收体系。 <br />
                    五大风控规则：<br />
                    风控中心作为公司控制风险的主要部门，承担了控制网站风险的主要职责。宏量财富风控中心建立了相关审批制度及流程，并努力完善坏账准备金提取制度及坏账核销制度。风控中心的任务十分重要，首先要有一套严密的防控措施，以制度和操作流程采取业务定型；同时对已经发生的风险要分析原因，归纳出他们之间的一些共同 点；对总结出的风险高发群体，今后在审查过程中从严控制。<br />
                    1、宏量财富金融信息服务有限公司借款管理办法及实施细则<br />
                    为 加强公司借款业务的管理，推动业务健康发展、规范业务操作、防范业务风险，根据《中华人民共和国合同法》、《中华人民共和国担保法》和参照《贷款通则》等 相关法律法规和本行相关规章制度，制定本办法。其中包括，借款产品介绍，借款的审批审查，借款的调查，借款的补充细则。我公司已严格按照此管理办法和细则 实施。<br />
                    2、客户评级管理办法<br />
                    客户信用等级是反映客户偿还债务能力和意愿的相对尺度。主要从客户的市场竞争力，偿债能力，管理水平和发展前景等方面评定。<br />
                    客户信用等级评定主标尺，为统一标准和唯一标准。由信用等级、信用等级对应的违约概率区间、信用等级的平均违约概率三部分构成，评级分数通过评级得分到违约概率的校正建立与违约概率的对应关系，并基于主标尺形成与信用等级的映射关系。<br />
                    3、小微企业借款风险分类办法<br />
                    小微企业借款划分为正常、关注、次级、可疑和损失五类，后三类合称为不良贷款。根据借款逾期时间，同时考虑借款人的风险特征和担保因素，参照小微企业借款逾期天数风险分类矩阵对小微企业借款进行分类。<br />
                    4、宏量财富金融信息服务有限公司逾期借款催收管理办法及实施细则<br />
                    目前催讨为前端电话催收、后端上门催收，催收人员做好催收工作，做好记录以及提供数据分析给信审部门。<br />
                    5、损失类借款核销管理办法<br />
                    在小微企业借款风险分类的基础上，根据有关规定及时足额计提借款损失准备，核销小微企业借款损失。<br />
                    注：宏量财富金融信息服务有限公司为宏量财富平台的运营方。 
                </p>
              </div>
            </div>
            <div class="layui-colla-item">
              <h2 class="layui-colla-title">账户安全保障</h2>
              <div class="layui-colla-content">
                <p>1、第三方资金托管，用户通过第三方支付平台进行资金交易，有效保障投资人（债权人）资金安全<br />
                    2、全程自主开发的专业平台，先进的安全技术体系，保护宏量财富用户的个人信息、账户信息以及交易记录；<br />
                    3、完善的运维监测体系，在用户的账户发生异常访问或登录时，及时锁定账户及账户资金，并联系用户核实情况，全面保障用户信息及资金安全；<br />
                    4、对客户提供的信息全面保护，除客户事先同意，或应政府及上级监管机构的要求而披露之外，不会向任何外部机构披露。 
                </p>
              </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">如何投标？</h2>
                <div class="layui-colla-content">
                    <p>步骤1：登录宏量财富账户，进入“债权列表”，选择想要投资的借款标。 </p>
                    <p>步骤2：进入详情页，提交金额，点击“马上投标”。 </p>
                    <p>步骤3：投标确认。 </p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">投标前需要注意哪些事项？</h2>
                <div class="layui-colla-content">
                    <p>1、认真阅读该借款列表的详细信息（包括贷款金额，利息率，贷款期限、贷款者信用等级等），确定您所要投的标符合您的风险承受能力和所要求的回报率；<br />
                        2、应知道若您所投标的借款人发生违约，违约损失需要由该标的所有投资人共同承担；<br />
                        3、投标前请您核实自己将要投资的金额，确认无误后再进行操作。
                    </p>
                </div>
            </div>
            
            <div class="layui-colla-item">
                <h2 class="layui-colla-title">在应收日期的次日凌晨收到回款，为何不显示贴息？</h2>
                <div class="layui-colla-content">
                    <p>
                        由于借款人还款当日由系统分多时段扣除款项，当日最后扣款时间为23:59:59，故在此时段结算的还款在投资人账户中将显示次日凌晨回款。此情况不属借款人逾期还款，故不会计算贴息！
                    </p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">借款人提前还款怎么办？</h2>
                <div class="layui-colla-content">
                    <p>除借款期限为三个月的借款产品外，其他借款期限的借款产品，合同约定的限制提前还款期限满后，借款人有权选择提前还款；投资人可将提前收回的本金再次出借给其他借款人，并不影响投资人的收益。</p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">能提前收回借出去的钱吗？</h2>
                <div class="layui-colla-content">
                    <p>不可以。一旦您成功出借，不可提前收回已借出资金，除非借入者自愿提前还款。<br />
                        在回款期内，如果你有资金周全需求，可通过如下方法进行资金融通：<br />
                        （1）发布净值标。即以你已投资的一定待收本金作为授信而发布的借款标，从其他投资人处获得借款。<br />
                        （2）进行债权转让。如果你投资的借款标已过90天锁定期，可转让给其他投资者，提前收回资金。
                    </p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">如何收取还款？</h2>
                <div class="layui-colla-content">
                    <p>借款人在规定的还款时间内将钱充值到与宏量财富合作的第三方支付平台上，宏量财富系统会按出借比例将款项转入投资人的宏量财富账户余额中。投资人可根据个人需求选择提现或继续出借。借款人也可能提前偿还全部贷款或者在到期日前手动提前偿还贷款，请投资人注意查收宏量财富发出的通知。</p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">借款人未按时还款怎么办？</h2>
                <div class="layui-colla-content">
                    <p>若借款人逾期未归还款项，宏量财富将实行100%本金保障计划（注：网络信用标只保本金）。同时，为保护投资人的权益，将会采取以下措施：<br />
                        1、宏量财富催收部门对借款人开展大力度催收；<br />
                        2、根据电子协议中关于罚息的规定，对借款人收取逾期罚息；<br />
                        3、对于符合本金保障条件的投资人进行补偿；<br />
                        4、宏量财富根据隐私规则的约定分阶段将借款人的信息进行黑名单曝光。
                    </p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">什么是借款利率？</h2>
                <div class="layui-colla-content">
                    <p>借款利率，是指一定时期内利息量与本金的比率，通常用百分比表示，按年计算则称为年借款利率。其计算公式是：</p>
                    <p>借款利率 = 借款利息量÷ 借款本金÷借款时间×100%</p>
                    <p> 加上x100%是为了将数字切换成百分率，与乘一的意思相同，计算中可不加，只需记住即可。</p>
                    <p>我国的利率由中国人民银行统一管理，中国人民银行确定的利率经国务院批准后执行。</p>
                    <p>本网站严格执行《最高人民法院关于人民法院审理借贷案件的若干意见》第六条的规定，民间借贷的利率可以适当高于银行的利率，各地人民法院可根据本地区的实际情况具体掌握，但最高不得超过银行同期借款利率的四倍。超出此限度的，超出部分的利息不予保护。</p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">能否申请提前还款？</h2>
                <div class="layui-colla-content">
                    <p>⑴借款人在还款3期后，可申请提前还款，提前还款必须一次性付清；如果是部分提前还款，则按照正常还款流程扣款；<br />
                        ⑵借款人需提前三个工作日向宏量财富提出申请，宏量财富与借款人约定提前还款日期后，借款人在约定时间内把相应款项存入指定账号；<br />
                        ⑶提前还款时，借款人须支付全部剩余本金，以及申请当期和下一期的利息及平台管理费；<br />
                        ⑷借款人提前还款，将获得一定的借款服务费退还，退还剩余期次（去除申请当期及下一期）借款服务费的70%。</p>
                </div>
            </div>

            <div class="layui-colla-item">
                <h2 class="layui-colla-title">常用名词</h2>
                <div class="layui-colla-content">
                    <p>借款人：<br />
                        也称贷款人（资金需求方），是指已经或准备在宏量财富网站上进行借款活动的用户。凡22周岁以上的中国大陆地区公民，都可以成为借款人。<br />
                        投资人：<br />
                        也称出借人（或投资者、资金出借方），是指已经或准备在宏量财富网站上进行出借活动的用户。凡18周岁以上的中国大陆地区公民，都可以成为投资人。<br />
                        借款列表：<br />
                        当借款人成功发布一个借款请求时，我们将包含各种贷款信息的该请求称为一个借款列表。<br />
                        招标：<br />
                        是指一个借款人发出一个借款请求，即创建一个借款列表的行为。<br />
                        投标：<br />
                        是指投资人将其账户内指定的金额出借给其指定的借款列表的行为。<br />
                        满标：<br />
                        是指一个借款列表在投标期限内足额筹集到所需资金。<br />
                        放款：<br />
                        指一个借款列表满标后且已符合放款标准，宏量财富将把所筹资金打入借款人在宏量财富的账户中，即成功贷款。<br />
                        流标：<br />
                        是指一个借款列表的投标期限已过，但是贷款没有足额筹集齐或者在规定期限内未签约成功，即贷款失败。<br />
                        提现：<br />
                        当宏量财富客户需要将宏量财富账户里的资金转移的时候，可以申请提现，提现仅能将金额提至经过实名认证的客户银行卡中。在用户发起提现申请后，宏量财富会在1-2个工作日内完成资金划转。<br />
                        投标金额：<br />
                        是指投资人对借款列表进行投标的金额。<br />
                        帐户总额：<br />
                        指用户账户的所有金额（含冻结金额和可用金额）。<br />
                        可用金额：<br />
                        是指用户可自由支配的金额。<br />
                        冻结金额：<br />
                        投资人对某借款列表进行投标后，在此列表的招标期结束之前，这部分投标金额将被锁定，“冻结金额”是指因这类型锁定金额的总额。如果列表放款，这部分金额将转给该列表的借款人；如果该列表流标，这部分金额将立即变为用户的可用金额。<br />
                        等额本息：<br />
                        等额本息还款法是一种被广泛采用的还款方式，在还款期内，每月偿还同等数额的贷款(包括本金和利息)。但每月偿还的本金和利息的比例不同，借款人每月还款额中的本金比重逐月递增、利息比重逐月递减。 其计算公式如下： 每月还款额=[贷款本金×月利率×（1+月利率）^还款总期数]÷[（1+月利率）^还款总期数-1],因计算中存在四舍五入，最后一期还款金额与之前略有不同。<br />
                        本金保障：<br />
                        当借款项目发生逾期超过30日，宏量财富网站将立即垫付出借客户100%逾期本息（网商贷垫付100%逾期本金）。 自借款项目发生逾期之日起，宏量财富网站将按照此借款标的年利率折算成日息，根据当期逾期本金按日计算逾期补偿金，直至借款人还款或由宏量财富网站执行垫付。<br />
                        充值 ：<br />
                        宏量财富用户将自有资金充入宏量财富账户的操作。宏量财富与第三方支付公司进行合作，为用户提供便捷、专业的资金转移服务。<br />
                        第三方支付：<br />
                        所谓第三方支付，就是一些和产品所在国家以及国外各大银行签约、并具备一定实力和信誉保障的第三方独立机构提供的交易支持平台。在通过第三方支付平台的交易中，买方选购商品后，使用第三方平台提供的账户进行货款支付，由第三方通知卖家货款到达、进行发货；买方检验物品后，就可以通知付款给卖家，第三方再将款项转至卖家账户。<br />
                        罚息：<br />
                        当借款人的借款逾期时，宏量财富会对借款人征收额外的利息作为惩罚，这部分利息即为罚息。罚息的计算公式为：非净值贷罚息总额 = 逾期本息×0.8%×逾期天数；净值贷罚息总额 = 逾期本息×0.05%×逾期天数<br />
                        年化利率：<br />
                        指把当前收益率（日收益率、周收益率、月收益率）换算成年从而得出的收益率。如果一个借款人标明的年化收益率是13.2%，而其仅借款6个月，则到期年化收益率为6.6%。<br />
                        实名认证：<br />
                        为了确保您的资金安全，同时也为了确认借款人的身份，宏量财富对用户实行实名认证。对于投资人来说，当投资人第一次充值的时候就会触发实名认证。对于借款人来说，实名认证是借款人借款流程不可缺少的一步。<br />
                    </p>
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