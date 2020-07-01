package com.technocrat.repository;

import com.technocrat.model.ReviewsDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReviewsDetailsRepository extends CrudRepository<ReviewsDetails, Integer> {
}
