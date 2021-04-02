package com.igeek.entity;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/3 0003 20:35
 */
public class ProfiHigh {

    private String username;
    private Double investallinterest;


    public ProfiHigh() {
    }

    public ProfiHigh(String username, Double investallinterest) {
        this.username = username;
        this.investallinterest = investallinterest;
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
     * @return investallinterest
     */
    public Double getInvestallinterest() {
        return investallinterest;
    }

    /**
     * 设置
     * @param investallinterest
     */
    public void setInvestallinterest(Double investallinterest) {
        this.investallinterest = investallinterest;
    }

    public String toString() {
        return "ProfiHigh{username = " + username + ", investallinterest = " + investallinterest + "}";
    }
}
 
  