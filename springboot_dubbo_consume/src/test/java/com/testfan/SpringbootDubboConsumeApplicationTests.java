package com.testfan;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.alibaba.dubbo.config.annotation.Reference;
import com.testfan.service.inf.ComputeService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootDubboConsumeApplicationTests {
	
	  @Reference(version="1.0.0")
	  private ComputeService computeService;
	  

	@Test
	public void contextLoads() {
		System.out.println(computeService.add(1, 2));
	}

}
