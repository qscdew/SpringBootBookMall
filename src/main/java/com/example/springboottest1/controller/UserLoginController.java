package com.example.springboottest1.controller;

import com.example.springboottest1.entity.User;
import com.example.springboottest1.entity.books;
import com.example.springboottest1.entity.userinfo;
import com.example.springboottest1.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



@Controller
@RequestMapping(value = {"/user"})
public class UserLoginController {

    /**
     * 最开始希望用Map的形式接参数，后来不用了，将请求对应的接受方式记录一下
     *
     * @RequestBody Map<String,Object> map      post请求
     * @RequestParam Map<String,Object> map     get请求
     */

    /**
     * 注入service
     */
    @Autowired
    private UserLoginService userLoginService;

    @Autowired
    private JdbcTemplate jdbcTemplate;


    /**
     * 同时这个时候可以自己了解一下@Controller与@RestController的区别，以及@ResponseBody的用法。
     */

    /**
     * 跳转到用户登录页面
     * @return 登录页面
     */
    @RequestMapping(value = {"/loginHtml"})
    public String loginHtml(){
        return "userLogin";
    }

    /**
     * 跳转到用户注册页面
     * @return 注册页面
     */
    @RequestMapping(value = {"/registerpage"})
    public String registerpage(){
        return "register";
    }

    /**
     * 获取用户名与密码，用户登录
     * @return 登录成功页面
     */

    @RequestMapping(value = {"/userLogin"})
    public String userLogin(@RequestParam("username") String username,
                            @RequestParam("password") String password,
                            Model model, HttpServletRequest request){

        if(StringUtils.isEmpty(username)){
            return "用户名不能为空";
        }

        if(StringUtils.isEmpty(password)){
            return "密码不能为空";
        }

        User user = userLoginService.userLogin(username,password);

        if(user != null){                                                  //登录成功
            request.getSession().setAttribute("session_user",user.getUsername());     //将用户信息放入session  用于后续的拦截器
            //获取当前登录用户
            Map<String, Object> map = new HashMap<>();
            map.put("sessionId", request.getSession().getId());  // 取值
            map.put("message", request.getSession().getAttribute("session_user"));
            model.addAttribute("user",map.get("message"));



            String sql2 = "select * from userinfo where iusername=?";
            RowMapper<userinfo> rowMapper2=new BeanPropertyRowMapper<userinfo>(userinfo.class);
            List<userinfo> userinfo= jdbcTemplate.query(sql2, rowMapper2,map.get("message"));
            //userinfo thisinfo= jdbcTemplate.queryForObject(sql2, rowMapper2,map.get("message"));


            if(userinfo.size()==0){
                String sql="insert into userinfo(iusername,iage,iphone) values (?,?,?)";
                jdbcTemplate.update(sql,map.get("message"),0,0);

                List<userinfo> userinfo2= jdbcTemplate.query(sql2, rowMapper2,map.get("message"));
                model.addAttribute("info",userinfo2.get(0));//添加一个值为"hello thymeleaf"的hello变量到视图
                model.addAttribute("name",map.get("message"));
                return "myhome";
            }
            model.addAttribute("info",userinfo.get(0));//添加一个值为"hello thymeleaf"的hello变量到视图
            model.addAttribute("name",map.get("message"));
            return "myhome";
        }
        return "userLogin";
    }

    /**
     * 注册新用户
     * @return 注册结果
     */
    @ResponseBody
    @RequestMapping(value = {"/uregister"})
    public String addUser(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          @RequestParam("password2") String password2,
                          @RequestParam("age") int age){

        if(StringUtils.isEmpty(username)){
            return "用户名不能为空";
        }

        if(StringUtils.isEmpty(password)){
            return "密码不能为空";
        }

        if(StringUtils.isEmpty(password2)){
            return "确认密码不能为空";
        }

        if(!password.equals(password2)){
            return "两次密码不相同，注册失败！！";
        }else {
            int res = userLoginService.adduser(username,password,age);
            if(res == 0){
                return "注册失败！";
            }else {
                return "注册成功！";
            }
        }

    }

    /**
     * 用于测试拦截器（用户是否登录，查看session）
     * 查询用户列表  http://localhost:8080/user/queryAllUser
     * @return 用户列表（json串）
     */
    @ResponseBody
    @RequestMapping(value = {"/queryAllUser"})
    public List<Map<String,Object>> queryAllUser(){

        return userLoginService.queryAllUser();
    }

}
