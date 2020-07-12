package com.technocrat.repository;

import com.technocrat.model.Sales;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SalesRepository extends CrudRepository<Sales,Integer> {


    @Query(value = "Select t.date as date, s.store_name as store, p.product_name as product, t.sales as sales\n" +
            "From training_data as t ,  stores as s, product_details as p\n" +
            "Where t.store = s.id\n" +
            "  and p.p_id = item\n" +
            "limit ?1 offset ?2" ,  nativeQuery = true)
    List<Object> getSalesData(@Param("end") int end , @Param("start") int start);


    @Query(value = "Select t.date as date, s.store_name as store, p.product_name as product, t.sales as sales\n" +
            "From training_data as t ,  stores as s, product_details as p\n" +
            "Where t.store = s.id\n" +
            "  and p.p_id = item\n" +
            "limit 1000" ,  nativeQuery = true)
    List<Object> getSalesData();
}
