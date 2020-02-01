package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class mainController {
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	@Resource(name= "multipartResolver")
	CommonsMultipartResolver multipartResolver;
	
	@RequestMapping(value="/main/main.do")
	public String main(HttpServletRequest request, ModelMap model) throws Exception
	{
		System.out.println("test");
		List<?> list = (List<?>) sampleDAO.list("test");   //Sample_sql.xml 파일 안에 select id 와 일치시켜주기!
		System.out.println("test2");
		
		NaverShoppingService service = new NaverShoppingService();
		List<shopping> slist = service.searchBook("프라모델", 3, 1);
		System.out.println("slist :" + slist);
		
		//addAttribute 에 json값 넘겨주면 됨
		model.addAttribute("resultList", list);
		model.addAttribute("resultList2", slist);
		System.out.println("test3");
		
		return "main/main";
	}

	/*@RequestMapping(value="/main/list.do")
	public String list(HttpServletRequest request, ModelMap model) throws Exception
	{
		NaverShoppingService service = new NaverShoppingService();
		List<shopping> slist = service.searchBook("완구", 3, 1);
		System.out.println("slist :" + slist);
		
		//addAttribute 에 json값 넘겨주면 됨
		
		model.addAttribute("resultList2", slist);
		System.out.println("test3");
		
		
		return "main/list";
	}*/
	
	@RequestMapping(value = "/main/list.do")
	public String LISTINGNAME(HttpServletRequest request, ModelMap model) throws Exception {
		//페이징
		NaverShoppingService service = new NaverShoppingService();
		PaginationInfo paginationInfo = new PaginationInfo();
		if (request.getParameter("pageIndex") == null) {
			paginationInfo.setCurrentPageNo(1);
		} else {
			paginationInfo.setCurrentPageNo(Integer.parseInt("" + request.getParameter("pageIndex")));
		}
		paginationInfo.setRecordCountPerPage(1);
		paginationInfo.setPageSize(7);

		//인자생성
		EgovMap in = new EgovMap();
		in.put("firstindex", "" + paginationInfo.getFirstRecordIndex());
		in.put("recordperpage", "" + paginationInfo.getRecordCountPerPage());
		List<shopping> slist = service.searchBook("완구", 10, 1);
		
		model.addAttribute("resultList2", slist);
		
		String total = ""+10;
		System.out.println("total의"+total);
		paginationInfo.setTotalRecordCount(Integer.parseInt(total));
		model.addAttribute("paginationInfo", paginationInfo);
		return "main/list";
	}
	
}
