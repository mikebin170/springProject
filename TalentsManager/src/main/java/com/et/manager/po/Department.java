package com.et.manager.po;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "department")
public class Department {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name ="name")
    private String name;
}
