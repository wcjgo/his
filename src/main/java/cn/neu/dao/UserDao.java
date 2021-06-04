package cn.neu.dao;

import cn.neu.po.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * @Author WCJ
 * @Description 登录用户持久层
 **/
public interface UserDao extends JpaRepository<User,String>, JpaSpecificationExecutor<User> {
    /**
     * 查询登录用户信息
     * @param login_name
     * @param login_pwd
     * @return
     */
    User findByLoginnameAndLoginpwd(String login_name, String login_pwd);

    /**
     * 根据科室、挂号级别查询医生
     * @param deptId
     * @param level
     * @return
     */
    List<User> findAllByDeptidAndRlevel(Integer deptId,String level);

    User findUserByDeptid(int deptid);
}
