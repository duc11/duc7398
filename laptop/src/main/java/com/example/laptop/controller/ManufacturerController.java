package com.example.laptop.controller;

import com.example.laptop.modelDTO.Manufacturer;
import com.example.laptop.service.ManufacturerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Optional;

@Controller
@RequestMapping("manufacturer")
public class ManufacturerController {
    @Autowired
    ManufacturerService manufacturerService;
    @GetMapping("m/{id}")
    public String getAll(Model model, @PathVariable("id") Long id){
        Optional<Manufacturer> manufacturer=manufacturerService.findById(id);
        if (manufacturer.isPresent()){
            model.addAttribute("m",manufacturer);
        }
        return "product/list";

    }
}
