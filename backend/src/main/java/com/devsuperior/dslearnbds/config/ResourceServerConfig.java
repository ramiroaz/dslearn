package com.devsuperior.dslearnbds.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;

@Configuration
@EnableResourceServer
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {

	@Autowired
	private JwtTokenStore tokenStore;
	
	@Autowired
	private Environment env;		//ambiente de execução da aplicação
	
	private static final String[] PUBLIC = {"/oauth/token", "/h2-console/**"};
	
	
	
	@Override
	public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
		// Configurando nosso token
		resources.tokenStore(tokenStore);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		// Configurando as rotas.
		// Consulta do catalogo : liberado para todos
		// Crud de produtos e categorias : usuário com perfil de Operador
		// Crud de usuários : usuário com perfil de admim
	
		// se o profile ativo for "test", liberamos a rota da base de dados H2 
		if (Arrays.asList(env.getActiveProfiles()).contains("test")) {
			http.headers().frameOptions().disable();	
		}
		
		http.authorizeRequests()
			.antMatchers(PUBLIC).permitAll()
			.anyRequest().authenticated();									//qualwuer outro usuário, deve-se logar
	}

	
	
}
