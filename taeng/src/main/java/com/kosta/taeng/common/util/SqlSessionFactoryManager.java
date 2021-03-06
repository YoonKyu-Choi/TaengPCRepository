package com.kosta.taeng.common.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryManager {
	
	private SqlSessionFactory factory;
	
	private static SqlSessionFactoryManager instance;
	
	private SqlSessionFactoryManager() throws IOException {
		InputStream is = Resources.getResourceAsStream("com/kosta/taeng/config/mybatis-config.xml");
		factory = new SqlSessionFactoryBuilder().build(is);
	}

	public static SqlSessionFactoryManager getInstance() throws IOException {
		if(instance == null) instance = new SqlSessionFactoryManager();
		return instance;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		return factory;
	}
}
