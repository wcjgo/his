package cn.neu.po;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

/**
 * @Author WCJ
 * @Description
 **/
@Entity
@Data
@Table
public class PayBeanPo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pbpId;
    private int chid;//病历号
    private String name;//姓名
    private String id;//身份证号
    private Date date;//缴费日期
    private String pName;//项目名称
    private double price;//单价
    private int num;//数量
}
