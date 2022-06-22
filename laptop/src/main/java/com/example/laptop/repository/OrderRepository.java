package com.example.laptop.repository;

import com.example.laptop.modelDTO.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order,Long> {
    @Query("select o from Order o where o.customer.id=:id order by o.orderDate desc ")
    public List<Order> getByOrders(@Param("id") String id);

}
