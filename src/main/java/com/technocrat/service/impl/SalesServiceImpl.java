package com.technocrat.service.impl;

import com.technocrat.repository.SalesRepository;
import com.technocrat.service.SalesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SalesServiceImpl implements SalesService {

    @Autowired
    SalesRepository salesRepository;

    @Override
    public List<Object> getSalesData(int start, int end) {
        List<Object> result = salesRepository.getSalesData(end,start);
        return result;
    }

    @Override
    public List<Object> getSalesData() {
        List<Object> result = salesRepository.getSalesData();
        return result;
    }
}
