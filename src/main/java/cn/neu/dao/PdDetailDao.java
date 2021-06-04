package cn.neu.dao;

import cn.neu.po.PdDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @Author WCJ
 * @Description
 **/
public interface PdDetailDao extends JpaRepository<PdDetail,Integer>, JpaSpecificationExecutor<PdDetail> {
}
