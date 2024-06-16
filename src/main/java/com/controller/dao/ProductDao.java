package com.controller.dao;

import com.controller.entity.Products;
import com.controller.entity.Report;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProductDao extends JpaRepository<Products, Integer> {

//    @Query("SELECT o FROM Products o WHERE o.price BETWEEN ?1 AND ?2")
//    List<Products> findByPrice(double minPrice, double maxPrice);
    List<Products> findByPriceBetween(double minPrice, double maxPrice);

    Page<Products> findAllByNameLike(String keywords, Pageable pageable);

    @Query("SELECT new Report(o.name, sum(o.price), count(o)) "
            + " FROM Products o "
            + " GROUP BY o.name"
            + " ORDER BY sum(o.price) DESC")
    List<Report> getInventoryByCategory();
}
