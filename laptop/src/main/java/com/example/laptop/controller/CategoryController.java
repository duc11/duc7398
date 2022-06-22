package com.example.laptop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {
    @GetMapping("test")
    public String test(){
        return "test/test";
    }
}
