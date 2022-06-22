package com.example.laptop.controller.admin;

import com.example.laptop.repository.OrderDetailRepository;
import com.example.laptop.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("inventory")
public class InventoryController {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    OrderDetailRepository orderDetailRepository;
    @PreAuthorize("hasRole('admin')")
    @GetMapping("index")
    public String inventory(Model model){
        model.addAttribute("data",productRepository.getInventory());
        return "admin/report/inventory";
    }
    @GetMapping("revenueCategory")
    public String RevenueCategory(Model model){
        model.addAttribute("data",orderDetailRepository.getRevenueCategory());
        return "admin/report/revenueCategory";
    }
    @GetMapping("revenueCustomer")
    public String RevenueCustomer(Model model){
        model.addAttribute("data",orderDetailRepository.getRevenueCustomer());
        return "admin/report/revenueCustomer";
    }
    @GetMapping("revenueByYear")
    public String revenueByYear(Model model){
        model.addAttribute("data",orderDetailRepository.getRevenueByYear());
        return "admin/report/revenueByYear";
    }
    @GetMapping("revenueByMonth")
    public String revenueByMonth(Model model){
        model.addAttribute("data",orderDetailRepository.getRevenueByMonth());
        return "admin/report/revenueByMonth";
    }
}
