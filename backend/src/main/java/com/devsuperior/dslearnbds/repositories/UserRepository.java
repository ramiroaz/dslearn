package com.devsuperior.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.dslearnbds.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	//busca no banco um usuário X e-mail
	User findByEmail(String email);
}
