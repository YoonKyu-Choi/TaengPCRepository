package com.kosta.taeng.controller.item;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.vo.Item;

/**
 * Servlet implementation class ItemListServlet
 */
@WebServlet("/item/itemLists")
public class ItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ItemService service = ItemServiceImpl.getInstance();

		List<Item> list = service.getItemList();
		request.setAttribute("itemLists", list);
		request.getRequestDispatcher("/item_sell.jsp").forward(request, response);

	}

}
