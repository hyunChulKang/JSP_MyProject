package com.jsp.action.board;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.request.SearchCriteria;
import com.jsp.service.BoardService;
import com.jsp.service.BoardServiceImpl;

public class BoardListFormAction implements Action {

	private BoardService boardService;
	public void setBoardService (BoardService boardService) {
		this.boardService=boardService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String url="board/list";
			String page = request.getParameter("page");
			String perPageNum = request.getParameter("perPageNum");
			String searchType = request.getParameter("searchType");
			String keyword = request.getParameter("keyword");
			
			SearchCriteria sci = new SearchCriteria();
			try {
				sci.setPage(Integer.parseInt(page));
				sci.setPerPageNum(Integer.parseInt(perPageNum));
			}catch(NumberFormatException e) {
				System.out.println("페이지번호를 1로 세팅한다.");
			}
			if(searchType !=null && keyword !=null) {
				sci.setSearchType(searchType);
				sci.setKeyword(keyword);
			}
			
			try {
				Map<String, Object> dataMap= boardService.getBoardList(sci);
				request.setAttribute("dataMap", dataMap);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		return url;
	}

}
