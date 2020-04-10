package com.jsp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.MemberVO;
import com.jsp.service.MemberServiceImpl;
@WebServlet("/member/idCheck_js")
public class idOverlepServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String memID = ""; 
		try {
			MemberVO mem =null;			
			mem=MemberServiceImpl.getInstance().getMember(id);
			if(mem!=null) {
				memID=mem.getId();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.getWriter().print(memID);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
