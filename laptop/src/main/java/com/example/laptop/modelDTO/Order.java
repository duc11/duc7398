package com.example.laptop.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "orders")
public class Order implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date orderDate;
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date deliveryDate;
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date receiveDate;
    @Column(nullable = false)
    private long amount;
    @Column(nullable = false)
    private String status;
    private String address;
    @OneToMany(mappedBy = "orders",cascade = CascadeType.ALL)
    private List<Order_Detail> orderDetails;
    @ManyToOne
    @JoinColumn(name ="customerId" )
    private Customer customer;
    @ManyToOne
    @JoinColumn(name ="shipperId" )
    private Shipper shipper;
    Boolean is=false;
    String orderStatus;
    String sdt;

}