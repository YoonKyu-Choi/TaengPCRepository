package com.kosta.taeng.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.service.impl.SalesServiceImpl;
import com.kosta.taeng.vo.Member;

/**
 * Servlet implementation class LoginPayServlet
 */
@WebServlet("/login/payment")
public class LoginPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberService mService = MemberServiceImpl.getInstance();
		SalesService sService = SalesServiceImpl.getInstance();
		String id = request.getParameter("id");
		String hour= request.getParameter("hour");
		if(mService.selectMemberById(id)==null) {
			request.setAttribute("errMsg", "없는 id입니다.");
			request.getRequestDispatcher("/gusukTest/login_payment.jsp").forward(request, response);
			return;
		}
		if(hour==null || hour.equals("")) {
			request.setAttribute("errMsg", "시간을 선택해주세요.");
			request.getRequestDispatcher("/gusukTest/login_payment.jsp").forward(request, response);
			return;
		}
		
		Member member = mService.selectMemberById(id);
		
		if(hour.equals("1")) {
			member.setPcTime(member.getPcTime() + 60);
		}else if(hour.equals("2")){
			member.setPcTime(member.getPcTime() + 120);
		}else if(hour.equals("3")) {
			member.setPcTime(member.getPcTime() + 180);
		}else if(hour.equals("4")) {
			member.setPcTime(member.getPcTime() + 240);
		}else if(hour.equals("5")) {
			member.setPcTime(member.getPcTime() + 300);
		}
		
		long now = System.currentTimeMillis();
		Date date = new Date();
		try {
			mService.updateMember(member);
			sService.doSales(date, Integer.parseInt(hour)*60, 0);
		} catch (MemberNotFoundException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/gusukTest/login.jsp").forward(request, response);
	}

}
