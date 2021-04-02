package com.igeek.mapper;

import com.igeek.entity.Borrow;
import java.util.List;

public interface BorrowMapper {
    int deleteByPrimaryKey(Integer borrowid);

    int insert(Borrow record);

    Borrow selectByPrimaryKey(Integer borrowid);

    List<Borrow> selectAll();

    int updateByPrimaryKey(Borrow record);

    //通过id 获得 利率
    double getBorrowRate(Integer borrowId);

    //通过用户id 得到用户的所有贷款利息
    double getAllBorrowInterest(Integer userId);

    //通过用户id查询借款详情
    List<Borrow> getAllBorrowById(Integer userid);
}