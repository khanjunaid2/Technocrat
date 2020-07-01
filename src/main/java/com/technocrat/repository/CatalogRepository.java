package com.technocrat.repository;

import com.technocrat.model.Category;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CatalogRepository extends CrudRepository<Category, Integer> {
}
