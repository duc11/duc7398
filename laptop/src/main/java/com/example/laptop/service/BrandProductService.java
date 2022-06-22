package com.example.laptop.service;

import com.example.laptop.modelDTO.BrandProduct;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public interface BrandProductService {
    List<BrandProduct> findAll();

    List<BrandProduct> findAll(Sort sort);

    List<BrandProduct> findAllById(Iterable<Long> longs);

    BrandProduct getById(Long aLong);

    Page<BrandProduct> findAll(Pageable pageable);

    <S extends BrandProduct> S save(S entity);

    Optional<BrandProduct> findById(Long aLong);

    void delete(BrandProduct entity);
}
