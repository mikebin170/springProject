package com.et.manager.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "enterprise_talent")
public class EnterpriseTalent {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @TableId(type = IdType.AUTO)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "workingLife")
    private Integer workingLife;

    @Column(name = "workExperience")
    private String workExperience;

    @Column(name = "personalProfile")
    private String personalProfile;

    @Column(name = "departmentId")
    private Integer departmentId;

    @Column(name = "graduateSchool")
    private String graduateSchool;

    public Integer getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }
}
