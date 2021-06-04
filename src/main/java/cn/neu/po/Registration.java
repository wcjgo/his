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
public class Registration {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int rid;
    private int chid;
    private String name;
    private String sex;
    private String id;
    private Date birthday;
    private String address;
    private Date ddate;
    private int deptid;
    private String doctorid;
    private String level;
    private String paytype;
    private int isbook;
    private String workerid;
    private int dstatus;
    private double money;
    private String noon;
    private int iid;
}
