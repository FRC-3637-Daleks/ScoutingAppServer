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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team3637.exception.MatchNotFound;
import com.team3637.model.Match;
import com.team3637.model.MatchReport;
import com.team3637.service.MatchService;
import com.team3637.validation.MatchValidator;
import com.team3637.model.Schedule;
import com.team3637.service.ScheduleService;
import com.team3637.validation.ScheduleValidator;
import com.team3637.other.AverageVals;
import com.team3637.validation.MatchReportValidator;


@Controller
@RequestMapping(value="/input")
public class InputController {
	
	@Autowired
	private MatchService matchService;
        @Autowired
	private ScheduleService scheduleService;
	@Autowired
	private MatchValidator matchValidator;
        @Autowired
	private ScheduleValidator scheduleValidator;
        @Autowired
        private MatchReportValidator matchReportValidator;
	
            @InitBinder("match")
        private void initMatchBinder(WebDataBinder binder) {
                binder.setValidator(matchValidator);
        }

        @InitBinder("matchReport")
        private void initMatchReportBinder(WebDataBinder binder) {
                binder.setValidator(matchReportValidator);
        }

	@RequestMapping(value="/create",params = {"teamNum"}, method=RequestMethod.GET)
	public @ResponseBody ModelAndView newMatchPage(
        @RequestParam(value = "teamNum", required=false) int teamNumVal
        ) {
		ModelAndView mav = new ModelAndView("input", "match", new Match());
                List<Match> matchList = matchService.findAll();
                List<Match> teamList = new ArrayList<>();
                AverageVals avg = new AverageVals();
                for (Match match : matchList) {
                    if(match.getTeam().equals(teamNumVal)) {
                        teamList.add(match);
                    }
                } 
                MatchReport team = avg.addAlly(teamList);
		mav.addObject("team", team);
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createNewMatch(@ModelAttribute @Valid Match match,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return new ModelAndView("input");
		
		ModelAndView mav = new ModelAndView();
		String message = "Match number " + match.getMatchNum() + " with team " + match.getTeam() + " was successfully created.";
		
		matchService.create(match);
		mav.setViewName("redirect:/input/schedule.html");
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
        
        @RequestMapping(value="/schedule", method=RequestMethod.GET)
	public ModelAndView matchSelectPage() {
		ModelAndView mav = new ModelAndView("input-select");
		List<Schedule> scheduleList = scheduleService.findAll();
		mav.addObject("scheduleList", scheduleList);
		return mav;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView matchListPage() {
		ModelAndView mav = new ModelAndView("input-list");
		List<Match> matchList = matchService.findAll();
		mav.addObject("matchList", matchList);
		return mav;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editMatchPage(@PathVariable Integer id) {
		ModelAndView mav = new ModelAndView("match-edit");
		Match match = matchService.findById(id);
		mav.addObject("match", match);
		return mav;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView editMatch(@ModelAttribute @Valid Match match,
			BindingResult result,
			@PathVariable Integer id,
			final RedirectAttributes redirectAttributes) throws MatchNotFound {
		
		if (result.hasErrors())
			return new ModelAndView("match-edit");
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");
		String message = "Match was successfully updated.";

		matchService.update(match);
		
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteMatch(@PathVariable Integer id,
			final RedirectAttributes redirectAttributes) throws MatchNotFound {
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");		
		
		Match match = matchService.delete(id);
		String message = "The match "+match.getMatchNum()+" was successfully deleted.";
		
		redirectAttributes.addFlashAttribute("message", message);
		return mav;
	}
	
}
