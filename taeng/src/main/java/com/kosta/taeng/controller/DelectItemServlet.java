package com.kosta.taeng.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.ItemNotFoundException;
import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.impl.ItemServiceImpl;

/**
 * Servlet implementation class DelectItemServlet
 */
@WebServlet("/item/deleteItem")
public class DelectItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String itemName = request.getParameter("itemName");
		ItemService service = ItemServiceImpl.getInstance();
		try {
			service.removeItemByName(itemName);
		}catch (ItemNotFoundException e) {
			request.setAttribute("errMsg", e.getMessage());
			request.getRequestDispatcher("/item_test.jsp").forward(request, response);
		}
		request.getRequestDispatcher("/test_result.jsp").forward(request, response);
		
	}
}
