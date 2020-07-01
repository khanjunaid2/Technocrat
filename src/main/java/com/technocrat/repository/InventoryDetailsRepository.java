package com.technocrat.repository;

import com.technocrat.model.InventoryDetails;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InventoryDetailsRepository extends CrudRepository<InventoryDetails, Integer> {
}
