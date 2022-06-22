package com.example.laptop.repository;

import com.example.laptop.modelDTO.BrandProduct;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BrandProductRepository extends JpaRepository<BrandProduct,Long> {
}
