package cn.neu.po;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

/**
 * @Author WCJ
 * @Description
 **/
@Entity
@Data
@Table
public class Drug {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int drugId;
    private String drugName;
    private double drugPrice;
    private String specification;
    private String unit;
    private String del;
}
