package com.jsp.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dto.BoardVO;
import com.jsp.request.SearchCriteria;
import com.jsp.service.BoardService;

public class BoardDAOImpl implements BoardService {

	private SqlSessionFactory session;
	public void setSqlSessionFactory(SqlSessionFactory session) {
		this.session= session;
	}
	
	
	@Override
	public Map<String, Object> getBoardList(SearchCriteria cri) throws SQLException {
		
		return null;
	}

	@Override
	public BoardVO getBoard(int bno) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardVO getBoardForModify(int bno) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void write(BoardVO board) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modify(BoardVO board) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(int bno) throws SQLException {
		// TODO Auto-generated method stub
		
	}

}
