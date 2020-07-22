package com.lwl.iplserverapp.repo;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import com.lwl.iplserverapp.domain.Team;

public interface TeamRepo extends JpaRepository<Team,Integer>{

	List<Team> findByNameLike(String str);

	Optional<Team> findById(String tid);

	void deleteById(String tid);


}
