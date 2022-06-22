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
@Table(name = "manufacturer")
public class Manufacturer implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @NotNull
    String name;
    @OneToMany(mappedBy = "manufacturer",cascade = CascadeType.ALL)
    List<Product> products;
}
