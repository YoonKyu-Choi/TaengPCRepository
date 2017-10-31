package com.kosta.taeng.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;

@WebServlet("/selectmemberbyname")
public class SelectMemberByNameServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		MemberService service = MemberServiceImpl.getInstance();
		List<Member> memberList = service.selectMemberByName(name);
		request.setAttribute("memberList", memberList);
		request.getRequestDispatcher("/select_member_name_result.jsp").forward(request, response);
	}
}