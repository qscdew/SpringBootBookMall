package com.example.springboottest1.controller;

import com.example.springboottest1.entity.books;
import com.example.springboottest1.entity.orders;
import com.example.springboottest1.entity.messages;
import com.example.springboottest1.entity.adminorder;
import com.example.springboottest1.entity.userinfo;
import com.example.springboottest1.entity.types;
import com.example.springboottest1.entity.nations;
import com.example.springboottest1.entity.writers;
import com.example.springboottest1.entity.press;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import org.springframework.jdbc.core.RowMapper;


/**
 * 这部分是最开始创建项目时，为了测试项目能否正常运行写的一个测试
 *
 * 访问http://localhost:8080/hello/springboot     可在页面看见：HelloWord
 *
 * */

@Controller
@RequestMapping(value = {"/"})
public class HelloController {


    @Autowired
    private JdbcTemplate jdbcTemplate;


    @RequestMapping("/")
    public String Index(Model model,HttpServletRequest request) {

        String sql = "select * from books";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper);
        model.addAttribute("hello",books);

        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));
        return "index";
    }
    @RequestMapping("/all")
    public String all(Model model,HttpServletRequest request) {

        String sql = "select * from books";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper);
        model.addAttribute("hello",books);


        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));
        return "all";
    }

    @RequestMapping("/category")
    public String category(Model model,HttpServletRequest request) {

        //获取全部分类
        String sql = "select distinct(Type) from books";
        RowMapper<types> rowMapper=new BeanPropertyRowMapper<types>(types.class);
        List<types> types= jdbcTemplate.query(sql, rowMapper);
        model.addAttribute("types",types);

        //获取全部作者
        String sql2 = "select * from author";
        RowMapper<writers> rowMapper2=new BeanPropertyRowMapper<writers>(writers.class);
        List<writers> con= jdbcTemplate.query(sql2, rowMapper2);
        model.addAttribute("authors",con);



        //获取全部出版社
        String sql4 = "select * from press";
        RowMapper<press> rowMapper4=new BeanPropertyRowMapper<press>(press.class);
        List<press> press= jdbcTemplate.query(sql4, rowMapper4);
        model.addAttribute("press",press);

        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "category";
    }

    //具体的某个分类页面
    @RequestMapping(value="/cate")
    public String cate(@RequestParam("id")String id, Model model,HttpServletRequest request) {
        String sql = "select * from books where Type=? ";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper,id);
        model.addAttribute("hello",books);//添加一个值为"hello thymeleaf"的hello变量到视图


        //获取用户名
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "all";
    }

    @RequestMapping(value="/cateau")
    public String cateau(@RequestParam("au")int au, Model model,HttpServletRequest request) {
        String sql = "select * from books where authorid=? ";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper,au);
        model.addAttribute("hello",books);//添加一个值为"hello thymeleaf"的hello变量到视图


        //获取用户名
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "all";
    }
    @RequestMapping(value="/catepress")
    public String catepress(@RequestParam("id")int id, Model model,HttpServletRequest request) {
        String sql = "select * from books where pressid=? ";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper,id);
        model.addAttribute("hello",books);//添加一个值为"hello thymeleaf"的hello变量到视图


        //获取用户名
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "all";
    }

    @RequestMapping(value="/catena")
    public String catena(@RequestParam("id")String id, Model model,HttpServletRequest request) {
        String sql = "select * from books where Nation=? ";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper,id);
        model.addAttribute("hello",books);//添加一个值为"hello thymeleaf"的hello变量到视图


        //获取用户名
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "all";
    }

    @RequestMapping(value="/search")
    public String search(@RequestParam("text")String text, Model model,HttpServletRequest request) {
        String sql = "select * from books where Title like ? or Brief like ?";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper,"%"+text+"%","%"+text+"%");
        model.addAttribute("hello",books);

        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));
        return "search";
    }

    @RequestMapping(value="/detail")
    public String detail(@RequestParam("id")int id, Model model,HttpServletRequest request) {
        String sql = "select books.* ,author.Nation,author.Author,press.Press from books,author,press where books.authorid=author.ID and books.pressid=press.ID and books.ID=?";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        books book= jdbcTemplate.queryForObject(sql, rowMapper,id);

        String sql2 = "select * from messages where mbookid=? ";
        RowMapper<messages> rowMapper2=new BeanPropertyRowMapper<messages>(messages.class);
        List<messages> message= jdbcTemplate.query(sql2, rowMapper2,id);
        //System.out.println(message.get(0).gettext());

        model.addAttribute("book",book);//添加一个值为"hello thymeleaf"的hello变量到视图
        model.addAttribute("message",message);


        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        return "detail";
    }


    @RequestMapping(value = {"/addmessage"})
    public String addmessage(Model model,@RequestParam("text") String text,
                             @RequestParam("bookid") int bookid,HttpServletRequest request){

        //if(StringUtils.isEmpty(inputAddress)){
        //     return "用户名不能为空";
        //}

        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        map.get("message");
        String sql = "insert into messages(mbookid,musername,text) " +
               "value(?,?,?)";
       jdbcTemplate.update(sql,bookid,map.get("message"),text);



        String sql2 = "select * from books";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql2, rowMapper);
        model.addAttribute("hello",books);



        model.addAttribute("user",map.get("message"));
        return "all";
    }

    @RequestMapping("/myhome")
    public String myhome(Model model,HttpServletRequest request) {


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


    @RequestMapping(value = {"/edituserinfo"})
    public String edituserinfo(@RequestParam("irealname") String irealname,
                          @RequestParam("isex") String isex,
                          @RequestParam("iage") String iage,
                          @RequestParam("iphone") String iphone,
                          @RequestParam("iadress") String iadress,
                          Model model,HttpServletRequest request
    ){

        //获取当前登录用户
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        String sql="update userinfo set isex=? ,iage=?,iphone=?,irealname=?,iaddress=? where iusername=?";
        jdbcTemplate.update(sql,isex,Integer.parseInt(iage),Integer.parseInt(iphone),irealname,iadress,map.get("message"));
        String sql2 = "select * from userinfo where iusername=?";
        RowMapper<userinfo> rowMapper2=new BeanPropertyRowMapper<userinfo>(userinfo.class);
        List<userinfo> userinfo= jdbcTemplate.query(sql2, rowMapper2,map.get("message"));

        model.addAttribute("info",userinfo.get(0));//添加一个值为"hello thymeleaf"的hello变量到视图




        model.addAttribute("name",map.get("message"));
        return "myhome";
    }


    @RequestMapping("/allorder")
    public String allorder(Model model,HttpServletRequest request) {


        //获取当前登录用户
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("user",map.get("message"));

        //获取订单
        String sql = "select * from orders where orderusername =?";
        RowMapper<orders> rowMapper=new BeanPropertyRowMapper<orders>(orders.class);
        List<orders> orders= jdbcTemplate.query(sql, rowMapper,map.get("message"));


        String sql2 = "select books.* from books,orders where books.ID = orders.bookid and orders.orderusername=?";
        RowMapper<books> rowMapper2=new BeanPropertyRowMapper<books>(books.class);
        List<books> book= jdbcTemplate.query(sql2, rowMapper2,map.get("message"));

       model.addAttribute("books",book);//添加一个值为"hello thymeleaf"的hello变量到视图



        model.addAttribute("orders",orders);
        model.addAttribute("name",map.get("message"));
        return "allorder";
    }

    @RequestMapping(value="/buy")
    public String buy(@RequestParam("id")int id, Model model,HttpServletRequest request) {
        //获取当前登录用户
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));


        String sql="insert into orders (bookid,orderusername) values (?,?)";
        jdbcTemplate.update(sql, new Object[]{id,map.get("message")});





        String sql2 = "select books.* from books,orders where books.ID = orders.bookid and orders.orderusername=?";
        RowMapper<books> rowMapper2=new BeanPropertyRowMapper<books>(books.class);
        List<books> book= jdbcTemplate.query(sql2, rowMapper2,map.get("message"));

        model.addAttribute("books",book);//添加一个值为"hello thymeleaf"的hello变量到视图




        model.addAttribute("name",map.get("message"));

        return "allorder";
    }









    //以下为管理员可使用 add.html
    @RequestMapping("/admin")
    public String admin(Model model,HttpServletRequest request) {
        //获取当前登录用户
        Map<String, Object> map = new HashMap<>();
        map.put("sessionId", request.getSession().getId());  // 取值
        map.put("message", request.getSession().getAttribute("session_user"));
        model.addAttribute("hello","这里是管理员界面");
        return "admin";
    }

    //q全部被订单
    @RequestMapping("/admin/allorder")
    public String adminorder(Model model) {
        String sql = "select books.*,orders.*,user.* from orders,books,user where orders.bookid=books.ID and user.username=orders.orderusername";
        RowMapper<adminorder> rowMapper=new BeanPropertyRowMapper<adminorder>(adminorder.class);
        List<adminorder> adminorder= jdbcTemplate.query(sql, rowMapper);

        model.addAttribute("orders",adminorder);
        return "adminorder";
    }

    @RequestMapping(value="/admin/deleteorder")
    public String deleteorder(@RequestParam("id")int id, Model model) {
        String sql = "delete  from orders where orderid=?";
        jdbcTemplate.update(sql,id);

        String sql2 = "select books.*,orders.*,user.* from orders,books,user where orders.bookid=books.ID and user.username=orders.orderusername";
        RowMapper<adminorder> rowMapper=new BeanPropertyRowMapper<adminorder>(adminorder.class);
        List<adminorder> adminorder= jdbcTemplate.query(sql2, rowMapper);

        model.addAttribute("orders",adminorder);
        return "adminorder";
    }


    //跳至图书表单生成页面
    @RequestMapping("/add")
    public String add(Model model) {
        String sql = "select * from books";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql, rowMapper);

        model.addAttribute("books",books);
        return "add";
    }


    @RequestMapping(value = {"/addbook"})
    public String addbook(@RequestParam("title") String title,
                          @RequestParam("author") String author,
                          @RequestParam("nation") String nation,
                          @RequestParam("originaltitle") String originaltitle,
                          @RequestParam("press") String press,
                          @RequestParam("pages") String pages,
                          @RequestParam("price") String price,
                          @RequestParam("type") String type,
                          @RequestParam("brief") String brief, Model model
                          ){

        //if(StringUtils.isEmpty(inputAddress)){
       //     return "用户名不能为空";
        //}



        String sql = "call addnewbook(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql,type,title, pages,price,brief,author,nation,press);



        String sql2 = "select books.* ,author.Nation,author.Author,press.Press from books,author,press where books.authorid=author.ID and books.pressid=press.ID";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql2, rowMapper);

        model.addAttribute("books",books);
        return "add";
}

    @RequestMapping(value="/deletebook")
    public String deletebook(@RequestParam("id")int id, Model model) {
        String sql = "delete  from books where id=?";
        jdbcTemplate.update(sql,id);

        String sql2 = "select * from books";
        RowMapper<books> rowMapper=new BeanPropertyRowMapper<books>(books.class);
        List<books> books= jdbcTemplate.query(sql2, rowMapper);

        model.addAttribute("books",books);
        return "add";
    }




}
