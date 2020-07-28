package com.technocrat.repository;

import com.technocrat.model.Sales;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SalesRepository extends CrudRepository<Sales,Integer> {


    @Query(value = "Select t.date as date, s.store_name as store, p.product_name as product, t.total_sales as sales\n" +
            "            From sales_data as t ,  stores as s, product_details as p\n" +
            "            Where t.store_id = s.id\n" +
            "             and p.p_id = product_id \n" +
            "            limit 1000",  nativeQuery = true)
    List<Object> getSalesData();
}
