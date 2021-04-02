package com.igeek.service;

import com.igeek.entity.AccountBorrow;
import com.igeek.entity.Borrow;

import java.util.List;

public interface RepaymentService {

    //获取所有的AccountBorrow
    List<Borrow> findAllAccountBorrow(Integer id, int pageNum, int pageSize);

    //删除贷款信息
    void deleteBorrow(Integer borrowid);

}
