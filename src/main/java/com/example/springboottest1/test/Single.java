package com.example.springboottest1.test;

public class Single {

    private Single() { }

    private static Single sin = new Single();

//    public static Single getSingle(){
//
//        return sin;
//    }

    public static Single getSingle(){

        if(sin == null){
            sin = new Single();
        }

        return sin;
    }

}
