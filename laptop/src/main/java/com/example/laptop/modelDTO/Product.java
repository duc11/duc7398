package com.example.laptop.modelDTO;

import com.sun.istack.NotNull;
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
@Table(name = "product")
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long productId;
    @NotNull
     @Column(name = "don_gia")
    Long price;
    @Column(name = "giam_gia")
    Double discount;


     String image;

    @NotNull
    @Column(name = "ten_san_pham")
    String name;


    @DateTimeFormat(pattern = "MM/dd/yyyy")
    private Date productDate;
    @Column(name = "mo_ta")
    String description;
    @Column(name = "so_luong")
    Integer quantity;
    @Column(name = "so_luot_xem")
    Integer viewCount;
    @ManyToOne
    @JoinColumn(name = "categoryId")
    Category category;
    @ManyToOne
    @JoinColumn(name="id")
    Manufacturer manufacturer;
    private Boolean avaiable;
    private Boolean Special;
    @OneToMany(mappedBy = "product",cascade = CascadeType.ALL)
    List<Order_Detail> orderDetails;
    @ManyToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    @JoinTable(name = "brand_product",joinColumns = {@JoinColumn(name = "productId")},inverseJoinColumns = {@JoinColumn(name = "brandId")})
    List<BrandProduct> brandProducts;

    public String getTen(){
        String s=this.getName().trim();
        if (s.indexOf("")>=0){
            int vt=s.lastIndexOf(" ");
            return s.substring(vt+1);
        }else return s;
    }
}
