package com.jukebox.data;

import java.util.Collections;
import java.util.List;
import com.jukebox.data.dao.ProductDao;
import com.jukebox.domain.model.Product;
import com.jukebox.domain.repository.ProductRepository;

public class ProductRepositoryDbImpl implements ProductRepository {
    private ProductDao dao;
    
    public ProductRepositoryDbImpl(ProductDao dao) {
       this.dao = dao;
    }

    @Override
    public List<Product> getAllProducts() {
        return dao.getAll();
    }

    @Override
    public Product getProductById(String id) {
        // TODO Auto-generated method stub
        return getAllProducts().stream()
                .filter((product) -> product.getId().equals(id)) // 조건
                .findFirst() // 첫번째
                .get(); // 얻어
    }

    @Override
    public void addProduct(Product product) {
        // TODO Auto-generated method stub
        dao.insert(product);
    }
    
}