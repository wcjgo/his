package cn.neu.controller;

import cn.neu.po.User;
import cn.neu.service.UserService;
import cn.neu.vo.ResultInfo;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author WCJ
 * @Description 登陆相关
 **/
@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String first(){
        return "login";
    }

    /**
     * 返回登陆信息
     * @param username
     * @param password
     * @param response
     * @param request
     * @throws Exception
     */
    @RequestMapping(value = {"/login"},method = RequestMethod.POST)
    public void login(@RequestParam(name = "username") String username,
                      @RequestParam(name = "password") String password,
                      HttpServletResponse response,
                      HttpServletRequest request)throws Exception{
        User user = userService.checkUser(username, password);

        ResultInfo info = new ResultInfo();
        if (user != null) {
            info.setFlag(true);
            user.setLoginpwd("");
        } else {
            //用户名或密码错误
            info.setFlag(false);
            info.setErrorMsg("用户名或密码错误");
        }
        ObjectMapper mapper = new ObjectMapper();
        response.setContentType("application/json;charset=utf-8");
        request.getSession().setAttribute("user",user);
        mapper.writeValue(response.getOutputStream(),info);
    }

    /**
     * 返回登陆用户信息json
     * @param response
     * @param request
     * @throws Exception
     */
    @GetMapping("/findUser")
    public void findUser(HttpServletResponse response, HttpServletRequest request)throws Exception{
        Object user = request.getSession().getAttribute("user");
        ObjectMapper mapper = new ObjectMapper();
        response.setContentType("application/json;charset=utf-8");
        mapper.writeValue(response.getOutputStream(),user);
    }

    /**
     * 退出登录
     * @param response
     * @param request
     * @throws Exception
     */
    @GetMapping("/exit")
    public void Logout(HttpServletResponse response, HttpServletRequest request)throws Exception{
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath());
    }
}


