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
}
