package com.example.springboottest1.entity;

public class userinfo {
    private int iid;
    private int iage;
    private int iphone;

    private String iusername;
    private String isex;
    private String irealname;
    private String iaddress;

    public  int getiid()
    {
        return iid;
    }
    public  void setiid(int iid){this.iid=iid;}

    public  int getiphone(){
        return iphone;
    }
    public  void setiphone(int mbookid){this.iphone=mbookid;}

    public  int getiage(){return iage;}
    public  void setiage(int mbookid){this.iage=mbookid;}

    public  String getisex(){return isex;}
    public  void setisex(String text){this.isex=text;}

    public  String getirealname(){return irealname;}
    public  void setirealname(String text){this.irealname=text;}

    public  String getiaddress(){return iaddress;}
    public  void setiaddress(String text){this.iaddress=text;}

    public  String getiusername(){return iusername;}
    public  void setiusername(String iusername){this.iusername=iusername;}
}
