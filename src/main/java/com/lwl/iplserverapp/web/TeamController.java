package com.lwl.iplserverapp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lwl.iplserverapp.domain.Team;
import com.lwl.iplserverapp.exception.TeamAlreadyExistsException;
import com.lwl.iplserverapp.exception.TeamNotFoundException;
import com.lwl.iplserverapp.service.TeamService;

@RestController
@RequestMapping("/api/v1/team")
public class TeamController {
	
	@Autowired
	private TeamService teamService;
	
	@PostMapping("/addnewteam")
	public Team addTeam(@RequestBody Team team) throws TeamAlreadyExistsException {
		return teamService.addTeam(team);
	}
	
	@GetMapping("/allteams")
	public List<Team> allTeams(){
		return teamService.allTeams();
	}
	
	@PutMapping("/updateteam")
	public Team updateTeam(@RequestBody Team team) throws TeamAlreadyExistsException{
		return teamService.updateTeam(team);
	}
	
	@GetMapping("/search/{str}")
	public List<Team> search(@PathVariable("str") String str){
		return teamService.search(str);
	}
	
	@GetMapping("/getteambyid/{tid}")
	public Team getTeam(@PathVariable("tid") String tid) throws TeamNotFoundException{
		return teamService.getTeamById(tid);
	}
	
	@DeleteMapping("/deleteteam/{tid}")
	public String deleteTeam(@PathVariable("tid")String tid) {
		boolean isDeleted = teamService.deleteTeam(tid);
		return isDeleted ? "Team with id: "+tid+" is deleted successfully":"Team with id"+tid+"not found"; 
	}
}
