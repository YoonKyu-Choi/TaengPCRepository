package com.kosta.taeng.controller.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;
import com.kosta.taeng.vo.PC;

@WebServlet("/pctimer")
public class PCTimerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PC pc = (PC) session.getAttribute("pc");
		Member member = pc.getMember();
		MemberService service = MemberServiceImpl.getInstance();
		int pcTime = service.selectPCtimeById(member.getId());
		session.setAttribute("pcTime", pcTime);
		request.getRequestDispatcher("/pc_timer.jsp").forward(request, response);
	}
}