package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "review_details")
@Getter
@Setter
@ToString
public class ReviewsDetails {


    @Id
    @Column(name = "c_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;

    @Column(name = "product_id")
//    @NotNull
    private String productID;

    @Column(name = "rating")
//    @NotNull
    private String rating;


    @Column(name = "review")
//    @NotNull
    private String review;

    @Column(name = "review_comments")
//    @NotNull
    private String reviewComments;
}
