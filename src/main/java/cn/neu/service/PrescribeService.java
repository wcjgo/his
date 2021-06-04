package cn.neu.service;

import cn.neu.dao.*;
import cn.neu.po.*;
import cn.neu.vo.PayBean;
import cn.neu.vo.ResultInfo;
import cn.neu.vo.VPdtem;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.hibernate.collection.internal.PersistentBag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class PrescribeService {

    @Autowired
    private DrugDao drugDao;
    @Autowired
    private PdTemDao pdTemDao;
    @Autowired
    private PdDetailDao pdDetailDao;
    @Autowired
    private RegistrationDao registrationDao;
    @Autowired
    private PatientDrugDao patientDrugDao;
    @Autowired
    private PayBeanPoDao payBeanPoDao;
    @Autowired
    private RedisTemplate<String,String> redisTemplate;

    /**
     * 开药
     * @param drugs
     * @param rid
     * @return
     */
    public ResultInfo presc(List<String> drugs, int rid) {
        ResultInfo resultInfo = new ResultInfo();
        int status = registrationDao.findStatusByRid(rid);
        if (status==2){
            resultInfo.setFlag(true);
            drugs.forEach(d->{
                PatientDrug pd = new PatientDrug();
                pd.setRid(rid);
                pd.setDrugName(d);
                patientDrugDao.save(pd);
            });
        }else{
            resultInfo.setFlag(false);
            if (status==5){
                resultInfo.setErrorMsg("患者已退号，开药失败");
            }else if (status==1){
                resultInfo.setErrorMsg("开药失败，患者未看诊");
            }else {
                resultInfo.setErrorMsg("开药失败，患者已开药");
            }
        }
        return resultInfo;
    }

    /**
     * 处方模板
     * @return
     */
    public List<VPdtem> findPds() throws JsonProcessingException {
        List<VPdtem> vpdtems = new ArrayList<>();

        //List<PdTem> pdTems = pdTemDao.findAll();

        List<PdTem> pdTems;
        ObjectMapper objectMapper = new ObjectMapper();
        String json = redisTemplate.boundValueOps("pdtem.findAll").get();
        if (null==json){
            pdTems = pdTemDao.findAll();
            json = objectMapper.writeValueAsString(pdTems);
            redisTemplate.boundValueOps("pdtem.findAll").set(json);
            System.out.println("redis没有数据");
        }else {
            System.out.println("redis中有数据");
            pdTems = objectMapper.readValue(json, new TypeReference<List<PdTem>>() {});
        }

        pdTems.forEach(p -> {
            VPdtem v = new VPdtem();
            v.setPdId(p.getPdId());
            v.setPdName(p.getPdName());
            v.setMethod(p.getMethod());
            v.setOpera(p.getOpera());

            Specification<PdDetail> spec = (root, query, cb)-> cb.equal(root.get("pdId"),p.getPdId());
            List<PdDetail> pds = pdDetailDao.findAll(spec);
            //System.out.println(pds);

            List<Integer> ids = new ArrayList<>();
            pds.forEach(pd1-> ids.add(pd1.getDrugId()));

            //System.out.println(ids);

            List<Drug> drugs =drugDao.findAllById(ids);
            v.setDrugs(drugs);

            vpdtems.add(v);
        });
        return vpdtems;
    }

    public String payC(List<PayBean> payBeans){
        if (payBeans.size()==0){
            return "没有数据";
        }else {
            List<PayBeanPo> payBeanPos = new ArrayList<>();
            payBeans.forEach(pb->{
                PayBeanPo pbp = new PayBeanPo();
                pbp.setChid(pb.getChid());
                pbp.setDate(new Date());
                pbp.setId(pb.getId());
                pbp.setName(pb.getName());
                pbp.setPrice(pb.getPrice());
                pbp.setNum(pb.getNum());
                pbp.setPName(pb.getPName());
                payBeanPos.add(pbp);
            });
            payBeanPoDao.saveAll(payBeanPos);
            return "缴费成功";
        }
    }
}
