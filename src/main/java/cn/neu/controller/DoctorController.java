package cn.neu.controller;

import cn.neu.po.User;
import cn.neu.service.RegistrationService;
import cn.neu.service.UserService;
import cn.neu.vo.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
/**
 * @Author WCJ
 * @Description
 **/
@Controller
@RequestMapping("/doctor")
public class DoctorController {

    @Autowired
    private UserService userService;
    @Autowired
    private RegistrationService registrationService;



    /**
     * 根据科室名称和挂号级别查询医生
     * @return
     */
    @RequestMapping(value = "/findByDeptAndCat",method = RequestMethod.POST)
    @ResponseBody
    public List<User> findByDeptAndCat(String cat,String dept){
        return userService.findByDeptAndCat(dept, cat);
    }

    @RequestMapping("/findPatients")
    @ResponseBody
    public List<Patient> findPatients(HttpSession session){
        User user = (User) session.getAttribute("user");
        String uid = user.getUid();
        List<Patient> patients =  registrationService.findPatientsByDid(uid);
        return patients;
    }
}
