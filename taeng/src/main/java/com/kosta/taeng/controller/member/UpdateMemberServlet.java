package com.kosta.taeng.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;

@WebServlet("/updatemember")
public class UpdateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Member member = (Member) request.getAttribute("member");
		MemberService service = MemberServiceImpl.getInstance();
		try {
			service.updateMember(member);
		} catch (MemberNotFoundException e) {
			request.setAttribute("errMsg", e.getMessage());
			request.getRequestDispatcher("/update_member.jsp").forward(request, response);
		}
		request.getRequestDispatcher("/update_member_result.jsp").forward(request, response);
	}
}