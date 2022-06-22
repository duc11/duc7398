package com.example.laptop.modelDTO;

import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "brand")
public class BrandProduct implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "brandId")
    Long id;
    @NotNull
    @Column(name = "ten_chi_nhanh")
    String name;
    @ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinTable(name = "brand_product",joinColumns = {@JoinColumn(name = "brandId")},inverseJoinColumns = {@JoinColumn(name = "productId")})
    List<Product> products;
}
