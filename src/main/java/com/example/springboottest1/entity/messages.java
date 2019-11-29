package com.example.springboottest1.entity;

public class messages {
    private int messageid;
    private int mbookid;

    private String musername;
    private String text;

    public  int getmessageid()
    {
        return messageid;
    }
    public  void setmessageid(int messageid){this.messageid=messageid;}

    public  int getmbookid(){return mbookid;}
    public  void setmbookid(int mbookid){this.mbookid=mbookid;}

    public  String gettext(){return text;}
    public  void settext(String text){this.text=text;}

    public  String getmusername(){return musername;}
    public  void setmusername(String musername){this.musername=musername;}
}
