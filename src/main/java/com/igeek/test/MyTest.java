package com.igeek.test;

import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/8 0008 21:39
 */
public class MyTest {

    @Test
    public void Test(){
        Date investintime = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        System.out.println(investintime.getTime());
        Date investouttime = new Date(investintime.getTime() - 30 * 24 * 3600 * 1000 * 18);
        System.out.println(investouttime.getTime());
    }

}
 
  