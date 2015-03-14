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
import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;
import com.team3637.other.AverageVals;
import com.team3637.service.ScheduleService;
import com.team3637.validation.MatchReportValidator;
import com.team3637.validation.ScheduleValidator;


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
    private MatchReportValidator matchReportValidator;
    
    @Autowired
    private ScheduleValidator scheduleValidator;

    @InitBinder("match")
    private void initMatchBinder(WebDataBinder binder) {
            binder.setValidator(matchValidator);
    }
    
    @InitBinder("matchReport")
    private void initMatchReportBinder(WebDataBinder binder) {
            binder.setValidator(matchReportValidator);
    }

    @RequestMapping(value="/", method=RequestMethod.GET)
    public String selectRedirct() {
        return "redirect:/output/select.html";
    }
    
    @RequestMapping(value="/select", method=RequestMethod.GET)
    public ModelAndView matchSelectPage() {
            ModelAndView mav = new ModelAndView("report-select");
            List<Schedule> scheduleList = scheduleService.findAll();
            mav.addObject("scheduleList", scheduleList);
            return mav;
    }
    
    @RequestMapping(value="/report", method=RequestMethod.GET)
    public String reportRedirct(final RedirectAttributes redirectAttributes) {
        String message = "Error: No teams were specified in the request";
        redirectAttributes.addFlashAttribute("message", message);
        return "redirect:/output/select.html";
    }
    
    @RequestMapping(value="/report",params = {"ally1", "ally2", "opp1", "opp2", "opp3"}, method=RequestMethod.GET)
    public @ResponseBody ModelAndView report(
    @RequestParam(value = "ally1", required=false) int ally1Val,
    @RequestParam(value = "ally2", required=false) int ally2Val,
    @RequestParam(value = "opp1", required=false) int opp1Val,
    @RequestParam(value = "opp2", required=false) int opp2Val,
    @RequestParam(value = "opp3", required=false) int opp3Val
    ) {

        ModelAndView mav = new ModelAndView("report", "match", new Match());
        List<Match> matchList = matchService.findAll();
        List<Match> opp1List = new ArrayList<>(), opp2List = new ArrayList<>(), opp3List = new ArrayList<>(), ally1List = new ArrayList<>(), ally2List = new ArrayList<>();
        MatchReport ally1, ally2, opp1, opp2, opp3;
        AverageVals avg = new AverageVals();
        for (Match match : matchList) {
            if(match.getTeam().equals(opp1Val)) {
                opp1List.add(match);
            } else if(match.getTeam().equals(opp2Val)) {
                opp2List.add(match);
            } else if(match.getTeam() == opp3Val) {
                opp3List.add(match);
            } else if(match.getTeam() == ally1Val) {
                ally1List.add(match);
            } else if(match.getTeam() == ally2Val) {
                ally2List.add(match);
            }
        } 
        ally1 = avg.addAlly(ally1List);
        ally2 = avg.addAlly(ally2List);
        opp1 = avg.addAlly(opp1List);
        opp2 = avg.addAlly(opp2List);
        opp3 = avg.addAlly(opp3List);
        mav.addObject("opp1", opp1);
        mav.addObject("opp2", opp2);
        mav.addObject("opp3", opp3);
        mav.addObject("ally1", ally1);
        mav.addObject("ally2", ally2);
        mav.addObject("matchList", matchList);
        return mav;
    }
    
    @RequestMapping(value="/selectTeam", method=RequestMethod.GET)
    public ModelAndView teamSelectPage() {
            ModelAndView mav = new ModelAndView("report-team-select");
            return mav;
    }
    
    @RequestMapping(value="/reportTeam",params = {"teamNum"}, method=RequestMethod.GET)
    public @ResponseBody ModelAndView teamReport(
    @RequestParam(value = "teamNum", required=false) int teamNumVal
    ) {
            ModelAndView mav = new ModelAndView("report-team", "team", new Match());
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
}