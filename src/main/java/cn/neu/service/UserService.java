package cn.neu.service;

import cn.neu.dao.DepartmentDao;
import cn.neu.dao.UserDao;
import cn.neu.po.Department;
import cn.neu.po.User;
import cn.neu.util.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author WCJ
 * @Description
 **/
@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private DepartmentDao departmentDao;

    /**
     * 登录验证：
     * 用户名和密码正确，返回user对象
     * 用户名或密码错误，放回null
     * @param login_name
     * @param login_pwd
     * @return
     */
    public User checkUser(String login_name, String login_pwd) {
        User user =  userDao.findByLoginnameAndLoginpwd(login_name, MD5Utils.code(login_pwd));
        return user;
    }

    /**
     * 根据科室名称和挂号级别查询医生
     * @param deptName
     * @param cat
     * @return
     */
    public List<User> findByDeptAndCat(String deptName,String cat){
        Department d = departmentDao.findByDeptName(deptName);
        int dept = d.getDeptId();
        return userDao.findAllByDeptidAndRlevel(dept,cat);
    }
}
