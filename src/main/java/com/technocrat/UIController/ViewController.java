package com.technocrat.UIController;

        import org.springframework.stereotype.Controller;
        import org.springframework.web.bind.annotation.RequestMapping;
        import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

    @RequestMapping("/home")
    public ModelAndView homePage() {
        return new ModelAndView("index");
    }

    @RequestMapping("/upload")
    public ModelAndView fileUpload() {
        return new ModelAndView("fileUpload");
    }

    @RequestMapping("/product")
    public ModelAndView product() {
        return new ModelAndView("product");
    }

    @RequestMapping("/attribute")
    public ModelAndView attribute() {
        return new ModelAndView("attribute");
    }
}
