package com.technocrat.service.impl;

import com.technocrat.model.ImageDetails;
import com.technocrat.repository.ImageDetailsRepository;
import com.technocrat.service.ImportDataService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
public class ImportDataServiceImpl implements ImportDataService {

    @Autowired
    ImageDetailsRepository imageDetailsRepository;
    ImageDetails imageDetails = new ImageDetails();

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

    @Override
    public String saveImage(MultipartFile imageFile) {
        try {
            String folderPath = "src/main/resources/Images/";
            byte[] imageBytes = imageFile.getBytes();
            Path imagePath = Paths.get(folderPath + imageFile.getOriginalFilename());
            Files.write(imagePath, imageBytes);
            imageDetails.setFileName(imageFile.getOriginalFilename());
            imageDetails.setFilePath(folderPath + imageFile.getOriginalFilename());
            imageDetailsRepository.save(imageDetails);
            return "Success";
        } catch (Exception e) {
            System.out.println("exception occurred while saving Image");
            e.printStackTrace();
            return "Fail";
        }
    }
}
