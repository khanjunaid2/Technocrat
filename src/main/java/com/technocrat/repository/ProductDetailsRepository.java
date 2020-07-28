package com.technocrat.repository;

import com.technocrat.model.ProductAttrValues;
import com.technocrat.model.ProductDetails;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDetailsRepository extends CrudRepository<ProductDetails, Integer> {

    @Query(value = "SELECT att_group_id FROM product_details where product_name= ?1" ,  nativeQuery = true)
    int findAttGrp(@Param("productName") String productName);
}
