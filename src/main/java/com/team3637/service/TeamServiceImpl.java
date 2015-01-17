package com.team3637.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team3637.exception.TeamNotFound;
import com.team3637.model.Team;
import com.team3637.repository.TeamRepository;

@Service
public class TeamServiceImpl implements TeamService {
	
	@Resource
	private TeamRepository teamRepository;

	@Override
	@Transactional
	public Team create(Team team) {
		Team createdTeam = team;
		return teamRepository.save(createdTeam);
	}
	
	@Override
	@Transactional
	public Team findById(int id) {
		return teamRepository.findOne(id);
	}

	@Override
	@Transactional(rollbackFor=TeamNotFound.class)
	public Team delete(int id) throws TeamNotFound {
		Team deletedTeam = teamRepository.findOne(id);
		
		if (deletedTeam == null)
			throw new TeamNotFound();
		
		teamRepository.delete(deletedTeam);
		return deletedTeam;
	}

	@Override
	@Transactional
	public List<Team> findAll() {
		return teamRepository.findAll();
	}

	@Override
	@Transactional(rollbackFor=TeamNotFound.class)
	public Team update(Team team) throws TeamNotFound {
		Team updatedTeam = teamRepository.findOne(team.getId());
		
		if (updatedTeam == null)
			throw new TeamNotFound();
		
		updatedTeam.setName(team.getName());
		updatedTeam.setImageLoc(team.getImageLoc());
		return updatedTeam;
	}

}
