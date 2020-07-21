package com.lwl.iplserverapp.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Team {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		private String name;
		private String label;
		private String coach;
		private String city;
		private String homeGround;
		
		@OneToMany
		@JoinColumn(name = "team_id")
		private List<Player> players;
		
}
