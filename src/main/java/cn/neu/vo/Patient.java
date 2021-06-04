package cn.neu.vo;

import lombok.Data;


/**
 * @Author WCJ
 * @Description 使用病历号挂号，病人对象
 **/
@Data
public class Patient {
    private String name;
    private String sex;
    private String address;
    private String birthday;
    private String id;//身份证号
    private int age;
    private int rid;//挂号ID
    private int status;//看诊状态
    private int cid;
    private String msg;
}
