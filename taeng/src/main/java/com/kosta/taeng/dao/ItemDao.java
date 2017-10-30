package com.kosta.taeng.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.kosta.taeng.vo.Item;

public interface ItemDao {
	
	public int addItem(SqlSession session, Item item);
	
	public int updateItemByName(SqlSession session, Item item);
	
	public int deleteItemByName(SqlSession session, String itemName);
	
	public List<Item> selectAllItem(SqlSession session);

	public Item selectItemByName(SqlSession session, String itemName);
}
