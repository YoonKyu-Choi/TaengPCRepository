package com.kosta.taeng.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kosta.taeng.Exception.DuplicatedIdException;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.service.impl.MemberServiceImpl;
import com.kosta.taeng.vo.Member;

@WebServlet("/addmember")
public class AddMemberServlet extends HttpServlet {

   private static final long serialVersionUID = 1L;

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      Member member = (Member) request.getAttribute("member");
      MemberService service = MemberServiceImpl.getInstance();
      try {
         service.insertMember(member);
      } catch (DuplicatedIdException e) {
         request.setAttribute("errMsg", e.getMessage());
         //request.getRequestDispatcher("/login.jsp").forward(request, response);
      }
      request.getRequestDispatcher("/login.jsp").forward(request, response);
   }
}