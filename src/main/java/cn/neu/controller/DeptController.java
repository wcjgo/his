package cn.neu.controller;

import cn.neu.po.Department;
import cn.neu.service.DeptService;
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
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private DeptService deptService;

    @RequestMapping("/findAll")
    @ResponseBody
    public List<Department> findAll(){
        return deptService.findAll();
    }
}
