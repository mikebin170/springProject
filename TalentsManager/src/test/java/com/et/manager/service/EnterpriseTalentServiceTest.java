package com.et.manager.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.et.manager.dao.EnterpriseTalentMapper;
import com.et.manager.po.EnterpriseTalent;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EnterpriseTalentServiceTest {

    @Resource
    private EnterpriseTalentMapper enterprisetalentMapper;

    @Test
    public void selectAll(){
        /*QueryWrapper queryWrapper = new QueryWrapper();
        EnterpriseTalent enterpriseTalent = new EnterpriseTalent();
        enterpriseTalent.setDepartmentId(null);
        if (enterpriseTalent.getDepartmentId()!=null){
            queryWrapper.eq("department_id",enterpriseTalent.getDepartmentId());
        }
        PageHelper.startPage(2,5);
        List<EnterpriseTalent> list = enterprisetalentMapper.selectList(queryWrapper);

        PageInfo<EnterpriseTalent> pageInfo = new PageInfo<>(list);
        System.out.println(pageInfo.getPageNum()+"\t"+pageInfo.getPageSize());*/

    }
}