package com.team3637.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "matches")
public class Match {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
        private Integer id;
        
	private Integer matchNum;

	private Integer team;
        
        private Boolean autoRobot;
        
        private Integer autoStack;
        
        private Boolean autoVision;
        
        private Boolean autoDeadRec;
        
        private Boolean autoStep;
        
        private Boolean autoOverBump;

        private Boolean autoAroundBump;
        
        private Boolean overBump;
                
        private Integer speed;
        
        private Boolean dropTote;
        
        private Boolean knockStack;
        
        private Boolean litterCan;
        
        private Boolean litterUp;
        
        private Boolean litterPush;
        
        private Integer totesCarried;
        
        private Boolean diffOps;
        
        private Boolean upOrFlip;
        
        private Integer onTopOf;
        
        private Integer pickUpSpeed;
        
        private Boolean hpTotes;
        
        private Boolean hpLitter;
        
        private Boolean hpThrow;
        
        private Boolean canUp;
        
        private Integer downHeight;
        
        private Boolean takeCanFromStep;
        
        private Integer canUpSpeed;
        
        private Boolean canDiffOps;
        
        private Boolean canFromStepNoFill;
        
        private Boolean coopTote;
        
        private Integer coopStep;
        
        private Boolean failFunction;
        
        private Boolean fouls;
        
        private Boolean deadOnArrive;
        
        private Boolean tip;
        
        private Boolean commError;
        
