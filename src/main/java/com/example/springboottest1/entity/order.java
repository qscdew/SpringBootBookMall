package com.example.springboottest1.entity;

public class order {
    private int orderid;
    private int bookid;
    private String orderusername;

    public  int getorderid(){return orderid;}
    public  void setorderid(int orderid){this.orderid=orderid;}
    public  int getbookid(){return bookid;}
    public  void setbookid(int bookid){this.bookid=bookid;}
    public  String getorderusername(){return orderusername;}
    public  void setorderusername(String orderusername){this.orderusername=orderusername;}
}
