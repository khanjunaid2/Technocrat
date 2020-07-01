package com.technocrat.repository;

import com.technocrat.model.ProductFileDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductFileDetailsRepository extends CrudRepository<ProductFileDetails, Integer> {
}
