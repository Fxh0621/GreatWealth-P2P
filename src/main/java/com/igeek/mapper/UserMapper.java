package com.igeek.mapper;

import com.igeek.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    User selectByPrimaryKey(Integer userid);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

    User selectByUsernamePassword(@Param("username") String username,@Param("password") String password);

    //注册总人数
    int selectUserCount();

    //总收益
    double totalProfit();

    //收益排行
    List<ProfiHigh> profiRank();

    //投资排行
    List<BorrowHigh> borrowRank();

    //投资记录

    List<AccountInvest> accountInvestList(Integer userid);

    //借贷记录
    List<AccountBorrow> accountBorrowList(Integer userid);

    //充值记录
    List<Recharge> accountRechargeList(Integer userid);

    //更新user表中的身份证的信息（插入数据到其中）
    void updatePersonId(@Param("personid") String personId,@Param("userid")Integer userid);

    //更新用户的贷款信息
    void updateAllBorrowInterset(@Param("userid") Integer userid,@Param("borrowallinterest")Double borrowallinterest);

    //更新用户的所有信息
    void updateUserInformation(User user);
}