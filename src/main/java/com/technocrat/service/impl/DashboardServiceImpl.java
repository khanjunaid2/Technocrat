package com.technocrat.service.impl;

import com.technocrat.model.Stats;
import com.technocrat.repository.StatsRepository;
import com.technocrat.service.DashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Service
public class DashboardServiceImpl implements DashboardService {

    @Autowired
    StatsRepository statsRepo;


    @Override
    public Object saveDashboardImage(String contextPath) {
        String res= contextPath;
        String uri = "http://127.0.0.1:5000/dashbrdImg?path="+contextPath;
        RestTemplate restTemplate = new RestTemplate();
        Object result = restTemplate.getForObject(uri, Object.class);
        return result;
    }


    @Override
    public Object saveForeCastImage(String contextPath) {
        String res= contextPath;
        String uri = "http://127.0.0.1:5000/foreCast?path="+contextPath;
        RestTemplate restTemplate = new RestTemplate();
        Object result = restTemplate.getForObject(uri, Object.class);
        return result;
    }


    @Override
    public Stats getStats() {

        Stats stats = new Stats();
        stats.setTotalSales(statsRepo.getTotalSales());
        stats.setDailyAvgSales((int)statsRepo.getDailyAvgSale());

        List<Object[]> obj = statsRepo.getYearlytotalSale();
        List<Object[]> obj1 = statsRepo.getMonthlytotalSale();



        stats.setPerYearAvgSale((int) statsRepo.getPerYearAvgSale());
        stats.setPerMonthAvgSale((int) statsRepo.getPerMonthAvgSale());


        stats.setHighestMonth(statsRepo.gethighestMonth());
        stats.setHighestYear(statsRepo.gethighestYear());

        stats.setYearlyTotalSale(obj);
        stats.setMonthylTotalSale(obj1);
        return stats;
    }
}
