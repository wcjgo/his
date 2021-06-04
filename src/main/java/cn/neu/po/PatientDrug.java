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
public class PatientDrug {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String drugName;
    private int rid;
}
