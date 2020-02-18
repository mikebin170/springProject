package com.et.manager.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.et.manager.dao.EnterpriseTalentMapper;
import com.et.manager.po.EnterpriseTalent;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EnterpriseTalentService {

    @Resource
    private EnterpriseTalentMapper enterprisetalentMapper;

    public PageInfo<EnterpriseTalent> selectAll(int pageNum,int pageSize,EnterpriseTalent e){
        QueryWrapper queryWrapper = new QueryWrapper();
        if (e.getDepartmentId()!=null){
            queryWrapper.eq("department_id",e.getDepartmentId());
        }
        queryWrapper.orderBy(true,false,"id");
        //分页处理
        PageHelper.startPage(pageNum,pageSize);
        List<EnterpriseTalent> list = enterprisetalentMapper.selectList(queryWrapper);
        PageInfo<EnterpriseTalent> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }

    public EnterpriseTalent get(Integer id) {
        return enterprisetalentMapper.selectById(id);
    }

    public int add(EnterpriseTalent enterpriseTalent) {
        return enterprisetalentMapper.insert(enterpriseTalent);
    }

    public int update(EnterpriseTalent enterpriseTalent) {
        return enterprisetalentMapper.updateById(enterpriseTalent);
    }

    public int delete(Integer id) {
        return enterprisetalentMapper.deleteById(id);
    }
}
