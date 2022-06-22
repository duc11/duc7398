package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Manufacturer;
import com.example.laptop.modelDTO.Product;
import com.example.laptop.repository.BrandProductRepository;
import com.example.laptop.repository.ManufactureRepository;
import com.example.laptop.repository.ProductRepository;
import com.example.laptop.service.ProductService;
import com.example.laptop.service.util.CookiService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import javax.servlet.http.Cookie;
import java.util.*;
import java.util.function.Function;

@Service
@SessionScope
public class ProductServiceiml implements ProductService {
    @Autowired
    ProductRepository productRepository;
    @Autowired
    ManufactureRepository manufactureRepository;
    @Autowired
    CookiService cookiService;
    @Autowired
    BrandProductRepository brandProductRepository;
    @Autowired
    ProductService productService;


    @Override
    public Page<Product> findByNameProduct(String name, Optional<Integer> page, Optional<Integer> size){
        int currentPage=page.orElse(1);
        int pageSize=size.orElse(4);
        Pageable pageable= PageRequest.of(currentPage-1,pageSize, Sort.by("productId"));
        return productService.findAll(pageable);

    }



    @Override
    public List<Product> findProductId() {
        Cookie favo = cookiService.read("favo");
        Set<Long> ids = new HashSet<>();
        String[] s = new String[100];
        if (favo != null) {
            s = favo.getValue().split(",");
            for (String ss : s
            ) {
                ids.add(Long.parseLong(ss));
            }

        }
        return productService.findByQtProduct(ids);

    }

    @Override
    public List<Product> findByAzProduct() {
        List<Product> products = productService.findAll();
        Collections.sort(products, new Comparator<Product>() {
            @Override
            public int compare(Product product, Product t1) {
                return product.getTen().compareTo(t1.getTen());
            }
        });
        return products;
    }


    @Override
    public List<Product> findByQtProduct(Set<Long> id) {
        return productRepository.findByQtProduct(id);

    }

    @Override
    public Page<Product> findByNameContaining(String name, Pageable pageable) {
        return productRepository.findByNameContaining(name, pageable);
    }

    @Override
    public List<Product> getAllProductPC(Integer id) {
        List<Product> products = new ArrayList<>();
        List<Product> p1 = new ArrayList<>();
        Manufacturer manufacturer = new Manufacturer();
        switch (id) {

            case 0:
                manufacturer = manufactureRepository.getByName3();
                break;
            case 1:
                manufacturer = manufactureRepository.getByName4();
                break;
            case 2:
                manufacturer = manufactureRepository.getByName5();
                break;
            case 3:
                manufacturer = manufactureRepository.getByName6();
                break;
        }
        products = manufacturer.getProducts();
        for (Product p : products
        ) {
            if (p.getCategory().getCategoryId() == 2) {
                Product product = new Product();
                BeanUtils.copyProperties(p, product);
                p1.add(product);
            }
        }
        return p1;


    }


    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> findAll(Sort sort) {
        return productRepository.findAll(sort);
    }

    @Override
    public List<Product> findAllById(Iterable<Long> longs) {
        return productRepository.findAllById(longs);
    }

    @Override
    public <S extends Product> List<S> saveAll(Iterable<S> entities) {
        return productRepository.saveAll(entities);
    }

    @Override
    public void flush() {
        productRepository.flush();
    }

    @Override
    public <S extends Product> S saveAndFlush(S entity) {
        return productRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends Product> List<S> saveAllAndFlush(Iterable<S> entities) {
        return productRepository.saveAllAndFlush(entities);
    }

    @Override
    @Deprecated
    public void deleteInBatch(Iterable<Product> entities) {
        productRepository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch(Iterable<Product> entities) {
        productRepository.deleteAllInBatch(entities);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {
        productRepository.deleteAllByIdInBatch(longs);
    }

    @Override
    public void deleteAllInBatch() {
        productRepository.deleteAllInBatch();
    }

    @Override
    @Deprecated
    public Product getOne(Long aLong) {
        return productRepository.getOne(aLong);
    }

    @Override
    public Product getById(Long aLong) {
        return productRepository.getById(aLong);
    }

    @Override
    public <S extends Product> List<S> findAll(Example<S> example) {
        return productRepository.findAll(example);
    }

    @Override
    public <S extends Product> List<S> findAll(Example<S> example, Sort sort) {
        return productRepository.findAll(example, sort);
    }


    @Override
    public Page<Product> findAll(Pageable pageable) {


        return productRepository.findAll(pageable);
    }


    @Override
    public <S extends Product> S save(S entity) {
        return productRepository.save(entity);
    }

    @Override
    public Optional<Product> findById(Long aLong) {
        return productRepository.findById(aLong);
    }

    @Override
    public boolean existsById(Long aLong) {
        return productRepository.existsById(aLong);
    }

    @Override
    public long count() {
        return productRepository.count();
    }

    @Override
    public void deleteById(Long aLong) {
        productRepository.deleteById(aLong);
    }

    @Override
    public void delete(Product entity) {
        productRepository.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        productRepository.deleteAllById(longs);
    }

    @Override
    public void deleteAll(Iterable<? extends Product> entities) {
        productRepository.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        productRepository.deleteAll();
    }

    @Override
    public <S extends Product> Optional<S> findOne(Example<S> example) {
        return productRepository.findOne(example);
    }

    @Override
    public <S extends Product> Page<S> findAll(Example<S> example, Pageable pageable) {
        return productRepository.findAll(example, pageable);
    }

    @Override
    public <S extends Product> long count(Example<S> example) {
        return productRepository.count(example);
    }

    @Override
    public <S extends Product> boolean exists(Example<S> example) {
        return productRepository.exists(example);
    }

    @Override
    public <S extends Product, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return productRepository.findBy(example, queryFunction);
    }
}
