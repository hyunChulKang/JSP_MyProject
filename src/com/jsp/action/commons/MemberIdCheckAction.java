package com.jsp.action.commons;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberServiceImpl;

public class MemberIdCheckAction implements Action {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		return null;
	}

}
