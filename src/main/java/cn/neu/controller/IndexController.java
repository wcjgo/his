package cn.neu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author WCJ
 * @Description 首页
 **/
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
