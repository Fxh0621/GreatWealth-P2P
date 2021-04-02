package com.igeek.controller;

import com.igeek.entity.Recharge;
import com.igeek.entity.User;
import com.igeek.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/9 0009 18:00
 */
@Controller
public class PayController {

    @Autowired
    private PayService payService;

    //充值 (更新用户的账户余额) 在充值表中插入新的数据
    @RequestMapping("/payView")
    public String payView(Double payMoney,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Integer userid = user.getUserid();
        Double balance = user.getBalance();

        balance  += payMoney;

        user.setBalance(balance);




        Recharge recharge = new Recharge();
        recharge.setRemoney(payMoney);
        recharge.setUserid(userid);
        Date date = new Date();
        recharge.setRetime(date);
        //充值表中插入数据
        payService.insertRecharge(recharge);

        //更新用户的账户余额
        payService.updateUser(user);

        //移除session中旧的user
        session.removeAttribute("user");

        //添加新的user到session中
        session.setAttribute("user",user);

        //获取id
        int lastInsertId = payService.getLastInsertId();

        request.setAttribute("payMoney",payMoney);
        request.setAttribute("lastInsertId",lastInsertId);
        return "alipay.trade.page.pay";
    }


}
 
  