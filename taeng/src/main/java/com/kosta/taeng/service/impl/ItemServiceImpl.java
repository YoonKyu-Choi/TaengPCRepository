package com.kosta.taeng.service.impl;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.kosta.taeng.Exception.ItemNotFoundException;
import com.kosta.taeng.common.util.SqlSessionFactoryManager;
import com.kosta.taeng.dao.impl.ItemDaoImpl;
import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.vo.Item;

public class ItemServiceImpl implements ItemService{
	ItemDaoImpl dao = null;
	SqlSessionFactory factory = null;
	
	private static ItemServiceImpl instance;

	private ItemServiceImpl() {
		dao = ItemDaoImpl.getInstance();
		try {
			factory = SqlSessionFactoryManager.getInstance().getSqlSessionFactory();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static ItemServiceImpl getInstance() {
		if (instance == null)
			instance = new ItemServiceImpl();
		return instance;
	}
	//글을 등록하는 메소드
	public void insertItem(Item item) {
		System.out.println("-----상품 등록-----");
		System.out.printf("등록된 상품 정보 : %s%n", item);
	}

	@Override
	public void addItem(Item item) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			dao.addItem(session, item);
			session.commit();
		}finally {
			session.close();
		}
	}

	@Override
	public void updateItemByName(Item item) throws ItemNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if (dao.selectItemByName(session, item.getItemName()) == null) {
				throw new ItemNotFoundException("수정할 상품이 없습니다.", item.getItemName());
			}
			dao.updateItemByName(session, item);
			session.commit();
		}finally {
			session.close();
		}
	}

	

	@Override
	public List<Item> getItemList() {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectAllItem(session);
		}finally {
			session.close();
		}
	}
	
	public Item findItemByName(String name) {
		SqlSession session = null;
		try {
			session = factory.openSession();
			return dao.selectItemByName(session, name);
		}finally {
			session.close();
		}
	}

	@Override
	public void removeItemByName(String itemName) throws ItemNotFoundException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			if (dao.selectItemByName(session, itemName) == null) {
				throw new ItemNotFoundException("삭제할 상품이 없습니다.", itemName);
			}
			dao.deleteItemByName(session, itemName);
			session.commit();
		}finally {
			session.close();
		}
	}

}
