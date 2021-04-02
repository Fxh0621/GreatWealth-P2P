package com.igeek.service.impl;

import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.ChangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/8 0008 15:22
 */
@Service
public class ChangeServiceImpl implements ChangeService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public void updateUserInfromation(User user) {
        userMapper.updateUserInformation(user);
    }

    @Override
    public User getUserById(Integer userid) {
        User user = userMapper.selectByPrimaryKey(userid);
        return user;
    }
}
 
  