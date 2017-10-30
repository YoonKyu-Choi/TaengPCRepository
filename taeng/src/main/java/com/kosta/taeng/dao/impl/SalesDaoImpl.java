package com.kosta.taeng.dao.impl;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.dao.SalesDao;
import com.kosta.taeng.vo.Sales;

public class SalesDaoImpl implements SalesDao {

	private static SalesDaoImpl instance;

	private SalesDaoImpl() {
	}

	public static SalesDaoImpl getInstance() {
		if (instance == null)
			instance = new SalesDaoImpl();
		return instance;
	}

	@Override
	public int insertSales(SqlSession session, Sales sales) {
		return session.insert(makeSql("insertSales"), sales);
	}

	@Override
	public int selectAllPcSales(SqlSession session) {
		return session.selectOne(makeSql("selectAllPcSales"));
	}

	@Override
	public int selectAllItemSales(SqlSession session) {
		return session.selectOne(makeSql("selectAllItemSales"));
	}
	
	

	@Override
	public List<Sales> selectSalesDate(SqlSession session, Map<String,Date> date) {
		return session.selectList(makeSql("selectSalesDate"), date);
	}

	private String makeSql(String sqlId) {
		return "com.kosta.taeng.config.mapper.salesMapper." + sqlId;
	}

}
