package com.igeek.entity;

public class Borrow {
    private Integer borrowid;

    private Integer borrowtime;

    private Double borrowmoney;

    private Double borrowinterest;

    private Integer userid;

    private Integer borrowtypesid;

    public Integer getBorrowid() {
        return borrowid;
    }

    public void setBorrowid(Integer borrowid) {
        this.borrowid = borrowid;
    }

    public Integer getBorrowtime() {
        return borrowtime;
    }

    public void setBorrowtime(Integer borrowtime) {
        this.borrowtime = borrowtime;
    }

    public Double getBorrowmoney() {
        return borrowmoney;
    }

    public void setBorrowmoney(Double borrowmoney) {
        this.borrowmoney = borrowmoney;
    }

    public Double getBorrowinterest() {
        return borrowinterest;
    }

    public void setBorrowinterest(Double borrowinterest) {
        this.borrowinterest = borrowinterest;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getBorrowtypesid() {
        return borrowtypesid;
    }

    public void setBorrowtypesid(Integer borrowtypesid) {
        this.borrowtypesid = borrowtypesid;
    }
}