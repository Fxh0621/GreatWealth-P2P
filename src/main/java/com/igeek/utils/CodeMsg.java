package com.igeek.utils;

/**
 * 业务码和业务消息
 */
public enum CodeMsg {
    ACCOUNT_PASSWORD_ERROR(1008,"账号或者密码错误"),

    VALIDATE_CODE_ERROR(1009,"验证码错误"),

    DEL_ERROR(1007,"删除失败"),
    EDD_ERROR(1006,"更新失败"),
    /**
     * 添加失败
     */
    ADD_ERROR(1005,"添加失败"),
    /**
     *管理员公告删除失败
     */
    MSG_S_DEL_ERROR(1004,"删除失败"),
    /**
     * 成功
     */
    SUCCESS(200,"SUCCESS"),
    /**
     * 管理员查询的订单为空
     */
    ORDERS_NULL(1000,"订单列表为空"),
    /**
     * 管理员未登录拒绝访问管理主界面的业务码
     */

    MANAGER_LOSE_LOGIN(1001,"管理员未登录，请登录"),

    /**
     * 管理员订单删除失败
     */
    ORDERS_S_DEL_ERROR(1003,"删除失败"),


    /**
     *
     */
    GOODS_DEL_ERROR(1002,"删除失败");

    /**
     * 业务码
     */
    int code;
    /**
     * 业务消息
     */
    String msg;

    CodeMsg(){}

    CodeMsg(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    /**
     * 提供get()和set()，通过枚举类直接获得业务响应码和业务消息
     * @return
     */
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
