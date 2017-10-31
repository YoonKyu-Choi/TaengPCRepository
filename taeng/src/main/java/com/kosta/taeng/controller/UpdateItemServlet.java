package com.kosta.taeng.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kosta.taeng.service.ItemService;
import com.kosta.taeng.service.impl.ItemServiceImpl;
import com.kosta.taeng.vo.Item;

/**
 * Servlet implementation class UpdateItemServlet
 */
@WebServlet("/item/updateItem")
public class UpdateItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ItemService service = ItemServiceImpl.getInstance();
		String imageDir = getServletContext().getRealPath("/itemImage");
		ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
		
		Item item = new Item();// 요청 파라미터를 넣을 VO객체
		try {
			List<FileItem> list = upload.parseRequest(request);
			for (FileItem items : list) {
				String requestName = items.getFieldName();// 요청파라미터이름.
				if (items.isFormField()) {// true : 일반 요청파라미터, false : 파일
					String requestValue = items.getString("UTF-8");// 요청파라미터 값 조회
					if (requestName.equals("itemName")) {
						item.setItemName(requestValue);
					}else if(requestName.equals("itemPrice")) {
						item.setItemPrice(Integer.parseInt(requestValue));
					}else if(requestName.equals("itemStock")) {
						item.setItemStock(Integer.parseInt(requestValue));
					}
				} else {// 파일
					String fileName = UUID.randomUUID().toString();// 자주 씀(보편적)
					if (items.getSize() != 0) {
						items.write(new File(imageDir, fileName));// 카피
						item.setItemImage(fileName);// VO에 파일명 set.
					}
				} // else
			} // for
			service.insertItem(item);
			service.updateItemByName(item);
			request.getRequestDispatcher("/test_result.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();// 처리
			throw new ServletException(e);
		}
	}

}
