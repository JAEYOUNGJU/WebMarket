package com.jukebox.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
//상속을 받는다? 확장하려고.
//HttpServlet는 추상클래스임(jsp 영역)
//-> interface와 비슷하지만 일부는 구현되어있는 차이가 있음
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jukebox.domain.model.Product;
import com.jukebox.domain.repository.ProductRepository;



@WebServlet(name = "ProductController", urlPatterns = {"/products.do", "/addProduct.do"})
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1435274035922381283L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = req.getRequestURL().substring(req.getContextPath().length());

         ProductRepository repository = ProductRepository.getInstance();
        
		if (command.equals("/products.do")) {
		
			List<Product> products = repository.getAllProducts();
			req.getSession().setAttribute("products", products);
			
		} else if (command.equals("/processAddProduct.do")) {
			//한글처리
			req.setCharacterEncoding("UTF-8");
			//POST로 넘어온 것
			String productId = req.getParameter("productId");
			String name= req.getParameter("name");
			int unitPrice = Integer.valueOf(req.getParameter("unitPrice"));
			String description = req.getParameter("description");
			String manufacturer = req.getParameter("manufacturer");
			String category = req.getParameter("category");
			int unitsInStock = Integer.valueOf(req.getParameter("unitsInStock"));
			String condition = req.getParameter("condition");
			
			Product product =  new Product (productId, name, unitPrice);
			product.setDescription(description);
			product.setManufacturer(manufacturer);
            product.setCategory(category);
            product.setUnitInStock(unitsInStock);
            product.setCondition(condition);

            repository.addProduct(product);
		}
		
		System.out.println("통과~~~~~");
		req.getRequestDispatcher("products.jsp").forward(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
