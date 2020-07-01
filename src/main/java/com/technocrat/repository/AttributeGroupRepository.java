package com.technocrat.repository;

import com.technocrat.model.AttributeGroup;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttributeGroupRepository extends CrudRepository<AttributeGroup, Integer> {
    List<AttributeGroup> findAll();
}
