package com.niit.BABYSWORLD.dao;

import java.util.List;

import com.niit.BABYSWORLD.model.Product;


public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
