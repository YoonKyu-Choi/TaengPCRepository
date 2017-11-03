package com.kosta.taeng.service.impl;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.common.util.SqlSessionFactoryManager;
import com.kosta.taeng.dao.PCDao;
import com.kosta.taeng.dao.impl.PCDaoImpl;
import com.kosta.taeng.service.PCService;
import com.kosta.taeng.vo.PC;

public class PCServiceImpl implements PCService {

	private static PCServiceImpl instance;

	private SqlSessionFactory factory;
	
	private PCDao dao;
	
	private PCServiceImpl() throws IOException {
		factory = SqlSessionFactoryManager.getInstance().getSqlSessionFactory();
		dao = PCDaoImpl.getInstance();
	}

	public static PCServiceImpl getInstance() throws IOException {
		if (instance == null) instance = new PCServiceImpl();
		return instance;
	}

	@Override
	public PC selectPCByNum(int pcNum) throws PCNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if(dao.selectPCByNum(session, pcNum) == null) {
				throw new PCNotFoundException("없는 PC입니다. 다시 확인해주세요.", pcNum);
			}
			return dao.selectPCByNum(session, pcNum);
		} finally {
			session.close();
		}
	}
	
	@Override
	public void updatePC(PC pc) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			dao.updatePC(session, pc);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public List<Integer> selectPcNull() {
		
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectPcNull(session);
		}finally {
			session.close();
		}
	}

	@Override
	public List<String> selectPcid() {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectPcid(session);
		} finally {
			session.close();
		}
	}
	
	
}