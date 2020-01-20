package net.kzn.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping({"/","/index","/home"})
	public ModelAndView page()
	{
		ModelAndView model = new ModelAndView("page");
		model.addObject("greating", "Welcome to online project working now");
		return model;
	}
	
	@RequestMapping(value="/test")
	public ModelAndView test(@RequestParam(value="greating",required=false) String greating)
	
	{
		ModelAndView mv =  new ModelAndView("page");
		mv.addObject("greating",greating );
		return mv;
	}
}
