package com.et.manager;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication()
@MapperScan(basePackages = "com.et.manager.dao")
@EntityScan(basePackages = "com.et.manager.po")
public class DemoApplication{
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class,args);
    }

}
