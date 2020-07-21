package com.lwl.iplserverapp.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Player {
	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int pid;
		private String name;
		private String playerRole;
		private double price;
	
		
		@ManyToOne
		@JoinColumn(name = "team_id",updatable = false,insertable = false)
		private Team team;
}
