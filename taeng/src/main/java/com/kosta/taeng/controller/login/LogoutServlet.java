package com.kosta.taeng.controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;
import com.kosta.taeng.vo.PC;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("member");
		String timeOut = request.getParameter("pcTime");
		
		MemberService service = MemberServiceImpl.getInstance();
		
		try {
			member.setPcTime(Integer.parseInt(timeOut));
			service.updateMember(member);
		} catch (MemberNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.invalidate();
		request.getRequestDispatcher("/logout_result.jsp").forward(request, response);
	}
}