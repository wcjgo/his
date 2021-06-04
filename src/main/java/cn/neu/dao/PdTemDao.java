package cn.neu.dao;

import cn.neu.po.PdTem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @Author WCJ
 * @Description
 **/
public interface PdTemDao  extends JpaRepository<PdTem,Integer>, JpaSpecificationExecutor<PdTem> {
}
