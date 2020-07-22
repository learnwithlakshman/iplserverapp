package com.lwl.iplserverapp.service;


import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.lwl.iplserverapp.domain.Team;
import com.lwl.iplserverapp.exception.TeamAlreadyExistsException;
import com.lwl.iplserverapp.exception.TeamNotFoundException;
import com.lwl.iplserverapp.repo.TeamRepo;

@Service
public class TeamServiceImpl implements TeamService {
	
	private static final Logger log = LoggerFactory.getLogger(TeamServiceImpl.class);

	@Autowired
	private TeamRepo teamRepo;

	@Override
	public Team addTeam(Team team) throws TeamAlreadyExistsException {
		Assert.notNull(team,"Team object can't be null");
		Assert.notNull(team.getName(),"Team name can't be null or empty");
		Assert.notNull(team.getLabel(),"Team label can't be null or empty");
		Assert.notNull(team.getCoach(),"Team coach can't be null or empty");
		Assert.notNull(team.getCity(),"Team city can't be null or empty");
		Assert.notNull(team.getHomeGround(),"Team homeground can't be null or empty");

		Team savedTeam = teamRepo.save(team);
		log.info("Team is saved with id:{}", savedTeam.getId());
		return savedTeam;
	}

	@Override
	public Team updateTeam(Team team) throws TeamAlreadyExistsException {
		Assert.notNull(team,"Team object can't be null");
		Assert.notNull(team.getName(),"Team name can't be null or empty");
		Assert.notNull(team.getLabel(),"Team label can't be null or empty");
		Assert.notNull(team.getCoach(),"Team coach can't be null or empty");
		Assert.notNull(team.getCity(),"Team city can't be null or empty");
		Assert.notNull(team.getHomeGround(),"Team homeground can't be null or empty");
		
		Team updatedTeam = teamRepo.save(team);
		log.info("Team is saved with id:{}", updatedTeam.getId());
		return updatedTeam;
	}

	@Override
	public boolean deleteTeam(String tid) {
		Assert.notNull(tid,"Team id can't be null or empty");
		Optional<Team> opt = teamRepo.findById(tid);
		if(opt.isPresent()) {
			teamRepo.deleteById(tid);
			log.info("Team with id:{} is deleted succcessfully",tid);
			return true;
		}
		log.info("Team with id:{} couldn't be deleted or not found",tid);
		return false;
	}

	@Override
	public List<Team> allTeams() {
		List<Team> teams = teamRepo.findAll();
		log.info("Total teams found in DB:{} ",teams.size());
				
		return teams;
	}

	@Override
	public List<Team> search(String str) {
		Assert.notNull(str, "Search string can't be null or empty");
		List<Team> teams= teamRepo.findByNameLike(str);
		log.info("Total {} teams found for given search string {}", teams.size(),str);
		return teams;
	}

	@Override
	public Team getTeamById(String tid) throws TeamNotFoundException {
		Assert.notNull(tid, "Team id can't be null or empty");
		Optional<Team> opt = teamRepo.findById(tid);
		if(opt.isPresent()) {
			return opt.get();
		}
		log.info("Team is not found for given id:{}",tid);
		throw new TeamNotFoundException("Team is not found for given id:"+tid);
	}

}
