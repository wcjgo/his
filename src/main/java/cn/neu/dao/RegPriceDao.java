package cn.neu.dao;

import cn.neu.po.RegPrice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @Author WCJ
 * @Description 挂号费用表持久层
 **/
public interface RegPriceDao extends JpaRepository<RegPrice,String>, JpaSpecificationExecutor<RegPrice> {
}
