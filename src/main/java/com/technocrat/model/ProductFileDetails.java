package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "product_file_details")
@Getter
@Setter
@ToString
public class ProductFileDetails {

    @Id
    @Column(name = "p_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int productUniqueId;

    @Column(name = "image")
//    @NotNull
    private String image;

    @Column(name = "image_description")
//    @NotNull
    private String imageDescription;

    @Column(name = "file_size")
//    @NotNull
    private int fileSize;

    @Column(name = "last_modified")
//    @NotNull
    private Date lastModified;
}
