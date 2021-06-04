package cn.neu.vo;

import cn.neu.po.Drug;
import lombok.Data;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Data
public class VPdtem {
    private int pdId;
    private String pdName;
    private String method;
    private String opera;
    private List<Drug> drugs;
}
