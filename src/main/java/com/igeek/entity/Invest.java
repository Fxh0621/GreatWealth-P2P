package com.igeek.entity;

import java.util.Date;

public class Invest {
    private Integer investid;

    private Date investintime;

    private Date investouttime;

    private Double investmoney;

    private Double investinterest;

    private Integer userid;

    private Integer investtypesid;

    public Integer getInvestid() {
        return investid;
    }

    public void setInvestid(Integer investid) {
        this.investid = investid;
    }

    public Date getInvestintime() {
        return investintime;
    }

    public void setInvestintime(Date investintime) {
        this.investintime = investintime;
    }

    public Date getInvestouttime() {
        return investouttime;
    }

    public void setInvestouttime(Date investouttime) {
        this.investouttime = investouttime;
    }

    public Double getInvestmoney() {
        return investmoney;
    }

    public void setInvestmoney(Double investmoney) {
        this.investmoney = investmoney;
    }

    public Double getInvestinterest() {
        return investinterest;
    }

    public void setInvestinterest(Double investinterest) {
        this.investinterest = investinterest;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getInvesttypesid() {
        return investtypesid;
    }

    public void setInvesttypesid(Integer investtypesid) {
        this.investtypesid = investtypesid;
    }
}