package com.igeek.controller;

import com.github.pagehelper.PageInfo;
import com.igeek.entity.Borrow;
import com.igeek.entity.User;
import com.igeek.service.RepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/23 0023 22:01
 */
@Controller
public class RepaymentController {

    @Autowired
    private RepaymentService repaymentService;

    //查询所有的borrow信息
    @RequestMapping("/viewAllBorrow")
    public String viewAllBorrow(@RequestParam(value = "pageNum",required = true,defaultValue = "1") int pageNum,
                                @RequestParam(value = "pageSize",required = true,defaultValue = "5")int pageSize,
                                HttpServletRequest request, Model model){

        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");

        Integer userid = user.getUserid();

        List<Borrow> allAccountBorrow = repaymentService.findAllAccountBorrow(userid, pageNum, pageSize);

        PageInfo<Borrow> pageInfo = new PageInfo<>(allAccountBorrow);

        model.addAttribute("pageInfo",pageInfo);

        return "repayment";
    }

    //还款功能
    @RequestMapping("/repaymentFunction")
    public String repaymentFunction(Integer borrowid,Double borrowmoney,Double borrowinterest,HttpServletRequest request){

        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Double balance = user.getBalance();

        //账户中余额充足的情况
        if (balance>=(borrowmoney+borrowinterest)){
            repaymentService.deleteBorrow(borrowid);
            return "redirect:viewAllBorrow";
        }

        //账户中余额不充足的情况
        String info_msg = "账户余额不足！！";
        session.setAttribute("info_msg",info_msg);
        return "redirect:viewAllBorrow";
    }

}
 
  