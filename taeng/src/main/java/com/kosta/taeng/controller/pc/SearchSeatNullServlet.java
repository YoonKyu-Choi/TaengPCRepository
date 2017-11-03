package com.kosta.taeng.controller.pc;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.PCServiceImpl;

/**
 * Servlet implementation class SearchSeatNullServlet
 */
@WebServlet("/admin/search")
public class SearchSeatNullServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PCService service = PCServiceImpl.getInstance();
		
		List<Integer> list = service.selectPcNull();
		
		req.getSession().setAttribute("list", list);
		req.getRequestDispatcher("/admin.jsp").forward(req, resp);
	}

}
