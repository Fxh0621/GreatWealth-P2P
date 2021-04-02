package com.igeek.entity;

import java.util.Date;

public class Recharge {
    private Integer reid;

    private Date retime;

    private Double remoney;

    private Integer userid;

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public Date getRetime() {
        return retime;
    }

    public void setRetime(Date retime) {
        this.retime = retime;
    }

    public Double getRemoney() {
        return remoney;
    }

    public void setRemoney(Double remoney) {
        this.remoney = remoney;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }
}