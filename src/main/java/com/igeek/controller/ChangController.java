package com.igeek.controller;

import com.igeek.entity.User;
import com.igeek.service.ChangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/6 0006 11:00
 */
@Controller
public class ChangController {

    @Autowired
    private ChangeService changeService;

    @RequestMapping("/changView")
    public String changView(String username, String password, String phoneNum, File file, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        Integer userid = user.getUserid();

        //头像名
        String headerpic = file.getName();
        headerpic = "/pic/" + headerpic;
        //通过用户id更新用户的相关信息
        user.setUsername(username);
        user.setPassword(password);
        user.setPhonenum(phoneNum);
        user.setHeaderpic(headerpic);

        changeService.updateUserInfromation(user);

        //更新session中的user
        User user1 = changeService.getUserById(userid);
        session.removeAttribute("user");
        session.setAttribute("user",user1);

        session.setAttribute("updateSuccess","更新用户信息成功!");
        return "redirect:html/chang.jsp";
    }

}
 
  