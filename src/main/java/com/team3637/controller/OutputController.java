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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team3637.exception.MatchNotFound;
import com.team3637.model.Match;
import com.team3637.model.MatchReport;
import com.team3637.service.MatchService;
import com.team3637.validation.MatchValidator;
import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;
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

    private int toInt(boolean bool) {
        if(bool) {
            return 1;
        } else {
            return 0;
        }
    }
    
    private MatchReport averageOpp(MatchReport report ,int total) {
        report.setCoopTote((int)((float)report.getCoopTote() / total * 100));
        report.setCoopStep(report.getCoopStep() / total);
        report.setTakeCanFromStep((int)((float)report.getTakeCanFromStep() / total * 100));
        report.setHpThrow((int)((float)report.getHpThrow() / total * 100));
        return report;
    }
    
    private MatchReport averageAlly(MatchReport report, int total) {
        report.setAutoRobot((int)((float)report.getAutoRobot() / total * 100));
        report.setAutoStack(report.getAutoStack() / total);
        report.setAutoVision((int)((float)report.getAutoVision() / total * 100));
        report.setAutoDeadRec((int)((float)report.getAutoDeadRec() / total * 100));
        report.setAutoStep((int)((float)report.getAutoStep() / total * 100));
        report.setAutoOverBump((int)((float)report.getAutoOverBump() / total * 100));
        report.setAutoAroundBump((int)((float)report.getAutoAroundBump() / total * 100));
        report.setOverBump((int)((float)report.getOverBump() / total * 100));
        report.setSpeed(report.getSpeed() / total);
        report.setDropTote((int)((float)report.getDropTote() / total * 100));
        report.setKnockStack((int)((float)report.getKnockStack() / total * 100));
        report.setLitterCan((int)((float)report.getLitterCan() / total * 100));
        report.setLitterUp((int)((float)report.getLitterUp() / total * 100));
        report.setLitterPush((int)((float)report.getLitterPush() / total * 100));
        report.setTotesCarried(report.getTotesCarried() / total);
        report.setDiffOps((int)((float)report.getDiffOps() / total * 100));
        report.setUpOrFlip((int)((float)report.getUpOrFlip() / total * 100));
        report.setOnTopOf(report.getOnTopOf() / total);
        report.setPickUpSpeed(report.getPickUpSpeed() / total);
        report.setHpTotes((int)((float)report.getHpTotes() / total * 100));
        report.setHpLitter((int)((float)report.getHpLitter() / total * 100));
        report.setHpThrow((int)((float)report.getHpThrow() / total * 100));
        report.setCanUp((int)((float)report.getCanUp() / total * 100));
        report.setDownHeight(report.getDownHeight() / total);
        report.setTakeCanFromStep((int)((float)report.getTakeCanFromStep() / total * 100));
        report.setCanUpSpeed(report.getCanUpSpeed() / total);
        report.setCanDiffOps((int)((float)report.getCanDiffOps() / total * 100));
        report.setCanFromStepNoFill((int)((float)report.getCanFromStepNoFill() / total * 100));
        report.setCoopTote((int)((float)report.getCoopTote() / total * 100));
        report.setCoopStep(report.getCoopStep() / total);
        report.setFailFunction((int)((float)report.getFailFunction() / total * 100));
        report.setFouls((int)((float)report.getFouls() / total * 100));
        report.setDeadOnArrive((int)((float)report.getDeadOnArrive() / total * 100));
        report.setTip((int)((float)report.getTip() / total * 100));
        report.setCommError((int)((float)report.getCommError() / total * 100));
        report.setShotty((int)((float)report.getShotty() / total * 100));
        return report;
    }

    @RequestMapping(value="/report", method=RequestMethod.GET)
    public String reportRedirct() {
        return "redirect:/output/report.html?ally1=1&ally2=2&opp1=3&opp2=4&opp3=5";
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
        //System.out.println(opp1Val);
        MatchReport ally1 = new MatchReport(), ally2 = new MatchReport(), opp1 = new MatchReport(), opp2 = new MatchReport(), opp3 = new MatchReport();
        int opp1Pos = 0, opp2Pos = 0, opp3Pos = 0, ally1Pos = 0, ally2Pos = 0;
        for (int i = 0; i < matchList.size(); i++) {
            if(matchList.get(i).getTeam() == opp1Val) {
                opp1.setTeam(matchList.get(i).getTeam());
                opp1.setCoopTote(opp1.getCoopTote() + toInt(matchList.get(i).getCoopTote()));
                opp1.setCoopStep(opp1.getCoopStep() + matchList.get(i).getCoopStep());
                opp1.setTakeCanFromStep(opp1.getTakeCanFromStep() + toInt(matchList.get(i).getTakeCanFromStep()));
                opp1.setHpThrow(opp1.getHpThrow() + toInt(matchList.get(i).getHpThrow()));
                //System.out.println(opp1.getCoopTote() + " " + opp1.getCoopTote());
                opp1Pos++;
            } else if(matchList.get(i).getTeam() == opp2Val) {
                opp2.setTeam(matchList.get(i).getTeam());
                opp2.setCoopTote(opp2.getCoopTote() + toInt(matchList.get(i).getCoopTote()));
                opp2.setCoopStep(opp2.getCoopStep() + matchList.get(i).getCoopStep());
                opp2.setTakeCanFromStep(opp2.getTakeCanFromStep() + toInt(matchList.get(i).getTakeCanFromStep()));
                opp2.setHpThrow(opp2.getHpThrow() + toInt(matchList.get(i).getHpThrow()));
                opp2Pos++;
            } else if(matchList.get(i).getTeam() == opp3Val) {
                opp3.setTeam(matchList.get(i).getTeam());
                opp3.setCoopTote(opp3.getCoopTote() + toInt(matchList.get(i).getCoopTote()));
                opp3.setCoopStep(opp3.getCoopStep() + matchList.get(i).getCoopStep());
                opp3.setTakeCanFromStep(opp3.getTakeCanFromStep() + toInt(matchList.get(i).getTakeCanFromStep()));
                opp3.setHpThrow(opp3.getHpThrow() + toInt(matchList.get(i).getHpThrow()));
                opp3Pos++;
            } else if(matchList.get(i).getTeam() == ally1Val) {
                ally1.setTeam(matchList.get(i).getTeam());
                ally1.setAutoRobot(ally1.getAutoRobot() + toInt(matchList.get(i).getAutoRobot()));
                ally1.setAutoStack(ally1.getAutoStack() + matchList.get(i).getAutoStack());
                ally1.setAutoVision(ally1.getAutoVision() + toInt(matchList.get(i).getAutoVision()));
                ally1.setAutoDeadRec(ally1.getAutoDeadRec() + toInt(matchList.get(i).getAutoDeadRec()));
                ally1.setAutoStep(ally1.getAutoStep() + toInt(matchList.get(i).getAutoStep()));
                ally1.setAutoOverBump(ally1.getAutoOverBump() + toInt(matchList.get(i).getAutoOverBump()));
                ally1.setAutoAroundBump(ally1.getAutoAroundBump() + toInt(matchList.get(i).getAutoAroundBump()));
                ally1.setOverBump(ally1.getOverBump() + toInt(matchList.get(i).getOverBump()));
                ally1.setSpeed(ally1.getSpeed() + matchList.get(i).getSpeed());
                ally1.setDropTote(ally1.getDropTote() + toInt(matchList.get(i).getDropTote()));
                ally1.setKnockStack(ally1.getKnockStack() + toInt(matchList.get(i).getKnockStack()));
                ally1.setLitterCan(ally1.getLitterCan() + toInt(matchList.get(i).getLitterCan()));
                ally1.setLitterUp(ally1.getLitterUp() + toInt(matchList.get(i).getLitterUp()));
                ally1.setLitterPush(ally1.getLitterPush() + toInt(matchList.get(i).getLitterPush()));
                ally1.setTotesCarried(ally1.getTotesCarried() + matchList.get(i).getTotesCarried());
                ally1.setDiffOps(ally1.getDiffOps() + toInt(matchList.get(i).getDiffOps()));
                ally1.setUpOrFlip(ally1.getUpOrFlip() + toInt(matchList.get(i).getUpOrFlip()));
                ally1.setOnTopOf(ally1.getOnTopOf() + matchList.get(i).getOnTopOf());
                ally1.setPickUpSpeed(ally1.getPickUpSpeed() + matchList.get(i).getPickUpSpeed());
                ally1.setHpTotes(ally1.getHpTotes() + toInt(matchList.get(i).getHpTotes()));
                ally1.setHpLitter(ally1.getHpLitter() + toInt(matchList.get(i).getHpLitter()));
                ally1.setHpThrow(ally1.getHpThrow() + toInt(matchList.get(i).getHpThrow()));
                ally1.setCanUp(ally1.getCanUp() + toInt(matchList.get(i).getCanUp()));
                System.out.println(matchList.get(i).getCanUp());
                ally1.setDownHeight(ally1.getDownHeight() + matchList.get(i).getDownHeight());
                ally1.setTakeCanFromStep(ally1.getTakeCanFromStep() + toInt(matchList.get(i).getTakeCanFromStep()));
                ally1.setCanUpSpeed(ally1.getCanUpSpeed() + matchList.get(i).getCanUpSpeed());
                ally1.setCanDiffOps(ally1.getCanDiffOps() + toInt(matchList.get(i).getCanDiffOps()));
                ally1.setCanFromStepNoFill(ally1.getCanFromStepNoFill() + toInt(matchList.get(i).getCanFromStepNoFill()));
                ally1.setCoopTote(ally1.getCoopTote() + toInt(matchList.get(i).getCoopTote()));
                ally1.setCoopStep(ally1.getCoopStep() + matchList.get(i).getCoopStep());
                ally1.setFailFunction(ally1.getFailFunction() + toInt(matchList.get(i).getFailFunction()));
                ally1.setFouls(ally1.getFouls() + toInt(matchList.get(i).getFouls()));
                ally1.setDeadOnArrive(ally1.getDeadOnArrive() + toInt(matchList.get(i).getDeadOnArrive()));
                ally1.setTip(ally1.getTip() + toInt(matchList.get(i).getTip()));
                ally1.setCommError(ally1.getCommError() + toInt(matchList.get(i).getCommError()));
                ally1.setShotty(ally1.getShotty() + toInt(matchList.get(i).getShotty()));
                ally1.setComment(ally1.getComment() + "\n\n" +matchList.get(i).getComment());
                ally1.setScore(ally1.getScore() + matchList.get(i).getScore());
                ally1Pos++;
            } else if(matchList.get(i).getTeam() == ally2Val) {
                ally2.setTeam(matchList.get(i).getTeam());
            }
        }
        opp1 = averageOpp(opp1, opp1Pos);
        opp2 = averageOpp(opp2, opp2Pos);
        opp3 = averageOpp(opp3, opp2Pos);
        ally1 = averageAlly(ally1, ally1Pos);

        mav.addObject("opp1", opp1);
        mav.addObject("opp2", opp2);
        mav.addObject("opp3", opp3);
        mav.addObject("ally1", ally1);
        mav.addObject("ally2", ally2);
        mav.addObject("matchList", matchList);
        return mav;
    }
}
