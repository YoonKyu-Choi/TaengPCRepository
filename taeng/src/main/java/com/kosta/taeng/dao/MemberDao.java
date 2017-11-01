package com.kosta.taeng.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.vo.Member;

public interface MemberDao {

	public int insertMember(SqlSession session, Member member);
	
	public Member selectMemberById(SqlSession session, String id);
	
	public List<Member> selectMemberByName(SqlSession session, String name);
	
	public int selectPCtimeById(SqlSession session, String id);
	
	public int updateMember(SqlSession session, Member member);
	
	public int deleteMember(SqlSession session, String id);
}
