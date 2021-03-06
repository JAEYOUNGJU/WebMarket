package com.jukebox.data.dao;
import java.util.List;
import com.jukebox.domain.model.Product;

//Data Access Object
//Db랑 연결할 것
public interface ProductDao {
	//INTERFACE안에 작성한 멤버 = public final static이 생략됨
	String TABLE_NAME = "product";
	String COLMN_ID = "p_id";
	//interface 안에서는 public이 생략되어 있고 public만 됨
	List<Product> getAll();
//다갖고와서 메모리에서 찾기
	void insert(Product product);
	
	void update(Product product);
	
	void delete(Product product);
}
