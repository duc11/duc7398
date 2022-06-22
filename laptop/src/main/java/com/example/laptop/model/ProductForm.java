package com.example.laptop.model;

import com.example.laptop.modelDTO.Manufacturer;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductForm {


    Long productId;
    Long price;
    Double discount;
    private Date productDate;
    String name;
    String general;
    Integer quantity;
    Integer viewCount;
    Boolean is=false;
    private Boolean avaiable;
    private Boolean Special;
    CategoryForm category;
    String image;
    String nameN;
    String description;
    Manufacturer manufacturer;

}
