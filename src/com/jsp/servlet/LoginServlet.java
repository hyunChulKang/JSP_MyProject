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
import com.jsp.utils.ViewResolver;

@WebServlet("/commons/login")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/commons/loginForm.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "redirect:/member/list";
		String id= request.getParameter("id");
		String pass= request.getParameter("pass");
		
		HttpSession session= request.getSession();
		
			/*값 체크에 따른 페이지 이동*/
			try {
				MemberServiceImpl.getInstance().login(id, pass);
				MemberVO loginUser =MemberServiceImpl.getInstance().getMember(id);
				session.setAttribute("loginUser", loginUser);
				session.setMaxInactiveInterval(60*20);
				
				} catch (SQLException e) {
				e.printStackTrace();
				url="error/500_error";
				request.setAttribute("exception", e);
			} catch (NotFoundIDExcepiton | InvalidPasswordException e) {
				url="commons/loginForm";
				request.setAttribute("msg",e.getMessage());
			}
			ViewResolver.view(request, response, url);
	}

}
