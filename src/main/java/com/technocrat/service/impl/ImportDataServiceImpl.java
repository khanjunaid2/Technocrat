package com.technocrat.service.impl;

import com.technocrat.model.ImageDetails;
import com.technocrat.repository.ImageDetailsRepository;
import com.technocrat.service.ImportDataService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
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

    @Autowired
    ServletContext servletContext;

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
            String folderPath = "src/main/webapp/Images/";
            byte[] imageBytes = imageFile.getBytes();
            Path imagePath = Paths.get(folderPath + imageFile.getOriginalFilename());
            Files.write(imagePath, imageBytes);
            imageDetails.setFileName(imageFile.getOriginalFilename());
            imageDetails.setFilePath(servletContext.getRealPath(folderPath) +  "\\" + imageFile.getOriginalFilename());
            imageDetailsRepository.save(imageDetails);
            String url = "http://localhost:5000/query?imagePath="+servletContext.getRealPath("") + "\\Images\\" + imageFile.getOriginalFilename();
            return servletContext.getRealPath("") + "\\Images\\" + imageFile.getOriginalFilename();
        } catch (Exception e) {
            System.out.println("exception occurred while saving Image");
            e.printStackTrace();
            return "Fail";
        }
    }

    private String sendGET(String url) throws IOException {
        final String USER_AGENT = "Mozilla/5.0";
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
        con.setRequestMethod("GET");
        con.setRequestProperty("User-Agent", USER_AGENT);
        int responseCode = con.getResponseCode();
        System.out.println("GET Response Code :: " + responseCode);
        StringBuffer response = new StringBuffer();
        if (responseCode == HttpURLConnection.HTTP_OK) { // success
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    con.getInputStream()));
            String inputLine;


            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();

            // print result
            System.out.println(response.toString());
        } else {
            System.out.println("GET request not worked");
        }
        return response.toString();
    }


}
