package servlets.product.command;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import servlets.product.domain.ProductsDTO;
import servlets.product.service.ListService;

public class BoxList implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(">BoxList.process ");
		String num = "1";		
		String[] numarr = request.getParameterValues("pageNo");
		if (numarr != null) {
			num = String.join(", ",numarr);
		}
		String path = request.getRequestURI();						 
//		String [] tags = request.getParameterValues("tags");		
//		String tag = null;		
//		if (tags != null) {
//			tag = String.join(", ",tags);
//		}			
//		System.out.println(path);
//		System.out.println(tag);
		String tag = request.getParameter("tags");
		String cal = request.getParameter("category");
//		System.out.println(tag);
		ListService listService = ListService.getInstance();
		List<ProductsDTO> list = listService.select(path,cal);	    
	    List<ProductsDTO> bestlist = listService.bestselect(path,cal);	    
	    List<ProductsDTO> searchlist = listService.search(path,tag,num,cal);	
	    List<ProductsDTO> searchcountlist = listService.searchcount(path,tag,cal);
	    
		//1.  포워딩 전 데이터 저장
		request.setAttribute("list", list);
		request.setAttribute("bestlist", bestlist);	
		request.setAttribute("searchlist", searchlist);
		request.setAttribute("searchcountlist", searchcountlist);		

		return "/WEB-INF/views/product/BoxList.jsp";
		
		
	}

}