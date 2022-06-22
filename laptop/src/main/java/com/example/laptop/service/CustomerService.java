package com.example.laptop.service;

import com.example.laptop.modelDTO.Customer;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public interface CustomerService {


    List<Customer> findAllById(Iterable<String> strings);

    List<Customer> findAll();

    void deleteById(String s);

    <S extends Customer> List<S> saveAll(Iterable<S> entities);

    <S extends Customer> S save(S entity);

    void flush();

    <S extends Customer> S saveAndFlush(S entity);

    <S extends Customer> List<S> saveAllAndFlush(Iterable<S> entities);

    @Deprecated
    void deleteInBatch(Iterable<Customer> entities);

    void deleteAllInBatch(Iterable<Customer> entities);

    void deleteAllByIdInBatch(Iterable<String> strings);

    void deleteAllInBatch();

    @Deprecated
    Customer getOne(String s);

    Customer getById(String s);

    <S extends Customer> List<S> findAll(Example<S> example);

    <S extends Customer> List<S> findAll(Example<S> example, Sort sort);

    Optional<Customer> findById(String s);

    boolean existsById(String s);

    void delete(Customer entity);

    void deleteAllById(Iterable<? extends String> strings);

    void deleteAll(Iterable<? extends Customer> entities);

    <S extends Customer> Optional<S> findOne(Example<S> example);

    <S extends Customer> Page<S> findAll(Example<S> example, Pageable pageable);

    <S extends Customer> long count(Example<S> example);

    <S extends Customer> boolean exists(Example<S> example);

    <S extends Customer, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction);
}
