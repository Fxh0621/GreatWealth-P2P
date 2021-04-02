package com.igeek.controller;

import com.igeek.entity.User;
import com.igeek.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/1 0001 19:31
 */
@Controller
public class UserLoginController {

    @Autowired
    private UserLoginService userLoginService;

    @RequestMapping("/login")
    public String login(String username, String password,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = userLoginService.userLogin(username, password);
        if (user!=null){
            session.setAttribute("user",user);
            return "index";
        }else {
            request.setAttribute("msg","用户名或者密码错误！");
            return "login";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "index";
    }

}
 
  