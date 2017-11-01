package com.kosta.taeng.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.Exception.SalesNotFoundException;
import com.kosta.taeng.vo.Sales;

public interface SalesDao {
	
	/**
	 *	매출을 추가하는 메소드. 
	 * @param session
	 * @param sales
	 * @return
	 */
	int insertSales(SqlSession session, Sales sales);
	
	/**
	 * 총 PC 요금 매출
	 * @param session
	 * @return
	 * @throws SalesNotFoundException 
	 */
	int selectAllPcSales(SqlSession session) throws SalesNotFoundException;
	
	/**
	 * 총 상품매출
	 * @param session
	 * @return
	 * @throws SalesNotFoundException 
	 */
	int selectAllItemSales(SqlSession session) throws SalesNotFoundException;
	
	List<Sales> selectSalesDate(SqlSession session, Map<String,String> date);
	
	List<Sales> selectAllSales(SqlSession session);
}
