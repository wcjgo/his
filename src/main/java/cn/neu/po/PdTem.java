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
public class PdTem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int pdId;
    private String pdName;
    private String method;
    private String opera;
    private Date createTIme;
    private String del;
}
