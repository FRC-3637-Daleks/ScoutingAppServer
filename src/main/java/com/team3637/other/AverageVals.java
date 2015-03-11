
package com.team3637.other;

import com.team3637.model.Match;
import com.team3637.model.MatchReport;
import java.util.List;

public class AverageVals {
    
    private Integer addVals(Integer set, Integer get, int count) {
        if(set != null) {
            get += set;
            count++;
        } return get;
    }
    
    private Integer addVals(Boolean set, Integer get, int count) {
        if(set != null) {
            get += (set) ? 1 : 0;
            count++;
        } return get;
    }
    
    private String addVals(String set, String get, int count) {
        if(set != null) {
            get += "<li>" + set + "</li>";
            count++;
        } return get;
    }   
    
    private Integer averageBools(Integer total, Integer count) {
        total = (int)(((float)total / count) * 100);
        return total;
    }
    
    private Integer averageInts(Integer total, Integer count) {
        return total / count;
    }
    
    public MatchReport addOpp(List<Match> matchList) {
        MatchReport report = new MatchReport();
        int[] count = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        report.setTeam(matchList.get(0).getTeam());
        for(Match match : matchList) {
            report.setAutoRobot(addVals(match.getAutoRobot(), report.getAutoRobot(), count[0]));
            report.setAutoCan(addVals(match.getAutoCan(), report.getAutoCan(), count[1]));
            report.setStartTL(addVals(match.getStartTL(), report.getStartTL(), count[2]));
            report.setStartTM(addVals(match.getStartTM(), report.getStartTM(), count[3]));
            report.setStartTR(addVals(match.getStartTR(), report.getStartTR(), count[4]));
            report.setStartLL(addVals(match.getStartLL(), report.getStartLL(), count[4]));
            report.setStartLM(addVals(match.getStartLM(), report.getStartLM(), count[5]));
            report.setStartLR(addVals(match.getStartLR(), report.getStartLR(), count[6]));
            report.setStyleHS(addVals(match.getStyleHS(), report.getStyleHS(), count[7]));
            report.setStyleTopper(addVals(match.getStyleTopper(), report.getStyleTopper(), count[8]));
            report.setStyleLitterCan(addVals(match.getStyleLitterCan(), report.getStyleLitterCan(), count[9]));
            report.setStyleLandfill(addVals(match.getStyleLandfill(), report.getStyleLandfill(), count[10]));
            report.setStyleThrow(addVals(match.getStyleThrow(), report.getStyleThrow(), count[11]));
            report.setStyleSingleStack(addVals(match.getStyleSingleStack(), report.getStyleSingleStack(), count[12]));
            report.setStyleMakeAtOnce(addVals(match.getStyleMakeAtOnce(), report.getStyleMakeAtOnce(), count[13]));
            report.setStyleCanFromStep(addVals(match.getStyleCanFromStep(), report.getStyleCanFromStep(), count[14]));
            report.setCoopTote(addVals(match.getCoopTote(), report.getCoopTote(), count[15]));
            report.setCoopStep(addVals(match.getCoopStep(), report.getCoopStep(), count[16]));
            report.setKnockStack(addVals(match.getKnockStack(), report.getKnockStack(), count[17]));
            report.setDead(addVals(match.getDead(), report.getDead(), count[18]));
            report.setUnstable(addVals(match.getUnstable(), report.getUnstable(), count[19]));
            report.setTip(addVals(match.getTip(), report.getTip(), count[20]));
            report.setComment(addVals(match.getComment(), report.getComment(), count[21]));
            report.setScore(addVals(match.getScore(), report.getScore(), count[22]));
        }
        report.setAutoRobot(averageBools(report.getAutoRobot(), count[0]));
        report.setAutoCan(averageBools(report.getAutoCan(), count[1]));
        report.setStartTL(averageBools(report.getStartTL(), count[2]));
        report.setStartTM(averageBools(report.getStartTM(), count[3]));
        report.setStartTR(averageBools(report.getStartTR(), count[4]));
        report.setStartLL(averageBools(report.getStartLL(), count[4]));
        report.setStartLM(averageBools(report.getStartLM(), count[5]));
        report.setStartLR(averageBools(report.getStartLR(), count[6]));
        report.setStyleHS(averageBools(report.getStyleHS(), count[7]));
        report.setStyleTopper(averageBools(report.getStyleTopper(), count[8]));
        report.setStyleLitterCan(averageBools(report.getStyleLitterCan(), count[9]));
        report.setStyleLandfill(averageBools(report.getStyleLandfill(), count[10]));
        report.setStyleThrow(averageBools(report.getStyleThrow(), count[11]));
        report.setStyleSingleStack(averageBools(report.getStyleSingleStack(), count[12]));
        report.setStyleMakeAtOnce(averageBools(report.getStyleMakeAtOnce(), count[13]));
        report.setStyleCanFromStep(averageBools(report.getStyleCanFromStep(), count[14]));
        report.setCoopTote(averageBools(report.getCoopTote(), count[15]));
        report.setCoopStep(averageInts(report.getCoopStep(), count[16]));
        report.setKnockStack(averageBools(report.getKnockStack(), count[17]));
        report.setDead(averageBools(report.getDead(), count[18]));
        report.setUnstable(averageBools(report.getUnstable(), count[19]));
        report.setTip(averageBools(report.getTip(), count[20]));
        report.setScore(averageInts(report.getScore(), count[22]));
        return report;
    }
    
