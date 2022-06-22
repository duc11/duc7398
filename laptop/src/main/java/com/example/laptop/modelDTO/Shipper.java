package com.example.laptop.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "shipper")
public class Shipper implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long shipperId;

    private String name;
    private String sdt;
    private String khuVuc;
    @OneToMany(mappedBy = "shipper",cascade = CascadeType.ALL)
    private Set<Order> orders;


}
