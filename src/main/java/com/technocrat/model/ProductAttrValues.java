package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "prod_attr_values")
@Getter
@Setter
@ToString
public class ProductAttrValues {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "product_id")
    private String productId;

    @Column(name = "name")
    private String name;

    @Column(name = "value")
//    @NotNull
    private String value;

}
