package taeng;


import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.kosta.taeng.Exception.SalesNotFoundException;
import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.SalesServiceImpl;
import com.kosta.taeng.vo.Sales;

public class SaleTest {

	
	public static void main(String[] args) throws IOException, SalesNotFoundException {
		SalesService service = SalesServiceImpl.getInstance();
		
		System.out.println(service.getAllSales());
		System.out.println("-----------------------------------------------");
		System.out.println(service.getPcSales());
		System.out.println("-----------------------------------------------");
		System.out.println(service.getItemSales());
		System.out.println("-----------------------------------------------");
		
		service.doSales(new Date(99,10,10,10,14,34), 5000, 1100);
		System.out.println("-----------------------------------------------");
		Date sDate = new Date(117, 7, 3, 15, 10, 48);
		Date eDate = new Date(117, 11, 4, 21, 4, 48);
		
		List<Sales> list = service.getSalesByDate(sDate, eDate);
		
		for(Sales s : list) {
			System.out.println(s);
		}
	}
	
	
	
}
