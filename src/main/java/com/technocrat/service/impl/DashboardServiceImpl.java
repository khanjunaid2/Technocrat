package com.technocrat.service.impl;

import com.technocrat.service.DashboardService;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;

@Service
public class DashboardServiceImpl implements DashboardService {

    @Override
    public ArrayList<String> saveDashboardImage(String contextPath) {
//        String res= contextPath;
//        String uri = "http://localhost:8088/test?path="+contextPath;
//        RestTemplate restTemplate = new RestTemplate();
//        ArrayList<String> result = (ArrayList<String>) restTemplate.getForObject(uri, Object.class);
        ArrayList<String> result = new ArrayList<>();
        result.add("Abhijeet");
        result.add("dashboard/chelsea.jpg");
        return result;
    }
}
