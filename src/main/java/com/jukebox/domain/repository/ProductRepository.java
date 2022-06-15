package com.jukebox.domain.repository;

import java.util.List;

import com.jukebox.data.ProductRepositoryDbImpl;
import com.jukebox.data.ProductRepositoryImpl;
import com.jukebox.data.dao.MySqlProductDaoImpl;
import com.jukebox.domain.model.Product;

public interface ProductRepository {
    
    public static ProductRepository getInstance() {
    	 return new ProductRepositoryDbImpl(new MySqlProductDaoImpl());
    }
    
    public List<Product> getAllProducts();
    
    public Product getProductById(String id);
    
    public void addProduct(Product product);
}