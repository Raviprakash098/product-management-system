package com.pms.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.pms.bean.Product;
import com.pms.service.ProductService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ProductUpdateController")
public class ProductUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		// receive the value from form and convert to respective data types. 
		
		int pid =Integer.parseInt(request.getParameter("pid"));// convert string to int 
		
		float price = Float.parseFloat(request.getParameter("price")); // convert string to float 
		
		// create Product java bean class object. 
		Product p  = new Product();
		p.setPid(pid);
		p.setPrice(price);
		
		// created service class object 
		ProductService ps = new ProductService();
		
		// pass the object and get the result 
		String result = ps.updateProduct(p);
		pw.print(result);
		// created request dispatcher object and include the page 
		RequestDispatcher rd = request.getRequestDispatcher("update_product.jsp");
		// set the content in html format. 
		
		response.setContentType("text/html");
		rd.include(request, response);
	}

}


