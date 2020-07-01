package com.technocrat.service.impl;

import com.technocrat.service.ImportDataService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class ImportDataServiceImpl implements ImportDataService {

    @Override
    public List<String[]> readCSV(MultipartFile filename) throws IOException {
        log.info("Reading from CSV");
        //String fileName = "demo.csv";
        if (!filename.getOriginalFilename().endsWith("csv")) {
            throw new IOException("Please upload CSV file");
        }
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(filename.getInputStream()));
            List<String[]> tableData = new ArrayList<>();
            tableData.add(reader.readLine().split(","));
            log.info("Total columns are: {}", tableData.get(0).length);
            String row;
            while ((row = reader.readLine()) != null) {
                tableData.add(row.split(","));
            }
            return tableData;
        } catch (Exception e) {
            System.out.println("exception caught");
        }
        return null;
    }
}
