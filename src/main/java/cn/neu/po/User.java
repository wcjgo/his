package cn.neu.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @Author WCJ
 * @Description
 **/
@Entity
@Data
@Table
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String uid;
    private String loginname;
    private String loginpwd;
    private String uname;
    private String utype;
    private String doctorrank;
    private int deptid;
    private String rlevel;
    private String del;
}
