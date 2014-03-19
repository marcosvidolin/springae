package com.vidolima.springae.config;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.googlecode.objectify.ObjectifyService;
import com.vidolima.springae.domain.Curso;

public class InitSetup implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		ObjectifyService.register(Curso.class);
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
	}

}