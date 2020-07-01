package com.technocrat.service.impl;

import com.technocrat.model.ProductAttrValues;
import com.technocrat.model.ProductDetails;
import com.technocrat.repository.ProductAttrValuesRepository;
import com.technocrat.repository.ProductDetailsRepository;
import com.technocrat.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDetailsRepository productDetailsRepo;

    @Autowired
    ProductAttrValuesRepository productAttrValuesRepository;

    @Override
    public List<String> getAllProducts() {
        List<ProductDetails> productDetailsList = (List<ProductDetails>) productDetailsRepo.findAll();
        List<String> productNameList = new ArrayList<>();
        for (ProductDetails product : productDetailsList) {
            productNameList.add(product.getName());
        }
        return productNameList;
    }

    @Override
    public String addProdAttrGrp(String attrGrpId, String name) {
        try {
            ProductDetails productDetails = new ProductDetails();
            productDetails.setCatGroupId(attrGrpId);
            productDetails.setName(name);
            productDetailsRepo.save(productDetails);
            return "Success";
        } catch (Exception e) {
            System.out.println("Error Saving addProdAttrGrp with error message :" + e.getMessage());
            return "Fail";
        }
    }

    @Override
    public List<ProductAttrValues> getProductAttributes(String productId) {
        return productAttrValuesRepository.findAllByProductName(productId);
    }

    @Override
    public String addProductAttributes(String productId, String attName, String attValue) {
        try {
            ProductAttrValues productAttrValues = new ProductAttrValues();
            productAttrValues.setProductId(productId);
            productAttrValues.setName(attName);
            productAttrValues.setValue(attValue);
            productAttrValuesRepository.save(productAttrValues);
            return "Success";
        } catch (Exception e) {
            return "Fail";
        }
    }
}
