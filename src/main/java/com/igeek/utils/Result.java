package com.igeek.utils;

import java.io.Serializable;

/**
 * @Description TODO
 * @Author fuxiaohai
 * @Date 2021/2/27 0027 10:59
 */
public class Result implements Serializable {
    /**
     * 业务响应吗
     */
    private Integer code = 200;
    /**
     * 业务消息
     */
    private String msg = "SUCCESS";
    /**
     * 业务数据
     */
    private Object data;

    /**
     * 出现错误，提示错误码和错误消息
     * @param codeMsg
     */
    public Result(CodeMsg codeMsg){
        this.code = codeMsg.code;
        this.msg = codeMsg.msg;
    }

    /**
     * 业务正确，不需要返回数据
     */
    public Result(){

    }

    /**
     * 业务正常，需要返回数据
     * @param data
     */
    public Result(Object data){
        this.data = data;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
 
  