package com.example.laptop.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CategoryForm {

    private Long categoryId;

    private String name;
    private String nameVN;

    Boolean is=false;

}
