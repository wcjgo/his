package cn.neu;

import cn.neu.dao.CaseHistoryDao;
import cn.neu.dao.PdDetailDao;
import cn.neu.dao.RegistrationDao;
import cn.neu.dao.UserDao;
import cn.neu.po.Registration;
import cn.neu.po.User;
import cn.neu.service.PayService;
import cn.neu.service.PrescribeService;
import cn.neu.service.RegistrationService;
import cn.neu.service.UserService;
import cn.neu.vo.Patient;
import cn.neu.vo.VPdtem;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
class HisApplicationTests {
    @Autowired
    private UserDao userRepository;
    @Autowired
    private CaseHistoryDao caseHistoryDao;
    @Autowired
    private RegistrationService registrationService;
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private PrescribeService prescribeService;
    @Autowired
    private PayService payService;

    @Test
    @Transactional
    @Rollback(value = false)
    public void test1() throws Exception{
        User one = userRepository.findByLoginnameAndLoginpwd("ghy","ghy123");
        System.out.println(one);
    }

    @Test
    @Transactional
    @Rollback(value = false)
    public void test2() throws Exception{
        int maxId = caseHistoryDao.findMaxId();
        System.out.println(maxId);
    }

    @Test
    public void test3() throws Exception{
        List<Patient> patientsByDid = registrationService.findPatientsByDid("4");
        System.out.println(patientsByDid);
    }

    @Test
    public void test4() throws Exception{
        List<Registration> registrations = registrationDao.findAllByDoctorid("4");
        registrations.forEach(registration -> System.out.println(registration.getDdate()));
    }

    @Test
    public void test5() throws Exception{
        int i = registrationDao.findStatusByRid(172);
        System.out.println(i);
    }
    @Test
    public void test6() throws Exception{
        System.out.println(caseHistoryDao.findNowDisease(172));
    }

    @Test
    public void test7() throws Exception{
        List<VPdtem> pds = prescribeService.findPds();
        System.out.println(pds);
    }

    @Test
    public void test8() throws Exception{
        System.out.println(payService.searchPay(172));
    }
}
