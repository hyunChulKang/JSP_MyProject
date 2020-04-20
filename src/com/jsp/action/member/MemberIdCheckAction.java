package com.jsp.action.member;

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
		String userID= "";
			try {
				MemberVO member=null;
				member=MemberServiceImpl.getInstance().getMember(id);
				if(member!=null) userID=member.getId();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.getWriter().print(userID);

		return null;
	}

}
