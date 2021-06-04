package cn.neu.controller;

import cn.neu.service.CaseHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author WCJ
 * @Description 病历相关
 **/
@Controller
public class CaseHistoryController {
    @Autowired
    private CaseHistoryService caseHistoryService;

    @GetMapping("/findChId")
    @ResponseBody
    public int findChId(){
        int i = caseHistoryService.findChId();
        return i;
    }
}
