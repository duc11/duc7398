package com.example.laptop.controller.admin;

import com.example.laptop.model.CategoryForm;
import com.example.laptop.modelDTO.Category;
import com.example.laptop.service.CategoryService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;

@Controller
@RequestMapping("category")
public class AdminCategory {
    @Autowired
    CategoryService categoryService;
    @PreAuthorize("hasRole('admin')")
    @GetMapping("index")
    public String index(Model model) {
        Category category = new Category();
        model.addAttribute("entity", category);
        model.addAttribute("list", categoryService.findAll());
        return "admin/category/index";
    }
    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model){
        Category category1=categoryService.findById(id).get();
        CategoryForm categoryForm=new CategoryForm();
        BeanUtils.copyProperties(category1,categoryForm);
        categoryForm.setIs(true);
        model.addAttribute("entity",categoryForm);
        model.addAttribute("list", categoryService.findAll());
        return "admin/category/index";
    }
    @PostMapping("create")
    public String create(RedirectAttributes model, @ModelAttribute("entity") Category category){

        categoryService.save(category);
        model.addAttribute("message","thêm mới thành công");
       return "redirect:/category/index";
    }
    @RequestMapping("delete/{id}")
    public String delete(@PathVariable("id") Long id2,RedirectAttributes model){

            categoryService.deleteById(id2);
        model.addAttribute("message","xóa thành công");

        return "redirect:/category/index";

    }
    @PostMapping("update")
    public String update(RedirectAttributes model, @ModelAttribute("entity") Category category,@RequestParam("name") String name){

        category.setName(name);
        categoryService.save(category);
        model.addAttribute("message","cập nhât thành công");
        return "redirect:/category/edit/"+category.getCategoryId();
    }


}
