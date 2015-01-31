package com.team3637.service;

import java.util.List;

import com.team3637.exception.TeamNotFound;
import com.team3637.model.Team;

public interface TeamService {
	
	public Team create(Team team);
	public Team delete(int id) throws TeamNotFound;
	public List<Team> findAll();
	public Team update(Team team) throws TeamNotFound;
	public Team findById(int id);
        public Team findByNumber(int number);

}
