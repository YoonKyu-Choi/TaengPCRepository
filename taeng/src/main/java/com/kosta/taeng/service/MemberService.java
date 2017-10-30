package com.kosta.taeng.service;

import java.util.List;

import com.kosta.taeng.Exception.DuplicatedIdException;
import com.kosta.taeng.Exception.MemberNotFoundException;
import com.kosta.taeng.vo.Member;

public interface MemberService {

	void insertMember(Member member) throws DuplicatedIdException;
	
	void updateMember(Member member) throws MemberNotFoundException;
	
	Member selectMemberById(String id);
	
	List<Member> selectMemberByName(String name);
	
	int selectPCtimeById(String id);
	
	void deleteMember(String id) throws MemberNotFoundException;
}
