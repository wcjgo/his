package cn.neu.vo;

import lombok.Data;

/**
 * @Author WCJ
 * @Description
 **/
@Data
public class DiaCase {
    private String appeal;//主诉
    private String nowd;//现病史
    private String allergy;//过敏史
    private String anamnesis;//既往病史
    private String msg;//诊断信息
    private String adis;//诊断疾病列表（;分隔）
    private int chid;//病历号
    private int rid;//挂号ID

}
