package com.igeek.service.impl;

import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.WithdrawService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/9 0009 20:51
 */
@Service
@Transactional
public class WithdrawServiceImpl implements WithdrawService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void updateUserBalance(User user) {
        userMapper.updateByPrimaryKey(user);
    }
}
 
  