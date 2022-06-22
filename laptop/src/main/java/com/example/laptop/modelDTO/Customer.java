package com.example.laptop.modelDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;


import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "customer")
@Entity
public class Customer implements Serializable {
    @Id
    @NotEmpty
    private String customerId;
    @Length(min = 6,message = "ít nhất 6 ký tự")
    private String fullName;
    private String password;
    private String email;
    private String photo;
    private Boolean activated;
    private Boolean admin;



    @OneToMany(mappedBy = "customer",cascade = CascadeType.ALL)
   private Set<Order> orders;

//    @Override
//    public Collection<? extends GrantedAuthority> getAuthorities() {
//        Set<GrantedAuthority> authoritySet = new HashSet<>();
//        authoritySet.add(new SimpleGrantedAuthority("ROLE_" + this.admin));
//        return authoritySet;
//    }
//
//    @Override
//    public String getUsername() {
//        return this.customerId;
//    }
//
//    @Override
//    public boolean isAccountNonExpired() {
//        return true;
//    }
//
//    @Override
//    public boolean isAccountNonLocked() {
//        return true;
//    }
//
//    @Override
//    public boolean isCredentialsNonExpired() {
//        return true;
//    }
//
//    @Override
//    public boolean isEnabled() {
//         return  false;
//
//    }
}
