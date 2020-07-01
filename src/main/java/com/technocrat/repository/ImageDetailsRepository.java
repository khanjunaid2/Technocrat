package com.technocrat.repository;

import com.technocrat.model.ImageDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ImageDetailsRepository extends CrudRepository<ImageDetails, Integer> {
}
