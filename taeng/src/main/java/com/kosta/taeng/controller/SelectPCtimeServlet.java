package com.kosta.taeng.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;

@WebServlet("/selectpctime")
public class SelectPCtimeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		MemberService service = MemberServiceImpl.getInstance();
		Integer pcTime = service.selectPCtimeById(id);
		request.setAttribute("pcTime", pcTime);
		request.getRequestDispatcher("/select_pctime_result.jsp").forward(request, response);
	}
}