package com.devsuperior.dslearnbds.services.exceptions;

// Classe utilizada para retornar o erro 403 : 
// Quando o usuário está logado, porém seu perfil não é o permitido para o recurso,
// de acordo às regras de negócio.

public class ForbiddenException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	
	public ForbiddenException(String msg) {
		super(msg);
	}

}
