package com.igeek.service;

import com.igeek.entity.AccountBorrow;
import com.igeek.entity.AccountInvest;
import com.igeek.entity.Recharge;
import com.igeek.utils.PageInfo;

import java.util.List;

public interface UserAccountService {

    //投资记录

    PageInfo<AccountInvest> accountInvestList(Integer userid,Integer page,Integer limit);

    //借贷记录
    PageInfo<AccountBorrow> accountBorrowList(Integer userid,Integer page,Integer limit);

    //充值记录
    PageInfo<Recharge> accountRechargeList(Integer userid,Integer page,Integer limit);

}
