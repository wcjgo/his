package cn.neu.dao;

import cn.neu.po.PayBeanPo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @Author WCJ
 * @Description
 **/
public interface PayBeanPoDao extends JpaRepository<PayBeanPo,Integer>, JpaSpecificationExecutor<PayBeanPo> {
}
