package com.igeek.utils;

import java.util.List;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/2/27 0027 10:57
 */
public class PageInfo<T> {

    /**
     * 当前页
     */
    private Integer page;
    /**
     * 每页行数
     */
    private Integer limit;
    /**
     * 数据总条数
     */
    private Integer total;
    /**
     * 总页数
     */
    private Integer totalPage;
    /**
     * 分页数据
     */
    private List<T> data;


    public PageInfo() {
    }

    public PageInfo(Integer page, Integer limit, Integer total, Integer totalPage, List<T> data) {
        this.page = page;
        this.limit = limit;
        this.total = total;
        this.totalPage = totalPage;
        this.data = data;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

}
 
  