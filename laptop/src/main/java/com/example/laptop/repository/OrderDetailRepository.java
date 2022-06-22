package com.example.laptop.repository;

import com.example.laptop.modelDTO.Order_Detail;
import com.example.laptop.modelDTO.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDetailRepository extends JpaRepository<Order_Detail,Long> {
    @Query("select o from Order_Detail o where o.orders.orderId=:id")
    public List<Order_Detail> getAllByOrderDetail(@Param("id") Long id);
    @Query("select o.product from Order_Detail o where o.orders.customer.id=:id")
    public List<Product> getAllByProductBuy(@Param("id") String id);
    @Query("select o.product.category.name,sum(o.quantity),sum(o.unitPrice*o.quantity)," +
            "max(o.unitPrice),min(o.unitPrice),avg(o.unitPrice) from Order_Detail o group by o.product.category.name")
    List<Object[]> getRevenueCategory();
    @Query("select o.orders.customer.fullName,sum(o.quantity),sum(o.unitPrice*o.quantity)," +
            "max(o.unitPrice),min(o.unitPrice),avg(o.unitPrice) from Order_Detail o group by o.orders.customer.fullName")
    List<Object[]> getRevenueCustomer();
    @Query("select YEAR(o.orders.orderDate),sum(o.quantity),sum(o.unitPrice*o.quantity)," +
            "max(o.unitPrice),min(o.unitPrice),avg(o.unitPrice) from Order_Detail o group by YEAR(o.orders.orderDate) order by " +
            " YEAR(o.orders.orderDate) desc ")
    List<Object[]> getRevenueByYear();
    @Query("select MONTH(o.orders.orderDate),sum(o.quantity),sum(o.unitPrice*o.quantity)," +
            "max(o.unitPrice),min(o.unitPrice),avg(o.unitPrice) from Order_Detail o group by MONTH(o.orders.orderDate) order by " +
            " MONTH(o.orders.orderDate) desc ")
    List<Object[]> getRevenueByMonth();
}
