package com.kosta.taeng.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.SalesServiceImpl;
import com.kosta.taeng.vo.Sales;

/**
 * Servlet implementation class SearchSalesByDateServlet
 */
@WebServlet("/sales/salesByDate")
public class SearchSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SalesService service = SalesServiceImpl.getInstance();
		List<Sales> list = new ArrayList();
		try {
			
			Date sday = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").parse(request.getParameter("sDay")+" 00-00-00");
			Date eday = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss").parse(request.getParameter("eDay")+" 00-00-00");
			
			list = service.getSalesByDate(sday, eday);
			request.setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/sales/sales_test_result.jsp").forward(request, response);
	}
	
	public String makeDate(String year, String month, String day, String hour, String minute, String second) {
		return year+"-"+month+"-"+day+" "+hour+"-"+minute+"-"+second;
	}

}
