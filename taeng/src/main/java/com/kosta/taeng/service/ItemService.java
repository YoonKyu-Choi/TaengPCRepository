package com.kosta.taeng.service;

import com.kosta.taeng.vo.Item;

public class ItemService {
	private static ItemService instance;

	private ItemService() {
	}

	public static ItemService getInstance() {
		if (instance == null)
			instance = new ItemService();
		return instance;
	}
	//글을 등록하는 메소드
	public void addItem(Item item) {
		System.out.println("-----글을 등록-----");
		System.out.printf("등록된 상품 정보 : %s%n", item);
	}
}