        private Boolean shotty;
        
        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }
        
	public Integer getMatchNum() {
		return matchNum;
	}

	public void setMatchNum(Integer matchNum) {
		this.matchNum = matchNum;
	}

	public Integer getTeam() {
		return team;
	}

	public void setTeam(Integer team) {
		this.team = team;
	}

        public Boolean getAutoRobot() {
            return autoRobot;
        }

        public void setAutoRobot(Boolean autoRobot) {
            this.autoRobot = autoRobot;
        }

        public Integer getAutoStack() {
            return autoStack;
        }

        public void setAutoStack(Integer autoStack) {
            this.autoStack = autoStack;
        }

        public Boolean getAutoVision() {
            return autoVision;
        }

        public void setAutoVision(Boolean autoVision) {
            this.autoVision = autoVision;
        }

        public Boolean getAutoDeadRec() {
            return autoDeadRec;
        }

        public void setAutoDeadRec(Boolean autoDeadRec) {
            this.autoDeadRec = autoDeadRec;
        }
        
        public Boolean getAutoStep() {
            return autoStep;
        }

        public void setAutoStep(Boolean autoStep) {
            this.autoStep = autoStep;
        }

        public Boolean getAutoOverBump() {
            return autoOverBump;
        }

        public void setAutoOverBump(Boolean autoOverBump) {
            this.autoOverBump = autoOverBump;
        }

        public Boolean getAutoAroundBump() {
            return autoAroundBump;
        }

        public void setAutoAroundBump(Boolean autoAroundBump) {
            this.autoAroundBump = autoAroundBump;
        }

        public Boolean getOverBump() {
            return overBump;
        }

        public void setOverBump(Boolean overBump) {
            this.overBump = overBump;
        }

        public Integer getSpeed() {
            return speed;
        }

        public void setSpeed(Integer speed) {
            this.speed = speed;
        }

        public Boolean getDropTote() {
            return dropTote;
        }

        public void setDropTote(Boolean dropTote) {
            this.dropTote = dropTote;
        }

        public Boolean getKnockStack() {
            return knockStack;
        }

        public void setKnockStack(Boolean knockStack) {
            this.knockStack = knockStack;
        }

        public Boolean getLitterCan() {
            return litterCan;
        }

        public void setLitterCan(Boolean litterCan) {
            this.litterCan = litterCan;
        }

        public Boolean getLitterUp() {
            return litterUp;
        }

        public void setLitterUp(Boolean litterUp) {
            this.litterUp = litterUp;
        }

        public Boolean getLitterPush() {
            return litterPush;
        }

        public void setLitterPush(Boolean litterPush) {
            this.litterPush = litterPush;
        }

        public Integer getTotesCarried() {
            return totesCarried;
        }

        public void setTotesCarried(Integer totesCarried) {
            this.totesCarried = totesCarried;
        }

        public Boolean getDiffOps() {
            return diffOps;
        }

        public void setDiffOps(Boolean diffOps) {
            this.diffOps = diffOps;
        }

        public Boolean getUpOrFlip() {
            return upOrFlip;
        }

        public void setUpOrFlip(Boolean upOrFlip) {
            this.upOrFlip = upOrFlip;
        }

        public Integer getOnTopOf() {
            return onTopOf;
        }

        public void setOnTopOf(Integer onTopOf) {
            this.onTopOf = onTopOf;
        }

        public Integer getPickUpSpeed() {
            return pickUpSpeed;
        }

        public void setPickUpSpeed(Integer pickUpSpeed) {
            this.pickUpSpeed = pickUpSpeed;
        }

        public Boolean getHpTotes() {
            return hpTotes;
        }

        public void setHpTotes(Boolean hpTotes) {
            this.hpTotes = hpTotes;
        }

        public Boolean getHpLitter() {
            return hpLitter;
        }

        public void setHpLitter(Boolean hpLitter) {
            this.hpLitter = hpLitter;
        }

        public Boolean getHpThrow() {
            return hpThrow;
        }

        public void setHpThrow(Boolean hpThrow) {
            this.hpThrow = hpThrow;
        }

        public Boolean getCanUp() {
            return canUp;
        }

        public void setCanUp(Boolean canUp) {
            this.canUp = canUp;
        }

        public Integer getDownHeight() {
            return downHeight;
        }

        public void setDownHeight(Integer downHeight) {
            this.downHeight = downHeight;
        }

        public Boolean getTakeCanFromStep() {
            return takeCanFromStep;
        }

        public void setTakeCanFromStep(Boolean takeCanFromStep) {
            this.takeCanFromStep = takeCanFromStep;
        }

        public Integer getCanUpSpeed() {
            return canUpSpeed;
        }

        public void setCanUpSpeed(Integer canUpSpeed) {
            this.canUpSpeed = canUpSpeed;
        }

        public Boolean getCanDiffOps() {
            return canDiffOps;
        }

        public void setCanDiffOps(Boolean canDiffOps) {
            this.canDiffOps = canDiffOps;
        }

        public Boolean getCanFromStepNoFill() {
            return canFromStepNoFill;
        }

        public void setCanFromStepNoFill(Boolean canFromStepNoFill) {
            this.canFromStepNoFill = canFromStepNoFill;
        }

        public Boolean getCoopTote() {
            return coopTote;
        }

        public void setCoopTote(Boolean coopTote) {
            this.coopTote = coopTote;
        }

        public Integer getCoopStep() {
            return coopStep;
        }

        public void setCoopStep(Integer coopStep) {
            this.coopStep = coopStep;
        }

        public Boolean getFailFunction() {
            return failFunction;
        }

        public void setFailFunction(Boolean failFunction) {
            this.failFunction = failFunction;
        }

        public Boolean getFouls() {
            return fouls;
        }

        public void setFouls(Boolean fouls) {
            this.fouls = fouls;
        }

        public Boolean getDeadOnArrive() {
            return deadOnArrive;
        }

        public void setDeadOnArrive(Boolean deadOnArrive) {
            this.deadOnArrive = deadOnArrive;
        }

        public Boolean getTip() {
            return tip;
        }

        public void setTip(Boolean tip) {
            this.tip = tip;
        }

        public Boolean getCommError() {
            return commError;
        }

        public void setCommError(Boolean commError) {
            this.commError = commError;
        }

        public Boolean getShotty() {
            return shotty;
        }

        public void setShotty(Boolean shotty) {
            this.shotty = shotty;
        }
}
