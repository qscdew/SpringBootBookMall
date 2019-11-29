package com.example.springboottest1.test;

/**
 * 这个例子与所上传资源内容没有关系
 * 只是用来测试二位数组的两种初始化方式的不同
 */

public class testArr {
    public static void main(String[] args){

          //静态方式
        int[][] a = {{1,2,3},{2,4,5,7},{12,34,45,63}};
        for(int i=0;i<a.length;i++){
            for(int j=0;j<a[i].length;j++){
                System.out.println("a["+i+"]["+j+"] = "+a[i][j]+" ");
            }
        }

        //动态方式
//        int[][] a = new int[3][3];
//
//        a[0][0] = 1;
//        a[0][1] = 2;
//        a[0][2] = 3;
//        a[1][0] = 4;
//        a[1][1] = 5;
//        a[2][0] = 6;
//
//        for(int i=0;i<a.length;i++){
//            for(int j=0;j<a[i].length;j++){
//                System.out.println("a["+i+"]["+j+"] = "+a[i][j]+" ");
//            }
//        }
    }
}
