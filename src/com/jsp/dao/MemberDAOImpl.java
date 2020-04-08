package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.jsp.dto.MemberVO;
import com.jsp.mybatis.OracleMyBatisSqlSessionFactoryBuilder;

public class MemberDAOImpl implements MemberDAO{
	private static MemberDAOImpl dao;
	SqlSessionFactory sqlFactoryBuilder;
	private MemberDAOImpl() {
		sqlFactoryBuilder = OracleMyBatisSqlSessionFactoryBuilder.getSqlSessionFactory();
	}	
	public static MemberDAOImpl getInstance() {
		if(dao == null) {
			dao = new MemberDAOImpl();
		}
		return dao;
		
	}

	@Override
	public List<MemberVO> selectMemberList() throws SQLException {
		SqlSession session =sqlFactoryBuilder.openSession();
		List<MemberVO> memberList= session.selectList("Member-Mapper.selectMemberList");
		session.close();
		return memberList;
	}
	@Override
	public int selectMemberListCount() throws SQLException {
		return 0;
	}
	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		SqlSession session=sqlFactoryBuilder.openSession();
		MemberVO member=session.selectOne("Member-Mapper.selectMemberById",id);
		session.close();
		return member;
	}
	@Override
	public void insertMember(MemberVO member) throws SQLException {
		
	}
	@Override
	public void updateMember(MemberVO member) throws SQLException {
		
	}
	@Override
	public void deleteMember(String id) throws SQLException {
		
	}
}
