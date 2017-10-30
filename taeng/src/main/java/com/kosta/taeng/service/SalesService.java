package com.kosta.taeng.service;

import java.sql.Date;
import java.util.List;

import com.kosta.taeng.vo.Sales;

public interface SalesService {
	
	int getAllSales();
	
	int getPcSales();
	
	int getItemSales();
	
	List<Sales> getSalesByDate(Date startDay, Date endDay);
	
	int doSales(Date date,int pc, int item);
}
