/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

import com.team3637.exception.MatchNotFound;
import com.team3637.model.Match;
import com.team3637.service.MatchService;
import com.team3637.validation.MatchValidator;
import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;
import com.team3637.service.ScheduleService;
import com.team3637.validation.ScheduleValidator;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/output")
public class OutputController {
    @Autowired
	private MatchService matchService;
        @Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private MatchValidator matchValidator;
        @Autowired
	private ScheduleValidator scheduleValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(matchValidator);
	}
        
        @RequestMapping(value="/report",params = {"ally1", "ally2", "opp1", "opp2", "opp3"}, method=RequestMethod.GET)
	public @ResponseBody ModelAndView report(
        @RequestParam(value = "ally1", required=false) int ally1Val,
        @RequestParam(value = "opp1") int opp1Val
        ) {
            
            ModelAndView mav = new ModelAndView("report", "match", new Match());
            List<Match> matchList = matchService.findAll();
            Match ally1 = new Match(), ally2 = new Match(), oopp1 = new Match(), opp2 = new Match(), opp3 = new Match();
            for (int i = 0; i < matchList.size(); i++) {
                if(matchList.get(i).getTeam() == opp1Val) {
                    mav.addObject("opp1", oopp1);
                }
            }
            mav.addObject("matchList", matchList);
            return mav;
        }
}
