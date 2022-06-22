package com.example.laptop.service.iml;


import com.example.laptop.modelDTO.Order;
import com.example.laptop.modelDTO.Order_Detail;
import com.example.laptop.repository.OrderRepository;
import com.example.laptop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderServiceiml implements OrderService {
    @Autowired
    OrderRepository orderRepository;

    @Override
    public Page<Order> findAll(Pageable pageable) {
        return orderRepository.findAll(pageable);
    }

    @Override
    public List<Order> findAll() {
        return orderRepository.findAll();
    }

    @Override
    public List<Order> findAll(Sort sort) {
        return orderRepository.findAll(sort);
    }

    @Override
    public <S extends Order> List<S> saveAll(Iterable<S> entities) {
        return orderRepository.saveAll(entities);
    }

    @Override
    public <S extends Order> S save(S entity) {
        return orderRepository.save(entity);
    }

    @Override
    public Optional<Order> findById(Long aLong) {
        return orderRepository.findById(aLong);
    }

    @Override
    public void deleteById(Long aLong) {
        orderRepository.deleteById(aLong);
    }

    @Override
    public void delete(Order entity) {
        orderRepository.delete(entity);
    }

    @Override
    public void deleteAll() {
        orderRepository.deleteAll();
    }
}

