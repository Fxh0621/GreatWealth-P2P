package com.igeek.service.impl;

import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.UserRegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/1 0001 19:07
 */
@Service
@Transactional
public class UserRegisterServiceImpl implements UserRegisterService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void userRigster(User user) {
        if (user!=null){
           userMapper.insert(user);
        }
    }
}
 
  