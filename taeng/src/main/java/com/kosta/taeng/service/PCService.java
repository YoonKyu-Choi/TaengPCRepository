package com.kosta.taeng.service;

import com.kosta.taeng.Exception.PCNotFoundException;
import com.kosta.taeng.vo.PC;

public interface PCService {

	PC selectPCByNum(int pcNum) throws PCNotFoundException;
	
	void updatePC(PC pc);
}
