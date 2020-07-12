package com.technocrat.repository;

import com.technocrat.model.ProductAttrValues;
import com.technocrat.model.ReviewsDetails;
import com.technocrat.model.SalesData;
import com.technocrat.model.Stats;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface StatsRepository extends CrudRepository<SalesData, Integer> {

    @Query(value = "select sum(total_sales) from public.sales_data sd" ,  nativeQuery = true)
    int getTotalSales();

    @Query(value = "select avg(a.totl ) from ( select sum(total_sales) as totl from public.sales_data\n" +
            "group by date) as a" ,  nativeQuery = true)
    float getDailyAvgSale();


    @Query(value = "select avg( a.sales )\n" +
            "    from ( select\n" +
            "                   extract(year from date) as yyyy,\n" +
            "    sum(\"total_sales\") as sales\n" +
            "    from public.sales_data group by yyyy\n" +
            "    order by yyyy asc ) as a" ,  nativeQuery = true)
    float getPerYearAvgSale();

    @Query(value = "select avg( a.sales ) \n" +
            "from ( select \n" +
            "       to_char(date,'Mon') as mon,\n" +
            "       sum(\"total_sales\") as sales\n" +
            "from public.sales_data group by mon\n" +
            "order by mon asc ) as a" ,  nativeQuery = true)
    float getPerMonthAvgSale();

    @Query(value = "select  \n" +
            "       to_char(date,'Mon') as mon,\n" +
            "       sum(\"total_sales\") as sales\n" +
            "from public.sales_data group by mon\n" +
            "order by sales desc LIMIT 1 " ,  nativeQuery = true)
    Object[] gethighestMonth();


    @Query(value = "select  \n" +
            "       extract(year from date) as yyyy,\n" +
            "       sum(\"total_sales\") as sales\n" +
            "from public.sales_data group by yyyy\n" +
            "order by sales  desc LIMIT 1  " ,  nativeQuery = true)
    Object[] gethighestYear();




    @Query(value = "select \n" +
            "       extract(year from date) as yyyy,\n" +
            "       sum(\"total_sales\") as \"Sales\"\n" +
            "from public.sales_data\n" +
            "group by yyyy\n" +
            "order by yyyy ASC" ,  nativeQuery = true)
    List<Object[]> getYearlytotalSale();



    @Query(value = "select to_char(date,'Mon') as mon,\n" +
            "       sum(\"total_sales\") as \"Sales\"\n" +
            "from public.sales_data\n" +
            "group by mon\n" +
            "order by mon asc" ,  nativeQuery = true)
    List<Object[]> getMonthlytotalSale();



}
