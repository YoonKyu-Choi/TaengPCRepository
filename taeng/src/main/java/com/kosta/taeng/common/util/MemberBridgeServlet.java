package com.kosta.taeng.common.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;

/**
 * Servlet implementation class MemberBridgeServlet
 */
@WebServlet("/bridge")
public class MemberBridgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청파라미터 조회
		String seatNum = request.getParameter("seat");
		String id = (String)request.getSession().getAttribute("id");

		// 비즈니스로직.
		MemberService mService = MemberServiceImpl.getInstance();
		Member member = mService.selectMemberById(id);
	}

}
