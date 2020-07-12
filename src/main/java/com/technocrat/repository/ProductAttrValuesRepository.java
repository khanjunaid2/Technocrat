package com.technocrat.repository;

import com.technocrat.model.ProductAttrValues;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductAttrValuesRepository  extends CrudRepository<ProductAttrValues, Integer> {

    @Query(value = "SELECT * FROM prod_attr_values where product_id= ?1" ,  nativeQuery = true)
    List<ProductAttrValues> findAllByProductName(@Param("productId") String productId);


}
