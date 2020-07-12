package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "stores")
@Getter
@Setter
@ToString
public class Store {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;


    @Column(name = "store_name")
    private int storeName;

}

