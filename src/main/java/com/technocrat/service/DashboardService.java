package com.technocrat.service;

import com.technocrat.model.Stats;

import java.util.ArrayList;

public interface DashboardService {

    Object saveDashboardImage(String contextPath);
    public Object saveForeCastImage(String contextPath);
    public Stats getStats();
}
