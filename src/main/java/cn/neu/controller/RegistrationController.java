package cn.neu.controller;

import cn.neu.po.Registration;
import cn.neu.po.User;
import cn.neu.service.DeptService;
import cn.neu.service.RegistrationService;
import cn.neu.util.DateUtils;
import cn.neu.vo.Patient;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * @Author WCJ
 * @Description 挂号信息
 **/
@Controller
public class RegistrationController {
    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private DeptService deptService;

    /**
     * 页面跳转
     * @return
     */
    @RequestMapping("/registration")
    public String registration(){
        return "registration";
    }

    /**
     * 获取病人信息（根据病历号）
     * @param chid
     * @return
     */
    @RequestMapping("/getPatient")
    @ResponseBody
    public Patient getPatient(String chid){
        return registrationService.getPatient(Integer.parseInt(chid));
    }

    /**
     * 挂号
     * @param invo
     * @param chid
     * @param pname
     * @param sex
     * @param bir
     * @param paySel
     * @param noon
     * @param dept
     * @param cat
     * @param doc
     * @param iden
     * @param ch
     * @param addr
     * @param money
     * @param session
     */
    @RequestMapping("/reg")
    @ResponseBody
    public void reg(String invo, String chid, String pname, String sex, String bir, String paySel,
                    String noon, String dept, String cat, String doc, String iden, boolean ch, String addr,double money, HttpSession session) throws JsonProcessingException {
        Registration r = new Registration();
        r.setName(pname);
        r.setSex(sex);
        r.setId(iden);
        r.setBirthday(DateUtils.string2date(bir,"yyyy年MM月dd日"));
        r.setAddress(addr);
        Date date = new Date();
        System.out.println(date);
        r.setDdate(date);
        r.setDeptid(deptService.findByDeptName(dept).getDeptId());
        r.setDoctorid(doc);
        r.setLevel(cat);
        r.setPaytype(paySel);
        r.setChid(Integer.parseInt(chid));
        r.setIsbook(ch ? 1 : 0);//是否要病历本
        User user = (User) session.getAttribute("user");
        r.setWorkerid(user.getUid());
        r.setDstatus(1);
        r.setMoney(money);
        r.setNoon(noon.equals("1") ?"上午":"下午");
        r.setIid(Integer.parseInt(invo));
        int rid = registrationService.findMaxId()+1;
        r.setRid(rid);
        registrationService.reg(r);
    }
}
