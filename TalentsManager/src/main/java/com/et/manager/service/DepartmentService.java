package com.et.manager.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.et.manager.dao.DepartmentMapper;
import com.et.manager.po.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentService {

    @Resource
    private DepartmentMapper departmentMapper;

    /**
     * 查询全部
     * @return
     */
    public List<Department> selectAll(){
        return departmentMapper.selectList(null);
    }
}
