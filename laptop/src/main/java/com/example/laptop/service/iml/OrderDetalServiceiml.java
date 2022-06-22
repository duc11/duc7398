package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Order_Detail;
import com.example.laptop.repository.OrderDetailRepository;
import com.example.laptop.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderDetalServiceiml implements OrderDetailService {
    @Autowired
    OrderDetailRepository orderDetailRepository;

    @Override
    public List<Order_Detail> findAll() {
        return orderDetailRepository.findAll();
    }

    @Override
    public List<Order_Detail> findAllById(Iterable<Long> longs) {
        return orderDetailRepository.findAllById(longs);
    }

    @Override
    public <S extends Order_Detail> List<S> saveAll(Iterable<S> entities) {
        return orderDetailRepository.saveAll(entities);
    }

    @Override
    public <S extends Order_Detail> S saveAndFlush(S entity) {
        return orderDetailRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends Order_Detail> List<S> saveAllAndFlush(Iterable<S> entities) {
        return orderDetailRepository.saveAllAndFlush(entities);
    }

    @Override
    public void flush() {
        orderDetailRepository.flush();
    }

    @Override
    public Order_Detail getById(Long aLong) {
        return orderDetailRepository.getById(aLong);
    }

    @Override
    public <S extends Order_Detail> S save(S entity) {
        return orderDetailRepository.save(entity);
    }

    @Override
    public Optional<Order_Detail> findById(Long aLong) {
        return orderDetailRepository.findById(aLong);
    }

    @Override
    public void deleteById(Long aLong) {
        orderDetailRepository.deleteById(aLong);
    }

    @Override
    public void delete(Order_Detail entity) {
        orderDetailRepository.delete(entity);
    }
}
