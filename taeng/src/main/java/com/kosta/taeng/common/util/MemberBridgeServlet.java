package com.kosta.taeng.common.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.PCService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.service.impl.PCServiceImpl;
import com.kosta.taeng.vo.Member;
import com.kosta.taeng.vo.PC;

/**
 * Servlet implementation class MemberBridgeServlet
 */

// 자리번호 이름 남은 시간
@WebServlet("/bridge")
public class MemberBridgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청파라미터 조회
		String seatNum = request.getParameter("seat");
		String id = (String)request.getSession().getAttribute("id");

		// 비즈니스로직.
		MemberService mService = MemberServiceImpl.getInstance();
		PCService pcService = PCServiceImpl.getInstance();
		
		List<Integer> list = pcService.selectPcNull();
		int num = Integer.parseInt(seatNum);
		boolean flag = true;
		for(int i : list) {
			if(i==num) {
				flag = false;
			}
		}
		if(flag) {
			request.setAttribute("errMsg", "자리선택 중 다른 사람이 로그인했습니다.");
			request.getRequestDispatcher("/choice_seat.jsp").forward(request, response);
			return;
		}
		
		Member member = mService.selectMemberById(id);
		pcService.updatePC(new PC(Integer.parseInt(seatNum), member.getPcTime(), member.getId()));
		
		// 응답.
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("seatnum", seatNum);
		map.put("member", member);
		
		request.setAttribute("map", map);
		request.getRequestDispatcher("/member.jsp").forward(request, response);
	}
}
