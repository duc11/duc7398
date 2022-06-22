package com.example.laptop.controller;

import com.example.laptop.modelDTO.BrandProduct;
import com.example.laptop.modelDTO.Manufacturer;
import com.example.laptop.modelDTO.Product;
import com.example.laptop.repository.BrandProductRepository;
import com.example.laptop.repository.ManufactureRepository;
import com.example.laptop.repository.ProductRepository;
import com.example.laptop.service.ProductService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("home")
public class HomeController {
    @Autowired
    ProductService productService;
    @Autowired
    ManufactureRepository manufactureRepository;
    @Autowired
    ProductRepository productRepository;

    @GetMapping("")
    public String findProductHome(Model model){
        List<Product> listHome=new ArrayList<>();
        List<Product> products=new ArrayList<>();
        products=productService.findAll();
        if (!products.isEmpty()){
            for (int i = 0; i < 6; i++) {
                Product p=new Product();
                BeanUtils.copyProperties(products.get(i),p);
                listHome.add(p);
            }
            model.addAttribute("listHome",listHome);

        }

        List<Product> mac=new ArrayList<>();
        Manufacturer manufacturer=manufactureRepository.getByName1();
        List <Product> products1=manufacturer.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products1.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products1.get(i),product);
                mac.add(product);
            }
            model.addAttribute("mac",mac);
        }
        List<Product> asus=new ArrayList<>();
        Manufacturer manufacturer1=manufactureRepository.getByName2();
        List <Product> products2=manufacturer1.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products2.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products2.get(i),product);
                asus.add(product);
            }
            model.addAttribute("asus",asus);
        }
        List<Product> acer=new ArrayList<>();
        Manufacturer manufacturer2=manufactureRepository.getByName3();
        List <Product> products3=manufacturer2.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products3.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products3.get(i),product);
                acer.add(product);
            }
            model.addAttribute("acer",acer);
        }
        List<Product> dell=new ArrayList<>();
        Manufacturer manufacturer3=manufactureRepository.getByName4();
        List <Product> products4=manufacturer3.getProducts();
        for (int i = 0; i <2; i++) {
            if (products4.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products4.get(i),product);
                dell.add(product);
            }
            model.addAttribute("dell",dell);
        }
        List<Product> hp=new ArrayList<>();
        Manufacturer manufacturer4=manufactureRepository.getByName5();
        List <Product> products5=manufacturer4.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products5.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products5.get(i),product);
                hp.add(product);
            }
            model.addAttribute("hp",hp);
        }
        List<Product> lenovo=new ArrayList<>();
        Manufacturer manufacturer5=manufactureRepository.getByName6();
        List <Product> products6=manufacturer5.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products6.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products6.get(i),product);
                lenovo.add(product);
            }
            model.addAttribute("lenovo",lenovo);
        }
        List<Product> msi=new ArrayList<>();
        Manufacturer manufacturer6=manufactureRepository.getByName7();
        List <Product> products7=manufacturer6.getProducts();
        for (int i = 0; i <4 ; i++) {
            if (products7.get(i).getCategory().getCategoryId()==1){
                Product product=new Product();
                BeanUtils.copyProperties(products7.get(i),product);
                msi.add(product);
            }
            model.addAttribute("msi",msi);
        }



        List<Product> p=productRepository.getByItems();
        model.addAttribute("listvv",p);




        return "home/listHome";
    }
    @ResponseBody
    @RequestMapping("language")
    public void language(){

    }

}


