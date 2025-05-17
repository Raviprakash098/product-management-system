package com.pms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.pms.bean.Product;
import com.pms.service.ProductService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ProductViewController")
public class ProductViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		ProductService ps = new ProductService();
		List<Product> listofproduct = ps.findAllProduct();
		HttpSession hs = request.getSession();
		//request.setAttribute("listofproduct",listofproduct);		// request scope 
		hs.setAttribute("listofproduct",listofproduct);			// session scope 
		//RequestDispatcher rd = request.getRequestDispatcher("view_product.jsp");
		//rd.forward(request, response);
		response.sendRedirect("view_product.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


}
