package com.igeek.controller;

import com.igeek.entity.Invest;
import com.igeek.entity.InvestInfromation;
import com.igeek.entity.User;
import com.igeek.service.IndexService;
import com.igeek.service.InvestService;
import com.sun.org.apache.bcel.internal.generic.IF_ACMPEQ;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/8 0008 16:42
 */
@Controller
public class InvestController {
    @Autowired
    private InvestService investService;

    //投资1个月
    @RequestMapping("/inverstOneMonth")
    @ResponseBody
    public List<InvestInfromation> inverstOneMonth(){
        List<InvestInfromation> investInfromations = investService.selectInvestInformation( 1);
        return investInfromations;
    }

    //投资3个月
    @RequestMapping("/inverstThreeMonth")
    @ResponseBody
    public List<InvestInfromation> inverstThreeMonth(){
        List<InvestInfromation> investInfromations = investService.selectInvestInformation( 3);
        return investInfromations;
    }

    //投资6个月
    @RequestMapping("/inverstSixMonth")
    @ResponseBody
    public List<InvestInfromation> inverstSixMonth(){
        List<InvestInfromation> investInfromations = investService.selectInvestInformation( 6);
        return investInfromations;
    }

    //投资12个月
    @RequestMapping("/inverstTwelveMonth")
    @ResponseBody
    public List<InvestInfromation> inverstTwelveMonth(){
        List<InvestInfromation> investInfromations = investService.selectInvestInformation( 12);
        return investInfromations;
    }

    //投资18个月
    @RequestMapping("/inverstEighteenMonth")
    @ResponseBody
    public List<InvestInfromation> inverstEighteenMonth(){
        List<InvestInfromation> investInfromations = investService.selectInvestInformation( 18);
        return investInfromations;
    }


    //1个月的均投资信息
    @RequestMapping("/avgOneMonth")
    @ResponseBody
    public Map<String,Double> avgOneMonth(){
        Map<String,Double> map = new HashMap<>();
        Double avgPerson = investService.getAvgPerson();
        Double avgPen = investService.getAvgPen(1);
        map.put("avgPerson",avgPerson);
        map.put("avgPen",avgPen);
        return map;
    }

    //3个月的均投资信息
    @RequestMapping("/avgThreeMonth")
    @ResponseBody
    public Map<String,Double> avgThreeMonth(){
        Map<String,Double> map = new HashMap<>();
        Double avgPerson = investService.getAvgPerson();
        Double avgPen = investService.getAvgPen(3);
        map.put("avgPerson",avgPerson);
        map.put("avgPen",avgPen);
        return map;
    }

    //6个月的均投资信息
    @RequestMapping("/avgSixMonth")
    @ResponseBody
    public Map<String,Double> avgSixMonth(){
        Map<String,Double> map = new HashMap<>();
        Double avgPerson = investService.getAvgPerson();
        Double avgPen = investService.getAvgPen(6);
        map.put("avgPerson",avgPerson);
        map.put("avgPen",avgPen);
        return map;
    }

    //12个月的均投资信息
    @RequestMapping("/avgTwelveMonth")
    @ResponseBody
    public Map<String,Double> avgTwelveMonth(){
        Map<String,Double> map = new HashMap<>();
        Double avgPerson = investService.getAvgPerson();
        Double avgPen = investService.getAvgPen(12);
        map.put("avgPerson",avgPerson);
        map.put("avgPen",avgPen);
        return map;
    }

    //18个月的均投资信息
    @RequestMapping("/avgEighteenMonth")
    @ResponseBody
    public Map<String,Double> avgEighteenMonth(){
        Map<String,Double> map = new HashMap<>();
        Double avgPerson = investService.getAvgPerson();
        Double avgPen = investService.getAvgPen(18);
        map.put("avgPerson",avgPerson);
        map.put("avgPen",avgPen);
        return map;
    }

