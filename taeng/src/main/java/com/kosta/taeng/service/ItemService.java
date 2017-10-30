package com.kosta.taeng.service;

import java.util.List;
import com.kosta.taeng.Exception.ItemNotFoundException;
import com.kosta.taeng.vo.Item;

public interface ItemService {
	
	void addItem(Item item);
	
	void updateItemByName(Item item) throws ItemNotFoundException;
	
	void removeItemByName(String itemName) throws ItemNotFoundException;
	
	List<Item> getItemList();
	
	Item findItemByName(String name);
	
	void insertItem(Item item);
}
