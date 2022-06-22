package com.example.laptop.service;

import com.example.laptop.modelDTO.Order_Detail;

import java.util.List;
import java.util.Optional;

public interface OrderDetailService {
    List<Order_Detail> findAll();

    List<Order_Detail> findAllById(Iterable<Long> longs);

    abstract <S extends Order_Detail> List<S> saveAll(Iterable<S> entities);

    <S extends Order_Detail> S saveAndFlush(S entity);

    <S extends Order_Detail> List<S> saveAllAndFlush(Iterable<S> entities);

    void flush();

    Order_Detail getById(Long aLong);

    <S extends Order_Detail> S save(S entity);

    Optional<Order_Detail> findById(Long aLong);

    void deleteById(Long aLong);

    void delete(Order_Detail entity);
}
