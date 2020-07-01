package com.technocrat.service;


import com.technocrat.model.ProductAttrValues;

import java.util.List;

public interface ProductService {

    List<String> getAllProducts();
    String addProdAttrGrp(String attrGrpId, String name);

    List<ProductAttrValues> getProductAttributes(String productName);

    String addProductAttributes(String productId, String attName, String attValue);

    List<ProductAttrValues> getProductAttributes();
}
