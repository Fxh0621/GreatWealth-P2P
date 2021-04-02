package com.igeek.utils;

import com.alibaba.fastjson.JSON;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 输出JSON数据的工具类
 */
public class RespWriterUtil {
    /**
     * 根据response将数据使用JSON格式返回
     * @param resp
     * @param rs
     */
    public static void writer(HttpServletResponse resp, Result rs){
        //设置编码
        resp.setContentType("text/json;charset = utf-8");
        PrintWriter writer = null;
        try {
            writer = resp.getWriter();
            writer.print(JSON.toJSONString(rs));
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            writer.close();
        }
    }

}
