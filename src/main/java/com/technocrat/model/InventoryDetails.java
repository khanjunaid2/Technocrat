package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "inventory_details")
@Getter
@Setter
@ToString
public class InventoryDetails {

    @Id
    @Column(name = "p_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productUniqueId;

    @Column(name = "sku")
//    @NotNull
    private String sku;

    @Column(name = "remaining_quantity")
//    @NotNull
    private int remainingQuantity;
}
