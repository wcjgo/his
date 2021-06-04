package cn.neu.dao;

import cn.neu.po.PatientDrug;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * @Author WCJ
 * @Description 患者开药表
 **/
public interface PatientDrugDao extends JpaSpecificationExecutor<PatientDrug>, JpaRepository<PatientDrug,Integer> {
    List<PatientDrug> findByRid(int rid);
}
