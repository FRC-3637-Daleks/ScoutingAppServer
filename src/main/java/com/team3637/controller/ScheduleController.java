package com.team3637.controller;

import java.util.List;

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
import com.team3637.service.ScheduleService;
import com.team3637.validation.ScheduleValidator;

@Controller
@RequestMapping(value="/schedule")
public class ScheduleController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private ScheduleValidator scheduleValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(scheduleValidator);
	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView newSchedulePage() {
		ModelAndView mav = new ModelAndView("schedule-new", "schedule", new Schedule());
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createNewSchedule(@ModelAttribute @Valid Schedule schedule,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return new ModelAndView("schedule-new");
		
		ModelAndView mav = new ModelAndView();
		String message = "New schedule "+schedule.getMatchNum()+" was successfully created.";
		
		scheduleService.create(schedule);
		mav.setViewName("redirect:/index.html");
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView scheduleListPage() {
		ModelAndView mav = new ModelAndView("schedule-list");
		List<Schedule> scheduleList = scheduleService.findAll();
		mav.addObject("scheduleList", scheduleList);
		return mav;
	}
	
	@RequestMapping(value="/edit/{matchNum}", method=RequestMethod.GET)
	public ModelAndView editSchedulePage(@PathVariable Integer matchNum) {
		ModelAndView mav = new ModelAndView("schedule-edit");
		Schedule schedule = scheduleService.findByMatchNum(matchNum);
		mav.addObject("schedule", schedule);
		return mav;
	}
	
	@RequestMapping(value="/edit/{matchNum}", method=RequestMethod.POST)
	public ModelAndView editSchedule(@ModelAttribute @Valid Schedule schedule,
			BindingResult result,
			@PathVariable Integer matchNum,
			final RedirectAttributes redirectAttributes) throws ScheduleNotFound {
		
		if (result.hasErrors())
			return new ModelAndView("schedule-edit");
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");
		String message = "Schedule was successfully updated.";

		scheduleService.update(schedule);
		
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;
	}
	
	@RequestMapping(value="/delete/{matchNum}", method=RequestMethod.GET)
	public ModelAndView deleteSchedule(@PathVariable Integer matchNum,
			final RedirectAttributes redirectAttributes) throws ScheduleNotFound {
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");		
		
		Schedule schedule = scheduleService.delete(matchNum);
		String message = "The schedule "+schedule.getMatchNum()+" was successfully deleted.";
		
		redirectAttributes.addFlashAttribute("message", message);
		return mav;
	}
        
        @RequestMapping(value="/info/{matchNum}", method=RequestMethod.GET)
	public ModelAndView editInfoPage(@PathVariable Integer matchNum) {
		ModelAndView mav = new ModelAndView("schedule-info");
		Schedule schedule = scheduleService.findByMatchNum(matchNum);
		mav.addObject("schedule", schedule);
		return mav;
	}
	
}
