package cn.neu.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {

    /**
     * MD5加密类
     * @param str 要加密的字符串
     * @return    加密后的字符串
     */
    public static String code(String str){
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte[]byteDigest = md.digest();
            int i;
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0; offset < byteDigest.length; offset++) {
                i = byteDigest[offset];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            //32位加密
            return buf.toString();
            // 16位的加密
            //return buf.toString().substring(8, 24);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void main(String[] args) {
        System.out.println(code("bianque123"));
        System.out.println(code("ghy123"));
        System.out.println(code("fwb123"));
        System.out.println(code("hqb123"));
        System.out.println(code("admin123"));
        System.out.println(code("huatuo123"));
        System.out.println(code("xll123"));
        System.out.println(code("adq123"));
        System.out.println(code("iop888"));
        System.out.println(code("root"));
    }
}
