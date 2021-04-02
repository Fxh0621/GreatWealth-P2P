package com.igeek.service.impl;

import com.github.pagehelper.PageHelper;
import com.igeek.entity.AccountBorrow;
import com.igeek.entity.Borrow;
import com.igeek.mapper.BorrowMapper;
import com.igeek.mapper.BorrowtypesMapper;
import com.igeek.mapper.UserMapper;
import com.igeek.service.RepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/23 0023 21:38
 */
@Service
public class RepaymentServiceImpl implements RepaymentService {

    @Autowired
    private BorrowMapper borrowMapper;
    @Override
    public List<Borrow> findAllAccountBorrow(Integer id, int pageNum, int pageSize) {

        PageHelper.startPage(pageNum, pageSize);

        List<Borrow> allBorrowById = borrowMapper.getAllBorrowById(id);

        return allBorrowById;
    }

    //删除贷款信息
    @Override
    public void deleteBorrow(Integer borrowid) {
        borrowMapper.deleteByPrimaryKey(borrowid);
    }
}
 
  