package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "category")
@Getter
@Setter
@ToString
public class Category {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;

    @Column(name = "c_name")
//    @NotNull
    private String categoryName;


    @Column(name = "c_desc")
//    @NotNull
    private String categoryDesc;

}
