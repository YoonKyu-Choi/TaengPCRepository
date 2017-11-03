package com.kosta.taeng.controller.util;

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

@WebServlet("/move")
public class MoveServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		String pauseTime = request.getParameter("pcTime");
		if (pauseTime == null) {
			pauseTime = "0";
		}
		MemberService service = MemberServiceImpl.getInstance();
		Member member = service.selectMemberById(id);
		try {
			member.setPcTime(Integer.parseInt(pauseTime));
			service.updateMember(member);
		} catch (MemberNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("/choice_seat.jsp").forward(request, response);
	}
}