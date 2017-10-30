package com.kosta.taeng.service.impl;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kosta.taeng.Exception.SalesNotFoundException;
import com.kosta.taeng.common.util.SqlSessionFactoryManager;
import com.kosta.taeng.dao.SalesDao;
import com.kosta.taeng.dao.impl.SalesDaoImpl;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.vo.Sales;

public class SalesServiceImpl implements SalesService {

	private SalesDao dao;
	private SqlSessionFactory factory;
	private static SalesServiceImpl instance;

	private SalesServiceImpl() throws IOException {
		dao = SalesDaoImpl.getInstance();
		factory = SqlSessionFactoryManager.getInstance().getSqlSessionFactory();
	}

	public static SalesServiceImpl getInstance() throws IOException {
		if (instance == null)
			instance = new SalesServiceImpl();
		return instance;
	}

	@Override
	public int getAllSales() throws SalesNotFoundException {
		SqlSession session = factory.openSession();
		return dao.selectAllItemSales(session) + dao.selectAllPcSales(session);
	}

	@Override
	public int getPcSales() throws SalesNotFoundException {
		SqlSession session = factory.openSession();
		return dao.selectAllPcSales(session);
	}

	@Override
	public int getItemSales() throws SalesNotFoundException {
		SqlSession session = factory.openSession();
		return dao.selectAllItemSales(session);
	}

	@Override
	public List<Sales> getSalesByDate(Date startDay, Date endDay) {
		SqlSession session = factory.openSession();
		Map<String, String> map = new HashMap(); 
		String sStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(startDay);
		String eStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(endDay);
		map.put("startDay", sStr);
		map.put("endDay", eStr);
		return dao.selectSalesDate(session, map);

	}

	@Override
	public int doSales(Date date, int pc, int item) {
		SqlSession session = factory.openSession();
		
		return dao.insertSales(session, new Sales(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date), pc, item));
	}

}
;