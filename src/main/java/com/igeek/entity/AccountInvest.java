package com.igeek.entity;

import java.util.Date;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/3 0003 9:00
 */
public class AccountInvest {

    private Date investintime;

    private String investproject;

    private String investtype;

    private Double investmoney;


    public AccountInvest() {
    }

    public AccountInvest(Date investintime, String investproject, String investtype, Double investmoney) {
        this.investintime = investintime;
        this.investproject = investproject;
        this.investtype = investtype;
        this.investmoney = investmoney;
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
     * @return investproject
     */
    public String getInvestproject() {
        return investproject;
    }

    /**
     * 设置
     * @param investproject
     */
    public void setInvestproject(String investproject) {
        this.investproject = investproject;
    }

    /**
     * 获取
     * @return investtype
     */
    public String getInvesttype() {
        return investtype;
    }

    /**
     * 设置
     * @param investtype
     */
    public void setInvesttype(String investtype) {
        this.investtype = investtype;
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

    public String toString() {
        return "AccountInvest{investintime = " + investintime + ", investproject = " + investproject + ", investtype = " + investtype + ", investmoney = " + investmoney + "}";
    }
}
 
  