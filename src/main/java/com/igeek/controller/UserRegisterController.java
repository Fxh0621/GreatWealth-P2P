package com.igeek.controller;

import com.igeek.entity.User;
import com.igeek.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/1 0001 19:12
 */
@Controller
public class UserRegisterController {

    @Autowired
    private UserRegisterService userRegisterService;

    //注册
    @RequestMapping("/register")
    public String register(String username,String password,String phoneNumber){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setPhonenum(phoneNumber);
        Date date = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
        df.format(date);
        user.setRegistertime(date);
        user.setBalance(0.0);
        user.setHeaderpic("/pic/touxiang1.png");
        user.setInvestallinterest(0.0);
        user.setBorrowallinterest(0.0);
        userRegisterService.userRigster(user);
        return "register2";
    }

}
 
  