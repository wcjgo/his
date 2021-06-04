package cn.neu.vo;

import lombok.Data;


/**
 * @Author WCJ
 * @Description
 **/
@Data
public class PayBean {
    private int chid;//病历号
    private String name;//姓名
    private String id;//身份证号
    private String date;//开立日期
    private String pName;//项目名称
    private double price;//单价
    private int num;//数量
    private String status;//状态
}
