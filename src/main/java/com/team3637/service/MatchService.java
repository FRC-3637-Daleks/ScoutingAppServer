package com.team3637.service;

import java.util.List;

import com.team3637.exception.MatchNotFound;
import com.team3637.model.Match;

public interface MatchService {
	
	public Match create(Match match);
	public Match delete(int id) throws MatchNotFound;
	public List<Match> findAll();
	public Match update(Match match) throws MatchNotFound;
	public Match findById(int id);

}
