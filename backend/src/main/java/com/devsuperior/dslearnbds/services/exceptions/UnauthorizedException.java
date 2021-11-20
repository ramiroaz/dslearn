package com.devsuperior.dslearnbds.services.exceptions;

// Classe utilizada para retornar o erro 403 : 
// Quando o usuário tenta acessar a um recurso passando um token inválido

public class UnauthorizedException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	
	public UnauthorizedException(String msg) {
		super(msg);
	}

}
