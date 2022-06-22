package com.example.laptop.controller.admin;

import com.example.laptop.model.ProductForm;
import com.example.laptop.modelDTO.Order;
import com.example.laptop.modelDTO.Product;
import com.example.laptop.service.ProductService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletContext;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Controller
@RequestMapping("product")
public class AdminProduct {
    @Autowired
    ProductService productService;
    @Autowired
    ServletContext context;

    @PreAuthorize("hasRole('admin')")
    @GetMapping("index")
    public String index(Model model, @RequestParam(name = "page") Optional<Integer> page,
                        @RequestParam(name = "size") Optional<Integer> size) {
        int currentPage = page.orElse(1);
        int pageSize = size.orElse(10);
        Pageable pageable = PageRequest.of(currentPage - 1, pageSize, Sort.by("productId"));
        Page<Product> products=null;
            products = productService.findAll(pageable);
        int totalPages = products.getTotalPages();
        if (totalPages > 0) {
            int start = Math.max(1, currentPage - 2);
            int end = Math.min(currentPage + 2, totalPages);
            if (totalPages > 5) {
                if (end == totalPages) {
                    start = end - 5;
                }
                if (start == 1) {
                    end = start + 5;
                }
            }

            List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed()
                    .collect(Collectors.toList());
            model.addAttribute("pageNumBers", pageNumbers);

        }
        Product product = new Product();
        model.addAttribute("entity", product);
        model.addAttribute("list", products);
        return "admin/product/index";
    }

    @RequestMapping("edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model, @RequestParam(name = "page") Optional<Integer> page,
                       @RequestParam(name = "size") Optional<Integer> size) {
        Product product1 = productService.findById(id).get();
        ProductForm productForm = new ProductForm();
        BeanUtils.copyProperties(product1, productForm);
        productForm.setIs(true);
        model.addAttribute("entity", productForm);


        int currentPage = page.orElse(1);
        int pageSize = size.orElse(2);
        Pageable pageable = PageRequest.of(currentPage - 1, pageSize, Sort.by("productId"));
        Page<Product> products=null;
            products = productService.findAll( pageable);
        int totalPages = products.getTotalPages();
        if (totalPages > 0) {
            int start = Math.max(1, currentPage - 2);
            int end = Math.min(currentPage + 2, totalPages);
            if (totalPages > 5) {
                if (end == totalPages) {
                    start = end - 5;
                }
                if (start == 1) {
                    end = start + 5;
                }
            }

            List<Integer> pageNumbers = IntStream.rangeClosed(start, end).boxed()
                    .collect(Collectors.toList());
            model.addAttribute("pageNumBers", pageNumbers);

        }
        model.addAttribute("list", products);
        return "admin/product/index";
    }

    @PostMapping("create")
    public String create(RedirectAttributes model, @ModelAttribute("entity") Product product,
                         @RequestParam("photo_file") MultipartFile file) throws IOException {
        if (file.isEmpty()) {
            product.setImage("user1.png");
        } else {
            String d = context.getRealPath("/admin/images/customers");
            File f = new File(d, file.getOriginalFilename());
            file.transferTo(f);
            product.setImage(f.getName());
        }
        productService.save(product);
        model.addAttribute("message", "thêm mới thành công");
        return "redirect:/product/index";
    }

    @GetMapping("delete/{id}")
    public String delete(RedirectAttributes model, @PathVariable("id") Long id) {
        Product product = productService.findById(id).get();
        productService.delete(product);
        model.addAttribute("message", "xóa thành công");
        return "redirect:/product/index";
    }

    @PostMapping("update")
    public String update(RedirectAttributes model, @ModelAttribute("entity") Product product,
                         @RequestParam("photo_file") MultipartFile file) throws IOException {


        if (!file.isEmpty()) {
            product.setImage(file.getOriginalFilename());
            String path = context.getRealPath("/admin/images/customers/" + product.getImage());
            file.transferTo(new File(path));

        }
        productService.save(product);
        model.addAttribute("message", "cập nhât thành công");
        return "redirect:/product/edit/" + product.getProductId();
    }


}
