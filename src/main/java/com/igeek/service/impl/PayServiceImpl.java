package com.igeek.service.impl;

import com.igeek.entity.Recharge;
import com.igeek.entity.User;
import com.igeek.mapper.RechargeMapper;
import com.igeek.mapper.UserMapper;
import com.igeek.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/9 0009 19:04
 */
@Service
public class PayServiceImpl implements PayService {

    @Autowired
    private RechargeMapper rechargeMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    @Transactional
    public void insertRecharge(Recharge recharge) {
        rechargeMapper.insert(recharge);
    }

    @Override
    public int getLastInsertId() {
        int lastInsertId = rechargeMapper.getLastInsertId();
        return lastInsertId;
    }

    @Override
    public void updateUser(User user) {
        userMapper.updateByPrimaryKey(user);
    }
}
 
  