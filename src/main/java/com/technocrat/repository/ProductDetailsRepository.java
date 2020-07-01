package com.technocrat.repository;

import com.technocrat.model.ProductDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailsRepository extends CrudRepository<ProductDetails, Integer> {
}
