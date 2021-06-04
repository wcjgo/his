package cn.neu.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @Author WCJ
 * @Description 处方模板与药品的中间表
 **/
@Entity
@Table
@Data
public class PdDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int pdId;
    private int drugId;
    private String num;
    private String usage;
    private String del;
}
