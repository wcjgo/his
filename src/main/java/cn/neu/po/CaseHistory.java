package cn.neu.po;

import lombok.Data;

import javax.persistence.*;

/**
 * @Author WCJ
 * @Description
 **/
@Data
@Table
@Entity
public class CaseHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int chMark;
    private int chId;
    private String anamnesis;
    private Integer rid;
    private String message;
    private String appeal;
    private String nowDisease;//疾病列表
    private String allergy;
    private String ndisease;
    private String del;
}
