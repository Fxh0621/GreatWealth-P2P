package com.igeek.service.impl;

import com.igeek.entity.Borrow;
import com.igeek.entity.User;
import com.igeek.mapper.BorrowMapper;
import com.igeek.mapper.UserMapper;
import com.igeek.service.BorrowService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/5 0005 19:36
 */
@Service
public class BorrowServiceImpl implements BorrowService {

    @Autowired
    private BorrowMapper borrowMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public Double getBorrowRate(Integer borrowTypesId) {
        double borrowRate = borrowMapper.getBorrowRate(borrowTypesId);
        return borrowRate;
    }

    @Override
    @Transactional
    public void insertBorrow(Borrow borrow) {
         borrowMapper.insert(borrow);
    }

    @Override
    @Transactional
    public void updatePersonId(Integer userId, String personId) {
        userMapper.updatePersonId(personId,userId);
    }

    @Override
    public Double getAllBorrowInterest(Integer userId) {
        Double allBorrowInterest = borrowMapper.getAllBorrowInterest(userId);
        return allBorrowInterest;
    }

    @Override
    @Transactional
    public void updateBorrowAllInterest(Integer userId, Double borrowallinterest) {
        userMapper.updateAllBorrowInterset(userId,borrowallinterest);
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }
}
 
  