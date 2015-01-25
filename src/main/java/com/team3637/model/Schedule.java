package com.team3637.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "schedule")
public class Schedule {
    @Id
    @GeneratedValue
    private Integer matchNum;
    
    private Integer R1;
    
    private Integer R2;
    
    private Integer R3;
    
    private Integer B1;
    
    private Integer B2;
    
    private Integer B3;

    public Integer getMatchNum() {
        return matchNum;
    }

    public void setMatchNum(Integer matchNum) {
        this.matchNum = matchNum;
    }

    public Integer getR1() {
        return R1;
    }

    public void setR1(Integer R1) {
        this.R1 = R1;
    }

    public Integer getR2() {
        return R2;
    }

    public void setR2(Integer R2) {
        this.R2 = R2;
    }

    public Integer getR3() {
        return R3;
    }

    public void setR3(Integer R3) {
        this.R3 = R3;
    }

    public Integer getB1() {
        return B1;
    }

    public void setB1(Integer B1) {
        this.B1 = B1;
    }

    public Integer getB2() {
        return B2;
    }

    public void setB2(Integer B2) {
        this.B2 = B2;
    }

    public Integer getB3() {
        return B3;
    }

    public void setB3(Integer B3) {
        this.B3 = B3;
    }
    
    
}
