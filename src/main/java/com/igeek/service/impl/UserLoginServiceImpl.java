package com.igeek.service.impl;

import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/1 0001 19:24
 */
@Service
@Transactional
public class UserLoginServiceImpl implements UserLoginService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User userLogin(String username, String password) {
        User user = userMapper.selectByUsernamePassword(username, password);
        return user;
    }
}
 
  