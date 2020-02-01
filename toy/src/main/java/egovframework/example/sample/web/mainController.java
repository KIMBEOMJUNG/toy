package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egovframework.example.sample.service.impl.SampleDAO;

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

	@RequestMapping(value="/main/list.do")
	public String list(HttpServletRequest request, ModelMap model) throws Exception
	{
		return "main/list";
	}
	
	
}
