package cn.neu.po;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Author WCJ
 * @Description 挂号费表
 **/
@Entity
@Table
@Data
public class RegPrice {
    @Id
    private String title;
    private Double price;
}