    //开始投资  投资1个月
    @RequestMapping("/insertInvestOneMonth")
    public String insertInvestOneMonth(Double investmoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();
        if (user!=null){

            if (investmoney!=null && investmoney>=2000 && balance>=investmoney){
                Integer userid = user.getUserid();

                Invest invest = new Invest();

                Date investintime = new Date();
                Date investouttime = new Date(investintime.getTime()-30*24*3600*1000);
                System.out.println(investouttime);

                Double investinterest = (investmoney * 0.095)/12;

                invest.setInvestintime(investintime);
                invest.setInvestouttime(investouttime);
                invest.setInvestmoney(investmoney);
                invest.setInvestinterest(investinterest);
                invest.setUserid(userid);
                invest.setInvesttypesid(1);

                //插入数据到数据库中
                investService.insertInvest(invest);
                //插入成功
                session.setAttribute("investSuccess","恭喜您投资成功！");

                //获取用户所有的投资利息（旧）
                Double allInvestInterest = investService.getAllInvestInterest(userid);
                //用户所有的投资利息
                allInvestInterest += investinterest;
                //更新用户的投资利息
                user.setInvestallinterest(allInvestInterest);
                user.setBalance(balance-investmoney);
                investService.updateUser(user);

                //更新user
                session.removeAttribute("user");
                //通过userid获取user对象
                User user1 = investService.getUserById(userid);
                session.setAttribute("user",user1);

                return "redirect:html/investMonth1.jsp";
            }

            //起投金额不足
            session.setAttribute("investfail","起投的金额不足2000或您的余额不足！");
            return "redirect:html/investMonth1.jsp";

        }

        //没有登录的话就跳转到登录界面
        return "login";

    }



    //开始投资  投资3个月
    @RequestMapping("/insertInvestThreeMonth")
    public String insertInvestThreeMonth(Double investmoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();

        if (user!=null){

            if (investmoney!=null && investmoney>=2000 && balance>=investmoney){
                Integer userid = user.getUserid();

                Invest invest = new Invest();

                Date investintime = new Date();
                Date investouttime = new Date(investintime.getTime()-30*24*3600*1000*3);
                System.out.println(investouttime);

                Double investinterest = (investmoney * 0.08)/4;

                invest.setInvestintime(investintime);
                invest.setInvestouttime(investouttime);
                invest.setInvestmoney(investmoney);
                invest.setInvestinterest(investinterest);
                invest.setUserid(userid);
                invest.setInvesttypesid(2);

                //插入数据到数据库中
                investService.insertInvest(invest);
                //插入成功
                session.setAttribute("investSuccess3","恭喜您投资成功！");

                //获取用户所有的投资利息（旧）
                Double allInvestInterest = investService.getAllInvestInterest(userid);
                //用户所有的投资利息
                allInvestInterest += investinterest;
                //更新用户的投资利息
                user.setInvestallinterest(allInvestInterest);
                user.setBalance(balance-investmoney);
                investService.updateUser(user);

                //更新user
                session.removeAttribute("user");
                //通过userid获取user对象
                User user1 = investService.getUserById(userid);
                session.setAttribute("user",user1);

                return "redirect:html/investMonth3.jsp";
            }

            //起投金额不足
            session.setAttribute("investfail3","起投的金额不足2000");
            return "redirect:html/investMonth3.jsp";

        }

        //没有登录的话就跳转到登录界面
        return "login";

    }


    //开始投资  投资6个月
    @RequestMapping("/insertInvestSixMonth")
    public String insertInvestSixMonth(Double investmoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();

        if (user!=null){

            if (investmoney!=null && investmoney>=2000 && balance>=investmoney){
                Integer userid = user.getUserid();

                Invest invest = new Invest();

                Date investintime = new Date();
                Date investouttime = new Date(investintime.getTime()-30*24*3600*1000*6);
                System.out.println(investouttime);

                Double investinterest = (investmoney * 0.075)/2;

                invest.setInvestintime(investintime);
                invest.setInvestouttime(investouttime);
                invest.setInvestmoney(investmoney);
                invest.setInvestinterest(investinterest);
                invest.setUserid(userid);
                invest.setInvesttypesid(3);

                //插入数据到数据库中
                investService.insertInvest(invest);
                //插入成功
                session.setAttribute("investSuccess6","恭喜您投资成功！");

                //获取用户所有的投资利息（旧）
                Double allInvestInterest = investService.getAllInvestInterest(userid);
                //用户所有的投资利息
                allInvestInterest += investinterest;
                //更新用户的投资利息
                user.setInvestallinterest(allInvestInterest);
                user.setBalance(balance-investmoney);
                investService.updateUser(user);

                //更新user
                session.removeAttribute("user");
                //通过userid获取user对象
                User user1 = investService.getUserById(userid);
                session.setAttribute("user",user1);

                return "redirect:html/investMonth6.jsp";
            }

            //起投金额不足
            session.setAttribute("investfail6","起投的金额不足2000");
            return "redirect:html/investMonth6.jsp";

        }

        //没有登录的话就跳转到登录界面
        return "login";

    }

