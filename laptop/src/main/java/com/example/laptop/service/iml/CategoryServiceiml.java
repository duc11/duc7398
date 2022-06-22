package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Category;
import com.example.laptop.repository.CategoryRepository;
import com.example.laptop.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Service
@SessionScope
public class CategoryServiceiml implements CategoryService {
    @Autowired
    CategoryRepository categoryRepository;


    @Override
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }

    @Override
    public List<Category> findAll(Sort sort) {
        return categoryRepository.findAll(sort);
    }

    @Override
    public List<Category> findAllById(Iterable<Long> longs) {
        return categoryRepository.findAllById(longs);
    }

    @Override
    public <S extends Category> List<S> saveAll(Iterable<S> entities) {
        return categoryRepository.saveAll(entities);
    }

    @Override
    public void flush() {
        categoryRepository.flush();
    }

    @Override
    public <S extends Category> S saveAndFlush(S entity) {
        return categoryRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends Category> List<S> saveAllAndFlush(Iterable<S> entities) {
        return categoryRepository.saveAllAndFlush(entities);
    }

    @Override
    @Deprecated
    public void deleteInBatch(Iterable<Category> entities) {
        categoryRepository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch(Iterable<Category> entities) {
        categoryRepository.deleteAllInBatch(entities);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<Long> longs) {
        categoryRepository.deleteAllByIdInBatch(longs);
    }

    @Override
    public void deleteAllInBatch() {
        categoryRepository.deleteAllInBatch();
    }

    @Override
    @Deprecated
    public Category getOne(Long aLong) {
        return categoryRepository.getOne(aLong);
    }

    @Override
    public Category getById(Long aLong) {
        return categoryRepository.getById(aLong);
    }

    @Override
    public <S extends Category> List<S> findAll(Example<S> example) {
        return categoryRepository.findAll(example);
    }

    @Override
    public <S extends Category> List<S> findAll(Example<S> example, Sort sort) {
        return categoryRepository.findAll(example, sort);
    }

    @Override
    public Page<Category> findAll(Pageable pageable) {
        return categoryRepository.findAll(pageable);
    }

    @Override
    public <S extends Category> S save(S entity) {
        return categoryRepository.save(entity);
    }

    @Override
    public Optional<Category> findById(Long aLong) {
        return categoryRepository.findById(aLong);
    }

    @Override
    public boolean existsById(Long aLong) {
        return categoryRepository.existsById(aLong);
    }

    @Override
    public long count() {
        return categoryRepository.count();
    }

    @Override
    public void deleteById(Long aLong) {
        categoryRepository.deleteById(aLong);
    }

    @Override
    public void delete(Category entity) {
        categoryRepository.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends Long> longs) {
        categoryRepository.deleteAllById(longs);
    }

    @Override
    public void deleteAll(Iterable<? extends Category> entities) {
        categoryRepository.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        categoryRepository.deleteAll();
    }

    @Override
    public <S extends Category> Optional<S> findOne(Example<S> example) {
        return categoryRepository.findOne(example);
    }

    @Override
    public <S extends Category> Page<S> findAll(Example<S> example, Pageable pageable) {
        return categoryRepository.findAll(example, pageable);
    }

    @Override
    public <S extends Category> long count(Example<S> example) {
        return categoryRepository.count(example);
    }

    @Override
    public <S extends Category> boolean exists(Example<S> example) {
        return categoryRepository.exists(example);
    }

    @Override
    public <S extends Category, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return categoryRepository.findBy(example, queryFunction);
    }
}
