package com.igeek.mapper;

import com.igeek.entity.Investtypes;
import java.util.List;

public interface InvesttypesMapper {
    int deleteByPrimaryKey(Integer investtypesid);

    int insert(Investtypes record);

    Investtypes selectByPrimaryKey(Integer investtypesid);

    List<Investtypes> selectAll();

    int updateByPrimaryKey(Investtypes record);
}