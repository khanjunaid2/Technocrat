package com.technocrat.service;

import com.technocrat.model.Item;
import java.io.IOException;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

public interface ImportDataService {
    List<String[]> readCSV (MultipartFile filename) throws IOException;

    String saveImage(MultipartFile imageFile) throws Exception;

    List<Item> importProductData(String productName) throws IOException;
}
