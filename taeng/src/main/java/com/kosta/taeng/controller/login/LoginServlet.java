package com.kosta.taeng.controller.login;

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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService service = MemberServiceImpl.getInstance();
		
		Object id = request.getParameter("id"); // "admin";
		Object password = request.getParameter("pw"); // "admin";
		Member member = service.selectMemberById((String) id);
		
		if (id.equals("admin")) {
			if (password.equals("admin")) {
				request.getSession().setAttribute("login", true);
				response.sendRedirect("/taeng/admin.jsp");
			} else {
				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
		} else if (member != null) {
			if (password.equals(member.getPassword())) {

				if (member.getPcTime() == 0) {
					request.setAttribute("errMsg", "요금 충전 후 사용해주세요.");
				} else if (member.getPcTime() > 0) {
					request.getSession().setAttribute("id",id);
					response.sendRedirect("/taeng/login/seat");
				}
			} else {
				request.setAttribute("errMsg", "비밀번호가 틀립니다.");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}

		} else {
			request.setAttribute("errMsg", "없는 id입니다.");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

}
