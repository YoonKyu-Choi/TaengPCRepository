package com.kosta.taeng.service;

import java.util.Date;
import java.util.List;

import com.kosta.taeng.Exception.SalesNotFoundException;
import com.kosta.taeng.vo.Sales;

public interface SalesService {
	
	int getAllSales() throws SalesNotFoundException;
	
	int getPcSales() throws SalesNotFoundException;
	
	int getItemSales() throws SalesNotFoundException;
	
	List<Sales> getSalesByDate(Date startDay, Date endDay);
	
	void doSales(Date date,int pc, int item);
	
	List<Sales> getAllSalesList() throws SalesNotFoundException;
}
