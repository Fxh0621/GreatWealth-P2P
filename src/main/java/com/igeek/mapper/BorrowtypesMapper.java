package com.igeek.mapper;

import com.igeek.entity.Borrowtypes;
import java.util.List;

public interface BorrowtypesMapper {
    int deleteByPrimaryKey(Integer borrowtypesid);

    int insert(Borrowtypes record);

    Borrowtypes selectByPrimaryKey(Integer borrowtypesid);

    List<Borrowtypes> selectAll();

    int updateByPrimaryKey(Borrowtypes record);
}