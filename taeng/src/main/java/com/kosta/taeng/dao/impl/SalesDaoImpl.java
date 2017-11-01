package com.kosta.taeng.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.Exception.SalesNotFoundException;
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
	public int selectAllPcSales(SqlSession session) throws SalesNotFoundException{
		
		int cnt = session.selectOne(makeSql("selectAllPcSales"));
		if(cnt==0) {
			throw new SalesNotFoundException();
		}else {
			return cnt;
		}
	}

	@Override
	public int selectAllItemSales(SqlSession session) throws SalesNotFoundException {
		int cnt = session.selectOne(makeSql("selectAllItemSales"));
		if(cnt==0) {
			throw new SalesNotFoundException();
		}else {
			return cnt;
		}
	}

	@Override
	public List<Sales> selectAllSales(SqlSession session) {
		return session.selectList(makeSql("selectAllSales"));
	}

	@Override
	public List<Sales> selectSalesDate(SqlSession session, Map<String,String> date) {
		return session.selectList(makeSql("selectSalesDate"), date);
	}
	
	@Override
	public List<Sales> selectSalesList(SqlSession session, int beginSalesNum, int endSalesNum){
		HashMap<String,Integer> map = new HashMap<>();
		map.put("begin", beginSalesNum);
		map.put("end",endSalesNum);
		return session.selectList(makeSql("selectSalesList"),map);
	}

	private String makeSql(String sqlId) {
		return "com.kosta.taeng.config.mapper.salesMapper." + sqlId;
	}

}
