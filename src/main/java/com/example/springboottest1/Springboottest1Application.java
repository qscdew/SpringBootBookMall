package com.example.springboottest1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.example.springboottest1.mapper")
//@ComponentScan(basePackages = {"com.example.*"})
public class Springboottest1Application {

	public static void main(String[] args) {
		SpringApplication.run(Springboottest1Application.class, args);
	}
}