    //开始投资  投资12个月
    @RequestMapping("/insertInvestTwelveMonth")
    public String insertInvestTwelveMonth(Double investmoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();

        if (user!=null){

            if (investmoney!=null && investmoney>=2000 && balance>=investmoney){
                Integer userid = user.getUserid();

                Invest invest = new Invest();

                Date investintime = new Date();
                Date investouttime = new Date(investintime.getTime()-30*24*3600*1000*12);
                System.out.println(investouttime);

                Double investinterest = investmoney * 0.095;

                invest.setInvestintime(investintime);
                invest.setInvestouttime(investouttime);
                invest.setInvestmoney(investmoney);
                invest.setInvestinterest(investinterest);
                invest.setUserid(userid);
                invest.setInvesttypesid(4);

                //插入数据到数据库中
                investService.insertInvest(invest);
                //插入成功
                session.setAttribute("investSuccess12","恭喜您投资成功！");

                //获取用户所有的投资利息（旧）
                Double allInvestInterest = investService.getAllInvestInterest(userid);
                //用户所有的投资利息
                allInvestInterest += investinterest;
                //更新用户的投资利息
                user.setInvestallinterest(allInvestInterest);
                user.setBalance(balance-investmoney);
                investService.updateUser(user);

                //更新user
                session.removeAttribute("user");
                //通过userid获取user对象
                User user1 = investService.getUserById(userid);
                session.setAttribute("user",user1);

                return "redirect:html/investMonth12.jsp";
            }

            //起投金额不足
            session.setAttribute("investfail12","起投的金额不足2000");
            return "redirect:html/investMonth12.jsp";

        }

        //没有登录的话就跳转到登录界面
        return "login";

    }


    //开始投资  投资18个月
    @RequestMapping("/insertInvestEighteenMonth")
    public String insertInvestEighteenMonth(Double investmoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();

        if (user!=null){

            if (investmoney!=null && investmoney>=2000 && balance>=investmoney){
                Integer userid = user.getUserid();

                Invest invest = new Invest();

                Date investintime = new Date();
                Date investouttime = new Date(investintime.getTime()-30*24*3600*1000*18);
                System.out.println(investouttime);

                Double investinterest = (investmoney * 0.096)*1.5;

                invest.setInvestintime(investintime);
                invest.setInvestouttime(investouttime);
                invest.setInvestmoney(investmoney);
                invest.setInvestinterest(investinterest);
                invest.setUserid(userid);
                invest.setInvesttypesid(5);

                //插入数据到数据库中
                investService.insertInvest(invest);
                //插入成功
                session.setAttribute("investSuccess18","恭喜您投资成功！");

                //获取用户所有的投资利息（旧）
                Double allInvestInterest = investService.getAllInvestInterest(userid);
                //用户所有的投资利息
                allInvestInterest += investinterest;
                //更新用户的投资利息
                user.setInvestallinterest(allInvestInterest);
                user.setBalance(balance-investmoney);
                investService.updateUser(user);

                //更新user
                session.removeAttribute("user");
                //通过userid获取user对象
                User user1 = investService.getUserById(userid);
                session.setAttribute("user",user1);

                return "redirect:html/investMonth18.jsp";
            }

            //起投金额不足
            session.setAttribute("investfail18","起投的金额不足2000");
            return "redirect:html/investMonth18.jsp";

        }

        //没有登录的话就跳转到登录界面
        return "login";

    }
}
 
  