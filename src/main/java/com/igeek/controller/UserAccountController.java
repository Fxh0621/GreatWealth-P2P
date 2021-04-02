package com.igeek.controller;

import com.igeek.entity.AccountBorrow;
import com.igeek.entity.AccountInvest;
import com.igeek.entity.Recharge;
import com.igeek.entity.User;
import com.igeek.service.UserAccountService;
import com.igeek.utils.PageInfo;
import com.igeek.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/4 0004 19:02
 */
@RestController
public class UserAccountController {

    @Autowired
    private UserAccountService userAccountService;


    @RequestMapping("/viewAccountInvest")
    public Result viewAccountInvest(Integer page,Integer limit,HttpSession session){
        User user = (User) session.getAttribute("user");
        if (user!=null){
            Integer userid = user.getUserid();
            PageInfo<AccountInvest> pageInfo = userAccountService.accountInvestList(userid, page, limit);
            Result result = new Result();
            result.setData(pageInfo);
            return result;
        }
        return null;
    }

    @RequestMapping("/viewAccountBorrow")
    public Result viewAccountBorrow(Integer page,Integer limit,HttpSession session){
        User user = (User) session.getAttribute("user");

        if (user!=null){
            Integer userid = user.getUserid();
            PageInfo<AccountBorrow> pageInfo = userAccountService.accountBorrowList(userid, page, limit);
            Result result = new Result();
            result.setData(pageInfo);
            return result;
        }

        return null;
    }

    @RequestMapping("/viewAccountRecharge")
    public Result viewAccountRecharge(Integer page,Integer limit,HttpSession session){
        User user = (User) session.getAttribute("user");

        if (user!=null){
            Integer userid = user.getUserid();
            PageInfo<Recharge> pageInfo = userAccountService.accountRechargeList(userid, page, limit);
            Result result = new Result();
            result.setData(pageInfo);
            return result;
        }

        return null;
    }

}
 
  