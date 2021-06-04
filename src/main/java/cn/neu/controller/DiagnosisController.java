package cn.neu.controller;

import cn.neu.po.Disease;
import cn.neu.po.User;
import cn.neu.service.CaseHistoryService;
import cn.neu.service.DiseaseService;
import cn.neu.vo.DiaCase;
import cn.neu.vo.ResultInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Controller
public class DiagnosisController {

    @Autowired
    private DiseaseService diseaseService;
    @Autowired
    private CaseHistoryService caseHistoryService;


    @RequestMapping("/diagnosis")
    public String index(){
        return "diagnosis";
    }

    @RequestMapping("/findDiseases")
    @ResponseBody
    public List<Disease> findPatients(HttpSession session){
        User user = (User) session.getAttribute("user");
        int did = user.getDeptid();
        return diseaseService.findDiseasesByTid(did);
    }

    @RequestMapping("/save")
    @ResponseBody
    public ResultInfo save(DiaCase diaCase){
        return caseHistoryService.save(diaCase);
    }
}
