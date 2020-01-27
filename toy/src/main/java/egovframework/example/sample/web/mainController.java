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
		return "main/main";
	}

	@RequestMapping(value="/main/list.do")
	public String list(HttpServletRequest request, ModelMap model) throws Exception
	{
		return "main/list";
	}
	
	
}
