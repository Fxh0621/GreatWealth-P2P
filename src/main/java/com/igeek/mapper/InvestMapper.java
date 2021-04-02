package com.igeek.mapper;

import com.igeek.entity.AccountInvest;
import com.igeek.entity.Invest;
import com.igeek.entity.InvestInfromation;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InvestMapper {
    int deleteByPrimaryKey(Integer investid);

    int insert(Invest record);

    Invest selectByPrimaryKey(Integer investid);

    List<Invest> selectAll();

    int updateByPrimaryKey(Invest record);

    double totalInvest();

    //投资表格业务
    List<AccountInvest> selectAccountInvest(Integer userId);

    //invest的相关信息 通过investTimeType
    List<InvestInfromation> getInvestInfromation(Integer investtimetype);

    //人均投资金额
    Double avgPerson();
    //笔均投资金额
    Double avgPen(Integer investtimetype);

    //插入invest
    void insertInvest(Invest invest);

    //查询投资表的总的投资利息
    Double getAllInvestInterest(Integer userid);
}