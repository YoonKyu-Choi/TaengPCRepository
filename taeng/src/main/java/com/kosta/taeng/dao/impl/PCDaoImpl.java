package com.kosta.taeng.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.dao.PCDao;
import com.kosta.taeng.vo.PC;

public class PCDaoImpl implements PCDao {

	private static PCDaoImpl instance;

	private PCDaoImpl() {}

	public static PCDaoImpl getInstance() {
		if (instance == null) instance = new PCDaoImpl();
		return instance;
	}
	
	public String makeSql(String id) {
		return "com.kosta.taeng.config.mapper.pcMapper."+id;
	}
	
	@Override
	public int insertPC(SqlSession session, PC pc) {
		return session.insert(makeSql("insertPC"), pc);
	}

	@Override
	public PC selectPCByNum(SqlSession session, int pcNum) {
		return session.selectOne(makeSql("selectPCByNum"), pcNum);
	}

	@Override
	public int updatePC(SqlSession session, PC pc) {
		return session.update(makeSql("updatePC"), pc);
	}
	
	@Override
	public List<Integer> selectPcNull(SqlSession session){
		return session.selectList(makeSql("selectPcNull"));
	}
}