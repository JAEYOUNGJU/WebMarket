<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jukebox.data.ProductRepository" %>
  <%@page import="com.jukebox.domain.model.Product" %>
  
<!--자바 코드 쓰는 페이지-->
<%

/* //post로 넘어온 것  */
String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.valueOf(request.getParameter("unitPrice"));
String decription = request.getParameter("decription");
String menufacturer = request.getParameter("menufacturer");
String caregory = request.getParameter("caregory");
int unitInStock = Integer.valueOf(request.getParameter("unitInStock"));
String condition = request.getParameter("condition");

ProductRepository repository = ProductRepository.getInstance();
Product product = new Product(productId, name, unitPrice);
product.setDescription(decription);
product.setManufacturer(menufacturer);
product.setCategory(caregory);
product.setUnitInStock(unitInStock);
product.setCondition(condition);
repository.addProduct(product);

response.sendRedirect("products.jsp");


%>