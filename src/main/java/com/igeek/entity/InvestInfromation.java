package com.igeek.entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/8 0008 16:46
 */
public class InvestInfromation {

    private String username;
    private String phonenum;
    private Date investintime;
    private Date investouttime;
    private Double investmoney;
    private Double investinterest;


    public InvestInfromation() {
    }

    public InvestInfromation(String username, String phonenum, Date investintime, Date investouttime, Double investmoney, Double investinterest) {
        this.username = username;
        this.phonenum = phonenum;
        this.investintime = investintime;
        this.investouttime = investouttime;
        this.investmoney = investmoney;
        this.investinterest = investinterest;
    }

    /**
     * 获取
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取
     * @return phonenum
     */
    public String getPhonenum() {
        return phonenum;
    }

    /**
     * 设置
     * @param phonenum
     */
    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    /**
     * 获取
     * @return investintime
     */
    public Date getInvestintime() {
        return investintime;
    }

    /**
     * 设置
     * @param investintime
     */
    public void setInvestintime(Date investintime) {
        this.investintime = investintime;
    }

    /**
     * 获取
     * @return investouttime
     */
    public Date getInvestouttime() {
        return investouttime;
    }

    /**
     * 设置
     * @param investouttime
     */
    public void setInvestouttime(Date investouttime) {
        this.investouttime = investouttime;
    }

    /**
     * 获取
     * @return investmoney
     */
    public Double getInvestmoney() {
        return investmoney;
    }

    /**
     * 设置
     * @param investmoney
     */
    public void setInvestmoney(Double investmoney) {
        this.investmoney = investmoney;
    }

    /**
     * 获取
     * @return investinterest
     */
    public Double getInvestinterest() {
        return investinterest;
    }

    /**
     * 设置
     * @param investinterest
     */
    public void setInvestinterest(Double investinterest) {
        this.investinterest = investinterest;
    }

    public String toString() {
        return "InvestInfromation{username = " + username + ", phonenum = " + phonenum + ", investintime = " + investintime + ", investouttime = " + investouttime + ", investmoney = " + investmoney + ", investinterest = " + investinterest + "}";
    }
}
 
  