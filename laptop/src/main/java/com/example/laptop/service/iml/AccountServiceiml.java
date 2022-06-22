package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Account;
import com.example.laptop.repository.AccountRepository;
import com.example.laptop.service.AccountService;
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
public class AccountServiceiml implements AccountService {
    @Autowired
    AccountRepository accountRepository;

    @Override
    public Account findFirstByUsername(String userName) {
        return accountRepository.findFirstByUsername(userName);
    }

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    @Override
    public List<Account> findAll(Sort sort) {
        return accountRepository.findAll(sort);
    }

    @Override
    public List<Account> findAllById(Iterable<String> strings) {
        return accountRepository.findAllById(strings);
    }

    @Override
    public <S extends Account> List<S> saveAll(Iterable<S> entities) {
        return accountRepository.saveAll(entities);
    }

    @Override
    public void flush() {
        accountRepository.flush();
    }

    @Override
    public <S extends Account> S saveAndFlush(S entity) {
        return accountRepository.saveAndFlush(entity);
    }

    @Override
    public <S extends Account> List<S> saveAllAndFlush(Iterable<S> entities) {
        return accountRepository.saveAllAndFlush(entities);
    }

    @Override
    @Deprecated
    public void deleteInBatch(Iterable<Account> entities) {
        accountRepository.deleteInBatch(entities);
    }

    @Override
    public void deleteAllInBatch(Iterable<Account> entities) {
        accountRepository.deleteAllInBatch(entities);
    }

    @Override
    public void deleteAllByIdInBatch(Iterable<String> strings) {
        accountRepository.deleteAllByIdInBatch(strings);
    }

    @Override
    public void deleteAllInBatch() {
        accountRepository.deleteAllInBatch();
    }

    @Override
    @Deprecated
    public Account getOne(String s) {
        return accountRepository.getOne(s);
    }

    @Override
    public Account getById(String s) {
        return accountRepository.getById(s);
    }

    @Override
    public <S extends Account> List<S> findAll(Example<S> example) {
        return accountRepository.findAll(example);
    }

    @Override
    public <S extends Account> List<S> findAll(Example<S> example, Sort sort) {
        return accountRepository.findAll(example, sort);
    }

    @Override
    public Page<Account> findAll(Pageable pageable) {
        return accountRepository.findAll(pageable);
    }

    @Override
    public <S extends Account> S save(S entity) {
        return accountRepository.save(entity);
    }

    @Override
    public Optional<Account> findById(String s) {
        return accountRepository.findById(s);
    }

    @Override
    public boolean existsById(String s) {
        return accountRepository.existsById(s);
    }

    @Override
    public long count() {
        return accountRepository.count();
    }

    @Override
    public void deleteById(String s) {
        accountRepository.deleteById(s);
    }

    @Override
    public void delete(Account entity) {
        accountRepository.delete(entity);
    }

    @Override
    public void deleteAllById(Iterable<? extends String> strings) {
        accountRepository.deleteAllById(strings);
    }

    @Override
    public void deleteAll(Iterable<? extends Account> entities) {
        accountRepository.deleteAll(entities);
    }

    @Override
    public void deleteAll() {
        accountRepository.deleteAll();
    }

    @Override
    public <S extends Account> Optional<S> findOne(Example<S> example) {
        return accountRepository.findOne(example);
    }

    @Override
    public <S extends Account> Page<S> findAll(Example<S> example, Pageable pageable) {
        return accountRepository.findAll(example, pageable);
    }

    @Override
    public <S extends Account> long count(Example<S> example) {
        return accountRepository.count(example);
    }

    @Override
    public <S extends Account> boolean exists(Example<S> example) {
        return accountRepository.exists(example);
    }

    @Override
    public <S extends Account, R> R findBy(Example<S> example, Function<FluentQuery.FetchableFluentQuery<S>, R> queryFunction) {
        return accountRepository.findBy(example, queryFunction);
    }
}
