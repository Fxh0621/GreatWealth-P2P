package com.igeek.service;

import com.igeek.entity.BorrowHigh;
import com.igeek.entity.ProfiHigh;

import java.util.List;

public interface IndexService {

    //累计投资金额
    public Double totalInvest();
    //累计收益
    public Double totalProfit();
    //网站的运行天数
    public Long runDays();
    //注册的人数
    public Integer registerCount();

    //收益排行
    public List<ProfiHigh> profiRank();

    //投资排行
    public List<BorrowHigh> borrowRank();

}
