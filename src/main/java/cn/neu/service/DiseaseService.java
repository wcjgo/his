package cn.neu.service;

import cn.neu.dao.DiseaseDao;
import cn.neu.po.Disease;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class DiseaseService {
    @Autowired
    private DiseaseDao diseaseDao;

    public List<Disease> findDiseasesByTid(int tid){
        return diseaseDao.findByTypeId(tid);
    }
}
