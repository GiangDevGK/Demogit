package com.controller.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Categories")
public class Categories {
    @Id
    @Column(name = "Id")
    private String id;

    @Column(name = "Name")
    private String name;
}
