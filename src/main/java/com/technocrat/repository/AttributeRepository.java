package com.technocrat.repository;

import com.technocrat.model.Attributes;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttributeRepository extends CrudRepository<Attributes, Integer> {

    @Query(value = "SELECT * FROM attribute where att_group_id= ?1" ,  nativeQuery = true)
    List<Attributes> findAttribute(@Param("attrGrpId") int attrGrpId);

    @Query(value = "SELECT * FROM attribute" ,  nativeQuery = true)
    List<Attributes> findAll();
}
