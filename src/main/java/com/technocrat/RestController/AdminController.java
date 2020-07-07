package com.technocrat.RestController;

import com.technocrat.model.AttributeGroup;
import com.technocrat.model.Attributes;
import com.technocrat.model.DataTable;
import com.technocrat.model.ProductAttrValues;
import com.technocrat.service.AttributeService;
import com.technocrat.service.ImportDataService;
import com.technocrat.service.ProductService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;

@RestController
@Slf4j
@RequestMapping("/PIM/api/v1")
public class AdminController {

    @GetMapping("/hello")
    public String printHello() {
        return "hello!";
    }


    @Autowired
    AttributeService attributeService;
    @Autowired
    ProductService productService;
    @Autowired
    ImportDataService importDataService;
    @Autowired
    private ServletContext servletContext;


    @PostMapping("/addAttributeGroup")
    @ResponseBody
    public List<AttributeGroup> addAttributeGroup(@RequestParam(name = "name") String name) {
        AttributeGroup attr = new AttributeGroup();
        attr.setGroupName(name);
        attributeService.saveAttrGroup(attr);
        List<AttributeGroup> result = attributeService.getAttrGrp();
        return result;
    }

    @GetMapping("/getProductList")
    public List<String> getProductList() {
        return productService.getAllProducts();
    }


    @PostMapping("/addProduct")
    public String addProdAttrGrp(@RequestParam(name = "catGroupId") String attrGrpId,
                                 @RequestParam(name = "name") String name) {
        return productService.addProdAttrGrp(attrGrpId, name);
    }


    @PostMapping("/getAttrGrp")
    @ResponseBody
    public List<AttributeGroup> getAttrGrp() {
        List<AttributeGroup> result = attributeService.getAttrGrp();
        return result;
    }


    /**
     * This method is used to retrieve the attribute and its values for a particular product
     *
     * @param productId
     * @return
     */
    @PostMapping("/getProductAttributes")
    public DataTable getProductAttributes(@RequestParam(name = "productId") String productId, HttpServletRequest request) {
        int start = 0;
        int end = 0;
        int length = 0;
        if (request.getParameter("start") != null && request.getParameter("start") != "") {
            start = Integer.parseInt(request.getParameter("start"));
        }
        if (request.getParameter("length") != null && request.getParameter("length") != "") {
            length = Integer.parseInt(request.getParameter("length"));
            end = length;
        }
        List<ProductAttrValues> productAttributes = null;

        if (productId.equalsIgnoreCase("all")) {
            productAttributes = productService.getProductAttributes();
        } else {
            productAttributes = productService.getProductAttributes(productId);
        }

        DataTable result = new DataTable();
        result.setRecordsTotal(productAttributes.size());
        result.setRecordsFiltered(productAttributes.size());

        result.setData((List<Object>) (List<?>) productAttributes);
        result.setStart(start);
        return result;
    }


    @PostMapping("/addProductAttributes")
    public String addProductAttributes(@RequestParam(name = "productId") String productId,
                                       @RequestParam(name = "attName") String attName,
                                       @RequestParam(name = "attValue") String attValue) {
        return productService.addProductAttributes(productId, attName, attValue);
    }

    @PostMapping("/saveAttribute")
    @ResponseBody
    public boolean saveAttribute(@RequestParam(name = "attrGrpId") int attrGrpId, @RequestParam(name = "name") String name,
                                 @RequestParam(name = "label") String label,
                                 @RequestParam(name = "type") String type) {

        Attributes attr = new Attributes();
        attr.setAttrGrpId(attrGrpId);
        attr.setLabel(label);
        attr.setName(name);
        attr.setType(type);
        attributeService.saveAttr(attr);
        return true;
    }


    @PostMapping("/getAttributes")
    public DataTable getAttributes(@RequestParam(name = "attrGrpId") int attrGrpId, HttpServletRequest request) {

        int start = 0;
        int end = 0;
        int length = 0;
        if (request.getParameter("start") != null && request.getParameter("start") != "") {
            start = Integer.parseInt(request.getParameter("start"));
        }
        if (request.getParameter("length") != null && request.getParameter("length") != "") {
            length = Integer.parseInt(request.getParameter("length"));
            end = length;
        }
        List<Attributes> attributes = null;

        if (attrGrpId == 0) {
            attributes = attributeService.getAttributes();
        } else {
            attributes = attributeService.getAttributes(attrGrpId);
        }

        DataTable result = new DataTable();
        result.setRecordsTotal(attributes.size());
        result.setRecordsFiltered(attributes.size());

        result.setData((List<Object>) (List<?>) attributes);
        result.setStart(start);
        return result;
    }


    @PostMapping("/importData")
    public List<String[]> importData(@RequestParam(name = "file") MultipartFile file) throws IOException {
        try {
            return importDataService.readCSV(file);
        } catch (Exception e) {
            log.error("Unable to parse. Check file format or if it is empty or not.");
            throw new IOException("Unable to parse. Check file format or if it is empty or not.");
        }
    }

    @PostMapping("/uploadImage")
    public String importImage(@RequestParam("imageFile") MultipartFile imageFile) throws Exception {
        return importDataService.saveImage(imageFile);
    }

    @GetMapping("/getContPath")
    public String importImage() throws Exception {
        return servletContext.getRealPath("/dashboard/");
    }
}
