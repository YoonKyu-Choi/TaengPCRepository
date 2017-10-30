package taeng;


import java.io.IOException;
import java.sql.Date;
import java.util.List;

import com.kosta.taeng.service.SalesService;
import com.kosta.taeng.service.impl.SalesServiceImpl;
import com.kosta.taeng.vo.Sales;

public class SaleTest {

	
	public static void main(String[] args) throws IOException {
		SalesService service = SalesServiceImpl.getInstance();
		
		System.out.println(service.getAllSales());
		System.out.println("-----------------------------------------------");
		System.out.println(service.getPcSales());
		System.out.println("-----------------------------------------------");
		System.out.println(service.getItemSales());
		System.out.println("-----------------------------------------------");
		
		Date sDate = new Date(2015,10, 1);
		Date eDate = new Date(2017,10,24);
		
		List<Sales> list = service.getSalesByDate(sDate, eDate);
		
		for(Sales s : list) {
			System.out.println(s);
		}
		System.out.println("-----------------------------------------------");
		int i=service.doSales(new Date(1999,10,10), 5000, 10000);
		System.out.println(i);
	}
	
	
	
}
