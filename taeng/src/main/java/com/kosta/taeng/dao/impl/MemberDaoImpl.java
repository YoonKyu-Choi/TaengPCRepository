package com.kosta.taeng.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.dao.MemberDao;
import com.kosta.taeng.vo.Member;

public class MemberDaoImpl implements MemberDao {
	
	private static MemberDaoImpl instance;

	private MemberDaoImpl() {}

	public static MemberDaoImpl getInstance() {
		if (instance == null) instance = new MemberDaoImpl();
		return instance;
	}

	public String makeSql(String id) {
		return "com.kosta.taeng.config.mapper.memberMapper."+id;
	}

	@Override
	public int insertMember(SqlSession session, Member member) {
		return session.insert(makeSql("insertMember"), member);
	}

	@Override
	public Member selectMemberById(SqlSession session, String id) {
		return session.selectOne(makeSql("selectMemberById"), id);
	}

	@Override
	public List<Member> selectMemberByName(SqlSession session, String name) {
		return session.selectList(makeSql("selectMemberByName"), name);
	}

	@Override
	public int selectPCtimeById(SqlSession session, String id) {
		return session.selectOne(makeSql("selectPCtimeById"), id);
	}

	@Override
	public int updateMember(SqlSession session, Member member) {
		return session.update(makeSql("updateMember"), member);
	}

	@Override
	public int deleteMember(SqlSession session, String id) {
		return session.delete(makeSql("deleteMember"), id);
	}
}