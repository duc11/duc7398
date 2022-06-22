package com.example.laptop.controller;

import com.example.laptop.modelDTO.Product;
import com.example.laptop.service.ProductService;
import com.example.laptop.service.util.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Collection;

@Controller
@RequestMapping("cart")
public class ShoppingCartController {
    @Autowired
    ShoppingCartService shoppingCartService;
    @Autowired
    ProductService productService;

    @ResponseBody
    @GetMapping("add/{id}")
    public Object[] addCart(@PathVariable("id") Long id) {

        shoppingCartService.add(id);
        Object[] cart={shoppingCartService.getCount(),shoppingCartService.getAmount()};
        return cart;

    }
    @GetMapping("Add/{id}")
    public String AddCart(@PathVariable("id") Long id, Model model) {

        shoppingCartService.add(id);
        shoppingCartService.getItems();

        return "cart/cart";

    }
    @RequestMapping("list")
    public String getAllCart() {
        shoppingCartService.getItems();
        return "cart/cart";

    }

//    @GetMapping("remove/{id}")
//    public ModelAndView remove(@PathVariable("id") Long id, ModelMap modelMap) {
//        Optional<Product> product = productService.findById(id);
//        if (product.isPresent()) {
//            shoppingCartService.remove(id);
//
//        } else {
//            modelMap.addAttribute("m", "sản phẩm ko tồn tại");
//        }
//        return new ModelAndView("redirect:/cart/view", modelMap);
//    }


    @ResponseBody
    @GetMapping("remove/{id}")
    public Object[] removeCart(@PathVariable("id") Long categoryId) {

        shoppingCartService.remove(categoryId);
        Object[] objects = {shoppingCartService.getCount(), shoppingCartService.getAmount()};
        return objects;

    }

    @ResponseBody
    @GetMapping("update/{id}/{qty}")
    public Object[] updateCart(@PathVariable("id") Long categoryId,@PathVariable("qty") Integer qty) {

        shoppingCartService.update(categoryId,qty);
        Object[] objects = {shoppingCartService.getCount(), shoppingCartService.getAmount()};
        return objects;

    }



    //    @GetMapping("clear")
//    public ModelAndView remove( ModelMap modelMap) {
//        shoppingCartService.clear();
//        return new ModelAndView("redirect:/cart/view", modelMap);
//
//    }
    @ResponseBody
    @GetMapping("clear")
    public void clear( ) {
        shoppingCartService.clear();
    }
}
