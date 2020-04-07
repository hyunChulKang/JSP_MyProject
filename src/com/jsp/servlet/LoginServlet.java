package com.jsp.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.jsp.dto.MemberVO;
import com.jsp.exception.InvalidPasswordException;
import com.jsp.exception.NotFoundIDExcepiton;
import com.jsp.service.MemberServiceImpl;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	MemberServiceImpl serv = MemberServiceImpl.getInstance();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/common/loginForm.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/common/loginForm.jsp";
		String id= request.getParameter("id");
		String pass= request.getParameter("pass");
		
		MemberVO vo = new MemberVO();
			vo.setId(id);
			vo.setPwd(pass);
			
			/*값 체크에 따른 페이지 이동*/
			try {
				serv.login(id, pass);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (NotFoundIDExcepiton e) {
				e.printStackTrace();
				response.sendRedirect("/login");
			} catch (InvalidPasswordException e) {
				response.sendRedirect("/login");
				e.printStackTrace();
			}
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", vo);
			request.setAttribute("id", id);
			url = "/WEB-INF/views/common/login_success.jsp";
			request.getRequestDispatcher(url).forward(request, response);
	}

}
