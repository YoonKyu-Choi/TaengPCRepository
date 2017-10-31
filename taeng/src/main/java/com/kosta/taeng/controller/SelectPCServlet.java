package com.kosta.taeng.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.PCServiceImpl;
import com.kosta.taeng.vo.PC;

@WebServlet("/selectpc")
public class SelectPCServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pcNum = Integer.parseInt(request.getParameter("pcNum"));
		PCService service = PCServiceImpl.getInstance();
		try {
			PC pc = service.selectPCByNum(pcNum);
			request.setAttribute("pc", pc);
		} catch (PCNotFoundException e) {
			request.setAttribute("errMsg", e.getMessage());
			request.getRequestDispatcher("/select_pc.jsp").forward(request, response);
		}
		request.getRequestDispatcher("/select_pc_result.jsp").forward(request, response);
	}
}