package com.kosta.taeng.service;

import java.util.List;

import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.vo.PC;

public interface PCService {

	PC selectPCByNum(int pcNum) throws PCNotFoundException;
	
	void updatePC(PC pc);
	
	List<Integer> selectPcNull();
	
	List<String> selectPcid();
}
