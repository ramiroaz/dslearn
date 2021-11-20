package com.devsuperior.dslearnbds.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.exceptions.UnauthorizedException;

import org.springframework.transaction.annotation.*;

@Service
public class AuthService {

	@Autowired
	private UserRepository userRepository;
	
	// Retorna o usuário atual
	@Transactional(readOnly = true)
	public User Authenticated() {
		//pega o nome do usuário logado
		try {
			String username = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(username);
		}
		catch(Exception e) {
			throw new UnauthorizedException("Usuário inválido");
		}
	}
	
	
	// verifica se o usuário é Admin, ou é o usuário logado
	public void ValidateSelfOrAdmin(Long userId) {
		User user = Authenticated();
		if (!user.getId().equals(userId) && !user.hasRole("ROLE_ADMIN") ) {
			throw new ForbiddenException("Acesso denegado");
		}
	}
	
}
