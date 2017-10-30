package com.kosta.taeng.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.dao.ItemDao;
import com.kosta.taeng.vo.Item;

public class ItemDaoImpl implements ItemDao {
	private static ItemDaoImpl instance;

	private ItemDaoImpl() {
	}

	public static ItemDaoImpl getInstance() {
		if (instance == null)
			instance = new ItemDaoImpl();
		return instance;
	}
	
	public String makeSql(String id) {
		return "config.mapper.itemMapper."+id;
	}

	@Override
	public int addItem(SqlSession session, Item item) {
		return session.insert(makeSql("addItem"), item);
	}

	@Override
	public int updateItemByName(SqlSession session, Item item) {
		return session.update(makeSql("updateItemByName"), item);
	}

	@Override
	public int deleteItemByName(SqlSession session, String itemName) {
		return session.delete(makeSql("deleteItemByName"), itemName);
	}

	@Override
	public List<Item> selectAllItem(SqlSession session) {
		return session.selectList(makeSql("selectAllItem"));
	}

	@Override
	public Item selectItemByName(SqlSession session, String itemName) {
		return session.selectOne(makeSql("selectItemByName"), itemName);
	}


}
