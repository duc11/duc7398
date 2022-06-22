package com.example.laptop.interceptor;

import com.example.laptop.modelDTO.BrandProduct;
import com.example.laptop.modelDTO.Category;
import com.example.laptop.modelDTO.Manufacturer;
import com.example.laptop.modelDTO.Shipper;
import com.example.laptop.service.BrandProductService;
import com.example.laptop.service.CategoryService;
import com.example.laptop.service.ManufacturerService;
import com.example.laptop.service.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ListIterator;

@Component
    public class ShareInterceptor extends HandlerInterceptorAdapter {
        @Autowired
        ManufacturerService manufacturerService;
        @Autowired
        BrandProductService brandProductService;
        @Autowired
        CategoryService categoryService;
        @Autowired
        ShipperService shipperService;

        @Override
        public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
            List<Manufacturer> list=manufacturerService.findAll();
            request.setAttribute("cates",list);

            List<BrandProduct> brandProducts=brandProductService.findAll();
            request.setAttribute("brand",brandProducts);
            List<Category> categories=categoryService.findAll();
            request.setAttribute("cate",categories);
            List<Shipper> shippers=shipperService.findAll();
            request.setAttribute("shipper",shippers);

        }
    }


