package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "product_cat_mapping")
@Getter
@Setter
@ToString
public class ProductCategoryMapping {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "c_id")
    private int categoryId;

    @Column(name = "p_id")
    private int productId;

}


