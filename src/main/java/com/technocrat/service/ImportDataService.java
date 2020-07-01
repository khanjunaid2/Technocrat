package com.technocrat.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface ImportDataService {
    public List<String[]> readCSV (MultipartFile filename) throws IOException;

    String saveImage(MultipartFile imageFile) throws Exception;
}
