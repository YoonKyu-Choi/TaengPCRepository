package com.kosta.taeng.controller.pc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.PCServiceImpl;
import com.kosta.taeng.vo.PC;

@WebServlet("/updatepc")
public class UpdatePCServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PC pc = (PC) request.getAttribute("pc");
		PCService service = PCServiceImpl.getInstance();
		service.updatePC(pc);
		request.getRequestDispatcher("/update_pc_result.jsp").forward(request, response);
	}
}