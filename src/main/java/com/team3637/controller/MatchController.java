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

@Controller
@RequestMapping(value="/match")
public class MatchController {
	
	@Autowired
	private MatchService matchService;
	
	@Autowired
	private MatchValidator matchValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(matchValidator);
	}

	@RequestMapping(value="/create", method=RequestMethod.GET)
	public ModelAndView newMatchPage() {
		ModelAndView mav = new ModelAndView("match-new", "match", new Match());
		return mav;
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public ModelAndView createNewMatch(@ModelAttribute @Valid Match match,
			BindingResult result,
			final RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return new ModelAndView("match-new");
		
		ModelAndView mav = new ModelAndView();
		String message = "New match "+match.getMatchNum()+" was successfully created.";
		
		matchService.create(match);
		mav.setViewName("redirect:/index.html");
				
		redirectAttributes.addFlashAttribute("message", message);	
		return mav;		
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView matchListPage() {
		ModelAndView mav = new ModelAndView("match-list");
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
