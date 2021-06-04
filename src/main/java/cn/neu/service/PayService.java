package cn.neu.service;

import cn.neu.dao.DrugDao;
import cn.neu.dao.PatientDrugDao;
import cn.neu.dao.RegistrationDao;
import cn.neu.po.Drug;
import cn.neu.po.PatientDrug;
import cn.neu.po.Registration;
import cn.neu.util.DateUtils;
import cn.neu.vo.PayBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class PayService {
    @Autowired
    private PatientDrugDao patientDrugDao;
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private DrugDao drugDao;

    /**
     * 查询缴费
     * @param rid
     * @return
     */
    public List<PayBean> searchPay(int rid){
        List<PayBean> payBeans = new ArrayList<>();
        List<PatientDrug> pds = patientDrugDao.findByRid(rid);
        Optional<Registration> optional = registrationDao.findById(rid);
        Registration r = optional.get();
        String date = DateUtils.date2string(r.getDdate(), "yyyy年MM月dd日");
        int status = r.getDstatus();
        String statusStr;
        switch(status) {
            case 1 :
                statusStr = "已挂号";
                break;
            case 2 :
                statusStr = "已看诊";
                break;
            case 3 :
                statusStr = "已开药";
                break;
            case 4 :
                statusStr = "已缴费";
                break;
            default :
                statusStr = "已退号";
        }
        String name = r.getName();
        int chid = r.getChid();
        String id = r.getId();

        pds.forEach(pd->{
            PayBean pb = new PayBean();
            pb.setChid(chid);
            pb.setName(name);
            pb.setDate(date);
            pb.setId(id);
            pb.setStatus(statusStr);
            Drug drugs = drugDao.findByDrugName(pd.getDrugName());
            pb.setPName(drugs.getDrugName());
            pb.setPrice(drugs.getDrugPrice());
            pb.setNum(1);
            payBeans.add(pb);
        });
        return payBeans;
    }
}
