package com.kosta.taeng.controller.item;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosta.taeng.Exception.ItemNotFoundException;
import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.service.impl.SalesServiceImpl;
import com.kosta.taeng.vo.Item;

/**
 * Servlet implementation class ItemOrderServlet
 */
@WebServlet("/item/order")
public class ItemOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 매출 계산해서 table에 넣어주는 과정.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SalesService salesService = SalesServiceImpl.getInstance();
		Item item = null;
		String itemName = request.getParameter("itemName");
		String itemStock = request.getParameter("itemStock");
		ItemService itemService = ItemServiceImpl.getInstance();
		
		try {
		HttpSession session = request.getSession();
		session.invalidate();
		
		item = itemService.findItemByName(itemName);
		item.setItemStock(item.getItemStock()-Integer.parseInt(itemStock));
		itemService.updateItemByName(item);
		
		
		}catch(NullPointerException e) {
			e.printStackTrace();
			List<Item> list = itemService.getItemList();
			request.setAttribute("itemLists", list);
			request.getRequestDispatcher("/item_sell.jsp").forward(request, response);
		}
		
		catch (ItemNotFoundException e) {
			e.printStackTrace();
		}
		salesService.doSales(new Date(), 0, item.getItemPrice()*(Integer.parseInt(itemStock)));
		request.getSession().invalidate();
		request.getRequestDispatcher("/member.jsp").forward(request, response);
		
	}
}
