package cn.neu.service;

import cn.neu.dao.CaseHistoryDao;
import cn.neu.dao.RegistrationDao;
import cn.neu.po.CaseHistory;
import cn.neu.po.Registration;
import cn.neu.vo.DiaCase;
import cn.neu.vo.ResultInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class CaseHistoryService {
    @Autowired
    private CaseHistoryDao caseHistoryDao;
    @Autowired
    private RegistrationDao registrationDao;

    public int findChId() {
        return caseHistoryDao.findMaxId()+1;
    }

    /**
     * 保存看诊结果，存到病历表中
     * @param d
     * @return
     */
    @Transactional
    public ResultInfo save(DiaCase d){
        ResultInfo resultInfo = new ResultInfo();

        int rid = d.getRid();
        int status = registrationDao.findStatusByRid(rid);
        if (status==5){
            resultInfo.setFlag(false);
            resultInfo.setErrorMsg("该患者已退号，保存失败");
        }else {
            CaseHistory c = new CaseHistory();
            c.setChId(d.getChid());
            c.setAllergy(d.getAllergy());
            c.setAppeal(d.getAppeal());
            c.setAnamnesis(d.getAnamnesis());
            c.setMessage(d.getMsg());
            c.setNdisease(d.getNowd());
            c.setNowDisease(d.getAdis());
            c.setRid(d.getRid());
            caseHistoryDao.save(c);
            resultInfo.setFlag(true);

            //修改患者状态为已诊患者
            Registration r = new Registration();
            r.setRid(d.getRid());
            r.setDstatus(2);
            registrationDao.save(r);
        }
        return resultInfo;
    }
}
