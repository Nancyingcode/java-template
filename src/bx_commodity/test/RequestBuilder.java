package bx_commodity.test;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import com.alibaba.fastjson.JSONObject;

public class RequestBuilder {
	public static String doJson(String listName) {
        JSONObject jobj = new JSONObject();
        String result = null;
        if(listName == "cityList"){
            jobj.put("head", "");
            result = jobj.toJSONString();           
        } else {
            result = "";
        }
		return result;
	}
	public static String getMD5(String str) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            return new BigInteger(1, md.digest()).toString(16);
        } catch (Exception e) {
           e.printStackTrace();
           return null;
        }
    }
	public static String des(String listName) {		   
        String str = RequestBuilder.doJson(listName);
        String password = "12345678";
        byte[] result = RequestBuilder.encrypt(str.getBytes(),password);
        System.out.println("加密后：" + bytesToHexFun3(result));
        return bytesToHexFun3(result);
   }
   /**
    * 加密
    * @param datasource byte[]
    * @param password String
    * @return byte[]
    */
   public static  byte[] encrypt(byte[] datasource, String password) {            
       try{
       SecureRandom random = new SecureRandom();
       DESKeySpec desKey = new DESKeySpec(password.getBytes());
    
       SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");
       SecretKey securekey = keyFactory.generateSecret(desKey);
     
       Cipher cipher = Cipher.getInstance("DES");
       cipher.init(Cipher.ENCRYPT_MODE, securekey, random);
       return cipher.doFinal(datasource); 
       }catch(Throwable e){
               e.printStackTrace();
       }
       return null;
}
   public static String bytesToHexFun3(byte[] bytes) {
       StringBuilder buf = new StringBuilder(bytes.length * 2);
       for(byte b : bytes) { // 使用String的format方法进行转换
           buf.append(String.format("%02x", new Integer(b & 0xff)));
       }

       return buf.toString();
   }

}
