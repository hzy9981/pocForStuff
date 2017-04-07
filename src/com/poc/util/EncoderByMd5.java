package com.poc.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

public class EncoderByMd5 {
	  /**利用MD5进行加密
     * @param str  待加密的字符串
     * @return  加密后的字符串
     * @throws NoSuchAlgorithmException  没有这种产生消息摘要的算法
     * @throws UnsupportedEncodingException  
     */
    public static String EncoderByMd5(String password) throws NoSuchAlgorithmException, UnsupportedEncodingException{
      //md5加密32位大写
    	   try {  
               // 得到一个信息摘要器  
               MessageDigest digest = MessageDigest.getInstance("md5");  
               byte[] result = digest.digest(password.getBytes());  
               StringBuffer buffer = new StringBuffer();  
               // 把没一个byte 做一个与运算 0xff;  
               for (byte b : result) {  
                   // 与运算  
                   int number = b & 0xff;// 加盐  
                   String str = Integer.toHexString(number);  
                   if (str.length() == 1) {  
                       buffer.append("0");  
                   }  
                   buffer.append(str);  
               }  
     
               // 标准的md5加密后的结果  
               return buffer.toString();  
           } catch (NoSuchAlgorithmException e) {  
               e.printStackTrace();  
               return "";  
           }  

    }
}
