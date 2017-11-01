package com.kosta.taeng.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.service.impl.SalesServiceImpl;

@WebServlet("/salesList")
/**
 * 목록을 조회 처리 Controller
 */
public class ListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 요청파라미터 조회 - 보여줄 페이지
		int page = 1; // page default 값으로 설정.
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (NumberFormatException e) {
		}

		// 2. 비지니스로직 : ItemService.getItemList(page) 호출
		SalesService service = SalesServiceImpl.getInstance();
		Map<String, Object> map = service.getSalesList(page);
		
		// 3. 응답 처리 : ltem_list.jsp로 이동 - 요청디스패치
		request.setAttribute("list", map.get("list"));
		request.setAttribute("pageBean", map.get("pageBean"));
		request.getRequestDispatcher("/sales/sales_list.jsp").forward(request, response);
	}

}
