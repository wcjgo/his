package cn.neu.vo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Author WCJ
 * @Description
 **/
@Data
public class ResultInfo implements Serializable {
    private boolean flag;//后端返回结果正常为true，发生异常返回false
    private Object data;//后端返回结果数据对象
    private String errorMsg;//发生异常的错误消息
}
