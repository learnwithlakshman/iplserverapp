package com.lwl.iplserverapp.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lwl.iplserverapp.domain.Player;

public interface PlayerRepo extends JpaRepository<Player, Integer> {

}
