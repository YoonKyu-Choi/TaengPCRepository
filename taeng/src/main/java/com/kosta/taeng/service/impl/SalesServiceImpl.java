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
import com.kosta.taeng.common.util.PagingBean;
import com.kosta.taeng.common.util.SqlSessionFactoryManager;
import com.kosta.taeng.dao.SalesDao;
import com.kosta.taeng.dao.impl.SalesDaoImpl;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.vo.Sales;

public class SalesServiceImpl implements SalesService {

	private SalesDao dao;
	private SqlSessionFactory factory;
	private static SalesServiceImpl instance;

	private SalesServiceImpl() {
		dao = SalesDaoImpl.getInstance();
		try {
			factory = SqlSessionFactoryManager.getInstance().getSqlSessionFactory();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	public static SalesServiceImpl getInstance() throws IOException {
		if (instance == null)
			instance = new SalesServiceImpl();
		return instance;
	}

	@Override
	public int getAllSales() throws SalesNotFoundException {
		SqlSession session=null;
		try {
			session = factory.openSession();
			int num1 = dao.selectAllItemSales(session);
			int num2 = dao.selectAllPcSales(session);
			return num1 + num2;
		} finally {
			session.close();
		}
	}

	@Override
	public int getPcSales() throws SalesNotFoundException {
		SqlSession session=null;
		try {
			session = factory.openSession();
			return dao.selectAllPcSales(session);
			
		}finally {
			session.close();
		}
	}

	@Override
	public int getItemSales() throws SalesNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectAllItemSales(session);
			
		}finally {
			session.close();
		}
	}

	@Override
	public List<Sales> getSalesByDate(Date startDay, Date endDay) {
		SqlSession session=null;
		
		try {
			session = factory.openSession();
			Map<String, String> map = new HashMap();
			String sStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(startDay);
			String eStr = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(endDay);
			map.put("startDay", sStr);
			map.put("endDay", eStr);
			return dao.selectSalesDate(session, map);
		}finally {
			session.close();
		}

	}

	@Override
	public void doSales(Date date, int pc, int item) {
		SqlSession session=null;
		try {
			session = factory.openSession();
			dao.insertSales(session, new Sales(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date), pc, item));
			session.commit();
		}finally {
			session.close();
		}

	}

	@Override
	public List<Sales> getAllSalesList() throws SalesNotFoundException {
		SqlSession session=null;
		try {
			session = factory.openSession();
			return dao.selectAllSales(session);
		}finally {
			session.close();
		}
	}



	@Override
	public Map<String, Object> getSalesList(int page) {
		SqlSession session = null;
		
		HashMap<String, Object> map = new HashMap<>();
		try {
			session = factory.openSession();
			PagingBean pb = new PagingBean(dao.selectAllSales(session).size(),page);
			map.put("pageBean", pb);
			
			System.out.println(pb.getBeginItemInPage());
			System.out.println(pb.getEndItemInPage());
			
			List<Sales> list = dao.selectSalesList(session, pb.getBeginItemInPage(), pb.getEndItemInPage());
			map.put("list", list);
			for(Sales s : list) {
				System.out.println(s);
			}
			
			return map;
		}finally {
			session.close();
		}
	}
	
	

};