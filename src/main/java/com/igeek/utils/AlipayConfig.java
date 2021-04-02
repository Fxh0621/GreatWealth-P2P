package com.igeek.utils;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000117607042";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCPUx3HaK5/X6M8+96CZfEuy8nVyY1dh8bUfzO796tXs+1ipvCOOLBeWg5U4afY+o3mjaYzNdJkrKAF3yzqyBk7GEQf7WKY+41KWeINa8WreQGRpWrnYnZR/++OONGl3lQ0gP2Wozbp5kOQku8lE4zl7nW0BkHKp++Iagp2zydpwTdMPH+gMpjlJ2LwK7g7PaFI3vw1B5l+uyHtma/471+V/EJHj4dZu7R3VCEFt6wunInz+AOT2JASTA9kP+kGDPcpdWjQ8LtxmOoL2jVnqoLUma4kp34RQFBudORGvoascmXfTJO9ATZ5uyUcAYQT8hkBsZMMbVQOifq2yTClCjOHAgMBAAECggEAIGUb/P93OYkHX3hagcTC793WAAFvd22CDnO14M2JJ+ieRkcPZkX/70ORq7PZeVygiDUKFNccd+7guJMKFwMlWMsSUtkYCRYKiHyqcHgklK5kIWRvNl91+PDNV6sWD9Sh2cAyEUNQ3StTqDDd5tZ1aV8tsYQciM7OgFnfhZ0q/mb8Eetn5Pm6kujdtvAbq91EuVoUwb4vgevNBR15Nw0MalwhXZSRIJgMzWzOmF58FNFlT12ED18PGkQqmklTOR10H5J1gISY02VGZZk1XzjKwJtn7gpoUbEngO6F72a0O57YaywXL6uqW9XYE9/a3keewsnyw3emV9iEm5T75ZW2wQKBgQDGFU4u6OPqfJZZb3kr2Kkidpv0t1hp2Tco3C58WfNE3yW4ik/Uzp+uOtJ4/3UhoylhWTGSx5hGbWQqiMbldteRdIKGs/+mLXqzmsDmJ9V9CYPiOYWaYevhlZVBEtde+tShCMWRDSCzHOrINVqWLbuqfGJxMbb2fOLBEq90wn4gJwKBgQC5OxZylRhjfyn5GvpcwYvciBK04q6YHXciIb3ofJJP/OhX5xKdCqpsElhIWPzwNc8HM8+yTI0vVc0KMjaA5iSqAVw3awDbD18KndTxKHa/xsvjkeqQKJ/z1OGGCCafDkgZy+y1pcCTRU6GGz4ijjiOhSiZ0dJ8ncmkr0oDCvoNoQKBgQCl1u6XPaqcBmUGSdsEB6hLT0xxDRO7wv14eyd8Ov7+WWlGYJ5HyBpOj7bpUM9rMySQ+VEU14C47hsftVX4hZAjmo0xZAAUzBzfxB/eUdlejxnYzFn8ECGhw0+rpK+mOJDOpf5q27fV3c7/ghPuiimFqg/tPzc0lQhvp0o4kiFwnwKBgAwSRLk87DT3wZWBY5WN6354w7dUGorBSNVJm6W+EI7z7XRlE7p2Snr2ixhT7E//Qbm3b66v/Hd8QPuMIC8wUG1f31GhQJIGI2x+srTwrSR8YSc4iC/S5fGvCu+AMnwlIx/DQW7pGW6/kol81wTLffYTyXyUxwHmCpEX91vRaFBhAoGAYdWNJZpLgBgl9v6D7ab3r/WPHyoaO4BMWanKd1uLiGD7TovDDtHdQXAWWWW35AQ/VdQg/b4lLVhc4kIernTt0pMmVzn0qZhZdt9qOo9IugUoWJnh/SMN1x+3xLwI+93qh4V2VTs/wRdysr9CSRV1FOAq+SgFlBgaT9CrfuReRNo=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6NsSOSIkjl0wyExowVKuFrAh/lsvCw4d3gY68AgXbCV6SfhQ8/gVv20Fx/TaolfMimPHaTjigB7rbqbCCl5c2tKBnZypfsPVhaVQuha18BxkrAn+/7vNCkapTUnPyzLNL+gOPLeGHjJjmkeBwVZCEVUHrVDy8rhCMzY7M1DuX8gdCwDaPGDCoK2Ep0GpvX4mW8eqsNJ9MxJLDeeZiD7FxthBJkZpkGG78k8SmPcUAezbddLt25audj82Mio6ut+vpqXN1KjxI9zfewx9CzWXPnW1G0NbotJiNFn/46iGZkxOk8BK5O+uKmrTr+8U5CS2vfZeExk4EkJVnlTTGDm1GwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://freefxh.free.idcfengye.com/html/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://freefxh.free.idcfengye.com/html/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

