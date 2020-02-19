package com.testfan;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.alibaba.dubbo.spring.boot.annotation.EnableDubboConfiguration;

@SpringBootApplication
@EnableDubboConfiguration
public class SpringbootDubboConsumeApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringbootDubboConsumeApplication.class, args);
	}
}
