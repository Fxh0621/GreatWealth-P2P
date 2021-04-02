package com.igeek.entity;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/3 0003 20:46
 */
public class BorrowHigh {

    private String username;

    private Double investAsset;


    public BorrowHigh() {
    }

    public BorrowHigh(String username, Double investAsset) {
        this.username = username;
        this.investAsset = investAsset;
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
     * @return investAsset
     */
    public Double getInvestAsset() {
        return investAsset;
    }

    /**
     * 设置
     * @param investAsset
     */
    public void setInvestAsset(Double investAsset) {
        this.investAsset = investAsset;
    }

    public String toString() {
        return "BorrowHigh{username = " + username + ", investAsset = " + investAsset + "}";
    }
}
 
  