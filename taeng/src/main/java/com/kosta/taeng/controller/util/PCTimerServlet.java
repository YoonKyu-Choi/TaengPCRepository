package com.kosta.taeng.controller.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.service.impl.PCServiceImpl;
import com.kosta.taeng.vo.Member;
import com.kosta.taeng.vo.PC;

@WebServlet("/pctimer")
public class PCTimerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// 요청파라미터
		String id = request.getParameter("id");
		int pcTime = Integer.parseInt(request.getParameter("pcTime"));
		
		System.out.println(id+pcTime);
		System.out.println(pcTime);
		
		// 서비스
		MemberService service = MemberServiceImpl.getInstance();
		Member member = service.selectMemberById(id);
		
		System.out.println(member.getPcTime());
		
		member.setPcTime(pcTime);
		
		try {
			service.updateMember(member);
		} catch (MemberNotFoundException e) {
			e.printStackTrace();
		}
		
		// 응답
		request.getRequestDispatcher("/login.jsp").forward(request, response);
	}
}