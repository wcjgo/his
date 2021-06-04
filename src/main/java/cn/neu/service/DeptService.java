package cn.neu.service;

import cn.neu.dao.DepartmentDao;
import cn.neu.po.Department;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class DeptService {
    @Autowired
    private DepartmentDao deptDao;

    public List<Department> findAll(){
        return deptDao.findAll();
    }

    public Department findByDeptName(String deptName) {
       return deptDao.findByDeptName(deptName);
    }
}
