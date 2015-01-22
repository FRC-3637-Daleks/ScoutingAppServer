package com.team3637.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team3637.model.Match;

public interface MatchRepository extends JpaRepository<Match, Integer> {

}
