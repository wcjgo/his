package cn.neu.dao;

import cn.neu.po.CaseHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

/**
 * @Author WCJ
 * @Description
 **/
public interface CaseHistoryDao extends JpaRepository<CaseHistory,Integer>, JpaSpecificationExecutor<CaseHistory> {
    /**
     * 查询病历id的最大值
     * @return
     */
    @Query(value = "select max (chId) from CaseHistory ")
    int findMaxId();

    /**
     * 查询病历中诊断结果
     * @return
     */
    @Query(value = "select nowDisease from CaseHistory where rid = ?1")
    String  findNowDisease(Integer rid);
}
