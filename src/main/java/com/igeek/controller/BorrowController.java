package com.igeek.controller;

import com.igeek.entity.Borrow;
import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/5 0005 18:56
 */
@Controller
public class BorrowController {


    @Autowired
    private BorrowService borrowService;

    //散标 10000起投
    @RequestMapping("/borrowdays")
    public String borrowdays(String personId1,Double money1,Integer days,String phoneNum1,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user!=null){

            if (money1>=10000){

                Integer userId = user.getUserid();
                String personid = user.getPersonid();
                String phonenum = user.getPhonenum();

                if (phonenum.equals(phoneNum1)){
                    if (personid==null){
                        //更新用户的身份证信息
                        borrowService.updatePersonId(userId,personId1);

                    }

                    //获取散标的利率  通过borrowtypesid = 1 得到borrowrate
                    Double borrowRate = borrowService.getBorrowRate(1);
                    //计算得到 借款利息
                    Double lixi = borrowRate *  money1 * days;

                    //获取用户所有的贷款（旧）
                    Double allBorrowInterest = borrowService.getAllBorrowInterest(userId);

                    //计算新的贷款
                    allBorrowInterest = allBorrowInterest + lixi;

                    //更新用户的贷款利息(新) 和用户的余额
                    user.setBalance(user.getBalance()+money1);
                    user.setBorrowallinterest(allBorrowInterest);
                    borrowService.updateUser(user);


                    Borrow borrow = new Borrow();
                    borrow.setBorrowtime(days);
                    borrow.setBorrowmoney(money1);
                    borrow.setBorrowinterest(lixi);
                    borrow.setUserid(userId);
                    borrow.setBorrowtypesid(1);

                    //插入借款信息
                    borrowService.insertBorrow(borrow);

                    session.setAttribute("success1","投资成功!");
                    return "redirect:html/borrow.jsp";
                }

                session.setAttribute("fail1","这不是你的账户，不能投资");
                //跳转到借贷界面
                return "redirect:html/borrow.jsp";
            }

            //起贷金额不足
            session.setAttribute("lowMoney1","起贷金额不足");
            return "redirect:html/borrow.jsp";

        }

        //跳转到登录界面
        return "login";
    }

    //标准标  8000起贷
    @RequestMapping("/borrowmonths")
    public String borrowmonths(String personId2,Double money2,Integer months,String phoneNum2,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user!=null){

            if (money2>=8000){
                Integer userId = user.getUserid();
                String personid = user.getPersonid();
                String phonenum = user.getPhonenum();

                if (phonenum.equals(phoneNum2)){
                    if (personid==null){
                        //更新用户的身份证信息
                        borrowService.updatePersonId(userId,personId2);
                    }

                    //获取散标的利率  通过borrowtypesid = 1 得到borrowrate
                    Double borrowRate = borrowService.getBorrowRate(2);
                    //计算得到 借款利息
                    Double lixi = borrowRate *  money2 * months;

                    //获取用户所有的贷款（旧）
                    Double allBorrowInterest = borrowService.getAllBorrowInterest(userId);

                    //计算新的贷款
                    allBorrowInterest = allBorrowInterest + lixi;

                    //更新用户的贷款利息(新) 和用户的余额
                    user.setBalance(user.getBalance()+money2);
                    user.setBorrowallinterest(allBorrowInterest);
                    borrowService.updateUser(user);

                    Borrow borrow = new Borrow();
                    borrow.setBorrowtime(months);
                    borrow.setBorrowmoney(money2);
                    borrow.setBorrowinterest(lixi);
                    borrow.setUserid(userId);
                    borrow.setBorrowtypesid(2);

                    borrowService.insertBorrow(borrow);
                    session.setAttribute("success2","投资成功!");
                    return "redirect:html/borrow.jsp";
                }

                session.setAttribute("fail2","这不是你的账户，不能投资");
                return "redirect:html/borrow.jsp";
            }

            //起贷金额不足
            session.setAttribute("lowMoney2","起贷金额不足");
            return "redirect:html/borrow.jsp";

        }

        //跳转到登录界面
        return "login";
    }


}
 
  