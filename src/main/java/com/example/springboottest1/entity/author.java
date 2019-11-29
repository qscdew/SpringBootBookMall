package com.example.springboottest1.entity;

public class author {

    private String authorid;

    private String authorname;

    private String authornation;

    private String authorbrief;



    public String getId() {
        return authorid;
    }

    public void setId(String id) {
        this.authorid = id;
    }

    public String getauthorname() {
        return authorname;
    }

    public void setauthorname(String username) {
        this.authorname = username == null ? null : username.trim();
    }

    public String getauthornation() {
        return authornation;
    }

    public void setauthornation(String password) {
        this.authornation = password == null ? null : password.trim();
    }

    public String getauthorbrief() {
        return authorbrief;
    }

    public void setauthorbrief(String password) {
        this.authorbrief = password == null ? null : password.trim();
    }

}