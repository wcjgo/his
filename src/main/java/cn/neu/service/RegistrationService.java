package cn.neu.service;

import cn.neu.dao.CaseHistoryDao;
import cn.neu.dao.RegistrationDao;
import cn.neu.po.Registration;
import cn.neu.util.DateUtils;
import cn.neu.vo.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class RegistrationService {
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private CaseHistoryDao caseHistoryDao;

    /**
     * 使用病历号获取患者基本信息
     * @param chid
     * @return
     */
    public Patient getPatient(Integer chid){
        Registration r = registrationDao.findByChid(chid);
        Patient p = new Patient();
        if (r==null)
            return p;
        p.setName(r.getName());
        p.setAddress(r.getAddress());
        p.setSex(r.getSex());
        Date birthday = r.getBirthday();
        p.setBirthday(DateUtils.date2string(birthday,"yyyy年MM月dd日"));
        p.setAge(DateUtils.getAgeByBirth(birthday));
        p.setId(r.getId()+"");
        return p;
    }

    /**
     * 保存挂号信息
     * @param r
     */
    @Transactional
    public void reg(Registration r){
        registrationDao.save(r);
    }

    /**
     * 查询最大的id
     * @return
     */
    public int findMaxId() {
        return registrationDao.findMaxId();
    }

    /**
     * 根据医生id查询当日病人
     * @param did
     * @return
     */
    public List<Patient> findPatientsByDid(String did){
        List<Registration> registrations = registrationDao.findAllByDoctorid(did);
        List<Patient> patients = new ArrayList<>();
        registrations.forEach(r ->{
            String ddate = DateUtils.date2string(r.getDdate(),"yyyy/MM/dd");
            String now = DateUtils.date2string(new Date(),"yyyy/MM/dd");
            //5代表已退号患者
            if (now.equals(ddate) && r.getDstatus()!=5){
                Patient p = new Patient();
                p.setRid(r.getRid());
                p.setId(r.getId());
                p.setSex(r.getSex());
                p.setName(r.getName());
                p.setAddress(r.getAddress());
                p.setStatus(r.getDstatus());
                p.setCid(r.getChid());
                Date birthday = r.getBirthday();
                p.setAge(DateUtils.getAgeByBirth(birthday));
                p.setBirthday(DateUtils.date2string(birthday,"yyyy年MM月dd日"));
                if (r.getDstatus()!=1){
                    String msg = caseHistoryDao.findNowDisease(r.getRid());
                    p.setMsg(msg);
                }
                patients.add(p);
            }
        });
        return patients;
    }
}
