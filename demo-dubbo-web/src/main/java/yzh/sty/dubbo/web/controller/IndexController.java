package yzh.sty.dubbo.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yzh.sty.dubbo.service.DemoProviderService;

@Controller
public class IndexController {
	
	@Autowired
	private DemoProviderService demoProviderService;

	@RequestMapping(value = "/index.html", method = RequestMethod.GET)
	public ModelAndView index(ModelAndView mv) {
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping(value = "index/test.html", method = RequestMethod.GET)
	public ModelAndView test(ModelAndView mv) {
		
		mv.setViewName("test");
		String a = demoProviderService.display("yangzhuo");
		mv.addObject("a", a);
		return mv;
	}
}
