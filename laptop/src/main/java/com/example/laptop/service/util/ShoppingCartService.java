package com.example.laptop.service.util;

import com.example.laptop.modelDTO.Product;
import com.example.laptop.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
@SessionScope
@Service
public class ShoppingCartService {
    Map<Long, Product> map=new HashMap<>();

    @Autowired
    ProductService productService;

    public void add(Long id){
        Product product=map.get(id);
        if (product==null){
            Optional<Product> p=productService.findById(id);
            p.get().setQuantity(1);
            map.put(id,p.get());
        }else {
            product.setQuantity(product.getQuantity()+1);
        }

    }

    public void remove(Long id){
        map.remove(id);
    }

    public void clear(){
        map.clear();
    }

    public void update(Long id, int qty){
        Product product=map.get(id);
        product.setQuantity(qty);
    }

    public Collection<Product> getItems(){
        return map.values();
    }

    public int getCount(){
        int c=0;
        Collection<Product> products=this.getItems();
        for (Product p:products
        ) {
            c+=p.getQuantity();
        }
        return c;
    }

    public long getAmount(){
        long d=0;
        Collection<Product> products=this.getItems();
        for (Product p:products
        ) {
            d+=p.getQuantity()*p.getPrice()*(1-p.getDiscount()/100);
        }
        return d;
    }
}
