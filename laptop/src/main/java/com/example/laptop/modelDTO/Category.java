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
@Table(name = "category")
public class Category implements Serializable {
          @Id
          @GeneratedValue(strategy = GenerationType.IDENTITY)
          private Long categoryId;
          @NotNull
          private String name;
          @OneToMany(mappedBy = "category",cascade = CascadeType.ALL)
          private List<Product> products;


}
