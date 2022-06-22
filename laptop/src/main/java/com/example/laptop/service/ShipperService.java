package com.example.laptop.service;

import com.example.laptop.modelDTO.Shipper;

import java.util.List;
import java.util.Optional;

public interface ShipperService {
    List<Shipper> findAll();

    Optional<Shipper> findById(Long aLong);
}
