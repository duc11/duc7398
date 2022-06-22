package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Customer;
import com.example.laptop.repository.CustomerRepository;
import com.example.laptop.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Service
public class CustomerServiceiml implements CustomerService {
    @Autowired
    CustomerRepository customerRepository;


    @Override
    public List<Customer> findAllById(Iterable<String> strings) {
        return customerRepository.findAllById(strings);
    }

    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void deleteById(String s) {
        customerRepository.deleteById(s);
    }

    @Override
    public <S extends Customer> List<S> saveAll(Iterable<S> entities) {
        return customerRepository.saveAll(entities);
    }

    @Override
    public <S extends Customer> S save(S entity) {
        return customerRepository.save(entity);
    }

    @Override
    public void flush() {
        customerRepository.flush();
    }

    @Override
    public <S extends Customer> S saveAndFlush(S entity) {
        return customerRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends Customer> List<S> saveAllAndFlush(Iterable<S> entities) {
        return customerRepository.saveAllAndFlush(entities);
    }

    @Override
    @Deprecated
    public void deleteInBatch(Iterable<Customer> entities) {
        customerRepository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch(Iterable<Customer> entities) {
        customerRepository.deleteAllInBatch(entities);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<String> strings) {
        customerRepository.deleteAllByIdInBatch(strings);
    }

    @Override
    public void deleteAllInBatch() {
        customerRepository.deleteAllInBatch();
    }

    @Override
    @Deprecated
    public Customer getOne(String s) {
        return customerRepository.getOne(s);
    }

    @Override
    public Customer getById(String s) {
        return customerRepository.getById(s);
    }

    @Override
    public <S extends Customer> List<S> findAll(Example<S> example) {
        return customerRepository.findAll(example);
    }

    @Override
    public <S extends Customer> List<S> findAll(Example<S> example, Sort sort) {
        return customerRepository.findAll(example, sort);
    }

    @Override
    public Optional<Customer> findById(String s) {
        return customerRepository.findById(s);
    }

    @Override
    public boolean existsById(String s) {
        return customerRepository.existsById(s);
    }

    @Override
    public void delete(Customer entity) {
        customerRepository.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends String> strings) {
        customerRepository.deleteAllById(strings);
    }

    @Override
    public void deleteAll(Iterable<? extends Customer> entities) {
        customerRepository.deleteAll(entities);
    }

    @Override
    public <S extends Customer> Optional<S> findOne(Example<S> example) {
        return customerRepository.findOne(example);
    }

    @Override
    public <S extends Customer> Page<S> findAll(Example<S> example, Pageable pageable) {
        return customerRepository.findAll(example, pageable);
    }

    @Override
    public <S extends Customer> long count(Example<S> example) {
        return customerRepository.count(example);
    }

    @Override
    public <S extends Customer> boolean exists(Example<S> example) {
        return customerRepository.exists(example);
    }

    @Override
    public <S extends Customer, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return customerRepository.findBy(example, queryFunction);
    }
}
