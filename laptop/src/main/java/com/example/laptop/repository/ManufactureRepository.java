package com.example.laptop.repository;

import com.example.laptop.modelDTO.Manufacturer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManufactureRepository extends JpaRepository<Manufacturer,Long> {
    @Query("select m from Manufacturer m where m.name='Apple' ")
    public Manufacturer getByName1();
    @Query("select m from Manufacturer m where m.name='Asus' ")
    public Manufacturer getByName2();
    @Query("select m from Manufacturer m where m.name='Acer' ")
    public Manufacturer getByName3();
    @Query("select m from Manufacturer m where m.name='HP' ")
    public Manufacturer getByName5();
    @Query("select m from Manufacturer m where m.name='Lenovo' ")
    public Manufacturer getByName6();
    @Query("select m from Manufacturer m where m.name='MSI' ")
    public Manufacturer getByName7();
    @Query("select m from Manufacturer m where m.name='Dell' ")
    public Manufacturer getByName4();

}
