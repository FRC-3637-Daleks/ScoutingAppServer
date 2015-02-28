package com.team3637.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NavigationController {

	@RequestMapping(value={"/", "index"}, method=RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("index");
	}
        
        @RequestMapping(value={"/list"}, method=RequestMethod.GET)
        public ModelAndView list() {
            return new ModelAndView("page-list");
        }
	
}
