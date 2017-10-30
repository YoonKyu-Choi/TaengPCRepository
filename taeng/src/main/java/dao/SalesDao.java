package dao;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.Sales;

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
	List<Sales> selectAllPcSales(SqlSession session);
	
	/**
	 * 총 상품매출
	 * @param session
	 * @return
	 */
	List<Sales> selectAllItemSales(SqlSession session);
	
	/**
	 * 총 매출액.
	 * @param session
	 * @return
	 */
	int selectAllSales(SqlSession session);
}
