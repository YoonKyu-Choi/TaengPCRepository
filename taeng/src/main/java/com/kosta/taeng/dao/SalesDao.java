package com.kosta.taeng.dao;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

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
	 */
	int selectAllPcSales(SqlSession session);
	
	/**
	 * 총 상품매출
	 * @param session
	 * @return
	 */
	int selectAllItemSales(SqlSession session);
	
	List<Sales> selectSalesDate(SqlSession session, Map<String,Date> date);
}
