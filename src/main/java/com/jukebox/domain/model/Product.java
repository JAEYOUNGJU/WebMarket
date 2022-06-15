package com.jukebox.domain.model;

import java.util.Objects;

//1.무지성 private 멤버 변수
//2. 필요하면 생성자 추가
//3. 무지성getter, setter 읽기 전용, 쓰기 전용
//4. 무지성toString()
//5. 필요하면 equals, hashCode 재정의(오버라이드) -> 객체의 동등 비교를 위해서 Object의 equals() 메서드와 hashCode() 메서드
//재정의 함
public class Product {
	public static void main(String[] args) {
			Product product = new Product("22", "22", 11); //생성자 만들자

			Product product2 = new Product("22", "22", 11); //생성자 만들자
			
//			Object object = new Product("22", "22", 11); //오브젝트로 생성자 만들기
			
			System.out.println(product == product2); //==은 주소비교, 둘은 다른 것!
			System.out.println(product.hashCode() == product2.hashCode()); //equals 재정의되며 밑에 hashCode 재정의됨
			//hashCode : 객체를 식별할 하나의 정수 값
			System.out.println(product.equals(product2));//객체비교는 equals 사용
		

	}
	//private 멤버는 class 외부에서 접근할 수 없는 변수
	private String id;
	private String name;
	private int unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitInStock;
	private String condition;
	
//	public Product() {} //오버로드: 똑같은 이름의 생성자를 만드는것
	
	public Product(String id, String name, int unitPrice) {
		this.id = id;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String descriprtion) {
		this.description = descriprtion;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUnitInStock() {
		return unitInStock;
	}

	public void setUnitInStock(long unitInStock) {
		this.unitInStock = unitInStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	
	
	@Override
	public int hashCode() {
		return Objects.hash(id); //objects 필드 값을 return 하도록 해주면 서로 다른 객체이지만 hashCode()의 리턴값이 같고
		//equals의 리턴값이 true가 나오기 때문에 동등 객체로 평가하게 됨
	
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", unitPrice=" + unitPrice + ", description=" + description
				+ ", manufacturer=" + manufacturer + ", category=" + category + ", unitInStock=" + unitInStock
				+ ", condition=" + condition + "]";
	}

	public void manufacturer(String string) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}
