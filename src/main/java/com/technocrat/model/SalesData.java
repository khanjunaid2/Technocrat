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
public class SalesData {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;

    @Column(name = "product_id")
    private int productID;

    @Column(name = "store_id")
    private int rating;

    @Column(name = "date")
    private Date date;

    @Column(name = "total_sales")
    private int totalSales;
}
