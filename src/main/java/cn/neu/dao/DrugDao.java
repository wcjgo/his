package cn.neu.dao;

import cn.neu.po.Drug;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;


/**
 * @Author WCJ
 * @Description
 **/
public interface DrugDao  extends JpaRepository<Drug,Integer>, JpaSpecificationExecutor<Drug> {

    Drug findByDrugName(String drugName);
}
