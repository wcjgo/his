package cn.neu.controller;

import cn.neu.service.PrescribeService;
import cn.neu.vo.PayBean;
import cn.neu.vo.ResultInfo;
import cn.neu.vo.VPdtem;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/**
 * @Author WCJ
 * @Description
 **/
@Controller
public class PrescribeController {

    @Autowired
    private PrescribeService prescribeService;
    /**
     * 定位到开药页面
     * @return
     */
    @RequestMapping("/prescribe")
    public String prescribe(){
        return "prescribe";
    }

    /**
     * 查询处方模板
     * @return
     */
    @RequestMapping("/findHptems")
    @ResponseBody
    public List<VPdtem> findPatients()throws JsonProcessingException {

        return prescribeService.findPds();
    }

    @RequestMapping("/presc")
    @ResponseBody
    public ResultInfo presc(String drugs,int rid){
        String[] split = drugs.split(",");
        List<String> list = new ArrayList<>(Arrays.asList(split));
        return prescribeService.presc(list,rid);
    }

    @RequestMapping("/payC")
    @ResponseBody
    public String payC(@RequestBody PayBean[] payBeans){
        return prescribeService.payC(Arrays.asList(payBeans));
    }
}
