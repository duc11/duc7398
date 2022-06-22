package com.example.laptop.repository;

import com.example.laptop.modelDTO.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface ProductRepository  extends JpaRepository<Product,Long> {
   @Query("select p from Product  p where p.category.categoryId=:id and p.manufacturer.id=:id1")
   public List<Product> findByProductId(@Param("id") Long id,@Param("id1") Long id1);
   @Query("select p from Product p where p.productId in :ids ")
   public List<Product> findByQtProduct(@Param("ids") Set<Long> id);

   @Query("select p from Product p where p.category.categoryId=3 and  p.manufacturer.name='Asus'")
   public List<Product> findByEarPhone();
   @Query("select p from Product p where p.category.categoryId=:id")
   public List<Product> findByPT(@Param("id") Long id);
   @Query("select p from Product p where p.viewCount>5")
   public Page<Product> getByItemview(Pageable pageable);
   @Query("select p from Product p where p.viewCount>5")
   public List<Product> getByItems();
   public Page<Product> findByNameContaining(String name,Pageable pageable);
   @Query("select p.category.name,sum(p.quantity),sum(p.price*p.quantity)" +
           ",min(p.price),max(p.price),avg(p.price) from Product p group by p.category.name")
   List<Object[]> getInventory();
   @Query("select p from Product p where p.price<10000000")
   List<Product> getByProductPrice1();
   @Query("select p from Product p where p.price>10000000 and p.price<15000000")
   List<Product> getByProductPrice2();
   @Query("select p from Product p where p.price>15000000 and p.price<20000000")
   List<Product> getByProductPrice3();
   @Query("select p from Product p where p.price>20000000")
   List<Product> getByProductPrice4();

   @Query("select p from Product p where (?1 is null or p.category.categoryId= ?1)and YEAR(p.productDate)=2020")
   List<Product> getNewProduct(Long categoryId);

   @Query("select p from Product p where (?1 is null or p.category.categoryId= ?1)  order by p.price asc ")
   List<Product> getAscProduct(Long categoryId);

   @Query("select p from Product p where (?1 is null or p.category.categoryId= ?1)  order by p.price desc ")
   List<Product> getDescProduct(Long categoryId);

   @Query("select p from Product p where (?1 is null or p.category.categoryId= ?1) and p.viewCount>10")
   List<Product> getViewProduct(Long categoryId);

}