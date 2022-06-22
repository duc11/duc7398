package com.example.laptop.service;

import com.example.laptop.modelDTO.Manufacturer;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

public interface ManufacturerService {
    List<Manufacturer> findAll();

    List<Manufacturer> findAll(Sort sort);

    List<Manufacturer> findAllById(Iterable<Long> longs);

    <S extends Manufacturer> List<S> saveAll(Iterable<S> entities);

    Manufacturer getById(Long aLong);

    <S extends Manufacturer> List<S> findAll(Example<S> example);

    <S extends Manufacturer> List<S> findAll(Example<S> example, Sort sort);

    Page<Manufacturer> findAll(Pageable pageable);

    <S extends Manufacturer> S save(S entity);

    Optional<Manufacturer> findById(Long aLong);

    void deleteById(Long aLong);

    void delete(Manufacturer entity);

    void deleteAllById(Iterable<? extends Long> longs);

    void deleteAll(Iterable<? extends Manufacturer> entities);

    void deleteAll();

    <S extends Manufacturer, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction);
}
