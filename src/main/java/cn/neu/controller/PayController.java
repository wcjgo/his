package cn.neu.controller;

import cn.neu.service.PayService;
import cn.neu.vo.PayBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Controller
public class PayController {

    @Autowired
    private PayService payService;

    @RequestMapping("/pay")
    public String index(){
        return "pay";
    }

    @ResponseBody
    @RequestMapping("/searchPay")
    public List<PayBean> searchPay(int rid){
        return payService.searchPay(rid);
    }
}
