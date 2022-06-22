package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Manufacturer;
import com.example.laptop.repository.ManufactureRepository;
import com.example.laptop.service.ManufacturerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Service
@SessionScope
public class ManufacturerServiceiml implements ManufacturerService {
    @Autowired
    ManufactureRepository manufactureRepository;

    @Override
    public List<Manufacturer> findAll() {
        return manufactureRepository.findAll();
    }

    @Override
    public List<Manufacturer> findAll(Sort sort) {
        return manufactureRepository.findAll(sort);
    }

    @Override
    public List<Manufacturer> findAllById(Iterable<Long> longs) {
        return manufactureRepository.findAllById(longs);
    }

    @Override
    public <S extends Manufacturer> List<S> saveAll(Iterable<S> entities) {
        return manufactureRepository.saveAll(entities);
    }

    @Override
    public Manufacturer getById(Long aLong) {
        return manufactureRepository.getById(aLong);
    }

    @Override
    public <S extends Manufacturer> List<S> findAll(Example<S> example) {
        return manufactureRepository.findAll(example);
    }

    @Override
    public <S extends Manufacturer> List<S> findAll(Example<S> example, Sort sort) {
        return manufactureRepository.findAll(example, sort);
    }

    @Override
    public Page<Manufacturer> findAll(Pageable pageable) {
        return manufactureRepository.findAll(pageable);
    }

    @Override
    public <S extends Manufacturer> S save(S entity) {
        return manufactureRepository.save(entity);
    }

    @Override
    public Optional<Manufacturer> findById(Long aLong) {
        return manufactureRepository.findById(aLong);
    }

    @Override
    public void deleteById(Long aLong) {
        manufactureRepository.deleteById(aLong);
    }

    @Override
    public void delete(Manufacturer entity) {
        manufactureRepository.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        manufactureRepository.deleteAllById(longs);
    }

    @Override
    public void deleteAll(Iterable<? extends Manufacturer> entities) {
        manufactureRepository.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        manufactureRepository.deleteAll();
    }

    @Override
    public <S extends Manufacturer, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return manufactureRepository.findBy(example, queryFunction);
    }
}
