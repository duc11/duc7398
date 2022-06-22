package com.example.laptop.service.iml;

import com.example.laptop.modelDTO.Shipper;
import com.example.laptop.repository.ShipperRepository;
import com.example.laptop.service.ShipperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ShipperServiceiml implements ShipperService {
    @Autowired
    ShipperRepository shipperRepository;

    @Override
    public List<Shipper> findAll() {
        return shipperRepository.findAll();
    }

    @Override
    public Optional<Shipper> findById(Long aLong) {
        return shipperRepository.findById(aLong);
    }
}
