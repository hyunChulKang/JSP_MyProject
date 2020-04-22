package com.jsp.action.member;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;

public class MemberIdCheckAction implements Action {

	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url=null;
		String id = request.getParameter("id");
		String userID= "";
			try {
				MemberVO member=null;
				member=memberService.getMember(id);
				if(member!=null) userID=member.getId();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			response.getWriter().print(userID);

		return url;
	}

}
