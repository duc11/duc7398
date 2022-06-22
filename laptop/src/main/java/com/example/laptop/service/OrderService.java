package com.example.laptop.service;

import com.example.laptop.modelDTO.Order;
import com.example.laptop.modelDTO.Order_Detail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public interface OrderService {


    Page<Order> findAll(Pageable pageable);

    List<Order> findAll();

    List<Order> findAll(Sort sort);

    <S extends Order> List<S> saveAll(Iterable<S> entities);

    <S extends Order> S save(S entity);

    Optional<Order> findById(Long aLong);

    void deleteById(Long aLong);

    void delete(Order entity);

    void deleteAll();
}
