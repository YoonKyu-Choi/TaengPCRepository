package test;


import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.vo.Item;

public class Test {
	ItemService service = ItemServiceImpl.getInstance();
	public void start() {
		service.addItem(new Item("이름",11,11,"2"));
	}
	public static void main(String[] args) {
		Test test = new Test();
		test.start();
	}
}
