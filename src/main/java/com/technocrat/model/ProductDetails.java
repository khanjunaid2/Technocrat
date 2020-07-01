package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;


@Entity
@Table(name = "product_details")
@Getter
@Setter
@ToString
public class ProductDetails {

    @Id
    @Column(name = "p_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productUniqueId;


    @Column(name = "product_name")
    private String name;


    @Column(name = "att_group_id")
//    @NotNull
    private String catGroupId;


}
