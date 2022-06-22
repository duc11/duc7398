package com.example.laptop.repository;

import com.example.laptop.modelDTO.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AccountRepository extends JpaRepository<Account,String> {
    public Account findFirstByUsername(String userName);
}
