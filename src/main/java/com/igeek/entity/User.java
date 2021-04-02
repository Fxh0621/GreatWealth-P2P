package com.igeek.entity;

import java.util.Date;

public class User {
    private Integer userid;

    private String username;

    private String password;

    private String phonenum;

    private String personid;

    private Date registertime;

    private Double balance;

    private String headerpic;

    private Double investallinterest;

    private Double borrowallinterest;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getPersonid() {
        return personid;
    }

    public void setPersonid(String personid) {
        this.personid = personid == null ? null : personid.trim();
    }

    public Date getRegistertime() {
        return registertime;
    }

    public void setRegistertime(Date registertime) {
        this.registertime = registertime;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getHeaderpic() {
        return headerpic;
    }

    public void setHeaderpic(String headerpic) {
        this.headerpic = headerpic == null ? null : headerpic.trim();
    }

    public Double getInvestallinterest() {
        return investallinterest;
    }

    public void setInvestallinterest(Double investallinterest) {
        this.investallinterest = investallinterest;
    }

    public Double getBorrowallinterest() {
        return borrowallinterest;
    }

    public void setBorrowallinterest(Double borrowallinterest) {
        this.borrowallinterest = borrowallinterest;
    }
}