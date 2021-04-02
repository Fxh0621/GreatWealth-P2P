package com.igeek.entity;

public class Investtypes {
    private Integer investtypesid;

    private String investproject;

    private String investtype;

    private Double investrate;

    private Integer investtimetype;

    private Double lessinvestmoney;

    public Integer getInvesttypesid() {
        return investtypesid;
    }

    public void setInvesttypesid(Integer investtypesid) {
        this.investtypesid = investtypesid;
    }

    public String getInvestproject() {
        return investproject;
    }

    public void setInvestproject(String investproject) {
        this.investproject = investproject == null ? null : investproject.trim();
    }

    public String getInvesttype() {
        return investtype;
    }

    public void setInvesttype(String investtype) {
        this.investtype = investtype == null ? null : investtype.trim();
    }

    public Double getInvestrate() {
        return investrate;
    }

    public void setInvestrate(Double investrate) {
        this.investrate = investrate;
    }

    public Integer getInvesttimetype() {
        return investtimetype;
    }

    public void setInvesttimetype(Integer investtimetype) {
        this.investtimetype = investtimetype;
    }

    public Double getLessinvestmoney() {
        return lessinvestmoney;
    }

    public void setLessinvestmoney(Double lessinvestmoney) {
        this.lessinvestmoney = lessinvestmoney;
    }
}