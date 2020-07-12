package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sales_data")
@Getter
@Setter
@ToString
public class Sales {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "product_id")
    private int productId;

    @Column(name = "store_id")
    private int storeId;

    @Column(name = "date")
    private Date date;

    @Column(name = "total_sales")
    private int sales;


}
