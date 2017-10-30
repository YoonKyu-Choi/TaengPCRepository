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
 * Servlet implementation class AddServlet
 */
@WebServlet("/item/addItem")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
					// VO에 요청 파라미터 넣기
					if (requestName.equals("name")) {
						item.setItemName(requestValue);
					}else if(requestName.equals("price")) {
						item.setItemPrice(Integer.parseInt(requestValue));
					}else if(requestName.equals("stock")) {
						item.setItemStock(Integer.parseInt(requestValue));
					}
				} else {// 파일
					// 파일 정보 조회 - 업로드된 파일명, 파일 크기
					// String fileName = item.getName();// 업로드된 파일명 조회
					//중복 파일명 처리
					// String fileName = System.currentTimeMillis()+"";
					String fileName = UUID.randomUUID().toString();// 자주 씀(보편적)
					// 파일 이름을 랜덤한 UUID를 이용하여 String으로 형변환하여 저장
					if (items.getSize() != 0) {
						// 파일 처리 - 카피, 삭제
						items.write(new File(imageDir, fileName));// 카피
						item.setItemImage(fileName);// VO에 파일명 set.
					}
				} // else
			} // for
				// 2. 비지니스 로직 - Model 메소드 호출
			service.insertItem(item);
			service.addItem(item);
			// 3. 응답처리 - register_result.jsp로 이동
			request.setAttribute("result", item);
			request.getRequestDispatcher("/test_result.jsp").forward(request, response);
			// RequestDispatch 방식으로 넘기는것보다 redirect방법이 더 좋음.
		} catch (Exception e) {
			e.printStackTrace();// 처리
			// 예외를 WebContainer에게 던져서 처리.
			throw new ServletException(e);
		}
	}

}
