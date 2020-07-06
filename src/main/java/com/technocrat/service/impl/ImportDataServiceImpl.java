package com.technocrat.service.impl;

import com.technocrat.model.ImageDetails;
import com.technocrat.model.Item;
import com.technocrat.repository.ImageDetailsRepository;
import com.technocrat.service.ImportDataService;
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
import java.util.stream.Collectors;
import javax.servlet.ServletContext;
import lombok.extern.slf4j.Slf4j;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
    public List<Item> importProductData(String product) throws IOException {
        String baseurl = "https://www.amazon.com/s?k=" + product + "&page=1";
        Document document = Jsoup.connect(baseurl).get();
        List<Item> productDetails = new ArrayList<>();

        List<Element> list = document.getElementsByTag("div")
                .parallelStream()
                .filter(element -> element.getElementsByTag("div").attr("data-asin").length() > 1)
                .collect(Collectors.toList());


        for (Element element : list) {

            Element name = element.getElementsByAttributeValueEnding("class", "a-color-base a-text-normal").first();
            Element price = element.getElementsByClass("a-offscreen").first();
            Element rating = element.getElementsByClass("a-icon-alt").first();

            if (name != null && price != null && rating != null) {
                productDetails.add(new Item(name.text(), price.text(), rating.text()));
            }
        }
        return productDetails;
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
