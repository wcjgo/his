package cn.neu.dao;

import cn.neu.po.Registration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * @Author WCJ
 * @Description 挂号信息表持久层
 **/
public interface RegistrationDao extends JpaRepository<Registration,Integer>, JpaSpecificationExecutor<Registration> {
    /**
     * 使用病历号获取患者基本信息
     * @param chid
     * @return
     */
    Registration findByChid(int chid);

    /**
     * 查询最大的id
     * @return
     */
    @Query(value = "select max (rid) from Registration")
    int findMaxId();

    /**
     * 根据id查询状态
     * @return
     */
    @Query(value = "select dstatus from Registration where rid = ?1")
    int findStatusByRid(int rid);

    /**
     * 根据医生查询患者
     * @param doctorid
     * @return
     */
    List<Registration> findAllByDoctorid(String doctorid);
}
