package com.jukebox.data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import com.jukebox.domain.model.Product;

public class ProductRepositoriy {
	private List<Product> products = new ArrayList<>();
	
	public ProductRepositoriy() {
		Product phone = new Product("P1234", "iPhone 11", 800000);
		phone.setDescriprtion("4.7inch, 1234x750 dispaly");
		phone.setCatagory("smart Phone");
		phone.manufacturer("Apple");
		phone.setUnitInStock(1000);
		phone.setCondition("New");
		
		Product noteBook = new Product("P1234", "iPhone 11", 800000);
		noteBook.setDescriprtion("4.7inch, 1234x750 dispaly");
		noteBook.setCatagory("smart Phone");
		noteBook.manufacturer("Apple");
		noteBook.setUnitInStock(1000);
		noteBook.setCondition("New");
		
		Product tablet = new Product("P1234", "iPhone 11", 800000);
		tablet.setDescriprtion("4.7inch, 1234x750 dispaly");
		tablet.setCatagory("smart tablet");
		tablet.manufacturer("Samsung");
		tablet.setUnitInStock(1000);
		tablet.setCondition("New");
	}
	
	//상품목록 가져오는 기능 
	product List<Product> getAllProducts(){
		
		
		return products;
	}

}
