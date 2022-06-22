package com.example.laptop.repository;

import com.example.laptop.modelDTO.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,String> {
    Customer findFirstByCustomerId(String customerId);
}
