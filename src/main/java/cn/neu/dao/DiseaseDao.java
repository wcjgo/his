package cn.neu.dao;

import cn.neu.po.Disease;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
public interface DiseaseDao extends JpaRepository<Disease,Integer> , JpaSpecificationExecutor<Disease> {

    List<Disease> findByTypeId(int typeId);
}
