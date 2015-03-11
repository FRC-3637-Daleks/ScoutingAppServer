
package com.team3637.other;

import com.team3637.model.Match;
import com.team3637.model.MatchReport;
import java.util.List;

public class AverageVals {
    
    public Integer addInts(Integer set, Integer get, int count) {
        if(set != null) {
            get += set;
            count++;
        } return get;
    }
    
    public Integer addBools(Boolean set, Integer get, int count) {
        if(set != null) {
            get += (set) ? 1 : 0;
            count++;
        } return get;
    }
    
    public String addStrings(String set, String get, int count) {
        if(set != null) {
            get += "<li>" + set + "</li>";
            count++;
        } return get;
    }
    
    public MatchReport addOpp(List<Match> matchList) {
        MatchReport report = new MatchReport();
        int[] count = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
        report.setTeam(matchList.get(0).getTeam());
        for(Match match : matchList) {
            report.setAutoRobot(addBools(match.getAutoRobot(), report.getAutoRobot(), count[0]));
            report.setAutoCan(addBools(match.getAutoCan(), report.getAutoCan(), count[1]));
            report.setStartTL(addBools(match.getStartTL(), report.getStartTL(), count[2]));
            report.setStartTM(addBools(match.getStartTM(), report.getStartTM(), count[3]));
            report.setStartTR(addBools(match.getStartTR(), report.getStartTR(), count[4]));
            report.setStartLL(addBools(match.getStartLL(), report.getStartLL(), count[4]));
            report.setStartLM(addBools(match.getStartLM(), report.getStartLM(), count[5]));
            report.setStartLR(addBools(match.getStartLR(), report.getStartLR(), count[6]));
            report.setStyleHS(addBools(match.getStyleHS(), report.getStyleHS(), count[7]));
            report.setStyleTopper(addBools(match.getStyleTopper(), report.getStyleTopper(), count[8]));
            report.setStyleLitterCan(addBools(match.getStyleLitterCan(), report.getStyleLitterCan(), count[9]));
            report.setStyleLandfill(addBools(match.getStyleLandfill(), report.getStyleLandfill(), count[10]));
            report.setStyleThrow(addBools(match.getStyleThrow(), report.getStyleThrow(), count[11]));
            report.setStyleSingleStack(addBools(match.getStyleSingleStack(), report.getStyleSingleStack(), count[12]));
            report.setStyleMakeAtOnce(addBools(match.getStyleMakeAtOnce(), report.getStyleMakeAtOnce(), count[13]));
            report.setStyleCanFromStep(addBools(match.getStyleCanFromStep(), report.getStyleCanFromStep(), count[14]));
            report.setCoopTote(addBools(match.getCoopTote(), report.getCoopTote(), count[15]));
            report.setCoopStep(addInts(match.getCoopStep(), report.getCoopStep(), count[16]));
            report.setKnockStack(addBools(match.getKnockStack(), report.getKnockStack(), count[17]));
            report.setDead(addBools(match.getDead(), report.getDead(), count[18]));
            report.setUnstable(addBools(match.getUnstable(), report.getUnstable(), count[19]));
            report.setTip(addBools(match.getTip(), report.getTip(), count[20]));
            report.setComment(addStrings(match.getComment(), report.getComment(), count[21]));
            report.setScore(addInts(match.getScore(), report.getScore(), count[22]));
        }
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
