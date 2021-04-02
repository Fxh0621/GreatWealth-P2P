package com.igeek.controller;

import com.google.gson.Gson;
import com.igeek.entity.BorrowHigh;
import com.igeek.entity.ProfiHigh;
import com.igeek.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/2 0002 20:26
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    @RequestMapping("/viewIndex")
    @ResponseBody
    public Map<String,Object> viewIndex(){
        //网站总人数
        Integer count = indexService.registerCount();
        //网站运行天数
        Long days = indexService.runDays();
        //累计投资金额
        Double totalInvest = indexService.totalInvest();
        //累计收益
        Double totalProfit = indexService.totalProfit();

        Map<String,Object> map = new HashMap<>();
        map.put("count",count);
        map.put("days",days);
        map.put("totalInvest",totalInvest);
        map.put("totalProfit",totalProfit);
        return map;
    }

    @RequestMapping("/viewIndexProfiRank")
    @ResponseBody
    public List<ProfiHigh> viewIndexProfiRank(){
        List<ProfiHigh> profiHighs = indexService.profiRank();
        return profiHighs;
    }

    @RequestMapping("/viewIndexBorrowRank")
    @ResponseBody
    public List<BorrowHigh> viewIndexBorrowRank(){
        List<BorrowHigh> borrowHighs = indexService.borrowRank();
        return borrowHighs;
    }

}
 
  