package com.kosta.taeng.controller.login;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.service.impl.PCServiceImpl;
import com.kosta.taeng.vo.PC;

/**
 * Servlet implementation class LoginSeatServlet
 */
@WebServlet("/login/seat")
public class LoginSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 빈자리 찾기 로직.
		PCService service = PCServiceImpl.getInstance();
		List<Integer> list = service.selectPcNull();
		
		request.getSession().setAttribute("list", list);
		response.sendRedirect("/taeng/choice_seat.jsp");
	
	}

}
