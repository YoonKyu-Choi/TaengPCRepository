package com.kosta.taeng.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.SalesNotFoundException;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.SalesServiceImpl;

/**
 * Servlet implementation class AllSalesServlet
 */
@WebServlet("/sales/allSales")
public class AllSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SalesService service = SalesServiceImpl.getInstance();
		
		try {
			request.setAttribute("allSales", service.getAllSales());
			request.setAttribute("pcSales",service.getPcSales());
			request.setAttribute("itemSales", service.getItemSales());
		} catch (SalesNotFoundException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/sales_test_result.jsp").forward(request, response);
	}

}