    public MatchReport addAlly(List<Match> matchList) {
        MatchReport report = new MatchReport();
        int[] count = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        report.setTeam(matchList.get(0).getTeam());
        for(Match match : matchList) {
            report.setAutoRobot(addVals(match.getAutoRobot(), report.getAutoRobot(), count[0]));
            report.setAutoCan(addVals(match.getAutoCan(), report.getAutoCan(), count[1]));
            report.setStartTL(addVals(match.getStartTL(), report.getStartTL(), count[2]));
            report.setStartTM(addVals(match.getStartTM(), report.getStartTM(), count[3]));
            report.setStartTR(addVals(match.getStartTR(), report.getStartTR(), count[4]));
            report.setStartLL(addVals(match.getStartLL(), report.getStartLL(), count[4]));
            report.setStartLM(addVals(match.getStartLM(), report.getStartLM(), count[5]));
            report.setStartLR(addVals(match.getStartLR(), report.getStartLR(), count[6]));
            report.setStyleHS(addVals(match.getStyleHS(), report.getStyleHS(), count[7]));
            report.setStyleTopper(addVals(match.getStyleTopper(), report.getStyleTopper(), count[8]));
            report.setStyleLitterCan(addVals(match.getStyleLitterCan(), report.getStyleLitterCan(), count[9]));
            report.setStyleLandfill(addVals(match.getStyleLandfill(), report.getStyleLandfill(), count[10]));
            report.setStyleThrow(addVals(match.getStyleThrow(), report.getStyleThrow(), count[11]));
            report.setStyleSingleStack(addVals(match.getStyleSingleStack(), report.getStyleSingleStack(), count[12]));
            report.setStyleMakeAtOnce(addVals(match.getStyleMakeAtOnce(), report.getStyleMakeAtOnce(), count[13]));
            report.setStyleCanFromStep(addVals(match.getStyleCanFromStep(), report.getStyleCanFromStep(), count[14]));
            report.setCoopTote(addVals(match.getCoopTote(), report.getCoopTote(), count[15]));
            report.setCoopStep(addVals(match.getCoopStep(), report.getCoopStep(), count[16]));
            report.setKnockStack(addVals(match.getKnockStack(), report.getKnockStack(), count[17]));
            report.setDead(addVals(match.getDead(), report.getDead(), count[18]));
            report.setUnstable(addVals(match.getUnstable(), report.getUnstable(), count[19]));
            report.setTip(addVals(match.getTip(), report.getTip(), count[20]));
            report.setComment(addVals(match.getComment(), report.getComment(), count[21]));
            report.setScore(addVals(match.getScore(), report.getScore(), count[22]));
        }
        report.setAutoRobot(averageBools(report.getAutoRobot(), count[0]));
        report.setAutoCan(averageBools(report.getAutoCan(), count[1]));
        report.setStartTL(averageBools(report.getStartTL(), count[2]));
        report.setStartTM(averageBools(report.getStartTM(), count[3]));
        report.setStartTR(averageBools(report.getStartTR(), count[4]));
        report.setStartLL(averageBools(report.getStartLL(), count[4]));
        report.setStartLM(averageBools(report.getStartLM(), count[5]));
        report.setStartLR(averageBools(report.getStartLR(), count[6]));
        report.setStyleHS(averageBools(report.getStyleHS(), count[7]));
        report.setStyleTopper(averageBools(report.getStyleTopper(), count[8]));
        report.setStyleLitterCan(averageBools(report.getStyleLitterCan(), count[9]));
        report.setStyleLandfill(averageBools(report.getStyleLandfill(), count[10]));
        report.setStyleThrow(averageBools(report.getStyleThrow(), count[11]));
        report.setStyleSingleStack(averageBools(report.getStyleSingleStack(), count[12]));
        report.setStyleMakeAtOnce(averageBools(report.getStyleMakeAtOnce(), count[13]));
        report.setStyleCanFromStep(averageBools(report.getStyleCanFromStep(), count[14]));
        report.setCoopTote(averageBools(report.getCoopTote(), count[15]));
        report.setCoopStep(averageInts(report.getCoopStep(), count[16]));
        report.setKnockStack(averageBools(report.getKnockStack(), count[17]));
        report.setDead(averageBools(report.getDead(), count[18]));
        report.setUnstable(averageBools(report.getUnstable(), count[19]));
        report.setTip(averageBools(report.getTip(), count[20]));
        report.setScore(averageInts(report.getScore(), count[22]));
        return report;
    }
    
    public MatchReport averageOpp(MatchReport report ,int total) {
        if (total < 1)
            return report;
        report.setCoopTote((int)((float)report.getCoopTote() / total * 100));
        report.setCoopStep(report.getCoopStep() / total);
        report.setStyleCanFromStep((int)((float)report.getStyleCanFromStep() / total * 100));
        report.setStyleThrow((int)((float)report.getStyleThrow() / total * 100));
        return report;
    }
}
