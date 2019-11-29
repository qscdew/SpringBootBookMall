package com.example.springboottest1.entity;


public class books {
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




}
