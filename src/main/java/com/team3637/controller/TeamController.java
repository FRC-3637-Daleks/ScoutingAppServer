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

import com.team3637.exception.TeamNotFound;
import com.team3637.model.Team;
import com.team3637.service.TeamService;
import com.team3637.validation.TeamValidator;

@Controller
@RequestMapping(value="/team")
public class TeamController {
	
	@Autowired
	private TeamService teamService;
	
	@Autowired
	private TeamValidator teamValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(teamValidator);
	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView newTeamPage() {
		ModelAndView mav = new ModelAndView("team-new", "team", new Team());
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createNewTeam(@ModelAttribute @Valid Team team,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return new ModelAndView("team-new");
		
		ModelAndView mav = new ModelAndView();
		String message = "New team "+team.getName()+" was successfully created.";
		
		teamService.create(team);
		mav.setViewName("redirect:/index.html");
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView teamListPage() {
		ModelAndView mav = new ModelAndView("team-list");
		List<Team> teamList = teamService.findAll();
		mav.addObject("teamList", teamList);
		return mav;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editTeamPage(@PathVariable Integer id) {
		ModelAndView mav = new ModelAndView("team-edit");
		Team team = teamService.findById(id);
		mav.addObject("team", team);
		return mav;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView editTeam(@ModelAttribute @Valid Team team,
			BindingResult result,
			@PathVariable Integer id,
			final RedirectAttributes redirectAttributes) throws TeamNotFound {
		
		if (result.hasErrors())
			return new ModelAndView("team-edit");
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");
		String message = "Team was successfully updated.";

		teamService.update(team);
		
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteTeam(@PathVariable Integer id,
			final RedirectAttributes redirectAttributes) throws TeamNotFound {
		
		ModelAndView mav = new ModelAndView("redirect:/index.html");		
		
		Team team = teamService.delete(id);
		String message = "The team "+team.getName()+" was successfully deleted.";
		
		redirectAttributes.addFlashAttribute("message", message);
		return mav;
	}
        
        @RequestMapping(value="/info/{id}", method=RequestMethod.GET)
	public ModelAndView editInfoPage(@PathVariable Integer id) {
		ModelAndView mav = new ModelAndView("team-info");
		Team team = teamService.findById(id);
		mav.addObject("team", team);
		return mav;
	}
	
}
