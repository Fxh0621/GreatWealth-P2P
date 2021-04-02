package com.igeek.service.impl;

import com.igeek.entity.BorrowHigh;
import com.igeek.entity.ProfiHigh;
import com.igeek.mapper.InvestMapper;
import com.igeek.mapper.UserMapper;
import com.igeek.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/2 0002 20:16
 */
@Service
@Transactional
public class IndexServiceImpl implements IndexService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private InvestMapper investMapper;


    @Override
    public Double totalInvest() {
        double totalInvest = investMapper.totalInvest();
        return totalInvest;
    }

    @Override
    public Double totalProfit() {
        double totalProfit = userMapper.totalProfit();
        return totalProfit;
    }

    @Override
    public Long runDays() {
        //获取当前时间
        Date date = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date oneDay = null;
        try {
            oneDay = sdf.parse("2020-12-31");
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long days = Math.abs(((date.getTime()-oneDay.getTime()))/(1000*60*60*24));

        return days;
    }

    //注册总人数
    @Override
    public Integer registerCount() {
        int count = userMapper.selectUserCount();
        return count;
    }

    @Override
    public List<ProfiHigh> profiRank() {
        List<ProfiHigh> profiHighs = userMapper.profiRank();
        return profiHighs;
    }

    @Override
    public List<BorrowHigh> borrowRank() {
        List<BorrowHigh> borrowHighs = userMapper.borrowRank();
        return borrowHighs;
    }
}
 
  