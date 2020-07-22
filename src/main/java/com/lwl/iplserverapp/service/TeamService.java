package com.lwl.iplserverapp.service;

import java.util.List;
import com.lwl.iplserverapp.domain.Team;
import com.lwl.iplserverapp.exception.TeamAlreadyExistsException;
import com.lwl.iplserverapp.exception.TeamNotFoundException;

public interface TeamService {

	public Team addTeam(Team team)throws TeamAlreadyExistsException;
	public Team updateTeam(Team team)throws TeamAlreadyExistsException;
	public boolean deleteTeam(String tid);
	public List<Team> allTeams();
	public List<Team> search(String str);
	public Team getTeamById(String tid)throws TeamNotFoundException;		
}
