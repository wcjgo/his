package cn.neu.controller;

import cn.neu.service.RegPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author WCJ
 * @Description 挂号费用控制器
 **/
@Controller
public class RegPriceController {
    @Autowired
    private RegPriceService regPriceService;

    @ResponseBody
    @RequestMapping("/findPrice")
    public Double findPrice(String title){
        return regPriceService.findPrice(title);
    }
}
