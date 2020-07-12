package com.technocrat.service;

import java.util.List;

public interface SalesService {
    List<Object> getSalesData(int start, int end);

    List<Object> getSalesData();
}
