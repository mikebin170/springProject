package com.testfan.service.impl;

import org.springframework.stereotype.Component;

import com.alibaba.dubbo.config.annotation.Service;
import com.testfan.service.inf.ComputeService;

@Service(interfaceClass = ComputeService.class, version= "1.0.0")
@Component 
public class ComputeServiceImpl implements ComputeService {

    public Integer add(int a, int b) {
        return a + b;
    }

}
