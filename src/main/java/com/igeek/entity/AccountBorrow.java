package com.igeek.entity;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/3/3 0003 9:01
 */
public class AccountBorrow {

    private Integer borrowtime;

    private String borrowproject;

    private String borrowtype;

    private Double borrowmoney;

    public AccountBorrow() {
    }

    public AccountBorrow(Integer borrowtime, String borrowproject, String borrowtype, Double borrowmoney) {
        this.borrowtime = borrowtime;
        this.borrowproject = borrowproject;
        this.borrowtype = borrowtype;
        this.borrowmoney = borrowmoney;
    }

    /**
     * 获取
     * @return borrowtime
     */
    public Integer getBorrowtime() {
        return borrowtime;
    }

    /**
     * 设置
     * @param borrowtime
     */
    public void setBorrowtime(Integer borrowtime) {
        this.borrowtime = borrowtime;
    }

    /**
     * 获取
     * @return borrowproject
     */
    public String getBorrowproject() {
        return borrowproject;
    }

    /**
     * 设置
     * @param borrowproject
     */
    public void setBorrowproject(String borrowproject) {
        this.borrowproject = borrowproject;
    }

    /**
     * 获取
     * @return borrowtype
     */
    public String getBorrowtype() {
        return borrowtype;
    }

    /**
     * 设置
     * @param borrowtype
     */
    public void setBorrowtype(String borrowtype) {
        this.borrowtype = borrowtype;
    }

    /**
     * 获取
     * @return borrowmoney
     */
    public Double getBorrowmoney() {
        return borrowmoney;
    }

    /**
     * 设置
     * @param borrowmoney
     */
    public void setBorrowmoney(Double borrowmoney) {
        this.borrowmoney = borrowmoney;
    }

    public String toString() {
        return "AccountBorrow{borrowtime = " + borrowtime + ", borrowproject = " + borrowproject + ", borrowtype = " + borrowtype + ", borrowmoney = " + borrowmoney + "}";
    }
}
 
  