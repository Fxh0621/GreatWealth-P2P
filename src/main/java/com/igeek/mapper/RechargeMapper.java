package com.igeek.mapper;

import com.igeek.entity.Recharge;
import java.util.List;

public interface RechargeMapper {
    int deleteByPrimaryKey(Integer reid);

    int insert(Recharge record);

    Recharge selectByPrimaryKey(Integer reid);

    List<Recharge> selectAll();

    int updateByPrimaryKey(Recharge record);

    int getLastInsertId();
}