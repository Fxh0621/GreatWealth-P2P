package com.igeek.service;

import com.igeek.entity.User;

public interface ChangeService {

    //更新用户的信息
    void updateUserInfromation(User user);
    //通过userid获取用户
    User getUserById(Integer userid);
}
