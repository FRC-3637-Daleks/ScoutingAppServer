package com.team3637.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team3637.exception.MatchNotFound;
import com.team3637.model.Match;
import com.team3637.repository.MatchRepository;

@Service
public class MatchServiceImpl implements MatchService {
	
	@Resource
	private MatchRepository matchRepository;

	@Override
	@Transactional
	public Match create(Match match) {
		Match createdMatch = match;
		return matchRepository.save(createdMatch);
	}
	
	@Override
	@Transactional
	public Match findById(int id) {
		return matchRepository.findOne(id);
	}

	@Override
	@Transactional(rollbackFor=MatchNotFound.class)
	public Match delete(int id) throws MatchNotFound {
		Match deletedMatch = matchRepository.findOne(id);
		
		if (deletedMatch == null)
			throw new MatchNotFound();
		
		matchRepository.delete(deletedMatch);
		return deletedMatch;
	}

	@Override
	@Transactional
	public List<Match> findAll() {
		return matchRepository.findAll();
	}

	@Override
	@Transactional(rollbackFor=MatchNotFound.class)
	public Match update(Match match) throws MatchNotFound {
		Match updatedMatch = matchRepository.findOne(match.getId());
		
		if (updatedMatch == null)
			throw new MatchNotFound();
		
		updatedMatch.setMatchNum(match.getMatchNum());
		return updatedMatch;
	}

}
