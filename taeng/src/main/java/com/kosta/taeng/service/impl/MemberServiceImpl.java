package com.kosta.taeng.service.impl;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kosta.taeng.Exception.DuplicatedIdException;
import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.common.util.SqlSessionFactoryManager;
import com.kosta.taeng.dao.MemberDao;
import com.kosta.taeng.dao.impl.MemberDaoImpl;
import com.kosta.taeng.service.MemberService;
import com.kosta.taeng.vo.Member;

public class MemberServiceImpl implements MemberService {

	private static MemberServiceImpl instance;

	private SqlSessionFactory factory;
	
	private MemberDao dao;
	
	private MemberServiceImpl() throws IOException {
		factory = SqlSessionFactoryManager.getInstance().getSqlSessionFactory();
		dao = MemberDaoImpl.getInstance();
	}

	public static MemberServiceImpl getInstance() throws IOException {
		if (instance == null) instance = new MemberServiceImpl();
		return instance;
	}
	
	@Override
	public void insertMember(Member member) throws DuplicatedIdException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if(dao.selectMemberById(session, member.getId()) != null) {
				throw new DuplicatedIdException("이미 등록된 ID입니다.", member.getId());
			}
			dao.insertMember(session, member);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public void updateMember(Member member) throws MemberNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if(dao.selectMemberById(session, member.getId()) == null) {
				throw new MemberNotFoundException("없는 ID입니다. 다시 확인해주세요.", member.getId());
			}
			dao.updateMember(session, member);
			session.commit();
		} finally {
			session.close();
		}
	}

	@Override
	public Member selectMemberById(String id) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectMemberById(session, id);
		} finally {
			session.close();
		}
	}

	@Override
	public List<Member> selectMemberByName(String name) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectMemberByName(session, name);
		} finally {
			session.close();
		}
	}

	@Override
	public int selectPCtimeById(String id) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectPCtimeById(session, id);
		} finally {
			session.close();
		}
	}

	@Override
	public void deleteMember(String id) throws MemberNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if(dao.selectMemberById(session, id) == null) {
				throw new MemberNotFoundException("없는 ID입니다. 다시 확인해주세요.", id);
			}
			dao.deleteMember(session, id);
			session.commit();
		} finally {
			session.close();
		}
	}

}
