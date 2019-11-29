package com.example.springboottest1.entity;

public class adminorder {
    private int orderid;
    private int bookid;
    private String orderusername;

    public  int getorderid(){return orderid;}
    public  void setorderid(int orderid){this.orderid=orderid;}
    public  int getbookid(){return bookid;}
    public  void setbookid(int bookid){this.bookid=bookid;}
    public  String getorderusername(){return orderusername;}
    public  void setorderusername(String orderusername){this.orderusername=orderusername;}
    private int ID;
    private String Type;
    private String Title;
    private String Author;
    private String Press;
    private int Pages;
    private double Price;
    private String Nation;
    private String Brief;


    public  int getID(){return ID;}
    public  void setID(int id){this.ID=id;}

    public  String getType(){return Type;}
    public  void setType(String type){this.Type=type;}

    public  String getTitle(){return Title;}
    public  void setTitle(String title){this.Title=title;}

    public  String getAuthor(){return Author;}
    public  void setAuthor(String Author){this.Author=Author;}

    public  String getPress(){return Press;}
    public  void setPress(String Press){this.Press=Press;}

    public  String getNation(){return Nation;}
    public  void setNation(String Nation){this.Nation=Nation;}

    public  String getBrief(){return Brief;}
    public  void setBrief(String Brief){this.Brief=Brief;}

    public  int getPages(){return Pages;}
    public  void setPages(int Pages ){this.Pages=Pages;}

    public  double Price(){return Price;}
    public  void setPrice(double Price ){this.Price=Price;}
    private String id;

    private String username;

    private String password;

    private Integer age;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}