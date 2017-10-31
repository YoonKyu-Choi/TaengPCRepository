package com.kosta.taeng.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;

@WebServlet("/admin/login")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MemberService service = MemberServiceImpl.getInstance();
		
		Object id = request.getParameter("id"); //"admin";
		Object password = request.getParameter("password"); //"admin";
		Member member = service.selectMemberById((String)id);

		if(id.equals("admin")) {
			if(password.equals("admin")) {
				response.sendRedirect("/taeng/admin_main.jsp");
			}else {
				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
				request.getRequestDispatcher("../login_test.jsp").forward(request, response);
			}
		} else if(member!=null){
			
			if(password.equals(member.getPassword())) {
				response.sendRedirect("/taeng/admin_main.jsp");
			} else {
				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
				request.getRequestDispatcher("../login_test.jsp").forward(request, response);
			}
			
		} else {
			request.setAttribute("errMsg", "없는 id입니다.");
			request.getRequestDispatcher("../login_test.jsp").forward(request, response);
		}
		
//		if (id.equals("admin")) { 
//			if (password.equals("admin")) {
//				response.sendRedirect("/taeng/admin_main.jsp"); // 메인 페이지!
//			} else { // password failed
//				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
//				request.getRequestDispatcher("../admin_login_test.jsp").forward(request, response);
//			}
//
//		} else { // id failed
//			request.setAttribute("errMsg", "없는 id입니다.");
//			request.getRequestDispatcher("../admin_login_test.jsp").forward(request, response);
//		}
//
//		if(member==null) {
//			request.setAttribute("errMsg", "없는 id입니다.");
//			request.getRequestDispatcher("../admin_login_test.jsp").forward(request, response);
//		}else {
//			if(password.equals(member.getPassword())) {
//				response.sendRedirect("/taeng/admin_main.jsp");
//			}else {
//				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
//				request.getRequestDispatcher("../admin_login_test.jsp").forward(request, response);
//			}
//		}
		
	}

}
