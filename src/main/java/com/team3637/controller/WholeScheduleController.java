/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team3637.controller;


import java.util.List;
import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;
import com.team3637.model.WholeSchedule;
import com.team3637.service.ScheduleService;
import com.team3637.validation.WholeScheduleValidator;

@Controller
@RequestMapping(value="/wholeSchedule")
public class WholeScheduleController {
        @Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private WholeScheduleValidator wholeScheduleValidator;
	
        private List<Schedule> schedules = new ArrayList<Schedule>();
        
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(wholeScheduleValidator);
	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView newWholeSchedulePage() {
                WholeSchedule wholeSchedule = new WholeSchedule();
                wholeSchedule.setSchedules(schedules);
		ModelAndView mav = new ModelAndView("wholeSchedule-new", "wholeSchedule", wholeSchedule);
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createNewWholeSchedule(@ModelAttribute @Valid WholeSchedule wholeSchedule,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
                List<Schedule> schedules = wholeSchedule.getSchedules();
                
		if (result.hasErrors())
			return new ModelAndView("schedule-new");
		
		ModelAndView mav = new ModelAndView();
		String message = "New schedule was successfully created.";
		
		for(Schedule schedule : schedules)
                    scheduleService.create(schedule);
		mav.setViewName("redirect:/index.html");
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
}
