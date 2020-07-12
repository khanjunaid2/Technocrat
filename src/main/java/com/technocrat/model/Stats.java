package com.technocrat.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
@Getter
@Setter
@ToString
public class Stats {

    int totalSales;
    int dailyAvgSales;
    int monthSales;
    int perYearAvgSale;
    int perMonthAvgSale;
    Object[] highestMonth;
    Object[] highestYear;

    List<Object[]> yearlyTotalSale;
    List<Object[]> monthylTotalSale;

    Map<String,Integer > yearSales;

    public Map<String, Integer> getYearSales() {
        return yearSales == null ? new HashMap<>() : yearSales;
    }
}
