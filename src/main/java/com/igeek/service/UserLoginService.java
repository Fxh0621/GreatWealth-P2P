package com.igeek.service;

import com.igeek.entity.User;

public interface UserLoginService {

    //用户登录
    public User userLogin(String username, String password);

}
