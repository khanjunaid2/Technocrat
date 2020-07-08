package com.technocrat.service.impl;

import com.technocrat.service.DashboardService;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;

@Service
public class DashboardServiceImpl implements DashboardService {

    @Override
    public Object saveDashboardImage(String contextPath) {
        String res= contextPath;
        String uri = "http://127.0.0.1:5000/dashboardImages?path="+contextPath;
        RestTemplate restTemplate = new RestTemplate();
        Object retn = restTemplate.getForObject(uri, Object.class);
        ArrayList<String> result = new ArrayList<>();
        result.add("Abhijeet");
        result.add("dashboard/chelsea.jpg");
        return retn;
    }
}
