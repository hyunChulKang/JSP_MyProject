package com.jsp.mybatis;



import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.session.TransactionIsolationLevel;

public class OracleMyBatisSqlSessionFactory implements SqlSessionFactory {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
		String config="com/jsp/mybatis/sqlConfig.xml";
		
		Reader reader = Resources.getResourceAsReader(config);
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
		
		System.out.println("sqlSessionFactory 성공했습니다.");
		} catch (IOException e) {
			System.out.println("sqlSessionFactory 실패했습니다.");
			e.printStackTrace();
		}
		
	}
/*	
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}*/

	@Override
	public Configuration getConfiguration() {
		return sqlSessionFactory.getConfiguration();
	}

	@Override
	public SqlSession openSession() {
		return sqlSessionFactory.openSession();
	}

	@Override
	public SqlSession openSession(boolean autoCommit) {
		return sqlSessionFactory.openSession(autoCommit);
	}

	@Override
	public SqlSession openSession(Connection conn) {
		return sqlSessionFactory.openSession(conn);
	}

	@Override
	public SqlSession openSession(TransactionIsolationLevel transLevel) {
		return sqlSessionFactory.openSession(transLevel);
	}

	@Override
	public SqlSession openSession(ExecutorType exType) {
		return sqlSessionFactory.openSession(exType);
	}

	@Override
	public SqlSession openSession(ExecutorType exType, boolean autoCommit) {
		return sqlSessionFactory.openSession(exType, autoCommit );
	}

	@Override
	public SqlSession openSession(ExecutorType exType, TransactionIsolationLevel transLevel) {
		return sqlSessionFactory.openSession(exType, transLevel);
	} 

	@Override
	public SqlSession openSession(ExecutorType exType, Connection conn) {
		return sqlSessionFactory.openSession(exType, conn);
	}
}
