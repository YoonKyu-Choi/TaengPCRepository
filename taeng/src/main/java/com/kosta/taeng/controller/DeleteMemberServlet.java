package com.kosta.taeng.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;

@WebServlet("/deletemember")
public class DeleteMemberServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		MemberService service = MemberServiceImpl.getInstance();
		try {
			service.deleteMember(id);
		} catch (MemberNotFoundException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/test_result.jsp").forward(request, response);
	}
}