package com.et.manager.controller;

import com.et.manager.po.Department;
import com.et.manager.po.EnterpriseTalent;
import com.et.manager.service.DepartmentService;
import com.et.manager.service.EnterpriseTalentService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
//@RequestMapping(value = "/et")
public class EnterpriseTalentController {
    @Resource
    private EnterpriseTalentService enterpriseTalentService;

    @Resource
    private DepartmentService departmentService;

    @RequestMapping("/")
    public String index() {
        return "forward:/list";
    }

    /**
     * 下拉框
     *
     * @param model
     */
    public void drop_box(Model model) {
        List<Department> list = departmentService.selectAll();
        model.addAttribute("dtList",list);
    }

    @RequestMapping(value = "/list")
    public String list(Model model,
                       @RequestParam(defaultValue = "1") int pageNum,
                       @RequestParam(defaultValue = "5")int pageSize,
                       EnterpriseTalent talent){
        //下拉框
        drop_box(model);
        //查询人才列表的集合
        PageInfo<EnterpriseTalent> page = enterpriseTalentService.selectAll(pageNum,pageSize,talent);
        if (page.getList().size()==0){
            page = enterpriseTalentService.selectAll(1,pageSize,talent);
        }
        model.addAttribute("page",page);
        return "list";
    }

    //去添加
    @RequestMapping("/toAdd")
    public String toAdd(Model model) {
        drop_box(model);
        return "add";
    }

    //添加
    @RequestMapping("/add")
    public String add(EnterpriseTalent enterpriseTalent) {
        enterpriseTalentService.add(enterpriseTalent);
        return "redirect:/list";
    }

    //去修改页面
    @RequestMapping("/toUpdate/{id}")
    public String toUpdate( @PathVariable("id") Integer id, Model model) {
        //调用下拉框
        drop_box(model);
        EnterpriseTalent e = enterpriseTalentService.get(id);
        model.addAttribute("e", e);
        return "update";
    }

    //修改操作
    @RequestMapping("/update")
    public String update(EnterpriseTalent enterpriseTalent, Model model) {
        enterpriseTalentService.update(enterpriseTalent);
        return "redirect:/";
    }

    //删除
    @RequestMapping("/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        enterpriseTalentService.delete(id);
        return "redirect:/";
    }
}
