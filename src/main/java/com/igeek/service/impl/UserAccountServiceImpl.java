package com.igeek.service.impl;

import com.github.pagehelper.PageHelper;
import com.igeek.entity.AccountBorrow;
import com.igeek.entity.AccountInvest;
import com.igeek.entity.Recharge;
import com.igeek.entity.User;
import com.igeek.mapper.UserMapper;
import com.igeek.service.UserAccountService;
import com.igeek.utils.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/4 0004 18:39
 */
@Service
public class UserAccountServiceImpl implements UserAccountService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public PageInfo<AccountInvest> accountInvestList(Integer userid,Integer page,Integer limit) {
        PageHelper.startPage(page,2);
        List<AccountInvest> accountInvests = userMapper.accountInvestList(userid);
        com.github.pagehelper.PageInfo<AccountInvest> pages = new com.github.pagehelper.PageInfo<>(accountInvests);
        PageInfo<AccountInvest> info = new PageInfo<>();
        info.setPage(page);
        info.setTotal((int) pages.getTotal());
        info.setData(pages.getList());
        info.setLimit(limit);
        info.setTotalPage(pages.getPages());
        return info;
    }

    @Override
    public PageInfo<AccountBorrow> accountBorrowList(Integer userid,Integer page,Integer limit) {
        PageHelper.startPage(page,2);
        List<AccountBorrow> accountBorrows = userMapper.accountBorrowList(userid);
        com.github.pagehelper.PageInfo<AccountBorrow> pages = new com.github.pagehelper.PageInfo<>(accountBorrows);
        PageInfo<AccountBorrow> info = new PageInfo<>();
        info.setPage(page);
        info.setTotal((int) pages.getTotal());
        info.setData(pages.getList());
        info.setLimit(limit);
        info.setTotalPage(pages.getPages());
        return info;
    }

    @Override
    public PageInfo<Recharge> accountRechargeList(Integer userid, Integer page, Integer limit) {
        PageHelper.startPage(page,2);
        List<Recharge> recharges = userMapper.accountRechargeList(userid);
        com.github.pagehelper.PageInfo<Recharge> pages = new com.github.pagehelper.PageInfo<>(recharges);
        PageInfo<Recharge> info = new PageInfo<>();
        info.setPage(page);
        info.setTotal((int) pages.getTotal());
        info.setData(pages.getList());
        info.setLimit(limit);
        info.setTotalPage(pages.getPages());
        return info;
    }
}
 
  