package com.technocrat.repository;

import com.technocrat.model.ProductCategoryMapping;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductCategoryMappingRepository extends CrudRepository<ProductCategoryMapping, Integer> {
}
