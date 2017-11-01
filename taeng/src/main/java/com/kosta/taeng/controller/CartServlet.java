package com.kosta.taeng.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.vo.Item;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/item/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String itemName = request.getParameter("itemName");
		String up = request.getParameter("up");
		System.out.println(up);
		ItemService service = ItemServiceImpl.getInstance();
		Item item = new Item();
		if (itemName == null || itemName == "") {
			request.setAttribute("errMsg", "상품이 선택되지 않았습니다.");
			request.getRequestDispatcher("/item/itemLists").forward(request, response);
			return;
		}
		HashMap<String, Integer> items = (HashMap<String, Integer>) session.getAttribute("itemOrder");
		if (items == null) {
			items = new HashMap<>();
			session.setAttribute("itemOrder", items);
		}
		if (up.equals("+")) {
			if (items.containsKey(itemName)) {
				items.put(itemName, items.get(itemName) + 1);
			} else {
				items.put(itemName, 1);
			}
		} else {
			if (items.containsKey(itemName)) {
				if(items.get(itemName)>0) {
					items.put(itemName, items.get(itemName) - 1);
				}
			} else {
				items.put(itemName, 1);
			}
		}
		

		List<Item> list = service.getItemList();
		request.setAttribute("itemLists", list);
		request.getRequestDispatcher("/item_sell.jsp").forward(request, response);
	}

}
