package cn.neu.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @Author WCJ
 * @Description
 **/
@Entity
@Table
@Data
public class Disease {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int did;
    private String dname;
    private int typeId;
    private String code;
    private String icdcode;
    private String del;

}
