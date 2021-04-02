package com.igeek.entity;

public class Borrowtypes {
    private Integer borrowtypesid;

    private String borrowproject;

    private String borrowtype;

    private Double borrowrate;

    private Integer borrowtimetype;

    private Double lessinvestmoney;

    public Integer getBorrowtypesid() {
        return borrowtypesid;
    }

    public void setBorrowtypesid(Integer borrowtypesid) {
        this.borrowtypesid = borrowtypesid;
    }

    public String getBorrowproject() {
        return borrowproject;
    }

    public void setBorrowproject(String borrowproject) {
        this.borrowproject = borrowproject == null ? null : borrowproject.trim();
    }

    public String getBorrowtype() {
        return borrowtype;
    }

    public void setBorrowtype(String borrowtype) {
        this.borrowtype = borrowtype == null ? null : borrowtype.trim();
    }

    public Double getBorrowrate() {
        return borrowrate;
    }

    public void setBorrowrate(Double borrowrate) {
        this.borrowrate = borrowrate;
    }

    public Integer getBorrowtimetype() {
        return borrowtimetype;
    }

    public void setBorrowtimetype(Integer borrowtimetype) {
        this.borrowtimetype = borrowtimetype;
    }

    public Double getLessinvestmoney() {
        return lessinvestmoney;
    }

    public void setLessinvestmoney(Double lessinvestmoney) {
        this.lessinvestmoney = lessinvestmoney;
    }
}