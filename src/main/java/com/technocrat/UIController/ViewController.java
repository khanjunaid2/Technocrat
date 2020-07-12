package com.technocrat.UIController;

import com.technocrat.model.Stats;
import com.technocrat.service.DashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.util.List;

@Controller
public class ViewController {
    @Autowired
    DashboardService dashboardService;

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

    @RequestMapping("/dashboard")
    public ModelAndView dashboard() {

        ModelAndView model = new ModelAndView("/statsDashboard");

        Stats stats = dashboardService.getStats();

        model.addObject("totalSales", stats.getTotalSales());
        model.addObject("dailyAvg", stats.getDailyAvgSales());

        model.addObject("yearAvg", stats.getPerYearAvgSale());
        model.addObject("monthAvg", stats.getPerMonthAvgSale());

        Object[] month = (Object[]) stats.getHighestMonth()[0];
        Object[] year = (Object[]) stats.getHighestYear()[0];

        model.addObject("highestMonth", month[0].toString());
        model.addObject("highestMonthValue", month[1].toString());
        model.addObject("highestYear", year[0].toString());
        model.addObject("highestYearValue", year[1].toString());




        List<Object[]> obj =  stats.getYearlyTotalSale();
        List<Object[]> obj1 =  stats.getMonthylTotalSale();

        for(int i=0 ; i < obj.size() - 1 ; i ++){
            int year1 = (int) Math.round((Double) obj.get(i)[0]);
            model.addObject( "dt"+i ,  obj.get(i)[1].toString());
        }

        for(int i=0 ; i < obj1.size() - 1 ; i ++){
            model.addObject(obj1.get(i)[0].toString(), obj1.get(i)[1].toString());
        }

        return model;
    }

    @RequestMapping("/dashboard1")
    public ModelAndView dashboard1() {
        return new ModelAndView("dashboard1");
    }

    @RequestMapping("/dashboard2")
    public ModelAndView dashboard2() {
        return new ModelAndView("dashboard2");
    }
}
