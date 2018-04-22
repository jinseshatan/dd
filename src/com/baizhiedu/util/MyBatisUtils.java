package com.baizhiedu.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtils {

	private static final ThreadLocal<SqlSession> tl = new ThreadLocal<SqlSession>();
	
	private static SqlSessionFactory factory = null;
	
	static {
		try {
			InputStream config = Resources.getResourceAsStream("mybatis-config.xml");
			factory = new SqlSessionFactoryBuilder().build(config);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	private static SqlSession openSession(){
		SqlSession session = tl.get();
		if(session == null){
			session = factory.openSession();
			tl.set(session);
		}
		return session;
	}
	private static void closeSession(){
		SqlSession session = openSession();
		session.close();
		tl.remove();
	}
	
	public static void commit(){
		SqlSession session = openSession();
		session.commit();
		closeSession();
	}
	
	public static void rollback(){
		SqlSession session = openSession();
		session.rollback();
		closeSession();
	}
	
	public static <T> T getMapper(Class<T> clazz){
		SqlSession session = openSession();
		return session.getMapper(clazz);
	}
	
	public static void main(String[] args) {
		System.out.println(openSession());
	}
	
}