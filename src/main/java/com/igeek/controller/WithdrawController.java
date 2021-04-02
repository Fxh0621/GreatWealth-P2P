package com.igeek.controller;

import com.igeek.entity.User;
import com.igeek.service.WithdrawService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/9 0009 20:47
 */
@Controller
public class WithdrawController {
    @Autowired
    private WithdrawService withdrawService;

    @RequestMapping("/withdrawView")
    public String withdrawView(Double withdrawMoney,String password, HttpServletRequest request, RedirectAttributes redirectAttributes){

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        Double balance = user.getBalance();
        String password1 = user.getPassword();

        if (password1.equals(password)){
            balance -= withdrawMoney;

            user.setBalance(balance);

            //更新数据库中的信息
            withdrawService.updateUserBalance(user);

            //更新session中的user
            session.removeAttribute("user");
            session.setAttribute("user",user);

            //提现成功
            session.setAttribute("withdrawSuccess","提现成功");
            return "redirect:html/withdraw.jsp";

        }

        session.setAttribute("withdrawFail","密码错误，提现失败!");
        return "redirect:html/withdraw.jsp";
    }

}
 
  