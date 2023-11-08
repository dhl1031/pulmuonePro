package product.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import product.domain.ProductsDTO;
import product.service.ListService;

public class DailyList implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(">DailyList.process ");
		ListService listService = ListService.getInstance();
	    List<ProductsDTO> list = listService.select();
		
		
		//1.  포워딩 전 데이터 저장
		request.setAttribute("list", list);
		request.setAttribute("pageBlock", "[1] 2 3 4 5 6 7 8 9 10 >");

		return "/WEB-INF/views/product/DailyList.jsp";
		
		
	}

}
