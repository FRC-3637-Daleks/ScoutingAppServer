package com.team3637.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team3637.model.Team;

public interface TeamRepository extends JpaRepository<Team, Integer> {

}
