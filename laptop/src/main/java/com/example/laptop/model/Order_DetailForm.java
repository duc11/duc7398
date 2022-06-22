package com.example.laptop.model;

import com.example.laptop.modelDTO.Order;
import com.example.laptop.modelDTO.Product;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order_DetailForm implements Serializable {

    private Long orderDetailId;

    private int quantity;

    private float unitPrice;
    private double discount;

    private Product product;
    private Order orders;

    private Integer soLuongNhanHang;

}
