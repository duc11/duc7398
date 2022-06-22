package com.example.laptop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("home")
public class AdminController {
    @GetMapping("index")
    public String home(){
        return "admin/home/index";
    }

}
