package com.igeek.service;

import com.igeek.entity.Invest;
import com.igeek.entity.InvestInfromation;
import com.igeek.entity.User;

import java.util.List;

public interface InvestService {

    //从数据库中获取invest的相关信息
    List<InvestInfromation> selectInvestInformation(Integer investtimetype);

    //人均投资金额
    Double getAvgPerson();
    //笔均投资金额
    Double getAvgPen(Integer investtimetype);

    //通过userid获取user对象
    User getUserById(Integer userid);
    //插入invest
    void insertInvest(Invest invest);

    //更新用户信息
    void updateUser(User user);

    //获取userid的总投资利息
    Double getAllInvestInterest(Integer userid);
}
