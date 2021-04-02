package com.igeek.service;

import com.igeek.entity.Borrow;
import com.igeek.entity.User;

public interface BorrowService {

    //获取利率的方法
    Double getBorrowRate(Integer borrowTypesId);

    //插入数据的方法
    void insertBorrow(Borrow borrow);

    //更新用户的身份证号
    void updatePersonId(Integer userId,String personId);

    //查询用户所有的贷款
    Double getAllBorrowInterest(Integer userId);

    //更新用户的贷款利息
    void updateBorrowAllInterest(Integer userId ,Double borrowallinterest);

    //更新用户的信息
    void updateUser(User user);
}
