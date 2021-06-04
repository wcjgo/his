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
public class Department {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int deptId;
    private String deptName;
    private String deptCode;
    private String del;
}
