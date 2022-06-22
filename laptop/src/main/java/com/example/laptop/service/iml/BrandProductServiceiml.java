package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.BrandProduct;
import com.example.laptop.repository.BrandProductRepository;
import com.example.laptop.service.BrandProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BrandProductServiceiml implements BrandProductService {
    @Autowired
    BrandProductRepository brandProductRepository;

    @Override
    public List<BrandProduct> findAll() {
        return brandProductRepository.findAll();
    }

    @Override
    public List<BrandProduct> findAll(Sort sort) {
        return brandProductRepository.findAll(sort);
    }

    @Override
    public List<BrandProduct> findAllById(Iterable<Long> longs) {
        return brandProductRepository.findAllById(longs);
    }

    @Override
    public BrandProduct getById(Long aLong) {
        return brandProductRepository.getById(aLong);
    }

    @Override
    public Page<BrandProduct> findAll(Pageable pageable) {
        return brandProductRepository.findAll(pageable);
    }

    @Override
    public <S extends BrandProduct> S save(S entity) {
        return brandProductRepository.save(entity);
    }

    @Override
    public Optional<BrandProduct> findById(Long aLong) {
        return brandProductRepository.findById(aLong);
    }

    @Override
    public void delete(BrandProduct entity) {
        brandProductRepository.delete(entity);
    }
}
