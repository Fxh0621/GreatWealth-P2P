package com.igeek.service;

import com.igeek.entity.Recharge;
import com.igeek.entity.User;

public interface PayService {

    //插入新的数据
    void insertRecharge(Recharge recharge);

    //获取插入数据的id
    int getLastInsertId();

    //更新用户信息
    void updateUser(User user);

}
