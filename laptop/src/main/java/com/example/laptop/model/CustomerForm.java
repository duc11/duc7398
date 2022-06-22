package com.example.laptop.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustomerForm {

    private String customerId;
    private String  fullName;
    private String  password;
    private String email;
    private String photo;
    private Boolean activated;
    private Boolean admin;
    Boolean is=false;

}
