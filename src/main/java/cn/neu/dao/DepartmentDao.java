package cn.neu.dao;

import cn.neu.po.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * @Author WCJ
 * @Description
 **/
public interface DepartmentDao extends JpaSpecificationExecutor<Department>, JpaRepository<Department,Integer> {
    Department findByDeptName(String deptName);
}
